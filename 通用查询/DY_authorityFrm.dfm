object AuthorityFrm: TAuthorityFrm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #26435#38480#35774#32622
  ClientHeight = 468
  ClientWidth = 616
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 15
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 616
    Height = 41
    Align = alTop
    TabOrder = 0
    object lbl1: TLabel
      Left = 13
      Top = 19
      Width = 60
      Height = 15
      Caption = #29992#25143#21517#65306
    end
    object edtName: TEdit
      Left = 64
      Top = 15
      Width = 91
      Height = 23
      TabOrder = 0
      OnKeyDown = edtNameKeyDown
    end
    object btn7: TButton
      Left = 167
      Top = 11
      Width = 62
      Height = 25
      Caption = #26597#35810
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btn7Click
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 41
    Width = 185
    Height = 427
    Align = alLeft
    TabOrder = 1
    object tvAuthority: TTreeView
      Left = 1
      Top = 1
      Width = 183
      Height = 425
      Align = alClient
      HideSelection = False
      Indent = 19
      ReadOnly = True
      TabOrder = 0
      OnChange = tvAuthorityChange
    end
  end
  object pnl3: TPanel
    Left = 185
    Top = 41
    Width = 431
    Height = 427
    Align = alClient
    TabOrder = 2
    object lbl2: TLabel
      Left = 16
      Top = 6
      Width = 75
      Height = 15
      Caption = #25152#26377#22522#30784#34920
    end
    object lbl3: TLabel
      Left = 238
      Top = 6
      Width = 105
      Height = 15
      Caption = #29992#25143#26435#38480#22522#30784#34920
    end
    object lstTable: TListBox
      Left = 5
      Top = 25
      Width = 169
      Height = 337
      ItemHeight = 15
      TabOrder = 0
    end
    object lstAuthorityTable: TListBox
      Left = 238
      Top = 24
      Width = 169
      Height = 337
      ItemHeight = 15
      TabOrder = 1
    end
    object btn3: TBitBtn
      Left = 291
      Top = 384
      Width = 75
      Height = 25
      Caption = #36864#20986
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ModalResult = 6
      ParentFont = False
      TabOrder = 2
    end
    object btn1: TBitBtn
      Left = 72
      Top = 384
      Width = 75
      Height = 25
      Caption = #20445#23384
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 192
      Top = 48
      Width = 33
      Height = 25
      Caption = '>'
      TabOrder = 4
      OnClick = btn2Click
    end
    object btn4: TButton
      Left = 192
      Top = 125
      Width = 33
      Height = 25
      Caption = '>>'
      TabOrder = 5
      OnClick = btn4Click
    end
    object btn5: TButton
      Left = 192
      Top = 203
      Width = 33
      Height = 25
      Caption = '<<'
      TabOrder = 6
      OnClick = btn5Click
    end
    object btn6: TButton
      Left = 192
      Top = 280
      Width = 33
      Height = 25
      Caption = '<'
      TabOrder = 7
      OnClick = btn6Click
    end
  end
end
