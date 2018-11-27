object frm_repo_fymxhz: Tfrm_repo_fymxhz
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'frm_repo_fymxhz'
  ClientHeight = 537
  ClientWidth = 1001
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 15
  object QuickRep1: TQuickRep
    Left = 24
    Top = 8
    Width = 907
    Height = 1058
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = sp_fyhz
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
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
      2800.000000000000000000
      100.000000000000000000
      2400.000000000000000000
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
    PreviewInitialState = wsMaximized
    PrevInitialZoom = qrZoomToWidth
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 831
      Height = 118
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
        312.208333333333300000
        2198.687500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object m_bt: TQRLabel
        Left = 312
        Top = 8
        Width = 199
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          825.500000000000000000
          21.166666666666670000
          526.520833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30149#20154#36153#29992#26126#32454#27719#24635#21333
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object m_zyh: TQRLabel
        Left = 88
        Top = 43
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          232.833333333333400000
          113.770833333333300000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_zyh'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel9: TQRLabel
        Left = 32
        Top = 43
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          113.770833333333300000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20303#38498#21495':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel10: TQRLabel
        Left = 200
        Top = 43
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          529.166666666666700000
          113.770833333333300000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995#21517':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel11: TQRLabel
        Left = 320
        Top = 43
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          846.666666666666700000
          113.770833333333300000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24615#21035':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel12: TQRLabel
        Left = 432
        Top = 43
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1143.000000000000000000
          113.770833333333300000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#31181#31867':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel13: TQRLabel
        Left = 624
        Top = 43
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1651.000000000000000000
          113.770833333333300000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20303#38498#22825#25968':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel14: TQRLabel
        Left = 32
        Top = 68
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          179.916666666666700000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24180#40836':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel15: TQRLabel
        Left = 144
        Top = 68
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          381.000000000000000000
          179.916666666666700000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30149#21306':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel16: TQRLabel
        Left = 320
        Top = 68
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          846.666666666666700000
          179.916666666666700000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24202#21495':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel17: TQRLabel
        Left = 432
        Top = 68
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1143.000000000000000000
          179.916666666666700000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20837#38498#26102#38388':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel18: TQRLabel
        Left = 624
        Top = 68
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1651.000000000000000000
          179.916666666666700000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20986#38498#26102#38388':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel19: TQRLabel
        Left = 32
        Top = 93
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          246.062500000000000000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39044#20132#37329#21512#35745':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel20: TQRLabel
        Left = 200
        Top = 93
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          529.166666666666700000
          246.062500000000000000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36153#29992#21512#35745':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel21: TQRLabel
        Left = 352
        Top = 93
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          931.333333333333300000
          246.062500000000000000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20313#39069':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape1: TQRShape
        Left = 20
        Top = 114
        Width = 785
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          52.916666666666660000
          301.625000000000000000
          2076.979166666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 20
        Top = 34
        Width = 785
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          52.916666666666660000
          89.958333333333340000
          2076.979166666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object m_xm: TQRLabel
        Left = 240
        Top = 43
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          635.000000000000000000
          113.770833333333300000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_xm'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object m_xb: TQRLabel
        Left = 368
        Top = 43
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          973.666666666666900000
          113.770833333333300000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_xb'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object m_sfzl: TQRLabel
        Left = 504
        Top = 43
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1333.500000000000000000
          113.770833333333300000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_sfzl'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object m_zyts: TQRLabel
        Left = 696
        Top = 43
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1841.500000000000000000
          113.770833333333300000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_zyts'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object m_nl: TQRLabel
        Left = 72
        Top = 68
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          190.500000000000000000
          179.916666666666700000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_nl'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object m_bq: TQRLabel
        Left = 184
        Top = 68
        Width = 129
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          486.833333333333400000
          179.916666666666700000
          341.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_bq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object m_ch: TQRLabel
        Left = 360
        Top = 68
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          952.500000000000000000
          179.916666666666700000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_ch'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object m_ryrj: TQRLabel
        Left = 504
        Top = 68
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1333.500000000000000000
          179.916666666666700000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_ryrj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object m_cysj: TQRLabel
        Left = 696
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
          1841.500000000000000000
          179.916666666666700000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_cysj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object m_yj: TQRLabel
        Left = 120
        Top = 93
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          246.062500000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_yj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object m_fyhj: TQRLabel
        Left = 272
        Top = 93
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          719.666666666666800000
          246.062500000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_fyhj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object m_ye: TQRLabel
        Left = 392
        Top = 93
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1037.166666666667000000
          246.062500000000000000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_ye'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
    end
    object TitleBand1: TQRBand
      Left = 38
      Top = 156
      Width = 831
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
        2198.687500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel2: TQRLabel
        Left = 32
        Top = 6
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          15.875000000000000000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24207#21495
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel3: TQRLabel
        Left = 112
        Top = 6
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          296.333333333333300000
          15.875000000000000000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32534#30721
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel4: TQRLabel
        Left = 216
        Top = 6
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          571.500000000000000000
          15.875000000000000000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21517'   '#31216
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel5: TQRLabel
        Left = 408
        Top = 6
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1079.500000000000000000
          15.875000000000000000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21333#20301
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel6: TQRLabel
        Left = 504
        Top = 6
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1333.500000000000000000
          15.875000000000000000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21333#20215
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel7: TQRLabel
        Left = 592
        Top = 6
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1566.333333333333000000
          15.875000000000000000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25968#37327
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel8: TQRLabel
        Left = 680
        Top = 6
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1799.166666666667000000
          15.875000000000000000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24212#25910#37329#39069
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape3: TQRShape
        Left = 20
        Top = 22
        Width = 785
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          52.916666666666660000
          58.208333333333340000
          2076.979166666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 182
      Width = 831
      Height = 21
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
        55.562500000000000000
        2198.687500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 40
        Top = 2
        Width = 17
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          105.833333333333300000
          5.291666666666667000
          44.979166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_fyhz
        DataField = 'id'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText2: TQRDBText
        Left = 80
        Top = 2
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          211.666666666666700000
          5.291666666666667000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_fyhz
        DataField = 'szdm'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText3: TQRDBText
        Left = 168
        Top = 2
        Width = 201
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          444.500000000000000000
          5.291666666666667000
          531.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_fyhz
        DataField = 'fymc'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText4: TQRDBText
        Left = 432
        Top = 2
        Width = 17
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1143.000000000000000000
          5.291666666666667000
          44.979166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_fyhz
        DataField = 'dw'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText5: TQRDBText
        Left = 520
        Top = 2
        Width = 17
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1375.833333333333000000
          5.291666666666667000
          44.979166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_fyhz
        DataField = 'dj'
        Mask = '0.00'
        OnPrint = QRDBText5Print
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText6: TQRDBText
        Left = 600
        Top = 2
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1587.500000000000000000
          5.291666666666667000
          87.312500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_fyhz
        DataField = 'fysl'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText7: TQRDBText
        Left = 712
        Top = 2
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1883.833333333333000000
          5.291666666666667000
          87.312500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_fyhz
        DataField = 'fyje'
        Mask = '0.00'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 203
      Width = 831
      Height = 31
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
        82.020833333333330000
        2198.687500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel22: TQRLabel
        Left = 592
        Top = 8
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1566.333333333333000000
          21.166666666666670000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25171#21360#26085#26399':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object m_dyrq: TQRLabel
        Left = 665
        Top = 8
        Width = 128
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1759.479166666667000000
          21.166666666666670000
          338.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_dyrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape4: TQRShape
        Left = 20
        Top = 2
        Width = 785
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          52.916666666666660000
          5.291666666666667000
          2076.979166666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
  end
  object QuickRep2: TQuickRep
    Left = 32
    Top = 298
    Width = 907
    Height = 1058
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = sp_yyhz
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
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
      2800.000000000000000000
      100.000000000000000000
      2400.000000000000000000
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
    PreviewInitialState = wsMaximized
    PrevInitialZoom = qrZoomToWidth
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 831
      Height = 139
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
        367.770833333333300000
        2198.687500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object my_bt: TQRLabel
        Left = 290
        Top = 8
        Width = 243
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          767.291666666666700000
          21.166666666666670000
          642.937500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20303#38498#30149#20154#29992#33647#26126#32454#27719#24635#21333
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object my_zyh: TQRLabel
        Left = 88
        Top = 43
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          232.833333333333400000
          113.770833333333300000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_zyh'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel25: TQRLabel
        Left = 32
        Top = 43
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          113.770833333333300000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20303#38498#21495':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel26: TQRLabel
        Left = 200
        Top = 43
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          529.166666666666700000
          113.770833333333300000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995#21517':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel27: TQRLabel
        Left = 328
        Top = 43
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          867.833333333333300000
          113.770833333333300000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24615#21035':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel30: TQRLabel
        Left = 464
        Top = 44
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1227.666666666667000000
          116.416666666666700000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24180#40836':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel31: TQRLabel
        Left = 592
        Top = 44
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1566.333333333333000000
          116.416666666666700000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30149#21306':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel35: TQRLabel
        Left = 32
        Top = 93
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          246.062500000000000000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27719#24635#22788#26041#25968
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel36: TQRLabel
        Left = 240
        Top = 93
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          635.000000000000000000
          246.062500000000000000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#39069#21512#35745
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel37: TQRLabel
        Left = 616
        Top = 93
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1629.833333333333000000
          246.062500000000000000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #33647#21697#31181#25968':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape5: TQRShape
        Left = 20
        Top = 135
        Width = 785
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          52.916666666666660000
          357.187500000000000000
          2076.979166666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 20
        Top = 34
        Width = 785
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          52.916666666666660000
          89.958333333333340000
          2076.979166666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object my_xm: TQRLabel
        Left = 240
        Top = 43
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          635.000000000000000000
          113.770833333333300000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_xm'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object my_xb: TQRLabel
        Left = 368
        Top = 43
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          973.666666666666900000
          113.770833333333300000
          235.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_xb'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object my_nl: TQRLabel
        Left = 504
        Top = 44
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1333.500000000000000000
          116.416666666666700000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_nl'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object my_bq: TQRLabel
        Left = 632
        Top = 44
        Width = 137
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1672.166666666667000000
          116.416666666666700000
          362.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_bq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object my_hzcfs: TQRLabel
        Left = 120
        Top = 93
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          246.062500000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_yj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object my_jehj: TQRLabel
        Left = 312
        Top = 93
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          825.500000000000100000
          246.062500000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_fyhj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object my_ypzs: TQRLabel
        Left = 688
        Top = 93
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1820.333333333333000000
          246.062500000000000000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_ye'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel28: TQRLabel
        Left = 32
        Top = 69
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          182.562500000000000000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #33539#22260':'#20840#37096
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel29: TQRLabel
        Left = 32
        Top = 117
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          309.562500000000000000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30002#31867#21512#35745
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel32: TQRLabel
        Left = 240
        Top = 117
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          635.000000000000000000
          309.562500000000000000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20057#31867#21512#35745
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel33: TQRLabel
        Left = 616
        Top = 117
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1629.833333333333000000
          309.562500000000000000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #33258#36153#21512#35745
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object my_jlhj: TQRLabel
        Left = 120
        Top = 117
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          309.562500000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_yj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object my_ylhj: TQRLabel
        Left = 312
        Top = 117
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          825.500000000000100000
          309.562500000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_fyhj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object my_zfhj: TQRLabel
        Left = 688
        Top = 117
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1820.333333333333000000
          309.562500000000000000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_ye'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 177
      Width = 831
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
        2198.687500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel50: TQRLabel
        Left = 32
        Top = 6
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          15.875000000000000000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24207#21495
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel52: TQRLabel
        Left = 144
        Top = 6
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          381.000000000000000000
          15.875000000000000000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21517'   '#31216
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel53: TQRLabel
        Left = 440
        Top = 6
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1164.166666666667000000
          15.875000000000000000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21333#20301
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel54: TQRLabel
        Left = 512
        Top = 6
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1354.666666666667000000
          15.875000000000000000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21333#20215
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel55: TQRLabel
        Left = 584
        Top = 6
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1545.166666666667000000
          15.875000000000000000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25968#37327
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel56: TQRLabel
        Left = 656
        Top = 6
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1735.666666666667000000
          15.875000000000000000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#39069
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape7: TQRShape
        Left = 20
        Top = 22
        Width = 785
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          52.916666666666660000
          58.208333333333340000
          2076.979166666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel44: TQRLabel
        Left = 352
        Top = 6
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          931.333333333333300000
          15.875000000000000000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35268#26684
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel23: TQRLabel
        Left = 736
        Top = 6
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1947.333333333333000000
          15.875000000000000000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31867#21035
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 203
      Width = 831
      Height = 21
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
        55.562500000000000000
        2198.687500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText8: TQRDBText
        Left = 40
        Top = 2
        Width = 17
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          105.833333333333300000
          5.291666666666667000
          44.979166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_yyhz
        DataField = 'id'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText10: TQRDBText
        Left = 88
        Top = 2
        Width = 217
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          232.833333333333400000
          5.291666666666667000
          574.145833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_yyhz
        DataField = 'fymc'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText11: TQRDBText
        Left = 416
        Top = 2
        Width = 65
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1100.666666666667000000
          5.291666666666667000
          171.979166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_yyhz
        DataField = 'dw'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText12: TQRDBText
        Left = 488
        Top = 2
        Width = 73
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1291.166666666667000000
          5.291666666666667000
          193.145833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_yyhz
        DataField = 'dj'
        Mask = '0.0000'
        OnPrint = QRDBText5Print
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText13: TQRDBText
        Left = 568
        Top = 2
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1502.833333333333000000
          5.291666666666667000
          129.645833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_yyhz
        DataField = 'sl'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText14: TQRDBText
        Left = 624
        Top = 2
        Width = 89
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1651.000000000000000000
          5.291666666666667000
          235.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_yyhz
        DataField = 'je'
        Mask = '0.0000'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText9: TQRDBText
        Left = 312
        Top = 2
        Width = 89
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          825.500000000000100000
          5.291666666666667000
          235.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_yyhz
        DataField = 'gg'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText15: TQRDBText
        Left = 736
        Top = 2
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1947.333333333334000000
          5.291666666666667000
          87.312500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_yyhz
        DataField = 'lb'
        Mask = '0.00'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 224
      Width = 831
      Height = 28
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
        74.083333333333330000
        2198.687500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel57: TQRLabel
        Left = 616
        Top = 8
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1629.833333333333000000
          21.166666666666670000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25171#21360#26085#26399':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object my_dyrq: TQRLabel
        Left = 689
        Top = 8
        Width = 103
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1822.979166666667000000
          21.166666666666670000
          272.520833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'm_dyrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape8: TQRShape
        Left = 20
        Top = 2
        Width = 785
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          52.916666666666660000
          5.291666666666667000
          2076.979166666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
  end
  object sp_fyhz: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zysf_cx_fymxhz'
    Parameters = <
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = ' '
      end>
    Left = 344
    Top = 320
  end
  object sp_yyhz: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zysf_cx_yymxhz'
    Parameters = <
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = ' '
      end>
    Left = 344
    Top = 272
  end
  object sp_hz: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zysf_cx_yymxhz_hz'
    Parameters = <
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = ' '
      end>
    Left = 464
    Top = 272
  end
end
