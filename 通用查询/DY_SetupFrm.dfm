object SetupFiled_frm: TSetupFiled_frm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #22522#30784#34920#25968#25454#35774#32622#31383#21475
  ClientHeight = 563
  ClientWidth = 577
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 577
    Height = 29
    Align = alTop
    TabOrder = 0
    object lbl1: TLabel
      Left = 10
      Top = 9
      Width = 96
      Height = 16
      Caption = #29992#25143#34920#21644#35270#22270
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object tvSetup: TTreeView
    Left = 0
    Top = 29
    Width = 201
    Height = 534
    Align = alLeft
    Indent = 19
    ReadOnly = True
    TabOrder = 1
    OnChange = tvSetupChange
  end
  object pnl2: TPanel
    Left = 201
    Top = 29
    Width = 376
    Height = 534
    Align = alClient
    TabOrder = 2
    object lbl2: TLabel
      Left = 6
      Top = 24
      Width = 75
      Height = 15
      Caption = #34920#20013#25991#21517#65306
    end
    object lbl3: TLabel
      Left = 6
      Top = 51
      Width = 90
      Height = 15
      Caption = #34920#23383#27573#21015#34920#65306
    end
    object lbl4: TLabel
      Left = 6
      Top = 407
      Width = 83
      Height = 15
      Caption = #23383#27573#20013#25991#21517':'
    end
    object lbl5: TLabel
      Left = 6
      Top = 437
      Width = 68
      Height = 15
      Caption = #26174#31034#23485#24230':'
    end
    object lbl6: TLabel
      Left = 6
      Top = 466
      Width = 68
      Height = 15
      Caption = #26174#31034#24207#21495':'
    end
    object edtTabName: TEdit
      Left = 72
      Top = 21
      Width = 297
      Height = 23
      TabOrder = 0
    end
    object edtfieldName: TEdit
      Left = 74
      Top = 404
      Width = 297
      Height = 23
      TabOrder = 1
    end
    object btn2: TBitBtn
      Left = 187
      Top = 495
      Width = 75
      Height = 25
      Caption = #21024#38500
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object btn1: TBitBtn
      Left = 72
      Top = 495
      Width = 75
      Height = 25
      Caption = #20445#23384
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btn1Click
    end
    object btn3: TBitBtn
      Left = 291
      Top = 495
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
      TabOrder = 6
    end
    object strngrdSetup: TStringGrid
      Left = 6
      Top = 70
      Width = 363
      Height = 321
      TabStop = False
      ColCount = 4
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goRowSelect]
      TabOrder = 7
      OnClick = strngrdSetupClick
    end
    object edtWidth: TEdit
      Left = 74
      Top = 434
      Width = 121
      Height = 23
      TabOrder = 2
      OnKeyPress = edtWidthKeyPress
    end
    object edtIndex: TEdit
      Left = 74
      Top = 463
      Width = 121
      Height = 23
      TabOrder = 3
      OnKeyPress = edtWidthKeyPress
    end
  end
end
