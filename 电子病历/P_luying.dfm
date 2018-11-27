object frm_luying: Tfrm_luying
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #21475#36848#30149#21382#24405#38899
  ClientHeight = 244
  ClientWidth = 403
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 15
  object MediaPlayer1: TMediaPlayer
    Left = 80
    Top = 8
    Width = 253
    Height = 30
    Visible = False
    TabOrder = 0
  end
  object BtStart: TBitBtn
    Left = 80
    Top = 56
    Width = 89
    Height = 25
    Caption = #24320#22987#24405#38899
    TabOrder = 1
    OnClick = BtStartClick
  end
  object BtStop: TBitBtn
    Left = 240
    Top = 56
    Width = 75
    Height = 25
    Caption = #20572#27490#24405#38899
    TabOrder = 2
    OnClick = BtStopClick
  end
  object bt_play: TBitBtn
    Left = 144
    Top = 168
    Width = 145
    Height = 25
    Caption = #25773#25918#21475#36848#30149#21382
    TabOrder = 3
    OnClick = bt_playClick
  end
end
