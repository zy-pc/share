object frm_main: Tfrm_main
  Left = 0
  Top = 0
  Caption = 'frm_main'
  ClientHeight = 281
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 200
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 257
    Width = 473
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
        Width = 280
      end
      item
        Alignment = taCenter
        Style = psOwnerDraw
        Width = 245
      end
      item
        Alignment = taRightJustify
        Style = psOwnerDraw
        Width = 50
      end>
    UseSystemFont = False
  end
end
