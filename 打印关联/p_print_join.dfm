object frm_Print_join: Tfrm_Print_join
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #31080#25454#19982#25171#21360#26426#20851#32852#35774#32622
  ClientHeight = 172
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object BBtn_join: TBitBtn
    Left = 327
    Top = 72
    Width = 75
    Height = 25
    Caption = #24314#31435#20851#32852
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BBtn_joinClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 313
    Height = 161
    Caption = #24050#32463#23433#35013#25171#21360#26426
    TabOrder = 1
    object ComboBox1: TComboBox
      Left = 3
      Top = 63
      Width = 307
      Height = 23
      Style = csDropDownList
      ItemHeight = 15
      TabOrder = 0
      OnChange = ComboBox1Change
    end
  end
  object GroupBox2: TGroupBox
    Left = 408
    Top = 8
    Width = 225
    Height = 161
    Caption = #38656#25171#21360#31080#25454
    TabOrder = 2
    object ComboBox2: TComboBox
      Left = 32
      Top = 63
      Width = 145
      Height = 23
      Style = csDropDownList
      ItemHeight = 15
      TabOrder = 0
      Items.Strings = (
        '<'#39044#20132#25910#25454'>'
        '<'#32467#31639#25910#25454'>'
        '<'#38376#35786#25910#25454'>'
        '<'#36755#28082#29942#31614'/'#26816#39564#26465#30721'>'
        '<'#20307#28201#34920'>'
        '<'#36755#28082#35745#21010#21333'>'
        '<'#33109#24102#25171#21360'>'
        '<'#36755#28082#29942#31614'>'
        '<'#26816#39564#26465#30721'>')
    end
  end
  object BBtn_save: TBitBtn
    Left = 327
    Top = 103
    Width = 75
    Height = 25
    Caption = #20445#23384#35774#32622
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BBtn_saveClick
  end
end
