object frm_cyjsrb: Tfrm_cyjsrb
  Left = 82
  Top = 82
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #20986#38498#30149#21592#32467#31639#24773#20917#26126#32454
  ClientHeight = 510
  ClientWidth = 1070
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object QuickRep2: TQuickRep
    Left = 19
    Top = 133
    Width = 1123
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = sp_sbqf
    Font.Charset = GB2312_CHARSET
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
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      2970.000000000000000000
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
    PreviewDefaultSaveType = stQRP
    object QRBand5: TQRBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 63
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
        166.687500000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object bt2: TQRLabel
        Left = 383
        Top = 5
        Width = 281
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1013.354166666667000000
          13.229166666666670000
          743.479166666666700000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #24453#32467#24080#30149#20154#25910#65288#36864#65289#24453#32467#24080#26126#32454
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
      object dyrq1: TQRLabel
        Left = 546
        Top = 43
        Width = 60
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1444.625000000000000000
          113.770833333333300000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32479#35745#26085#26399':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object gltj1: TQRLabel
        Left = 8
        Top = 43
        Width = 53
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          21.166666666666670000
          113.770833333333300000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36807#34385#26465#20214
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRBand6: TQRBand
      Left = 38
      Top = 101
      Width = 1047
      Height = 24
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
        63.500000000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel15: TQRLabel
        Left = 288
        Top = 4
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          762.000000000000000000
          10.583333333333330000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21407#24635#36153#29992
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 382
        Top = 4
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1010.708333333333000000
          10.583333333333330000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24635#39044#20132
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 160
        Top = 4
        Width = 27
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          423.333333333333300000
          10.583333333333330000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995#21517
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 83
        Top = 3
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          219.604166666666700000
          7.937500000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20986#38498#31185#23460
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 8
        Top = 4
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          10.583333333333330000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32467#31639#26085#26399
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 663
        Top = 4
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1754.187500000000000000
          10.583333333333330000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23454#34917#37329#39069
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 464
        Top = 4
        Width = 53
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1227.666666666667000000
          10.583333333333330000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32467#31639#34917#177
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 584
        Top = 4
        Width = 40
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1545.166666666667000000
          10.583333333333330000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24635#36153#29992
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 236
        Top = 2
        Width = 27
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          624.416666666666700000
          5.291666666666667000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36153#21035
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRBand7: TQRBand
      Left = 38
      Top = 125
      Width = 1047
      Height = 25
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
        66.145833333333330000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText10: TQRDBText
        Left = 8
        Top = 3
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          7.937500000000000000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_sbqf
        DataField = 'jsrq'
        OnPrint = QRDBText10Print
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 83
        Top = 2
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          219.604166666666700000
          5.291666666666667000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_sbqf
        DataField = 'ksmc'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 160
        Top = 2
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          423.333333333333300000
          5.291666666666667000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_sbqf
        DataField = 'brxm'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 398
        Top = 4
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1053.041666666667000000
          10.583333333333330000
          58.208333333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_sbqf
        DataField = 'zyj'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText14: TQRDBText
        Left = 318
        Top = 4
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          841.375000000000000000
          10.583333333333330000
          58.208333333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_sbqf
        DataField = 'zfy'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText18: TQRDBText
        Left = 680
        Top = 4
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1799.166666666667000000
          10.583333333333330000
          76.729166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_sbqf
        DataField = 'sbje'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText15: TQRDBText
        Left = 496
        Top = 4
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1312.333333333333000000
          10.583333333333330000
          58.208333333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_sbqf
        DataField = 'jsb'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText16: TQRDBText
        Left = 594
        Top = 4
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1571.625000000000000000
          10.583333333333330000
          76.729166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_sbqf
        DataField = 'fyze'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText20: TQRDBText
        Left = 234
        Top = 2
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          619.125000000000000000
          5.291666666666667000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_sbqf
        DataField = 'lbmc'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRBand8: TQRBand
      Left = 38
      Top = 176
      Width = 1047
      Height = 32
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
        84.666666666666670000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRSysData2: TQRSysData
        Left = 631
        Top = 5
        Width = 63
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1669.520833333333000000
          13.229166666666670000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Text = #31532
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 698
        Top = 5
        Width = 14
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1846.791666666667000000
          13.229166666666670000
          37.041666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39029
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 16
        Top = 7
        Width = 40
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          42.333333333333330000
          18.520833333333330000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20027#31649#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object zbr1: TQRLabel
        Left = 368
        Top = 7
        Width = 40
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          973.666666666666700000
          18.520833333333330000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21046#34920#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRBand10: TQRBand
      Left = 38
      Top = 150
      Width = 1047
      Height = 26
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
        68.791666666666670000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel20: TQRLabel
        Left = 8
        Top = 4
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          21.166666666666670000
          10.583333333333330000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21512#35745
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr7: TQRExpr
        Left = 260
        Top = 4
        Width = 80
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          687.916666666667000000
          10.583333333333300000
          211.666666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(sp_sbqf.zfy)'
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr8: TQRExpr
        Left = 348
        Top = 4
        Width = 80
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          920.750000000000000000
          10.583333333333300000
          211.666666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(sp_sbqf.ZYJ)'
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr9: TQRExpr
        Left = 444
        Top = 4
        Width = 80
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1174.750000000000000000
          10.583333333333300000
          211.666666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(sp_sbqf.JSB)'
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr11: TQRExpr
        Left = 544
        Top = 4
        Width = 80
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1439.333333333330000000
          10.583333333333300000
          211.666666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(sp_sbqf.FYZE)'
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr12: TQRExpr
        Left = 650
        Top = 4
        Width = 66
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1719.791666666670000000
          10.583333333333300000
          174.625000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(sp_sbqf.sbje)'
        ExportAs = exptText
        FontSize = 10
      end
      object QRSysData3: TQRSysData
        Left = 118
        Top = 5
        Width = 132
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          312.208333333333300000
          13.229166666666670000
          349.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDetailCount
        Text = #20154#25968':'
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
    end
  end
  object QuickRep3: TQuickRep
    Left = 300
    Top = 125
    Width = 1123
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = sp_cyjsrb
    Font.Charset = GB2312_CHARSET
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
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      2970.000000000000000000
      0.000000000000000000
      70.000000000000000000
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
    PreviewDefaultSaveType = stQRP
    object QRBand2: TQRBand
      Left = 0
      Top = 157
      Width = 1097
      Height = 21
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
        55.562500000000000000
        2902.479166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel34: TQRLabel
        Left = 14
        Top = 3
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          37.041666666666670000
          7.937500000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21512#35745
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr23: TQRExpr
        Left = 695
        Top = 1
        Width = 58
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1838.854166666667000000
          2.645833333333333000
          153.458333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(sp_cyjsrb.zfy)'
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel35: TQRLabel
        Left = 91
        Top = 2
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          240.770833333333300000
          5.291666666666667000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20154#25968':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr29: TQRExpr
        Left = 161
        Top = 2
        Width = 66
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          425.979166666666700000
          5.291666666666667000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'COUNT'
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRGroup2: TQRGroup
      Left = 0
      Top = 85
      Width = 1097
      Height = 48
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
        127.000000000000000000
        2902.479166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'sp_cyjsrb.ksmc'
      FooterBand = QRBand2
      Master = QuickRep3
      ReprintOnNewPage = False
      object QRLabel36: TQRLabel
        Left = 520
        Top = 6
        Width = 60
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1375.833333333333000000
          15.875000000000000000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32479#35745#26085#26399':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel38: TQRLabel
        Left = 713
        Top = 30
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1886.479166666667000000
          79.375000000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21512#35745
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel40: TQRLabel
        Left = 119
        Top = 27
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          314.854166666666700000
          71.437500000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995#21517
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel41: TQRLabel
        Left = 380
        Top = 29
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1005.416666666667000000
          76.729166666666670000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32467#31639#26085#26399
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel46: TQRLabel
        Left = 175
        Top = 29
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          463.020833333333300000
          76.729166666666670000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36153#21035
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel48: TQRLabel
        Left = 478
        Top = 27
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1264.708333333333000000
          71.437500000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20837#38498#26085#26399
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 2
        Top = 23
        Width = 828
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          5.291666666666667000
          60.854166666666680000
          2190.750000000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel50: TQRLabel
        Left = 11
        Top = 28
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          74.083333333333330000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20986#38498#31185#23460
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText41: TQRDBText
        Left = 8
        Top = 45
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          119.062500000000000000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'ksmc'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel52: TQRLabel
        Left = 238
        Top = 29
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          629.708333333333300000
          76.729166666666670000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21333#20301
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel37: TQRLabel
        Left = 635
        Top = 28
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1680.104166666667000000
          74.083333333333330000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22825#25968
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel39: TQRLabel
        Left = 561
        Top = 28
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1484.312500000000000000
          74.083333333333330000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20986#38498#26085#26399
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel42: TQRLabel
        Left = 305
        Top = 29
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          806.979166666666700000
          76.729166666666670000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#25454#21495
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRBand4: TQRBand
      Left = 0
      Top = 38
      Width = 1097
      Height = 47
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
        124.354166666666700000
        2902.479166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel53: TQRLabel
        Left = 448
        Top = 5
        Width = 201
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1185.333333333333000000
          13.229166666666670000
          531.812500000000000000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #20986#38498#30149#20154#32467#31639#36153#29992#26126#32454
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
    end
    object QRBand11: TQRBand
      Left = 0
      Top = 204
      Width = 1097
      Height = 34
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
        89.958333333333330000
        2902.479166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel56: TQRLabel
        Left = 623
        Top = 8
        Width = 40
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1648.354166666667000000
          21.166666666666670000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21046#34920#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRBand12: TQRBand
      Left = 0
      Top = 178
      Width = 1097
      Height = 26
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
        68.791666666666670000
        2902.479166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel57: TQRLabel
        Left = 8
        Top = 2
        Width = 40
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          21.166666666666670000
          5.291666666666667000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24635#21512#35745
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel58: TQRLabel
        Left = 127
        Top = 2
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          336.020833333333300000
          5.291666666666667000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20154#25968':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr30: TQRExpr
        Left = 167
        Top = 2
        Width = 66
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          441.854166666666700000
          5.291666666666667000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'COUNT'
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr31: TQRExpr
        Left = 702
        Top = 6
        Width = 58
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1857.375000000000000000
          15.875000000000000000
          153.458333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(sp_cyjsrb.zfy)'
        ExportAs = exptText
        FontSize = 8
      end
    end
    object QRBand1: TQRBand
      Left = 0
      Top = 133
      Width = 1097
      Height = 24
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
        63.500000000000000000
        2902.479166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText26: TQRDBText
        Left = 387
        Top = 3
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1023.937500000000000000
          7.937500000000000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'jsrq'
        OnPrint = QRDBText1Print
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText27: TQRDBText
        Left = 121
        Top = 2
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          320.145833333333300000
          5.291666666666667000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'brxm'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText29: TQRDBText
        Left = 720
        Top = 0
        Width = 19
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1905.000000000000000000
          0.000000000000000000
          50.270833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'zfy'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText35: TQRDBText
        Left = 182
        Top = 1
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          481.541666666666700000
          2.645833333333333000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'lbmc'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText37: TQRDBText
        Left = 487
        Top = 2
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1288.520833333333000000
          5.291666666666667000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'ryrq'
        OnPrint = QRDBText1Print
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText40: TQRDBText
        Left = 234
        Top = 3
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          619.125000000000000000
          7.937500000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'sbdw'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText28: TQRDBText
        Left = 565
        Top = 1
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1494.895833333333000000
          2.645833333333333000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'cyrq'
        OnPrint = QRDBText1Print
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText30: TQRDBText
        Left = 640
        Top = 2
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1693.333333333333000000
          5.291666666666667000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'ts'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText31: TQRDBText
        Left = 308
        Top = 3
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          814.916666666666700000
          7.937500000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'sjbh'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText32: TQRDBText
        Left = 11
        Top = 3
        Width = 99
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          7.937500000000000000
          261.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'ksmc'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape3: TQRShape
        Left = -2
        Top = 21
        Width = 768
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -5.291666666666667000
          55.562500000000000000
          2032.000000000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1070
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 12
      Width = 60
      Height = 15
      Caption = #20986#38498#26085#26399
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 219
      Top = 12
      Width = 15
      Height = 15
      Caption = #21040
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 389
      Top = 7
      Width = 75
      Height = 25
      Caption = #26597#35810'(&Q)'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object dtp1: TDateTimePicker
      Left = 72
      Top = 8
      Width = 137
      Height = 23
      Date = 37750.650481331000000000
      Time = 37750.650481331000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 1
      OnChange = dtp1Change
    end
    object BitBtn3: TBitBtn
      Left = 683
      Top = 8
      Width = 75
      Height = 25
      Caption = #32467#26463'(&X)'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object dtp2: TDateTimePicker
      Left = 242
      Top = 7
      Width = 137
      Height = 23
      Date = 37750.650481331000000000
      Time = 37750.650481331000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 3
      OnChange = dtp1Change
    end
    object cxButton1: TcxButton
      Left = 517
      Top = 7
      Width = 85
      Height = 25
      Caption = #25171#21360'(&P)'
      TabOrder = 4
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDown
      LookAndFeel.Kind = lfStandard
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 1070
    Height = 469
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 1068
      Height = 467
      ActivePage = TabSheet1
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = ' &1. '#32467#31639#30149#21592#24773#20917' '
        DesignSize = (
          1060
          436)
        object cxgrd1: TcxGrid
          Left = 0
          Top = 0
          Width = 1060
          Height = 436
          Align = alClient
          TabOrder = 0
          object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnCustomDrawCell = cxgrdbtblvwGrid1DBTableView1CustomDrawCell
            DataController.DataSource = ds_CYBRJS
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                Column = cxgrdbtblvwGrid1DBTableView1Column10
              end
              item
                Kind = skSum
                Column = cxgrdbtblvwGrid1DBTableView1Column11
              end
              item
                Kind = skSum
                Column = cxgrdbtblvwGrid1DBTableView1Column12
              end
              item
                Kind = skSum
                Column = cxgrdbtblvwGrid1DBTableView1Column13
              end
              item
                Kind = skSum
                Column = cxgrdbtblvwGrid1DBTableView1Column14
              end
              item
                Kind = skSum
                Column = cxgrdbtblvwGrid1DBTableView1Column15
              end
              item
                Kind = skSum
                Column = cxgrdbtblvwGrid1DBTableView1Column16
              end
              item
                Kind = skSum
                Column = jmfy
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellMultiSelect = True
            OptionsView.Footer = True
            object cxgrdbtblvwGrid1DBTableView1Column1: TcxGridDBColumn
              Caption = #25805#20316#21592
              DataBinding.FieldName = 'czyxm'
              HeaderAlignmentHorz = taCenter
              Width = 67
            end
            object cxgrdbtblvwGrid1DBTableView1Column2: TcxGridDBColumn
              Caption = #25910#25454#21495
              DataBinding.FieldName = 'sjbh'
              HeaderAlignmentHorz = taCenter
              Width = 78
            end
            object cxgrdbtblvwGrid1DBTableView1Column17: TcxGridDBColumn
              Caption = #20837#38498#26085#26399
              DataBinding.FieldName = 'ryrq'
              Width = 88
            end
            object cxgrdbtblvwGrid1DBTableView1Column18: TcxGridDBColumn
              Caption = #20986#38498#26085#26399
              DataBinding.FieldName = 'cyrq'
              Width = 86
            end
            object cxgrdbtblvwGrid1DBTableView1Column19: TcxGridDBColumn
              Caption = #22825#25968
              DataBinding.FieldName = 'ts'
            end
            object cxgrdbtblvwGrid1DBTableView1Column3: TcxGridDBColumn
              Caption = #32467#31639#26085#26399
              DataBinding.FieldName = 'jsrq'
              HeaderAlignmentHorz = taCenter
              Width = 92
            end
            object cxgrdbtblvwGrid1DBTableView1Column4: TcxGridDBColumn
              Caption = #20986#38498#31185#23460
              DataBinding.FieldName = 'ksmc'
              HeaderAlignmentHorz = taCenter
              Width = 112
            end
            object cxgrdbtblvwGrid1DBTableView1Column5: TcxGridDBColumn
              Caption = #30149#20154#22995#21517
              DataBinding.FieldName = 'brxm'
              HeaderAlignmentHorz = taCenter
              Width = 79
            end
            object cxgrdbtblvwGrid1DBTableView1Column6: TcxGridDBColumn
              Caption = #26465#30721#21495
              DataBinding.FieldName = 'tmh'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxgrdbtblvwGrid1DBTableView1Column7: TcxGridDBColumn
              Caption = #30149#24202#21495
              DataBinding.FieldName = 'bch'
              HeaderAlignmentHorz = taCenter
              Width = 83
            end
            object cxgrdbtblvwGrid1DBTableView1Column8: TcxGridDBColumn
              Caption = #30149#20154#31867#21035
              DataBinding.FieldName = 'lbmc'
              HeaderAlignmentHorz = taCenter
              Width = 78
            end
            object cxgrdbtblvwGrid1DBTableView1Column9: TcxGridDBColumn
              Caption = #31038#20445#21333#20301
              DataBinding.FieldName = 'sbdw'
              HeaderAlignmentHorz = taCenter
              Width = 119
            end
            object cxgrdbtblvwGrid1DBTableView1Column10: TcxGridDBColumn
              Caption = #24635#39044#20132
              DataBinding.FieldName = 'zyj'
              HeaderAlignmentHorz = taCenter
              Width = 75
            end
            object cxgrdbtblvwGrid1DBTableView1Column11: TcxGridDBColumn
              Caption = #24635#36153#29992
              DataBinding.FieldName = 'zfy'
              HeaderAlignmentHorz = taCenter
              Width = 79
            end
            object cxgrdbtblvwGrid1DBTableView1Column12: TcxGridDBColumn
              Caption = #23454#32467#33258#36153
              DataBinding.FieldName = 'sjzf'
              HeaderAlignmentHorz = taCenter
              Width = 84
            end
            object cxgrdbtblvwGrid1DBTableView1Column13: TcxGridDBColumn
              Caption = #20914#36716#39044#20132
              DataBinding.FieldName = 'czyj'
              HeaderAlignmentHorz = taCenter
              Width = 76
            end
            object cxgrdbtblvwGrid1DBTableView1Column14: TcxGridDBColumn
              Caption = #24453#20914#39044#20132
              DataBinding.FieldName = 'dcyj'
              HeaderAlignmentHorz = taCenter
              Width = 78
            end
            object cxgrdbtblvwGrid1DBTableView1Column15: TcxGridDBColumn
              Caption = #32479#31609#37329#39069
              DataBinding.FieldName = 'djzk'
              HeaderAlignmentHorz = taCenter
              Width = 81
            end
            object cxgrdbtblvwGrid1DBTableView1Column16: TcxGridDBColumn
              Caption = #23454#34917#37329#39069
              DataBinding.FieldName = 'sbje'
              HeaderAlignmentHorz = taCenter
              Width = 86
            end
            object jmfy: TcxGridDBColumn
              Caption = #20943#20813#36153'+'#20302#20445#36153
              DataBinding.FieldName = 'jmfy'
              Width = 120
            end
          end
          object cxgrdlvlGrid1Level1: TcxGridLevel
            GridView = cxgrdbtblvwGrid1DBTableView1
          end
        end
        object Panel3: TPanel
          Left = 623
          Top = 6
          Width = 372
          Height = 27
          Anchors = [akTop, akRight]
          TabOrder = 1
          object Label3: TLabel
            Left = 8
            Top = 7
            Width = 60
            Height = 15
            Caption = #25910#25454#21495#65306
          end
          object edt_Filter1: TEdit
            Left = 56
            Top = 3
            Width = 121
            Height = 23
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            TabOrder = 0
          end
          object edt_Filter2: TEdit
            Left = 183
            Top = 3
            Width = 121
            Height = 23
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            TabOrder = 1
          end
          object Button1: TButton
            Left = 304
            Top = 3
            Width = 60
            Height = 20
            Caption = #36807#28388
            TabOrder = 2
            OnClick = Button1Click
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = ' &1. '#32467#31639#30149#21592#24773#20917#27719#24635
        ImageIndex = 2
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1060
          Height = 436
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = DS_cyjsrb_hz
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                Column = cxGridDBColumn13
              end
              item
                Kind = skSum
                Column = cxGridDBColumn14
              end
              item
                Kind = skSum
                Column = cxGridDBColumn15
              end
              item
                Kind = skSum
                Column = cxGridDBColumn16
              end
              item
                Kind = skSum
                Column = cxGridDBColumn17
              end
              item
                Kind = skSum
                Column = cxGridDBColumn18
              end
              item
                Kind = skSum
                Column = cxGridDBColumn19
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellMultiSelect = True
            OptionsView.Footer = True
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = #25805#20316#21592
              DataBinding.FieldName = 'czyxm'
              HeaderAlignmentHorz = taCenter
              Width = 67
            end
            object cxGridDBColumn11: TcxGridDBColumn
              Caption = #30149#20154#31867#21035
              DataBinding.FieldName = 'lbmc'
              HeaderAlignmentHorz = taCenter
              Width = 78
            end
            object cxGridDBColumn12: TcxGridDBColumn
              Caption = #31038#20445#21333#20301
              DataBinding.FieldName = 'sbdw'
              HeaderAlignmentHorz = taCenter
              Width = 119
            end
            object cxGridDBColumn13: TcxGridDBColumn
              Caption = #24635#39044#20132
              DataBinding.FieldName = 'zyj'
              HeaderAlignmentHorz = taCenter
              Width = 75
            end
            object cxGridDBColumn14: TcxGridDBColumn
              Caption = #24635#36153#29992
              DataBinding.FieldName = 'zfy'
              HeaderAlignmentHorz = taCenter
              Width = 79
            end
            object cxGridDBColumn15: TcxGridDBColumn
              Caption = #23454#32467#33258#36153
              DataBinding.FieldName = 'sjzf'
              HeaderAlignmentHorz = taCenter
              Width = 84
            end
            object cxGridDBColumn16: TcxGridDBColumn
              Caption = #20914#36716#39044#20132
              DataBinding.FieldName = 'czyj'
              HeaderAlignmentHorz = taCenter
              Width = 76
            end
            object cxGridDBColumn17: TcxGridDBColumn
              Caption = #24453#20914#39044#20132
              DataBinding.FieldName = 'dcyj'
              HeaderAlignmentHorz = taCenter
              Width = 78
            end
            object cxGridDBColumn18: TcxGridDBColumn
              Caption = #32479#31609#37329#39069
              DataBinding.FieldName = 'djzk'
              HeaderAlignmentHorz = taCenter
              Width = 81
            end
            object cxGridDBColumn19: TcxGridDBColumn
              Caption = #23454#34917#37329#39069
              DataBinding.FieldName = 'sbje'
              HeaderAlignmentHorz = taCenter
              Width = 86
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = ' &2. '#25910#24453#32467'('#27424#36153')'#24773#20917'  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ImageIndex = 1
        ParentFont = False
        object DBGridEh2: TDBGridEh
          Left = 0
          Top = 0
          Width = 1060
          Height = 436
          Align = alClient
          DataGrouping.GroupLevels = <>
          DataSource = ds_sbqf
          EditActions = [geaCopyEh]
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = ANSI_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 3
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ReadOnly = True
          RowDetailPanel.Color = clBtnFace
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'jsrq'
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              Footer.Color = clInfoBk
              Footer.Font.Charset = GB2312_CHARSET
              Footer.Font.Color = clWindowText
              Footer.Font.Height = -15
              Footer.Font.Name = #23435#20307
              Footer.Font.Style = []
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #32467#31639#26085#26399
              Title.Font.Charset = GB2312_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
            end
            item
              EditButtons = <>
              FieldName = 'ksmc'
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              Footer.Color = clInfoBk
              Footer.Font.Charset = GB2312_CHARSET
              Footer.Font.Color = clWindowText
              Footer.Font.Height = -15
              Footer.Font.Name = #23435#20307
              Footer.Font.Style = []
              Footer.Value = #24635#35745
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #20986#38498#31185#23460
              Title.Font.Charset = GB2312_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'brxm'
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              Footer.Color = clInfoBk
              Footer.Font.Charset = GB2312_CHARSET
              Footer.Font.Color = clWindowText
              Footer.Font.Height = -15
              Footer.Font.Name = #23435#20307
              Footer.Font.Style = []
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #30149#20154#22995#21517
              Title.Font.Charset = GB2312_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 79
            end
            item
              EditButtons = <>
              FieldName = 'lbmc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #36153' '#21035
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'zyj'
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              Footer.Color = clInfoBk
              Footer.Font.Charset = GB2312_CHARSET
              Footer.Font.Color = clWindowText
              Footer.Font.Height = -15
              Footer.Font.Name = #23435#20307
              Footer.Font.Style = []
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #24635#39044#20132
              Title.Font.Charset = GB2312_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 63
            end
            item
              EditButtons = <>
              FieldName = 'zfy'
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              Footer.Color = clInfoBk
              Footer.Font.Charset = GB2312_CHARSET
              Footer.Font.Color = clWindowText
              Footer.Font.Height = -15
              Footer.Font.Name = #23435#20307
              Footer.Font.Style = []
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #21407#24635#36153#29992
              Title.Font.Charset = GB2312_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 73
            end
            item
              EditButtons = <>
              FieldName = 'sjzf'
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              Footer.Color = clInfoBk
              Footer.Font.Charset = GB2312_CHARSET
              Footer.Font.Color = clWindowText
              Footer.Font.Height = -15
              Footer.Font.Name = #23435#20307
              Footer.Font.Style = []
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #23454#32467#33258#36153
              Title.Font.Charset = GB2312_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 68
            end
            item
              EditButtons = <>
              FieldName = 'jsb'
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              Footer.Color = clInfoBk
              Footer.Font.Charset = GB2312_CHARSET
              Footer.Font.Color = clWindowText
              Footer.Font.Height = -15
              Footer.Font.Name = #23435#20307
              Footer.Font.Style = []
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #32467#31639#34917#177
              Title.Font.Charset = GB2312_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'fyze'
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              Footer.Color = clInfoBk
              Footer.Font.Charset = GB2312_CHARSET
              Footer.Font.Color = clWindowText
              Footer.Font.Height = -15
              Footer.Font.Name = #23435#20307
              Footer.Font.Style = []
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #24635#36153#29992
              Title.Font.Charset = GB2312_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 79
            end
            item
              EditButtons = <>
              FieldName = 'sbje'
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              Footer.Color = clInfoBk
              Footer.Font.Charset = GB2312_CHARSET
              Footer.Font.Color = clWindowText
              Footer.Font.Height = -15
              Footer.Font.Name = #23435#20307
              Footer.Font.Style = []
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #23454#34917#37329#39069
              Title.Font.Charset = GB2312_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 77
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
  end
  object QuickRep1: TQuickRep
    Left = 8
    Top = 125
    Width = 1043
    Height = 760
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = sp_cyjsrb
    Font.Charset = GB2312_CHARSET
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
    Page.Orientation = poLandscape
    Page.PaperSize = B5Extra
    Page.Values = (
      100.000000000000000000
      2010.000000000000000000
      100.000000000000000000
      2760.000000000000000000
      100.000000000000000000
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
    PreviewDefaultSaveType = stQRP
    object QRBand3: TQRBand
      Left = 38
      Top = 133
      Width = 986
      Height = 20
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
        52.916666666666670000
        2608.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 110
        Top = 1
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          291.041666666666700000
          2.645833333333333000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'jsrq'
        OnPrint = QRDBText1Print
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 177
        Top = 1
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          468.312500000000000000
          2.645833333333333000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'brxm'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 483
        Top = 1
        Width = 19
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1277.937500000000000000
          2.645833333333333000
          50.270833333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'zyj'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText5: TQRDBText
        Left = 433
        Top = 1
        Width = 19
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1145.645833333333000000
          2.645833333333333000
          50.270833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'zfy'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText6: TQRDBText
        Left = 608
        Top = 1
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1608.666666666667000000
          2.645833333333333000
          66.145833333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'czyj'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText7: TQRDBText
        Left = 670
        Top = 1
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1772.708333333333000000
          2.645833333333333000
          66.145833333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'dcyj'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText8: TQRDBText
        Left = 798
        Top = 1
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2111.375000000000000000
          2.645833333333333000
          66.145833333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'djzk'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText9: TQRDBText
        Left = 851
        Top = 1
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2251.604166666667000000
          2.645833333333333000
          66.145833333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'sbje'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText17: TQRDBText
        Left = 239
        Top = 1
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          632.354166666666800000
          2.645833333333333000
          190.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'tmh'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText19: TQRDBText
        Left = 313
        Top = 1
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          828.145833333333400000
          2.645833333333333000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'lbmc'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText21: TQRDBText
        Left = 1
        Top = 1
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2.645833333333333000
          2.645833333333333000
          119.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'czyxm'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText22: TQRDBText
        Left = 50
        Top = 1
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          132.291666666666700000
          2.645833333333333000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'ryrq'
        OnPrint = QRDBText1Print
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText23: TQRDBText
        Left = 535
        Top = 1
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1415.520833333333000000
          2.645833333333333000
          66.145833333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'sjzf'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText24: TQRDBText
        Left = 398
        Top = 1
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1053.041666666667000000
          2.645833333333333000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'bch'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText25: TQRDBText
        Left = 342
        Top = 1
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          904.875000000000000000
          2.645833333333333000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'sbdw'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBcxdb: TQRDBText
        Left = 736
        Top = 1
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1947.333333333333000000
          2.645833333333333000
          66.145833333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'dbtc'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
    end
    object QRBand9: TQRBand
      Left = 38
      Top = 153
      Width = 986
      Height = 21
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
        55.562500000000000000
        2608.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel14: TQRLabel
        Left = 8
        Top = 2
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          21.166666666666670000
          5.291666666666667000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21512#35745
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr1: TQRExpr
        Left = 423
        Top = 2
        Width = 66
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1119.187500000000000000
          5.291666666666667000
          174.625000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(sp_cyjsrb.zyj)'
        ExportAs = exptText
        FontSize = 8
      end
      object QRExpr2: TQRExpr
        Left = 359
        Top = 2
        Width = 58
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          949.854166666666800000
          5.291666666666667000
          153.458333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(sp_cyjsrb.zfy)'
        ExportAs = exptText
        FontSize = 8
      end
      object QRExpr3: TQRExpr
        Left = 561
        Top = 2
        Width = 51
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1484.312500000000000000
          5.291666666666667000
          134.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(sp_cyjsrb.czyj)'
        ExportAs = exptText
        FontSize = 8
      end
      object QRExpr4: TQRExpr
        Left = 621
        Top = 3
        Width = 59
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1643.062500000000000000
          7.937500000000000000
          156.104166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(sp_cyjsrb.dcyj)'
        ExportAs = exptText
        FontSize = 8
      end
      object QRExpr5: TQRExpr
        Left = 753
        Top = 2
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1992.312500000000000000
          5.291666666666667000
          150.812500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(sp_cyjsrb.djzk)'
        ExportAs = exptText
        FontSize = 8
      end
      object QRExpr6: TQRExpr
        Left = 818
        Top = 2
        Width = 71
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          2164.291666666667000000
          5.291666666666667000
          187.854166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(sp_cyjsrb.sbje)'
        ExportAs = exptText
        FontSize = 8
      end
      object QRExpr10: TQRExpr
        Left = 496
        Top = 2
        Width = 58
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1312.333333333333000000
          5.291666666666667000
          153.458333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(sp_cyjsrb.sjzf)'
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel30: TQRLabel
        Left = 127
        Top = 2
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          336.020833333333300000
          5.291666666666667000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20154#25968':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr13: TQRExpr
        Left = 167
        Top = 2
        Width = 66
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          441.854166666666700000
          5.291666666666667000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'COUNT'
        ExportAs = exptText
        FontSize = 10
      end
      object QRExprcxdb: TQRExpr
        Left = 691
        Top = 2
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1828.270833333333000000
          5.291666666666667000
          150.812500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(sp_cyjsrb.dbtc)'
        ExportAs = exptText
        FontSize = 8
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 85
      Width = 986
      Height = 48
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
        127.000000000000000000
        2608.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'sp_cyjsrb.ksmc'
      FooterBand = QRBand9
      Master = QuickRep1
      ReprintOnNewPage = False
      object dyrq: TQRLabel
        Left = 251
        Top = 5
        Width = 60
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          664.104166666666700000
          13.229166666666670000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32479#35745#26085#26399':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 595
        Top = 27
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1574.270833333333000000
          71.437500000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20914#36716#39044#20132
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 432
        Top = 27
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1143.000000000000000000
          71.437500000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24635#36153#29992
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 479
        Top = 27
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1267.354166666667000000
          71.437500000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24635#39044#20132
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 190
        Top = 28
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          502.708333333333300000
          74.083333333333330000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995#21517
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 110
        Top = 28
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          291.041666666666700000
          74.083333333333330000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32467#31639#26085#26399
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 660
        Top = 28
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1746.250000000000000000
          74.083333333333330000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24453#20914#39044#20132
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 787
        Top = 28
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2082.270833333333000000
          74.083333333333330000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24453#32467#24080
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 835
        Top = 27
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2209.270833333333000000
          71.437500000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23454#34917#37329#39069
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 244
        Top = 25
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          645.583333333333300000
          66.145833333333330000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20303#38498#21495
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel25: TQRLabel
        Left = 318
        Top = 26
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          841.375000000000000000
          68.791666666666670000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36153#21035
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 2
        Top = 28
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          74.083333333333330000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25805#20316#21592
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel28: TQRLabel
        Left = 48
        Top = 28
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          127.000000000000000000
          74.083333333333330000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20837#38498#26085#26399
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel29: TQRLabel
        Left = 530
        Top = 28
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1402.291666666667000000
          74.083333333333330000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23454#32467#33258#36153
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape2: TQRShape
        Left = 2
        Top = 23
        Width = 890
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          5.291666666666667000
          60.854166666666670000
          2354.791666666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel5: TQRLabel
        Left = 9
        Top = 5
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          23.812500000000000000
          13.229166666666670000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20986#38498#31185#23460
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 66
        Top = 5
        Width = 182
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          174.625000000000000000
          13.229166666666670000
          481.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_cyjsrb
        DataField = 'ksmc'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 400
        Top = 27
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1058.333333333333000000
          71.437500000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24202#21495
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel33: TQRLabel
        Left = 358
        Top = 26
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          947.208333333333300000
          68.791666666666670000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21333#20301
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRlblcxdb: TQRLabel
        Left = 726
        Top = 27
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1920.875000000000000000
          71.437500000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22478#20065#22823#30149
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 986
      Height = 47
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
        124.354166666666700000
        2608.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object bt: TQRLabel
        Left = 392
        Top = 5
        Width = 201
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1037.166666666667000000
          13.229166666666670000
          531.812500000000000000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #20986#38498#30149#20154#32467#31639#36153#29992#26126#32454
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
      object gltj: TQRLabel
        Left = 12
        Top = 32
        Width = 53
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          31.750000000000000000
          84.666666666666670000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36807#34385#26465#20214
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 193
      Width = 986
      Height = 34
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
        89.958333333333330000
        2608.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel10: TQRLabel
        Left = 39
        Top = 7
        Width = 40
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          103.187500000000000000
          18.520833333333330000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20027#31649#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object zbr: TQRLabel
        Left = 623
        Top = 8
        Width = 40
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1648.354166666667000000
          21.166666666666670000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21046#34920#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 174
      Width = 986
      Height = 19
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
        50.270833333333330000
        2608.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel31: TQRLabel
        Left = 8
        Top = 2
        Width = 40
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          21.166666666666670000
          5.291666666666667000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24635#21512#35745
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel32: TQRLabel
        Left = 127
        Top = 2
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          336.020833333333300000
          5.291666666666667000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20154#25968':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr14: TQRExpr
        Left = 167
        Top = 2
        Width = 66
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          441.854166666666700000
          5.291666666666667000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'COUNT'
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr15: TQRExpr
        Left = 359
        Top = 2
        Width = 58
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          949.854166666666800000
          5.291666666666667000
          153.458333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(sp_cyjsrb.zfy)'
        ExportAs = exptText
        FontSize = 8
      end
      object QRExpr16: TQRExpr
        Left = 423
        Top = 2
        Width = 66
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1119.187500000000000000
          5.291666666666667000
          174.625000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(sp_cyjsrb.zyj)'
        ExportAs = exptText
        FontSize = 8
      end
      object QRExpr17: TQRExpr
        Left = 496
        Top = 2
        Width = 58
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1312.333333333333000000
          5.291666666666667000
          153.458333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(sp_cyjsrb.sjzf)'
        ExportAs = exptText
        FontSize = 8
      end
      object QRExpr18: TQRExpr
        Left = 561
        Top = 2
        Width = 51
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1484.312500000000000000
          5.291666666666667000
          134.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(sp_cyjsrb.czyj)'
        ExportAs = exptText
        FontSize = 8
      end
      object QRExpr19: TQRExpr
        Left = 621
        Top = 3
        Width = 59
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1643.062500000000000000
          7.937500000000000000
          156.104166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(sp_cyjsrb.dcyj)'
        ExportAs = exptText
        FontSize = 8
      end
      object QRExpr20: TQRExpr
        Left = 753
        Top = 2
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1992.312500000000000000
          5.291666666666667000
          150.812500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(sp_cyjsrb.djzk)'
        ExportAs = exptText
        FontSize = 8
      end
      object QRExpr21: TQRExpr
        Left = 818
        Top = 2
        Width = 71
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          2164.291666666667000000
          5.291666666666667000
          187.854166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(sp_cyjsrb.sbje)'
        ExportAs = exptText
        FontSize = 8
      end
      object QRExpr24cxdb: TQRExpr
        Left = 691
        Top = 2
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1828.270833333333000000
          5.291666666666667000
          150.812500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(sp_cyjsrb.dbtc)'
        ExportAs = exptText
        FontSize = 8
      end
    end
  end
  object sp_cyjsrb: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zysf_cx_cybrjsmx'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end
      item
        Name = '@jzrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end>
    Left = 223
    Top = 74
  end
  object ds_CYBRJS: TDataSource
    DataSet = sp_cyjsrb
    Left = 183
    Top = 74
  end
  object sp_sbqf: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zysf_cx_hzbrjsmx;1'
    Parameters = <
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end
      item
        Name = '@jzrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end>
    Left = 272
    Top = 74
  end
  object ds_sbqf: TDataSource
    DataSet = sp_sbqf
    Left = 347
    Top = 75
  end
  object PopupMenu1: TPopupMenu
    Left = 432
    Top = 79
    object N1: TMenuItem
      Caption = #25171#21360#36873#25321#25805#20316#21592
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #20998#21307#20445#21333#20301#25171#21360
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #20998#20986#38498#31185#23460#25171#21360
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #30149#20154#32467#31639#34920
      OnClick = N4Click
    end
  end
  object DS_cyjsrb_hz: TDataSource
    DataSet = sp_cyjsrb_hz
    Left = 640
    Top = 40
  end
  object sp_cyjsrb_hz: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_cx_cybrjshz'
    Parameters = <>
    Left = 536
    Top = 48
  end
end