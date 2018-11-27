object frm_xgyzzxsj: Tfrm_xgyzzxsj
  Left = 0
  Top = 0
  Caption = #20462#25913#21307#22065#35745#21010#26102#38388#30830#35748
  ClientHeight = 277
  ClientWidth = 450
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
    Width = 351
    Height = 33
    Caption = #35831#30830#35748#21307#22065#24320#21333#26102#38388#20572#27490#26102#38388
  end
  object Label1: TLabel
    Left = 22
    Top = 90
    Width = 108
    Height = 33
    Caption = #24320#21333#26102#38388
  end
  object Label2: TLabel
    Left = 22
    Top = 148
    Width = 108
    Height = 33
    Caption = #20572#27490#26102#38388
  end
  object MaskEdit1: TMaskEdit
    Left = 136
    Top = 145
    Width = 281
    Height = 41
    EditMask = '!0000/99/99 00:00:00;1;_'
    MaxLength = 19
    TabOrder = 0
    Text = '    -  -     :  :  '
  end
  object BitBtn1: TBitBtn
    Left = 237
    Top = 208
    Width = 75
    Height = 25
    Caption = #20462#25913
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
    Left = 342
    Top = 208
    Width = 75
    Height = 25
    Caption = #21462#28040
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object MaskEdit2: TMaskEdit
    Left = 136
    Top = 87
    Width = 281
    Height = 41
    EditMask = '!0000/99/99 00:00:00;1;_'
    MaxLength = 19
    TabOrder = 3
    Text = '    -  -     :  :  '
  end
  object CheckBox1: TCheckBox
    Left = 16
    Top = 204
    Width = 195
    Height = 33
    Caption = #25163#24037#20572#27490#21307#22065
    TabOrder = 4
  end
end
