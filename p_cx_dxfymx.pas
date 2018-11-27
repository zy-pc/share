unit p_cx_dxfymx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, ADODB, DBGridEhGrouping;

type
  Tfrm_cx_dxfymx = class(TForm)
    g_fy: TDBGridEh;
    sp_cx_dxfymx: TADOStoredProc;
    ds_cx_zyfydl: TDataSource;
    procedure g_fyDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    x_zyh:string;
    { Public declarations }
  end;

var
  frm_cx_dxfymx: Tfrm_cx_dxfymx;

implementation

uses p_dm,p_func,p_cx_drdxmx;

{$R *.dfm}

procedure Tfrm_cx_dxfymx.g_fyDblClick(Sender: TObject);
begin
  try
    Application.CreateForm( Tfrm_cx_drdxmx, frm_cx_drdxmx );
    frm_cx_drdxmx.sp_cx_drdxmx.Close;
    frm_cx_drdxmx.sp_cx_drdxmx.Parameters.Refresh;
    frm_cx_drdxmx.sp_cx_drdxmx.Parameters.ParamByName('@zyh').Value:=x_zyh;
    if(frm_cx_dxfymx.sp_cx_dxfymx.Parameters.ParamByName('@cxfs').Value='1') then
    begin
      frm_cx_drdxmx.sp_cx_drdxmx.Parameters.ParamByName('@sfrq').Value:= sp_cx_dxfymx.FieldByName('sfrq').asstring;
    end;
    frm_cx_drdxmx.sp_cx_drdxmx.Parameters.ParamByName('@cxfs').Value:= sp_cx_dxfymx.Parameters.ParamByName('@cxfs').Value;
    if frm_cx_dxfymx.sp_cx_dxfymx.Parameters.ParamByName('@clfs').Value=1 then
      frm_cx_drdxmx.sp_cx_drdxmx.Parameters.ParamByName('@fydm').Value:=sp_cx_dxfymx.FieldByName('fydm').asstring
    else
    begin
      frm_cx_drdxmx.sp_cx_drdxmx.Parameters.ParamByName('@fydm').Value:=sp_cx_dxfymx.FieldByName('ypdm').asstring;
      frm_cx_drdxmx.sp_cx_drdxmx.Parameters.ParamByName('@clfs').Value:='0';
    end;
    frm_cx_drdxmx.sp_cx_drdxmx.Parameters.ParamByName('@table').Value:=sp_cx_dxfymx.Parameters.ParamByName('@table').Value;
    frm_cx_drdxmx.sp_cx_drdxmx.Open;
    frm_cx_drdxmx.ShowModal;
  finally
    frm_cx_drdxmx.free;
  end;
end;

end.
