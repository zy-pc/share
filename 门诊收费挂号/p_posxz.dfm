object frm_posxz: Tfrm_posxz
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #38134#34892'POS'#25509#21475#36873#25321
  ClientHeight = 132
  ClientWidth = 498
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 18
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 498
    Height = 132
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 56
      Top = 40
      Width = 98
      Height = 21
      Caption = #38134#34892'POS'#36873#25321
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxButton2: TcxButton
      Left = 272
      Top = 88
      Width = 75
      Height = 25
      Caption = #21462#28040
      TabOrder = 0
      OnClick = cxButton2Click
    end
    object cxButton1: TcxButton
      Left = 152
      Top = 88
      Width = 75
      Height = 25
      Caption = #36873#25321
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object cbb_pos: TComboBox
      Left = 176
      Top = 39
      Width = 273
      Height = 26
      Style = csDropDownList
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 18
      ItemIndex = 0
      TabOrder = 2
      Text = '1-'#24314#35774#38134#34892'POS'
      OnKeyDown = cbb_posKeyDown
      Items.Strings = (
        '1-'#24314#35774#38134#34892'POS'
        '2-'#20892#19994#38134#34892'POS'
        '3-'#21830#19994#38134#34892'POS')
    end
  end
end
