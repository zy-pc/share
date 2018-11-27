object frm_repo_czyyjrb: Tfrm_repo_czyyjrb
  Left = 251
  Top = 123
  Caption = 'frm_repo_czyyjrb'
  ClientHeight = 378
  ClientWidth = 815
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 8
    Top = 8
    Width = 794
    Height = 353
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = qry_dy
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
      50.000000000000000000
      934.200000000000000000
      100.000000000000000000
      2100.800000000000000000
      50.000000000000000000
      50.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 0
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
    PreviewDefaultSaveType = stQRP
    object ColumnHeaderBand1: TQRBand
      Left = 19
      Top = 38
      Width = 756
      Height = 281
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
        743.479166666666700000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRDBText3: TQRDBText
        Left = 63
        Top = 110
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          166.687500000000000000
          291.041666666666700000
          108.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'syjze'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        Mask = '#.00'
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText5: TQRDBText
        Left = 130
        Top = 110
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          343.958333333333300000
          291.041666666666700000
          108.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'syjrc'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        Mask = '#.00'
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel12: TQRLabel
        Left = 245
        Top = 6
        Width = 265
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          648.229166666666700000
          15.875000000000000000
          701.145833333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #20303#38498#25910#36153#25805#20316#21592#39044#20132#26085#25253#34920
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 16
      end
      object sfrq: TQRLabel
        Left = 184
        Top = 37
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          486.833333333333300000
          97.895833333333330000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'sfrq'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 12
      end
      object sfczy: TQRLabel
        Left = 20
        Top = 37
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          52.916666666666670000
          97.895833333333330000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'sfczy'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 12
      end
      object QRShape1: TQRShape
        Left = 5
        Top = 58
        Width = 748
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          13.229166666666700000
          153.458333333333000000
          1979.083333333330000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel16: TQRLabel
        Left = 72
        Top = 89
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          190.500000000000000000
          235.479166666666700000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#39069
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 12
      end
      object QRShape3: TQRShape
        Left = 54
        Top = 86
        Width = 127
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          142.875000000000000000
          227.541666666667000000
          336.020833333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel17: TQRLabel
        Left = 105
        Top = 68
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          277.812500000000000000
          179.916666666666700000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#39044#20132
        Color = clWhite
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 139
        Top = 89
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          367.770833333333300000
          235.479166666666700000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31508#25968
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel19: TQRLabel
        Left = 6
        Top = 199
        Width = 129
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          526.520833333333300000
          341.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39044#20132#20316#24223#25910#25454#21495#65306
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText18: TQRDBText
        Left = 7
        Top = 216
        Width = 735
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          18.520833333333330000
          571.500000000000000000
          1944.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'tfsjh'
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 6
        Top = 171
        Width = 129
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          452.437500000000000000
          341.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39044#20132#25910#25454#36215#27490#21495#65306
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText20: TQRDBText
        Left = 152
        Top = 170
        Width = 593
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          402.166666666666700000
          449.791666666666700000
          1568.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'sjqzh'
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel36: TQRLabel
        Left = 473
        Top = 68
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1251.479166666667000000
          179.916666666666700000
          256.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39044#20132#24212#20132#37329#39069
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText23: TQRDBText
        Left = 496
        Top = 92
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1312.333333333333000000
          243.416666666666700000
          129.645833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'yjssje'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        Mask = '#.00'
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText1: TQRDBText
        Left = 296
        Top = 111
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          783.166666666666700000
          293.687500000000000000
          108.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'tyjze'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        Mask = '#.00'
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText2: TQRDBText
        Left = 368
        Top = 112
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          973.666666666666700000
          296.333333333333300000
          108.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'tyjrc'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        Mask = '#.00'
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel1: TQRLabel
        Left = 305
        Top = 90
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          806.979166666666700000
          238.125000000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#39069
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 12
      end
      object QRShape2: TQRShape
        Left = 295
        Top = 87
        Width = 127
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          780.520833333333000000
          230.187500000000000000
          336.020833333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel2: TQRLabel
        Left = 320
        Top = 67
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          846.666666666666700000
          177.270833333333300000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20316#24223#39044#20132
        Color = clWhite
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 372
        Top = 90
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          984.250000000000000000
          238.125000000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31508#25968
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 12
      end
      object QRShape4: TQRShape
        Left = 7
        Top = 165
        Width = 746
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          18.520833333333330000
          436.562500000000000000
          1973.791666666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 5
        Top = 197
        Width = 746
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          13.229166666666670000
          521.229166666666700000
          1973.791666666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 6
        Top = 277
        Width = 745
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          15.875000000000000000
          732.895833333333000000
          1971.145833333330000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object dxje: TQRLabel
        Left = 309
        Top = 144
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          817.562500000000000000
          381.000000000000000000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22823#20889#37329#39069
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 10
      end
      object jzdh: TQRLabel
        Left = 570
        Top = 37
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1508.125000000000000000
          97.895833333333330000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32467#24080#21333#21495
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel13: TQRLabel
        Left = 611
        Top = 68
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1616.604166666667000000
          179.916666666666700000
          256.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38134#34892#21010#21345#37329#39069
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText4: TQRDBText
        Left = 631
        Top = 92
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1669.520833333333000000
          243.416666666666700000
          108.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'fxjje'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        Mask = '#.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRShape7: TQRShape
        Left = 7
        Top = 139
        Width = 746
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          18.520833333333330000
          367.770833333333300000
          1973.791666666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel37: TQRLabel
        Left = 8
        Top = 145
        Width = 129
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          383.645833333333300000
          341.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21512#35745#39044#20132#24212#20132#37329#39069
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object qrdbtxthjje: TQRDBText
        Left = 151
        Top = 144
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          399.520833333333300000
          381.000000000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'hjje'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        Mask = '#.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
    end
  end
  object qry_dy: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    OnCalcFields = qry_dyCalcFields
    Parameters = <>
    SQL.Strings = (
      'exec zysf_cz_czyjkd '#39#39)
    Left = 437
    Top = 229
    object qry_dyjzdh: TStringField
      FieldName = 'jzdh'
      FixedChar = True
      Size = 16
    end
    object qry_dyczydm: TStringField
      FieldName = 'czydm'
      FixedChar = True
      Size = 4
    end
    object qry_dyjzrq: TDateTimeField
      FieldName = 'jzrq'
    end
    object qry_dysyjze: TBCDField
      FieldName = 'syjze'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qry_dysyjrc: TIntegerField
      FieldName = 'syjrc'
    end
    object qry_dytyjze: TBCDField
      FieldName = 'tyjze'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qry_dytyjrc: TIntegerField
      FieldName = 'tyjrc'
    end
    object qry_dycybxje: TBCDField
      FieldName = 'cybxje'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qry_dycybxrc: TIntegerField
      FieldName = 'cybxrc'
    end
    object qry_dycytxje: TBCDField
      FieldName = 'cytxje'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qry_dycytxrc: TIntegerField
      FieldName = 'cytxrc'
    end
    object qry_dyssje: TBCDField
      FieldName = 'ssje'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qry_dysjqzh: TMemoField
      FieldName = 'sjqzh'
      BlobType = ftMemo
    end
    object qry_dytfsjh: TMemoField
      FieldName = 'tfsjh'
      BlobType = ftMemo
    end
    object qry_dyjssjqzh: TMemoField
      FieldName = 'jssjqzh'
      BlobType = ftMemo
    end
    object qry_dyjstfsjh: TMemoField
      FieldName = 'jstfsjh'
      BlobType = ftMemo
    end
    object qry_dybryrs: TIntegerField
      FieldName = 'bryrs'
    end
    object qry_dybcyrs: TIntegerField
      FieldName = 'bcyrs'
    end
    object qry_dyjfje: TBCDField
      FieldName = 'jfje'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qry_dyjfbs: TIntegerField
      FieldName = 'jfbs'
    end
    object qry_dyjsbrfy: TBCDField
      FieldName = 'jsbrfy'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qry_dyjsbryj: TBCDField
      FieldName = 'jsbryj'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qry_dyjsyjbs: TIntegerField
      FieldName = 'jsyjbs'
    end
    object qry_dyjsqfbrfy: TBCDField
      FieldName = 'jsqfbrfy'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qry_dyjsqfbryj: TBCDField
      FieldName = 'jsqfbryj'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qry_dyzchzfy: TBCDField
      FieldName = 'zchzfy'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qry_dyqffy: TBCDField
      FieldName = 'qffy'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object qry_dyyjssje: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'yjssje'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object qry_dyjsssje: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'jsssje'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object qry_dyhjje: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'hjje'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object qry_dyksrq: TDateTimeField
      FieldName = 'ksrq'
    end
    object qry_dyjsrq: TDateTimeField
      FieldName = 'jsrq'
    end
    object qry_dyfxjje: TBCDField
      FieldName = 'fxjje'
      ReadOnly = True
      Precision = 9
      Size = 2
    end
  end
end
