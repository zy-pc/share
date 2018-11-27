object frm_byd: Tfrm_byd
  Left = 0
  Top = 0
  Caption = #25670#33647#21333#25171#21360
  ClientHeight = 464
  ClientWidth = 980
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 980
    Height = 41
    Align = alTop
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 30
      Height = 18
      Caption = #29942#31614
    end
    object Label2: TLabel
      Left = 224
      Top = 11
      Width = 90
      Height = 18
      Caption = #25191#34892#21307#22065#26085#26399
    end
    object pq: TEdit
      Left = 45
      Top = 9
      Width = 169
      Height = 24
      TabOrder = 0
      OnExit = pqExit
      OnKeyPress = pqKeyPress
    end
    object BitBtn1: TBitBtn
      Left = 653
      Top = 10
      Width = 70
      Height = 25
      Caption = #37325#25171#21360
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 817
      Top = 8
      Width = 70
      Height = 25
      Caption = #25918#24323
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 900
      Top = 8
      Width = 70
      Height = 25
      Caption = #32467#26463
      TabOrder = 3
      OnClick = BitBtn3Click
    end
    object dt_zxsj: TDateTimePicker
      Left = 320
      Top = 11
      Width = 109
      Height = 24
      Date = 40401.666157951390000000
      Time = 40401.666157951390000000
      TabOrder = 4
      OnChange = dt_zxsjChange
    end
    object abr: TRadioButton
      Left = 457
      Top = 11
      Width = 66
      Height = 17
      Caption = #25353#30149#20154
      Checked = True
      TabOrder = 5
      TabStop = True
      OnClick = abrClick
    end
    object qbq: TRadioButton
      Left = 541
      Top = 11
      Width = 66
      Height = 17
      Caption = #20840#30149#21306
      TabOrder = 6
      OnClick = qbqClick
    end
    object BitBtn4: TBitBtn
      Left = 741
      Top = 10
      Width = 70
      Height = 25
      Caption = #25171#21360
      TabOrder = 7
      OnClick = BitBtn4Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 980
    Height = 423
    Align = alClient
    DataSource = ds_jyxm
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'tmh'
        Footers = <>
        Title.Caption = #20303#38498#21495
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'brxm'
        Footers = <>
        Title.Caption = #30149#20154#22995#21517
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'brxb'
        Footers = <>
        Title.Caption = #24615#21035
      end
      item
        EditButtons = <>
        FieldName = 'bch'
        Footers = <>
        Title.Caption = #30149#24202#21495
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'yzsx'
        Footers = <>
        Title.Caption = #23646#24615
      end
      item
        EditButtons = <>
        FieldName = 'lb'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'xmmc'
        Footers = <>
        Title.Caption = #39033#30446
        Width = 233
      end
      item
        EditButtons = <>
        FieldName = 'dw'
        Footers = <>
        Title.Caption = #21333#20301
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'gg'
        Footers = <>
        Title.Caption = #35268#26684
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'ypyl'
        Footers = <>
        Title.Caption = #29992#37327
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'yldw'
        Footers = <>
        Title.Caption = ' '
        Width = 31
      end
      item
        EditButtons = <>
        FieldName = 'yytj'
        Footers = <>
        Title.Caption = #36884#24452
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'bz'
        Footers = <>
        Title.Caption = #35828#26126
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'yzid'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'jyflbh'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'jyfzbh'
        Footers = <>
        Title.Caption = #29942#31614
        Visible = False
        Width = 117
      end
      item
        EditButtons = <>
        FieldName = 'byddy'
        Footers = <>
        Title.Caption = #26159#21542#25171#21360
        Width = 48
      end>
  end
  object QuickRep1: TQuickRep
    Left = 235
    Top = 136
    Width = 302
    Height = 225
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep1BeforePrint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      100.000000000000000000
      595.312500000000000000
      100.000000000000000000
      799.041666666666700000
      50.000000000000000000
      50.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    object QRBand1: TQRBand
      Left = 19
      Top = 38
      Width = 264
      Height = 59
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        156.104166666666700000
        698.500000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object p_zyh: TQRLabel
        Left = 8
        Top = 1
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          2.645833333333333000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20303#38498#21495
        Color = clWhite
        OnPrint = p_zyhPrint
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object p_xm: TQRLabel
        Left = 8
        Top = 20
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          52.916666666666670000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995#21517
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object p_xb: TQRLabel
        Left = 104
        Top = 20
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          275.166666666666700000
          52.916666666666670000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24615#21035
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object p_nl: TQRLabel
        Left = 174
        Top = 20
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          460.375000000000000000
          52.916666666666670000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24180#40836
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object p_bch: TQRLabel
        Left = 9
        Top = 38
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          23.812500000000000000
          100.541666666666700000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30149#24202#21495
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object p_ks: TQRLabel
        Left = 143
        Top = 1
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          378.354166666666700000
          2.645833333333333000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31185#23460
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object p_zxsj: TQRLabel
        Left = 143
        Top = 36
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          378.354166666666700000
          95.250000000000000000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25191#34892#26085#26399
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 19
      Top = 97
      Width = 264
      Height = 38
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = QRSubDetail1AfterPrint
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        100.541666666666700000
        698.500000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      OnNeedData = QRSubDetail1NeedData
      PrintBefore = False
      PrintIfEmpty = True
      object p_jyxm: TQRLabel
        Left = 9
        Top = 4
        Width = 216
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          23.812500000000000000
          10.583333333333330000
          571.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'p_jyxm'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 19
      Top = 135
      Width = 264
      Height = 42
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        111.125000000000000000
        698.500000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
    end
  end
  object sp_jyxm: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_zyyz_cx_byd'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@bqdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '0018'
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = ' '
      end
      item
        Name = '@zxsj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '20110105'
      end
      item
        Name = '@ksdm'
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 568
    Top = 184
  end
  object ds_jyxm: TDataSource
    DataSet = sp_jyxm
    Left = 552
    Top = 120
  end
  object sp_yzsj: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zyyz_yzsj;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@scyzsj'
        Attributes = [paNullable]
        DataType = ftDateTime
        Direction = pdInputOutput
        Value = Null
      end>
    Left = 672
    Top = 208
  end
  object ad_zyh: TADODataSet
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 672
    Top = 128
  end
  object sp_up_jysqd: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_zyyz_up_byd_bq'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@zxsj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@yzid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@bqdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end>
    Left = 568
    Top = 240
  end
  object sp_brlb: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_zyyz_cx_byd_brlist'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@zxsj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@bqdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end>
    Left = 768
    Top = 224
  end
end
