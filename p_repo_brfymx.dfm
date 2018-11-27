object frm_repo_brfymx: Tfrm_repo_brfymx
  Left = 158
  Top = 180
  Caption = 'frm_repo_brfymx'
  ClientHeight = 562
  ClientWidth = 781
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
    Top = -8
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = DM_data.sp_fymx
    Font.Charset = GB2312_CHARSET
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
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
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
    object DetailBand1: TQRBand
      Left = 38
      Top = 217
      Width = 718
      Height = 30
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
        79.375000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRShape11: TQRShape
        Left = 5
        Top = 26
        Width = 647
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          13.229166666666700000
          68.791666666666700000
          1711.854166666670000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 5
        Top = -27
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          13.229166666666700000
          -71.437500000000000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 158
        Top = -27
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          418.041666666667000000
          -71.437500000000000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 301
        Top = -28
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          796.395833333333000000
          -74.083333333333300000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 432
        Top = -28
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          1143.000000000000000000
          -74.083333333333300000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 651
        Top = -27
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          1722.437500000000000000
          -71.437500000000000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText1: TQRDBText
        Left = 16
        Top = 3
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          42.333333333333300000
          7.937500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_fymx
        DataField = 'fymc'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText2: TQRDBText
        Left = 184
        Top = 3
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          486.833333333333000000
          7.937500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_fymx
        DataField = 'fyje'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText3: TQRDBText
        Left = 328
        Top = 3
        Width = 17
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          867.833333333334000000
          7.937500000000000000
          44.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_fymx
        DataField = 'mc'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText4: TQRDBText
        Left = 456
        Top = 3
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1206.500000000000000000
          7.937500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_fymx
        DataField = 'sfrq'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 179
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
        473.604166666666700000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object yymc: TQRLabel
        Left = 92
        Top = 66
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          243.416666666666700000
          174.625000000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'yymc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel3: TQRLabel
        Left = 16
        Top = 96
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          254.000000000000000000
          164.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995'  '#21517#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel5: TQRLabel
        Left = 256
        Top = 96
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          677.333333333333400000
          254.000000000000000000
          164.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21345'  '#21495#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel6: TQRLabel
        Left = 488
        Top = 96
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1291.166666666667000000
          254.000000000000000000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31185#23460#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel7: TQRLabel
        Left = 16
        Top = 120
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          317.500000000000000000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24635#39044#20132#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel8: TQRLabel
        Left = 256
        Top = 123
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          677.333333333333400000
          325.437500000000000000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24635#29992#36153#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape1: TQRShape
        Left = 5
        Top = 90
        Width = 647
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          13.229166666666700000
          238.125000000000000000
          1711.854166666670000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 4
        Top = 145
        Width = 647
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          10.583333333333300000
          383.645833333333000000
          1711.854166666670000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 5
        Top = 91
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          13.229166666666700000
          240.770833333333000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 651
        Top = 90
        Width = 1
        Height = 56
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          148.166666666667000000
          1722.437500000000000000
          238.125000000000000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel9: TQRLabel
        Left = 16
        Top = 152
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          42.333333333333340000
          402.166666666666600000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#39033#30446
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel10: TQRLabel
        Left = 184
        Top = 152
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          486.833333333333400000
          402.166666666666600000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#37329#39069
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel11: TQRLabel
        Left = 336
        Top = 152
        Width = 46
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          889.000000000000000000
          402.166666666666600000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#21592
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel12: TQRLabel
        Left = 498
        Top = 152
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1317.625000000000000000
          402.166666666666600000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#26085#26399
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel13: TQRLabel
        Left = 400
        Top = 72
        Width = 76
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1058.333333333333000000
          190.500000000000000000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25171#21360#26085#26399#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRSysData1: TQRSysData
        Left = 467
        Top = 72
        Width = 89
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1235.604166666667000000
          190.500000000000000000
          235.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Transparent = False
        FontSize = 11
      end
      object QRShape5: TQRShape
        Left = 5
        Top = 175
        Width = 647
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          13.229166666666700000
          463.020833333333000000
          1711.854166666670000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 5
        Top = 122
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          13.229166666666700000
          322.791666666667000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 158
        Top = 146
        Width = 1
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          418.041666666667000000
          386.291666666667000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 301
        Top = 146
        Width = 1
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          796.395833333333000000
          386.291666666667000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 432
        Top = 146
        Width = 1
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1143.000000000000000000
          386.291666666667000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 651
        Top = 146
        Width = 1
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1722.437500000000000000
          386.291666666667000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object brxm: TQRLabel
        Left = 77
        Top = 96
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          203.729166666666700000
          254.000000000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'brxm'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object tmh: TQRLabel
        Left = 308
        Top = 96
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          814.916666666666800000
          254.000000000000000000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'tmh'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object ksmc: TQRLabel
        Left = 536
        Top = 96
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1418.166666666667000000
          254.000000000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ksmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object zyj: TQRLabel
        Left = 79
        Top = 119
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          209.020833333333300000
          314.854166666666700000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'zyj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object zfy: TQRLabel
        Left = 310
        Top = 123
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          820.208333333333500000
          325.437500000000000000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'zfy'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object syyj: TQRLabel
        Left = 568
        Top = 122
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1502.833333333333000000
          322.791666666666700000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'syyj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel15: TQRLabel
        Left = 480
        Top = 123
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1270.000000000000000000
          325.437500000000000000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21097#20313#25276#37329#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
    end
    object QRLabel4: TQRLabel
      Left = 248
      Top = 48
      Width = 221
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333340000
        656.166666666666800000
        127.000000000000000000
        584.729166666666800000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #20303#38498#30149#20154#26126#32454#36153#29992#28165#21333
      Color = clWhite
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 16
    end
    object QRLabel2: TQRLabel
      Left = 53
      Top = 104
      Width = 76
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        140.229166666666700000
        275.166666666666700000
        201.083333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #21307#38498#21517#31216#65306
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 247
      Width = 718
      Height = 38
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
        100.541666666666700000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel14: TQRLabel
        Left = 16
        Top = 8
        Width = 353
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          42.333333333333340000
          21.166666666666670000
          933.979166666666600000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22791#27880#65306#27492#28165#21333#19981#20316#25253#38144#20351#29992#65292#20197#32467#24080#25968#25454#20026#20934#65281#65281
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel1: TQRLabel
        Left = 448
        Top = 8
        Width = 76
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1185.333333333333000000
          21.166666666666670000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30149#21592#31614#23383#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
    end
  end
end
