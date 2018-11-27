object frm_xgyl: Tfrm_xgyl
  Left = 0
  Top = 0
  Caption = #20462#25913#29992#37327
  ClientHeight = 76
  ClientWidth = 350
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 75
    Height = 15
    Caption = #35831#24405#20837#29992#37327
  end
  object Edit1: TEdit
    Left = 95
    Top = 18
    Width = 217
    Height = 23
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 64
    Top = 47
    Width = 75
    Height = 25
    Caption = #30830#23450
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 208
    Top = 47
    Width = 75
    Height = 25
    Caption = #25918#24323
    TabOrder = 2
    OnClick = Button2Click
  end
end
