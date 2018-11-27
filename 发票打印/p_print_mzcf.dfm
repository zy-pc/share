object frm_print_mzcf: Tfrm_print_mzcf
  Left = 0
  Top = 0
  Caption = #38376#35786#22788#26041
  ClientHeight = 540
  ClientWidth = 1084
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep_mzxy: TQuickRep
    Left = 659
    Top = 0
    Width = 510
    Height = 737
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Frm_mzcfcx.SP_mx
    Font.Charset = ANSI_CHARSET
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
      1950.000000000000000000
      100.000000000000000000
      1350.000000000000000000
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
    ShowProgress = False
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 434
      Height = 178
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
        470.958333333333300000
        1148.291666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRDBText39: TQRDBText
        Left = 389
        Top = 0
        Width = 45
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1029.229166666667000000
          0.000000000000000000
          119.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'cflx'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object yymc_xy: TQRLabel
        Left = 184
        Top = 19
        Width = 81
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          486.833333333333300000
          50.270833333333330000
          214.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#38498#21517#31216
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 15
      end
      object QRLabel69: TQRLabel
        Left = 33
        Top = 54
        Width = 53
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          87.312500000000000000
          142.875000000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #19994#21153#31383#21475
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel44: TQRLabel
        Left = 244
        Top = 54
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          645.583333333333300000
          142.875000000000000000
          58.208333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'No.'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText32: TQRDBText
        Left = 268
        Top = 54
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          709.083333333333300000
          142.875000000000000000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'cfbh'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel58: TQRLabel
        Left = 7
        Top = 79
        Width = 73
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          18.520833333333330000
          209.020833333333300000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38376#35786'/'#20303#38498#21495
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText34: TQRDBText
        Left = 80
        Top = 79
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          211.666666666666700000
          209.020833333333300000
          58.208333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'tmh'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel59: TQRLabel
        Left = 218
        Top = 79
        Width = 60
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          576.791666666666700000
          209.020833333333300000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31185#23460'/'#30149#21306
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText35: TQRDBText
        Left = 279
        Top = 79
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          738.187500000000000000
          209.020833333333300000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'ksmc'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel60: TQRLabel
        Left = 346
        Top = 79
        Width = 40
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          915.458333333333300000
          209.020833333333300000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24202#20301#21495
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel37: TQRLabel
        Left = 7
        Top = 105
        Width = 40
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          18.520833333333330000
          277.812500000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995#21517#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText29: TQRDBText
        Left = 45
        Top = 105
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          119.062500000000000000
          277.812500000000000000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'brxm'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel38: TQRLabel
        Left = 232
        Top = 105
        Width = 40
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          613.833333333333300000
          277.812500000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24615#21035#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText30: TQRDBText
        Left = 274
        Top = 105
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          724.958333333333300000
          277.812500000000000000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'brxb'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel39: TQRLabel
        Left = 322
        Top = 105
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          851.958333333333300000
          277.812500000000000000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24180#40836':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText31: TQRDBText
        Left = 353
        Top = 105
        Width = 47
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          933.979166666666600000
          277.812500000000000000
          124.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'brnl'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 79
        Top = 92
        Width = 135
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          209.020833333333300000
          243.416666666666700000
          357.187500000000000000)
        Pen.Style = psDot
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 279
        Top = 92
        Width = 66
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          738.187500000000000000
          243.416666666666700000
          174.625000000000000000)
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 387
        Top = 92
        Width = 30
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1023.937500000000000000
          243.416666666666700000
          79.375000000000000000)
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 38
        Top = 118
        Width = 193
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          100.541666666666700000
          312.208333333333300000
          510.645833333333300000)
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 268
        Top = 118
        Width = 50
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          709.083333333333300000
          312.208333333333300000
          132.291666666666700000)
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 353
        Top = 118
        Width = 64
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          933.979166666666600000
          312.208333333333400000
          169.333333333333300000)
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel56: TQRLabel
        Left = 7
        Top = 131
        Width = 53
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          18.520833333333330000
          346.604166666666700000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22788#26041#26085#26399
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText48: TQRDBText
        Left = 61
        Top = 131
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          161.395833333333300000
          346.604166666666700000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'hjrq'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel61: TQRLabel
        Left = 322
        Top = 131
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          851.958333333333300000
          346.604166666666700000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36153#21035':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText36: TQRDBText
        Left = 351
        Top = 131
        Width = 66
        Height = 14
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          928.687500000000000000
          346.604166666666700000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'fylbmc'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape7: TQRShape
        Left = 61
        Top = 144
        Width = 200
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          161.395833333333300000
          381.000000000000000000
          529.166666666666800000)
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 353
        Top = 144
        Width = 64
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          933.979166666666600000
          381.000000000000000000
          169.333333333333300000)
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel46: TQRLabel
        Left = 7
        Top = 156
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          18.520833333333330000
          412.750000000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35786#26029
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText33: TQRDBText
        Left = 39
        Top = 156
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          103.187500000000000000
          412.750000000000000000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'yszd'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 238
      Width = 434
      Height = 40
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
        105.833333333333300000
        1148.291666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText40: TQRDBText
        Left = 12
        Top = 5
        Width = 234
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          31.750000000000000000
          13.229166666666670000
          619.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.SP_mx
        DataField = 'ypmc1'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText41: TQRDBText
        Left = 247
        Top = 5
        Width = 90
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          653.520833333333400000
          13.229166666666670000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.SP_mx
        DataField = 'ypgg'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText42: TQRDBText
        Left = 349
        Top = 5
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          923.395833333333400000
          13.229166666666670000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.SP_mx
        DataField = 'ypsl'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel51: TQRLabel
        Left = 36
        Top = 23
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          95.250000000000000000
          60.854166666666670000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Sig:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText44: TQRDBText
        Left = 75
        Top = 23
        Width = 44
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          198.437500000000000000
          60.854166666666680000
          116.416666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.SP_mx
        DataField = 'yl'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText47: TQRDBText
        Left = 121
        Top = 23
        Width = 23
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          320.145833333333300000
          60.854166666666680000
          60.854166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.SP_mx
        DataField = 'yldw'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText45: TQRDBText
        Left = 202
        Top = 23
        Width = 89
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          534.458333333333300000
          60.854166666666680000
          235.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.SP_mx
        DataField = 'yytj'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText43: TQRDBText
        Left = 299
        Top = 23
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          791.104166666666800000
          60.854166666666680000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.SP_mx
        DataField = 'yf'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 339
        Top = 5
        Width = 8
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          896.937500000000000000
          13.229166666666670000
          21.166666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '*'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText21: TQRDBText
        Left = 382
        Top = 5
        Width = 36
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1010.708333333333000000
          13.229166666666670000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.SP_mx
        DataField = 'ypdw'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 336
        Top = 23
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          889.000000000000000000
          60.854166666666670000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21333#20215':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText15: TQRDBText
        Left = 373
        Top = 23
        Width = 60
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          986.895833333333200000
          60.854166666666680000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.SP_mx
        DataField = 'ypdj'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 296
      Width = 434
      Height = 94
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
        248.708333333333300000
        1148.291666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel53: TQRLabel
        Left = 11
        Top = 8
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          29.104166666666670000
          21.166666666666670000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#24072
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText49: TQRDBText
        Left = 42
        Top = 8
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          111.125000000000000000
          21.166666666666670000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'ysxm'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel54: TQRLabel
        Left = 247
        Top = 7
        Width = 57
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          653.520833333333300000
          18.520833333333330000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24635#37329#39069#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText46: TQRDBText
        Left = 306
        Top = 8
        Width = 36
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          809.625000000000000000
          21.166666666666670000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'sszje'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel52: TQRLabel
        Left = 11
        Top = 28
        Width = 145
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          29.104166666666670000
          74.083333333333330000
          383.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #33647#24072'('#23457#26680#12289#26657#23545#12289#21457#33647')'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel55: TQRLabel
        Left = 247
        Top = 28
        Width = 87
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          653.520833333333300000
          74.083333333333330000
          230.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #33647#24072'/'#22763'('#35843#37197')'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape12: TQRShape
        Left = 303
        Top = 21
        Width = 113
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          801.687500000000100000
          55.562500000000000000
          298.979166666666700000)
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 336
        Top = 41
        Width = 80
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          889.000000000000000000
          108.479166666666700000
          211.666666666666700000)
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 159
        Top = 41
        Width = 80
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          420.687500000000000000
          108.479166666666700000
          211.666666666666700000)
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 40
        Top = 21
        Width = 200
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          105.833333333333300000
          55.562500000000000000
          529.166666666666700000)
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel1: TQRLabel
        Left = 13
        Top = 53
        Width = 408
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          34.395833333333330000
          140.229166666666700000
          1079.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #29305#21035#25552#31034#65306#25353#21355#29983#37096#12289#22269#23478#20013#21307#33647#31649#29702#23616#21355#21307#21457'[2011]11'#21495#25991#20214#35268#23450#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 79
        Top = 69
        Width = 287
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          209.020833333333300000
          182.562500000000000000
          759.354166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20026#20445#35777#24739#32773#29992#33647#23433#20840#65292#33647#21697#19968#32463#21457#20986#65292#19981#24471#36864#25442#12290
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 159
        Top = 27
        Width = 36
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          420.687500000000000000
          71.437500000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'fyczy'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText17: TQRDBText
        Left = 340
        Top = 27
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          899.583333333333300000
          71.437500000000000000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'tpry'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 216
      Width = 434
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = True
      Size.Values = (
        58.208333333333330000
        1148.291666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'ad_dycf.cfbh'
      FooterBand = QRBand4
      Master = QuickRep_mzxy
      ReprintOnNewPage = False
      object QRLabel63: TQRLabel
        Left = 11
        Top = 4
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          29.104166666666670000
          10.583333333333330000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Rp'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 278
      Width = 434
      Height = 18
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
        47.625000000000000000
        1148.291666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object xms: TQRLabel
        Left = 325
        Top = 2
        Width = 92
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          859.895833333333300000
          5.291666666666667000
          243.416666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20197#19979#26080#22788#26041#25968#25454
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object QuickRep_mzzy: TQuickRep
    Left = 225
    Top = 0
    Width = 510
    Height = 737
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Frm_mzcfcx.SP_mx
    Font.Charset = ANSI_CHARSET
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
      1950.000000000000000000
      100.000000000000000000
      1350.000000000000000000
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
    ShowProgress = False
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    object QRBand5: TQRBand
      Left = 38
      Top = 38
      Width = 434
      Height = 178
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
        470.958333333333300000
        1148.291666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRDBText1: TQRDBText
        Left = 389
        Top = 0
        Width = 45
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1029.229166666667000000
          0.000000000000000000
          119.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'cflx'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object yymc_zy: TQRLabel
        Left = 184
        Top = 19
        Width = 81
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          486.833333333333300000
          50.270833333333330000
          214.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#38498#21517#31216
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 15
      end
      object QRLabel5: TQRLabel
        Left = 33
        Top = 54
        Width = 53
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          87.312500000000000000
          142.875000000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #19994#21153#31383#21475
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 244
        Top = 54
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          645.583333333333300000
          142.875000000000000000
          58.208333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'No.'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 268
        Top = 54
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          709.083333333333300000
          142.875000000000000000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'cfbh'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 7
        Top = 79
        Width = 73
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          18.520833333333330000
          209.020833333333300000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38376#35786'/'#20303#38498#21495
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 80
        Top = 79
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          211.666666666666700000
          209.020833333333300000
          58.208333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'tmh'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 218
        Top = 79
        Width = 60
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          576.791666666666700000
          209.020833333333300000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31185#23460'/'#30149#21306
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 279
        Top = 79
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          738.187500000000000000
          209.020833333333300000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'ksmc'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 346
        Top = 79
        Width = 40
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          915.458333333333300000
          209.020833333333300000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24202#20301#21495
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 7
        Top = 105
        Width = 40
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          18.520833333333330000
          277.812500000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995#21517#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 45
        Top = 105
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          119.062500000000000000
          277.812500000000000000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'brxm'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 232
        Top = 105
        Width = 40
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          613.833333333333300000
          277.812500000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24615#21035#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 274
        Top = 105
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          724.958333333333300000
          277.812500000000000000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'brxb'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 322
        Top = 105
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          851.958333333333300000
          277.812500000000000000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24180#40836':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 353
        Top = 105
        Width = 47
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          933.979166666666600000
          277.812500000000000000
          124.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'brnl'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape13: TQRShape
        Left = 79
        Top = 92
        Width = 135
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          209.020833333333300000
          243.416666666666700000
          357.187500000000000000)
        Pen.Style = psDot
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 279
        Top = 92
        Width = 66
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          738.187500000000000000
          243.416666666666700000
          174.625000000000000000)
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 387
        Top = 92
        Width = 30
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1023.937500000000000000
          243.416666666666700000
          79.375000000000000000)
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 35
        Top = 118
        Width = 193
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          92.604166666666670000
          312.208333333333300000
          510.645833333333300000)
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 264
        Top = 118
        Width = 50
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          698.500000000000000000
          312.208333333333300000
          132.291666666666700000)
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 353
        Top = 118
        Width = 64
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          933.979166666666600000
          312.208333333333400000
          169.333333333333300000)
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel13: TQRLabel
        Left = 7
        Top = 131
        Width = 53
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          18.520833333333330000
          346.604166666666700000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22788#26041#26085#26399
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 61
        Top = 131
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          161.395833333333300000
          346.604166666666700000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'hjrq'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 322
        Top = 131
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          851.958333333333300000
          346.604166666666700000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36153#21035':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 351
        Top = 131
        Width = 66
        Height = 14
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          928.687500000000000000
          346.604166666666700000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'fylbmc'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape19: TQRShape
        Left = 61
        Top = 144
        Width = 166
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          161.395833333333300000
          381.000000000000000000
          439.208333333333300000)
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 353
        Top = 144
        Width = 64
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          933.979166666666600000
          381.000000000000000000
          169.333333333333300000)
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel15: TQRLabel
        Left = 7
        Top = 156
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          18.520833333333330000
          412.750000000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35786#26029
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 39
        Top = 156
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          103.187500000000000000
          412.750000000000000000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'yszd'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 228
        Top = 131
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          603.250000000000000000
          346.604166666666700000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20184#25968':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape25: TQRShape
        Left = 233
        Top = 144
        Width = 80
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          616.479166666666800000
          381.000000000000000000
          211.666666666666700000)
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText14: TQRDBText
        Left = 263
        Top = 131
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          695.854166666666700000
          346.604166666666700000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'cfjl'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand7: TQRBand
      Left = 38
      Top = 282
      Width = 434
      Height = 94
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
        248.708333333333300000
        1148.291666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel18: TQRLabel
        Left = 11
        Top = 8
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          29.104166666666670000
          21.166666666666670000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#24072
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText19: TQRDBText
        Left = 42
        Top = 8
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          111.125000000000000000
          21.166666666666670000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'ysxm'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 247
        Top = 7
        Width = 57
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          653.520833333333300000
          18.520833333333330000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24635#37329#39069#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText20: TQRDBText
        Left = 306
        Top = 8
        Width = 36
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          809.625000000000000000
          21.166666666666670000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'sszje'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 11
        Top = 28
        Width = 145
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          29.104166666666670000
          74.083333333333330000
          383.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #33647#24072'('#23457#26680#12289#26657#23545#12289#21457#33647')'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 247
        Top = 28
        Width = 87
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          653.520833333333300000
          74.083333333333330000
          230.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #33647#24072'/'#22763'('#35843#37197')'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape21: TQRShape
        Left = 303
        Top = 21
        Width = 113
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          801.687500000000100000
          55.562500000000000000
          298.979166666666700000)
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 336
        Top = 41
        Width = 80
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          889.000000000000000000
          108.479166666666700000
          211.666666666666700000)
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 159
        Top = 41
        Width = 80
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          420.687500000000000000
          108.479166666666700000
          211.666666666666700000)
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 40
        Top = 21
        Width = 200
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          105.833333333333300000
          55.562500000000000000
          529.166666666666700000)
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel22: TQRLabel
        Left = 13
        Top = 53
        Width = 408
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          34.395833333333330000
          140.229166666666700000
          1079.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #29305#21035#25552#31034#65306#25353#21355#29983#37096#12289#22269#23478#20013#21307#33647#31649#29702#23616#21355#21307#21457'[2011]11'#21495#25991#20214#35268#23450#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 79
        Top = 69
        Width = 287
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          209.020833333333300000
          182.562500000000000000
          759.354166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20026#20445#35777#24739#32773#29992#33647#23433#20840#65292#33647#21697#19968#32463#21457#20986#65292#19981#24471#36864#25442#12290
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 159
        Top = 27
        Width = 36
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          420.687500000000000000
          71.437500000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'fyczy'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText16: TQRDBText
        Left = 340
        Top = 27
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          899.583333333333300000
          71.437500000000000000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'tpry'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand8: TQRBand
      Left = 38
      Top = 264
      Width = 434
      Height = 18
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
        47.625000000000000000
        1148.291666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel25: TQRLabel
        Left = 325
        Top = 2
        Width = 92
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          859.895833333333300000
          5.291666666666667000
          243.416666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20197#19979#26080#22788#26041#25968#25454
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 39
        Top = 2
        Width = 283
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          103.187500000000000000
          5.291666666666667000
          748.770833333333200000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Frm_mzcfcx.sp_zb
        DataField = 'bz'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 238
      Width = 434
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
        1148.291666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep_mzzy
      FooterBand = QRBand8
      HeaderBand = GroupHeaderBand1
      OnNeedData = QRSubDetail1NeedData
      PrintBefore = False
      PrintIfEmpty = True
      object QRL_ypmc1: TQRLabel
        Left = 1
        Top = 5
        Width = 63
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2.645833333333333000
          13.229166666666670000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_ypmc1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_ypsl1: TQRLabel
        Left = 64
        Top = 5
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          169.333333333333300000
          13.229166666666670000
          66.145833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_ypsl1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_ypdw1: TQRLabel
        Left = 89
        Top = 5
        Width = 20
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          235.479166666666700000
          13.229166666666670000
          52.916666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_ypdw1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_ypmc2: TQRLabel
        Left = 111
        Top = 5
        Width = 63
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          293.687500000000000000
          13.229166666666670000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_ypmc2'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_ypsl2: TQRLabel
        Left = 174
        Top = 5
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          460.375000000000000000
          13.229166666666670000
          66.145833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_ypsl2'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_ypdw2: TQRLabel
        Left = 199
        Top = 5
        Width = 20
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          526.520833333333300000
          13.229166666666670000
          52.916666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_ypdw2'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_ypmc3: TQRLabel
        Left = 219
        Top = 5
        Width = 63
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          579.437500000000000000
          13.229166666666670000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_ypmc3'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_ypsl3: TQRLabel
        Left = 282
        Top = 5
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          746.125000000000000000
          13.229166666666670000
          66.145833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_ypsl3'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_ypdw3: TQRLabel
        Left = 307
        Top = 5
        Width = 20
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          812.270833333333300000
          13.229166666666670000
          52.916666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_ypdw3'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_ypmc4: TQRLabel
        Left = 327
        Top = 5
        Width = 63
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          865.187500000000000000
          13.229166666666670000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_ypmc4'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_ypsl4: TQRLabel
        Left = 391
        Top = 5
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1034.520833333333000000
          13.229166666666670000
          66.145833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_ypsl4'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_ypdw4: TQRLabel
        Left = 415
        Top = 5
        Width = 20
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1098.020833333333000000
          13.229166666666670000
          52.916666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_ypdw4'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object GroupHeaderBand1: TQRBand
      Left = 38
      Top = 216
      Width = 434
      Height = 22
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
        58.208333333333330000
        1148.291666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupHeader
      object QRLabel24: TQRLabel
        Left = 11
        Top = 4
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          29.104166666666670000
          10.583333333333330000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Rp'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
end
