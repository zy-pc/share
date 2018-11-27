object frm_ljzxxz: Tfrm_ljzxxz
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = #21464#24322#21644#38454#27573#35780#20272#25253#21578
  ClientHeight = 464
  ClientWidth = 744
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 1
    Top = 8
    Width = 60
    Height = 30
    Caption = #36335#24452#25191#34892#24773#20917
    WordWrap = True
  end
  object Label2: TLabel
    Left = 2
    Top = 172
    Width = 60
    Height = 15
    Caption = #21307#22065#21464#24322
  end
  object Label3: TLabel
    Left = 1
    Top = 340
    Width = 60
    Height = 30
    Caption = #38454#27573#35780#20272#22635#20889
    WordWrap = True
  end
  object Button1: TButton
    Left = 280
    Top = 431
    Width = 108
    Height = 25
    Caption = #21464#24322#36864#20986#36335#24452
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 412
    Top = 431
    Width = 75
    Height = 25
    Caption = #21464#24322#20572#27490
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 520
    Top = 431
    Width = 75
    Height = 25
    Caption = #21464#24322#32487#32493
    TabOrder = 2
    OnClick = Button3Click
  end
  object Memo1: TMemo
    Left = 67
    Top = 8
    Width = 638
    Height = 157
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssBoth
    TabOrder = 3
  end
  object Memo2: TMemo
    Left = 67
    Top = 171
    Width = 637
    Height = 163
    Lines.Strings = (
      'Memo1')
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 4
  end
  object Button4: TButton
    Left = 58
    Top = 431
    Width = 91
    Height = 25
    Caption = #26242#19981#22788#29702
    TabOrder = 5
    OnClick = Button4Click
  end
  object Memo3: TMemo
    Left = 67
    Top = 340
    Width = 637
    Height = 83
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssBoth
    TabOrder = 6
  end
  object Button5: TButton
    Left = 171
    Top = 431
    Width = 91
    Height = 25
    Caption = #30830#35748#32487#32493
    TabOrder = 7
    OnClick = Button5Click
  end
  object qry_in_byyy: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 176
    Top = 40
  end
  object qry_cx_byyy: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 216
    Top = 40
  end
end
