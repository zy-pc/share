unit p_client;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, DB, ADODB;

type
  Tfrm_client = class(TForm)
    tcp_dp: TIdTCPClient;
    qry_get_server: TADOQuery;
    tcp_jh: TIdTCPClient;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_client: Tfrm_client;

implementation
   uses p_dm;
{$R *.dfm}

end.
