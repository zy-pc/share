object frm_blsj_mbzz: Tfrm_blsj_mbzz
  Left = 0
  Top = 0
  Caption = #19981#33391#20107#20214#27169#26495#21046#20316
  ClientHeight = 387
  ClientWidth = 611
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 17
    Top = 11
    Width = 60
    Height = 18
    Caption = #20107#20214#31867#21035
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 313
    Top = 11
    Width = 60
    Height = 18
    Caption = #22635#20889#22823#39033
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 0
    Top = 37
    Width = 610
    Height = 297
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 86
    Top = 8
    Width = 119
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 18
    ParentFont = False
    TabOrder = 1
    OnExit = ComboBox1Exit
    Items.Strings = (
      #25252#29702#20107#20214
      #21387#30126#39118#38505#35780#20272
      #38498#20869#21387#30126
      #38498#22806#21387#30126)
  end
  object ComboBox2: TComboBox
    Left = 387
    Top = 8
    Width = 119
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 18
    ParentFont = False
    TabOrder = 2
  end
  object Button1: TButton
    Left = 313
    Top = 353
    Width = 121
    Height = 26
    Caption = #20445#23384
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 468
    Top = 353
    Width = 121
    Height = 26
    Caption = #26597#30475#22635#20889#20869#23481
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button2Click
  end
  object qry_temp: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 304
    Top = 160
  end
end
