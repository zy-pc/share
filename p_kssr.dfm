object frm_kssr: Tfrm_kssr
  Left = 316
  Top = 161
  BorderIcons = [biSystemMenu]
  Caption = #31185#23460#25910#20837#25253#34920
  ClientHeight = 513
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 12
      Width = 64
      Height = 16
      Caption = #32479#35745#26376#24230
    end
    object cbmn: TComboBox
      Left = 84
      Top = 9
      Width = 126
      Height = 24
      ItemHeight = 16
      TabOrder = 0
      Text = 'cbmn'
      Visible = False
    end
    object cbnj: TComboBox
      Left = 226
      Top = 9
      Width = 129
      Height = 24
      ItemHeight = 16
      TabOrder = 1
      Text = 'cbnj'
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 580
      Top = 9
      Width = 75
      Height = 25
      Caption = #32479#35745'(&T)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn3: TBitBtn
      Left = 696
      Top = 9
      Width = 75
      Height = 25
      Caption = #36820#22238'(&B)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn3Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 782
    Height = 472
    Align = alClient
    DataSource = ds_kssr
    EditActions = [geaCopyEh]
    Flat = False
    FooterColor = clYellow
    FooterFont.Charset = GB2312_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -16
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ksmc'
        Footer.Value = #21512#35745
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = #31185#23460#21517#31216
        Width = 142
      end
      item
        EditButtons = <>
        FieldName = 'hj'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #21512#35745
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'mzsr'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #25910#20837'|'#38376#35786#25910#20837
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'zysr'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #25910#20837'|'#20303#38498#25910#20837
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'hj1'
        Footers = <>
        Title.Caption = #25910#20837'|'#21512#35745
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'kstz'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #35843#25972'|'#31185#38388#35843#22686
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'kstj'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #35843#25972'|'#31185#38388#35843#20943
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'sqtz'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #35843#25972'|'#25910#27424#35843#22686
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'xqtj'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #35843#25972'|'#26032#27424#35843#20943
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'ybkk'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #35843#25972'|'#21307#20445#35843#20943
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'hj2'
        Footers = <>
        Title.Caption = #35843#25972'|'#21512#35745
        Width = 90
      end>
  end
  object QuickRep1: TQuickRep
    Left = -24
    Top = 688
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = ad_srbb
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #23435#20307
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
      2794.000000000000000000
      100.000000000000000000
      2160.000000000000000000
      100.000000000000000000
      100.000000000000000000
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
      Left = 38
      Top = 38
      Width = 740
      Height = 89
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        235.479166666666700000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object bt: TQRLabel
        Left = 361
        Top = 6
        Width = 17
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          955.145833333333300000
          15.875000000000000000
          44.979166666666670000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'bt'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object tjyd: TQRLabel
        Left = 8
        Top = 70
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          21.166666666666700000
          185.208333333333000000
          76.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'tjyd'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object dysj: TQRLabel
        Left = 464
        Top = 70
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1227.666666666670000000
          185.208333333333000000
          76.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'dysj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 174
      Width = 740
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel11: TQRLabel
        Left = 8
        Top = 14
        Width = 40
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          21.166666666666700000
          37.041666666666700000
          105.833333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21046#34920#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 256
        Top = 14
        Width = 40
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          677.333333333333000000
          37.041666666666700000
          105.833333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23457#26680#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 464
        Top = 14
        Width = 40
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1227.666666666670000000
          37.041666666666700000
          105.833333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20250#35745#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 127
      Width = 740
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.145833333333330000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel2: TQRLabel
        Left = 472
        Top = 5
        Width = 53
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1248.833333333330000000
          13.229166666666700000
          140.229166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31185#38388#35843#20943
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 536
        Top = 5
        Width = 53
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1418.166666666670000000
          13.229166666666700000
          140.229166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#27424#35843#22686
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 8
        Top = 5
        Width = 53
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          21.166666666666700000
          13.229166666666700000
          140.229166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31185#23460#21517#31216
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 320
        Top = 5
        Width = 53
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          846.666666666667000000
          13.229166666666700000
          140.229166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20303#38498#25910#20837
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 400
        Top = 5
        Width = 53
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1058.333333333330000000
          13.229166666666700000
          140.229166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31185#38388#35843#22686
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 216
        Top = 5
        Width = 53
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          571.500000000000000000
          13.229166666666700000
          140.229166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38376#35786#25910#20837
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 608
        Top = 5
        Width = 53
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1608.666666666670000000
          13.229166666666700000
          140.229166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26032#27424#35843#20943
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 672
        Top = 5
        Width = 53
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1778.000000000000000000
          13.229166666666700000
          140.229166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#20445#25187#27454
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 144
        Top = 5
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          381.000000000000000000
          13.229166666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21512#35745
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 152
      Width = 740
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        58.208333333333330000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 0
        Top = 4
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          0.000000000000000000
          10.583333333333300000
          76.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ad_srbb
        DataField = 'ksmc'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 160
        Top = 4
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          423.333333333333000000
          10.583333333333300000
          39.687500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ad_srbb
        DataField = 'hj'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 240
        Top = 4
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          635.000000000000000000
          10.583333333333300000
          76.729166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ad_srbb
        DataField = 'mzsr'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 344
        Top = 4
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          910.166666666667000000
          10.583333333333300000
          76.729166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ad_srbb
        DataField = 'zysr'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 424
        Top = 4
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1121.833333333330000000
          10.583333333333300000
          76.729166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ad_srbb
        DataField = 'kstz'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 496
        Top = 4
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1312.333333333330000000
          10.583333333333300000
          76.729166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ad_srbb
        DataField = 'kstj'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 560
        Top = 4
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1481.666666666670000000
          10.583333333333300000
          76.729166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ad_srbb
        DataField = 'sqtz'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 632
        Top = 4
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1672.166666666670000000
          10.583333333333300000
          76.729166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ad_srbb
        DataField = 'xqtj'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 696
        Top = 4
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1841.500000000000000000
          10.583333333333300000
          76.729166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ad_srbb
        DataField = 'ybkk'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object sp_tj: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'cwk_tj_srhz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@year'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@month'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@lb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end>
    Left = 424
    Top = 112
  end
  object ad_srbb: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    OnCalcFields = ad_srbbCalcFields
    CommandText = 'select * from cwk_kssrbb'
    Parameters = <>
    Left = 360
    Top = 104
    object ad_srbbksdm: TStringField
      FieldName = 'ksdm'
      FixedChar = True
      Size = 4
    end
    object ad_srbbksmc: TStringField
      FieldName = 'ksmc'
      FixedChar = True
    end
    object ad_srbbhj: TFloatField
      FieldKind = fkCalculated
      FieldName = 'hj'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object ad_srbbmzsr: TBCDField
      FieldName = 'mzsr'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object ad_srbbzysr: TBCDField
      FieldName = 'zysr'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object ad_srbbhj1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'hj1'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object ad_srbbkstz: TBCDField
      FieldName = 'kstz'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object ad_srbbkstj: TBCDField
      FieldName = 'kstj'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object ad_srbbsqtz: TBCDField
      FieldName = 'sqtz'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object ad_srbbxqtj: TBCDField
      FieldName = 'xqtj'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object ad_srbbybkk: TBCDField
      FieldName = 'ybkk'
      DisplayFormat = ',0.00'
      Precision = 18
      Size = 2
    end
    object ad_srbbhj2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'hj2'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object ad_srbbtjyd: TStringField
      FieldName = 'tjyd'
      FixedChar = True
      Size = 6
    end
  end
  object ds_kssr: TDataSource
    DataSet = ad_srbb
    Left = 352
    Top = 144
  end
  object ad_ksdm: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 'select * from sys_ksdm'
    Parameters = <>
    Left = 320
    Top = 120
  end
  object ds_ks: TDataSource
    DataSet = ad_ksdm
    Left = 472
    Top = 153
  end
end
