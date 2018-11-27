object frm_xzyf: Tfrm_xzyf
  Left = 0
  Top = 0
  Caption = #36873#25321#33647#25151
  ClientHeight = 199
  ClientWidth = 596
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object frm_xzyf: TGroupBox
    Left = 0
    Top = 0
    Width = 297
    Height = 138
    Caption = #35199#33647#25151
    TabOrder = 0
    object Label5: TLabel
      Left = 10
      Top = 61
      Width = 60
      Height = 15
      Caption = #35199#33647#33647#25151
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object ComboBox1: TComboBox
      Left = 76
      Top = 58
      Width = 197
      Height = 23
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ItemHeight = 0
      ParentFont = False
      TabOrder = 0
    end
  end
  object GroupBox1: TGroupBox
    Left = 311
    Top = 0
    Width = 277
    Height = 138
    Caption = #25104#33647#25151
    TabOrder = 1
    object Label8: TLabel
      Left = 15
      Top = 61
      Width = 45
      Height = 15
      Caption = #25104#33647#25151
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object ComboBox2: TComboBox
      Left = 66
      Top = 58
      Width = 199
      Height = 23
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ItemHeight = 0
      ParentFont = False
      TabOrder = 0
    end
  end
  object btn1: TButton
    Left = 183
    Top = 160
    Width = 75
    Height = 25
    Caption = #30830' '#23450'(&O)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 296
    Top = 160
    Width = 75
    Height = 25
    Caption = #21462' '#28040'(C)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btn2Click
  end
  object qry_cx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 272
    Top = 136
  end
end
