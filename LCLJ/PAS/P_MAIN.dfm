object frm_Main: Tfrm_Main
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 0
  Caption = #20998#31867
  ClientHeight = 142
  ClientWidth = 292
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Main_Menu
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TButton
    Left = 64
    Top = 24
    Width = 137
    Height = 41
    Caption = #20020#24202#36335#24452#35774#32622
    TabOrder = 0
    OnClick = btn1Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 118
    Width = 292
    Height = 24
    Color = clSilver
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Pitch = fpVariable
    Font.Style = []
    Panels = <
      item
        Alignment = taRightJustify
        Style = psOwnerDraw
        Width = 300
      end
      item
        Alignment = taCenter
        Style = psOwnerDraw
        Width = 190
      end
      item
        Alignment = taRightJustify
        Style = psOwnerDraw
        Width = 200
      end>
    UseSystemFont = False
  end
  object Main_Menu: TMainMenu
    Left = 256
    Top = 40
  end
end
