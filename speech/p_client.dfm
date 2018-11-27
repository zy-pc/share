object frm_client: Tfrm_client
  Left = 0
  Top = 0
  Caption = 'frm_client'
  ClientHeight = 159
  ClientWidth = 207
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object tcp_dp: TIdTCPClient
    ConnectTimeout = 0
    IPVersion = Id_IPv4
    Port = 0
    ReadTimeout = -1
    Left = 88
    Top = 72
  end
  object qry_get_server: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 40
    Top = 72
  end
  object tcp_jh: TIdTCPClient
    ConnectTimeout = 0
    IPVersion = Id_IPv4
    Port = 0
    ReadTimeout = -1
    Left = 136
    Top = 72
  end
end
