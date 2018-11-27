object frm_postkfs: Tfrm_postkfs
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'POS'#36864#27454#26041#24335
  ClientHeight = 124
  ClientWidth = 283
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 120
  TextHeight = 18
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 283
    Height = 124
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object rb1: TRadioButton
      Left = 56
      Top = 40
      Width = 97
      Height = 17
      Caption = #25764#38144
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rb2: TRadioButton
      Left = 159
      Top = 40
      Width = 97
      Height = 17
      Caption = #36864#36135
      TabOrder = 1
    end
    object cxbut_1: TcxButton
      Left = 104
      Top = 80
      Width = 75
      Height = 25
      Caption = #30830#23450
      TabOrder = 2
      OnClick = cxbut_1Click
    end
  end
end
