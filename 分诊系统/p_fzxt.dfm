object frm_fzxt: Tfrm_fzxt
  Left = 0
  Top = 0
  Caption = 'frm_fzxt'
  ClientHeight = 348
  ClientWidth = 643
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object idtcpclnt1: TIdTCPClient
    ConnectTimeout = 0
    IPVersion = Id_IPv4
    Port = 0
    ReadTimeout = -1
    Left = 24
    Top = 24
  end
  object qryQry_ledIP: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 216
    Top = 144
  end
end
