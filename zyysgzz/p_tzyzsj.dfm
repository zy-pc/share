object frm_tzyzsj: Tfrm_tzyzsj
  Left = 0
  Top = 0
  Caption = #20572#27490#21307#22065#26102#38388#30830#35748
  ClientHeight = 206
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -27
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 33
  object labe1: TLabel
    Left = 8
    Top = 8
    Width = 243
    Height = 33
    Caption = #35831#30830#35748#20572#27490#21307#22065#26102#38388
  end
  object MaskEdit1: TMaskEdit
    Left = 32
    Top = 63
    Width = 281
    Height = 41
    EditMask = '!0000/99/99 00:00:00;1;_'
    MaxLength = 19
    TabOrder = 0
    Text = '    -  -     :  :  '
  end
  object BitBtn1: TBitBtn
    Left = 152
    Top = 144
    Width = 75
    Height = 25
    Caption = #30830#23450
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 238
    Top = 144
    Width = 75
    Height = 25
    Caption = #25918#24323
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
end
