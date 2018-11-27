object frm_xnxgsb: Tfrm_xnxgsb
  Left = 0
  Top = 0
  Caption = #24515#33041#34880#31649#19978#25253
  ClientHeight = 594
  ClientWidth = 1066
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 195
    Top = 65
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
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
      200.000000000000000000
      2970.000000000000000000
      200.000000000000000000
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
    Units = Native
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    object DetailBand1: TQRBand
      Left = 38
      Top = 189
      Width = 718
      Height = 800
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        2116.666666666667000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRLabel2: TQRLabel
        Left = 34
        Top = 186
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          89.958333333333330000
          492.125000000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24739#32773#22995#21517#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 276
        Top = 80
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          730.250000000000000000
          211.666666666666700000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36523#20221#35777#21495#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 346
        Top = 80
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          915.458333333333300000
          211.666666666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 365
        Top = 80
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          965.729166666666700000
          211.666666666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 384
        Top = 80
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1016.000000000000000000
          211.666666666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 404
        Top = 80
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1068.916666666667000000
          211.666666666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 423
        Top = 80
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1119.187500000000000000
          211.666666666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 442
        Top = 80
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1169.458333333333000000
          211.666666666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 461
        Top = 80
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1219.729166666667000000
          211.666666666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 480
        Top = 80
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1270.000000000000000000
          211.666666666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 499
        Top = 80
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1320.270833333333000000
          211.666666666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 519
        Top = 80
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1373.187500000000000000
          211.666666666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 538
        Top = 80
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1423.458333333333000000
          211.666666666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 557
        Top = 80
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1473.729166666667000000
          211.666666666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel25: TQRLabel
        Left = 576
        Top = 80
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1524.000000000000000000
          211.666666666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 595
        Top = 80
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1574.270833333333000000
          211.666666666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 614
        Top = 80
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1624.541666666667000000
          211.666666666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel28: TQRLabel
        Left = 634
        Top = 80
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1677.458333333333000000
          211.666666666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel29: TQRLabel
        Left = 653
        Top = 80
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1727.729166666667000000
          211.666666666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel30: TQRLabel
        Left = 672
        Top = 80
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1778.000000000000000000
          211.666666666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel31: TQRLabel
        Left = 161
        Top = 186
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          425.979166666666700000
          492.125000000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24615#21035#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel36: TQRLabel
        Left = 34
        Top = 227
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          89.958333333333330000
          600.604166666666700000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27665#26063#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel59: TQRLabel
        Left = 34
        Top = 13
        Width = 83
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          89.958333333333330000
          34.395833333333330000
          219.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ICD-10 '#32534#30721':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel62: TQRLabel
        Left = 440
        Top = 13
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1164.166666666667000000
          34.395833333333330000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '            '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel64: TQRLabel
        Left = 34
        Top = 113
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          89.958333333333330000
          298.979166666666700000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38376#35786#21495#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel65: TQRLabel
        Left = 93
        Top = 113
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          246.062500000000000000
          298.979166666666700000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '       '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel66: TQRLabel
        Left = 34
        Top = 151
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          89.958333333333330000
          399.520833333333300000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20303#38498#21495#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel67: TQRLabel
        Left = 93
        Top = 151
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          246.062500000000000000
          399.520833333333300000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '       '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 232
        Top = 151
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          613.833333333333300000
          399.520833333333300000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23478#24237#30005#35805#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel68: TQRLabel
        Left = 229
        Top = 186
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          605.895833333333300000
          492.125000000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24180#40836#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel32: TQRLabel
        Left = 299
        Top = 186
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          791.104166666666700000
          492.125000000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20986#29983#24180#26376#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel33: TQRLabel
        Left = 363
        Top = 186
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          960.437500000000000000
          492.125000000000000000
          58.208333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '   '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel34: TQRLabel
        Left = 80
        Top = 227
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          211.666666666666700000
          600.604166666666700000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '    '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel35: TQRLabel
        Left = 232
        Top = 227
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          613.833333333333300000
          600.604166666666700000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23130#23035#29366#20917#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel69: TQRLabel
        Left = 304
        Top = 227
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          804.333333333333300000
          600.604166666666700000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '         '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel37: TQRLabel
        Left = 151
        Top = 268
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          399.520833333333300000
          709.083333333333300000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel38: TQRLabel
        Left = 232
        Top = 268
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          613.833333333333300000
          709.083333333333300000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24037#20316#21333#20301':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel39: TQRLabel
        Left = 34
        Top = 268
        Width = 119
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          89.958333333333330000
          709.083333333333300000
          314.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32844#19994'('#20855#20307#21040#24037#31181')'#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel40: TQRLabel
        Left = 34
        Top = 304
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          89.958333333333330000
          804.333333333333300000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25143#21475#22320#22336#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel41: TQRLabel
        Left = 34
        Top = 340
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          89.958333333333330000
          899.583333333333300000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23454#38469#23621#20303#22320#22336#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel42: TQRLabel
        Left = 104
        Top = 303
        Width = 365
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          275.166666666666700000
          801.687500000000000000
          965.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel43: TQRLabel
        Left = 131
        Top = 340
        Width = 338
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          346.604166666666700000
          899.583333333333300000
          894.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel44: TQRLabel
        Left = 34
        Top = 409
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          89.958333333333330000
          1082.145833333333000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35786#26029'('#37096#20301')'#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel45: TQRLabel
        Left = 121
        Top = 409
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          320.145833333333300000
          1082.145833333333000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel46: TQRLabel
        Left = 34
        Top = 451
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          89.958333333333330000
          1193.270833333333000000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30149#29702#23398#31867#22411#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel47: TQRLabel
        Left = 121
        Top = 451
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          320.145833333333300000
          1193.270833333333000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel48: TQRLabel
        Left = 36
        Top = 493
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          95.250000000000000000
          1304.395833333333000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30149#29702#21495#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel49: TQRLabel
        Left = 92
        Top = 493
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          243.416666666666700000
          1304.395833333333000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel50: TQRLabel
        Left = 34
        Top = 538
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          89.958333333333330000
          1423.458333333333000000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30830#35786#26102#26399#21035#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel71: TQRLabel
        Left = 126
        Top = 538
        Width = 15
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          333.375000000000000000
          1423.458333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '  '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel72: TQRLabel
        Left = 145
        Top = 538
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          383.645833333333300000
          1423.458333333333000000
          21.166666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel73: TQRLabel
        Left = 156
        Top = 538
        Width = 15
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          412.750000000000000000
          1423.458333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '  '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel74: TQRLabel
        Left = 173
        Top = 538
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          457.729166666666700000
          1423.458333333333000000
          21.166666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'M'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel75: TQRLabel
        Left = 183
        Top = 538
        Width = 15
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          484.187500000000000000
          1423.458333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '  '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel76: TQRLabel
        Left = 225
        Top = 538
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          595.312500000000000000
          1423.458333333333000000
          92.604166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '0-I'#26399
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel77: TQRLabel
        Left = 34
        Top = 581
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          89.958333333333330000
          1537.229166666667000000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39318#27425#35786#26029#26085#26399#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel78: TQRLabel
        Left = 129
        Top = 581
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          341.312500000000000000
          1537.229166666667000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel79: TQRLabel
        Left = 34
        Top = 619
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          89.958333333333330000
          1637.770833333333000000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39318#27425#35786#26029#21333#20301#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel80: TQRLabel
        Left = 232
        Top = 597
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          613.833333333333300000
          1579.562500000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25253#21578#21333#20301#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel81: TQRLabel
        Left = 122
        Top = 619
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          322.791666666666700000
          1637.770833333333000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel82: TQRLabel
        Left = 304
        Top = 597
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          804.333333333333300000
          1579.562500000000000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel83: TQRLabel
        Left = 34
        Top = 653
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          89.958333333333330000
          1727.729166666667000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25253#21578#21307#24072#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel84: TQRLabel
        Left = 106
        Top = 653
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          280.458333333333300000
          1727.729166666667000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel85: TQRLabel
        Left = 232
        Top = 653
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          613.833333333333300000
          1727.729166666667000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25253#21578#26085#26399#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel86: TQRLabel
        Left = 304
        Top = 654
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          804.333333333333300000
          1730.375000000000000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel87: TQRLabel
        Left = 34
        Top = 685
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          89.958333333333330000
          1812.395833333333000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27515#20129#26085#26399#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel88: TQRLabel
        Left = 106
        Top = 685
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          280.458333333333300000
          1812.395833333333000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRLabel88Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel89: TQRLabel
        Left = 232
        Top = 685
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          613.833333333333300000
          1812.395833333333000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26681#26412#27515#22240#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel90: TQRLabel
        Left = 304
        Top = 685
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          804.333333333333300000
          1812.395833333333000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel91: TQRLabel
        Left = 298
        Top = 268
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          788.458333333333300000
          709.083333333333300000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel51: TQRLabel
        Left = 305
        Top = 151
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          806.979166666666700000
          399.520833333333300000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '       '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 175
        Top = 380
        Width = 184
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          463.020833333333300000
          1005.416666666667000000
          486.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '('#22914#19982#25143#21475#25152#22312#22320#19981#21516#32773#35831#22635#20889')'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 529
        Top = 156
        Width = 131
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1399.645833333333000000
          412.750000000000000000
          346.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21407#25253#21578#35786#26029#26377#35823#26102#22635#20889
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 550
        Top = 130
        Width = 92
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1455.208333333333000000
          343.958333333333300000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26356#27491#35786#26029#25253#21578#26639
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel52: TQRLabel
        Left = 478
        Top = 227
        Width = 47
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1264.708333333333000000
          600.604166666666700000
          124.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21407#35786#26029':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel53: TQRLabel
        Left = 478
        Top = 252
        Width = 73
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1264.708333333333000000
          666.750000000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21407#35786#26029#26085#26399':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel54: TQRLabel
        Left = 512
        Top = 304
        Width = 153
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1354.666666666667000000
          804.333333333333300000
          404.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35786#26029#20381#25454':('#22312#9633#20869#20316'"'#8730'")'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel102: TQRLabel
        Left = 503
        Top = 349
        Width = 27
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1330.854166666667000000
          923.395833333333300000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20020#24202
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel103: TQRLabel
        Left = 476
        Top = 403
        Width = 21
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1259.416666666667000000
          1066.270833333333000000
          55.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'X'#32447
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel105: TQRLabel
        Left = 520
        Top = 403
        Width = 40
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1375.833333333333000000
          1066.270833333333000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36229#22768#27874
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel107: TQRLabel
        Left = 476
        Top = 428
        Width = 40
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1259.416666666667000000
          1132.416666666667000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20869#31397#38236
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel109: TQRLabel
        Left = 542
        Top = 428
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1434.041666666667000000
          1132.416666666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CT'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel111: TQRLabel
        Left = 479
        Top = 500
        Width = 27
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1267.354166666667000000
          1322.916666666667000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25163#26415
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel113: TQRLabel
        Left = 533
        Top = 500
        Width = 27
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1410.229166666667000000
          1322.916666666667000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23608#26816
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel116: TQRLabel
        Left = 500
        Top = 522
        Width = 54
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1322.916666666667000000
          1381.125000000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '('#26080#30149#29702')'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel117: TQRLabel
        Left = 479
        Top = 591
        Width = 27
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1267.354166666667000000
          1563.687500000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #29983#21270
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel119: TQRLabel
        Left = 531
        Top = 591
        Width = 27
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1404.937500000000000000
          1563.687500000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20813#30123
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel121: TQRLabel
        Left = 475
        Top = 635
        Width = 40
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1256.770833333333000000
          1680.104166666667000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32454#32990#23398
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel123: TQRLabel
        Left = 535
        Top = 635
        Width = 27
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1415.520833333333000000
          1680.104166666667000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #34880#29255
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel125: TQRLabel
        Left = 611
        Top = 343
        Width = 29
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1616.604166666667000000
          907.520833333333300000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #30149#29702
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel126: TQRLabel
        Left = 606
        Top = 363
        Width = 43
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1603.375000000000000000
          960.437500000000000000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '('#32487#21457')'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape2: TQRShape
        Left = 475
        Top = 122
        Width = 217
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1256.770833333333000000
          322.791666666666700000
          574.145833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 475
        Top = 123
        Width = 1
        Height = 157
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          415.395833333333300000
          1256.770833333333000000
          325.437500000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 475
        Top = 279
        Width = 217
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1256.770833333333000000
          738.187500000000000000
          574.145833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 691
        Top = 123
        Width = 1
        Height = 157
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          415.395833333333300000
          1828.270833333333000000
          325.437500000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 474
        Top = 331
        Width = 1
        Height = 342
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          904.875000000000000000
          1254.125000000000000000
          875.770833333333300000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 582
        Top = 331
        Width = 1
        Height = 342
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          904.875000000000000000
          1539.875000000000000000
          875.770833333333300000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 601
        Top = 331
        Width = 1
        Height = 342
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          904.875000000000000000
          1590.145833333333000000
          875.770833333333300000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 673
        Top = 331
        Width = 1
        Height = 342
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          904.875000000000000000
          1780.645833333333000000
          875.770833333333300000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 692
        Top = 331
        Width = 1
        Height = 342
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          904.875000000000000000
          1830.916666666667000000
          875.770833333333300000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 475
        Top = 331
        Width = 217
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1256.770833333333000000
          875.770833333333300000
          574.145833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 475
        Top = 384
        Width = 217
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1256.770833333333000000
          1016.000000000000000000
          574.145833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 475
        Top = 583
        Width = 217
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1256.770833333333000000
          1542.520833333333000000
          574.145833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 475
        Top = 614
        Width = 217
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1256.770833333333000000
          1624.541666666667000000
          574.145833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 475
        Top = 672
        Width = 217
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1256.770833333333000000
          1778.000000000000000000
          574.145833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel115: TQRLabel
        Left = 612
        Top = 592
        Width = 27
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1619.250000000000000000
          1566.333333333333000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #19981#35814
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel128: TQRLabel
        Left = 614
        Top = 403
        Width = 29
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1624.541666666667000000
          1066.270833333333000000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #30149#29702
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel129: TQRLabel
        Left = 607
        Top = 428
        Width = 43
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1606.020833333333000000
          1132.416666666667000000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '('#21407#21457')'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel131: TQRLabel
        Left = 610
        Top = 499
        Width = 29
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1613.958333333333000000
          1320.270833333333000000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #23608#26816
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel132: TQRLabel
        Left = 605
        Top = 521
        Width = 54
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1600.729166666667000000
          1378.479166666667000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '('#26377#30149#29702')'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel135: TQRLabel
        Left = 610
        Top = 630
        Width = 29
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1613.958333333333000000
          1666.875000000000000000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #27515#20129
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel136: TQRLabel
        Left = 606
        Top = 651
        Width = 43
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1603.375000000000000000
          1722.437500000000000000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #34917#21457#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel70: TQRLabel
        Left = 199
        Top = 186
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          526.520833333333300000
          492.125000000000000000
          21.166666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel139: TQRLabel
        Left = 265
        Top = 186
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          701.145833333333300000
          492.125000000000000000
          21.166666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel140: TQRLabel
        Left = 102
        Top = 186
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          269.875000000000000000
          492.125000000000000000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '       '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel92: TQRLabel
        Left = 584
        Top = 349
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1545.166666666667000000
          923.395833333333300000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel93: TQRLabel
        Left = 584
        Top = 412
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1545.166666666667000000
          1090.083333333333000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '2'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel94: TQRLabel
        Left = 584
        Top = 513
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1545.166666666667000000
          1357.312500000000000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '3'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel95: TQRLabel
        Left = 584
        Top = 591
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1545.166666666667000000
          1563.687500000000000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '4'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel96: TQRLabel
        Left = 584
        Top = 635
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1545.166666666667000000
          1680.104166666667000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '5'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel97: TQRLabel
        Left = 675
        Top = 635
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1785.937500000000000000
          1680.104166666667000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '0'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel98: TQRLabel
        Left = 675
        Top = 592
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1785.937500000000000000
          1566.333333333333000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '9'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel99: TQRLabel
        Left = 675
        Top = 508
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1785.937500000000000000
          1344.083333333333000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '8'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel100: TQRLabel
        Left = 675
        Top = 349
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1785.937500000000000000
          923.395833333333300000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '6'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel101: TQRLabel
        Left = 675
        Top = 414
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1785.937500000000000000
          1095.375000000000000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '7'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel138: TQRLabel
        Left = 536
        Top = 349
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1418.166666666667000000
          923.395833333333300000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '  '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRLabel138Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel106: TQRLabel
        Left = 563
        Top = 403
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1489.604166666667000000
          1066.270833333333000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '  '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRLabel106Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel104: TQRLabel
        Left = 500
        Top = 403
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1322.916666666667000000
          1066.270833333333000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '  '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRLabel104Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel108: TQRLabel
        Left = 521
        Top = 428
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1378.479166666667000000
          1132.416666666667000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '  '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRLabel108Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel110: TQRLabel
        Left = 563
        Top = 428
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1489.604166666667000000
          1132.416666666667000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '  '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRLabel110Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel112: TQRLabel
        Left = 513
        Top = 500
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1357.312500000000000000
          1322.916666666667000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '  '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRLabel112Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel114: TQRLabel
        Left = 564
        Top = 500
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1492.250000000000000000
          1322.916666666667000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '  '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRLabel114Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel118: TQRLabel
        Left = 510
        Top = 591
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1349.375000000000000000
          1563.687500000000000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '  '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRLabel118Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel120: TQRLabel
        Left = 563
        Top = 591
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1489.604166666667000000
          1563.687500000000000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '  '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRLabel120Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel122: TQRLabel
        Left = 519
        Top = 635
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1373.187500000000000000
          1680.104166666667000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '  '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel124: TQRLabel
        Left = 564
        Top = 635
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1492.250000000000000000
          1680.104166666667000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '  '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel127: TQRLabel
        Left = 653
        Top = 349
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1727.729166666667000000
          923.395833333333300000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '  '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel130: TQRLabel
        Left = 652
        Top = 408
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1725.083333333333000000
          1079.500000000000000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '  '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel133: TQRLabel
        Left = 653
        Top = 500
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1727.729166666667000000
          1322.916666666667000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '  '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel134: TQRLabel
        Left = 653
        Top = 591
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1727.729166666667000000
          1563.687500000000000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '  '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel137: TQRLabel
        Left = 653
        Top = 635
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1727.729166666667000000
          1680.104166666667000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '  '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel141: TQRLabel
        Left = 34
        Top = 80
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          89.958333333333330000
          211.666666666666700000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31185'  '#23460#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel142: TQRLabel
        Left = 93
        Top = 80
        Width = 50
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          246.062500000000000000
          211.666666666666700000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '       '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel143: TQRLabel
        Left = 116
        Top = 538
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          306.916666666666700000
          1423.458333333333000000
          21.166666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'T'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel144: TQRLabel
        Left = 205
        Top = 538
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          542.395833333333300000
          1423.458333333333000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel145: TQRLabel
        Left = 263
        Top = 538
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          695.854166666666700000
          1423.458333333333000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel146: TQRLabel
        Left = 280
        Top = 538
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          740.833333333333300000
          1423.458333333333000000
          74.083333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'II'#26399
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel147: TQRLabel
        Left = 311
        Top = 538
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          822.854166666666700000
          1423.458333333333000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel148: TQRLabel
        Left = 328
        Top = 538
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          867.833333333333300000
          1423.458333333333000000
          92.604166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'III'#26399
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel149: TQRLabel
        Left = 368
        Top = 538
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          973.666666666666700000
          1423.458333333333000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel150: TQRLabel
        Left = 385
        Top = 538
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1018.645833333333000000
          1423.458333333333000000
          74.083333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'IV'#26399
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel151: TQRLabel
        Left = 417
        Top = 538
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1103.312500000000000000
          1423.458333333333000000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRLabel151Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel152: TQRLabel
        Left = 434
        Top = 528
        Width = 32
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1148.291666666667000000
          1397.000000000000000000
          84.666666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #26080#27861
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel153: TQRLabel
        Left = 434
        Top = 547
        Width = 32
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1148.291666666667000000
          1447.270833333333000000
          84.666666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #21028#23450
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel154: TQRLabel
        Left = 528
        Top = 227
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1397.000000000000000000
          600.604166666666700000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '         '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel155: TQRLabel
        Left = 555
        Top = 251
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1468.437500000000000000
          664.104166666666700000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '         '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel160: TQRLabel
        Left = 34
        Top = 716
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          89.958333333333330000
          1894.416666666667000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27515#20129#22320#28857#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel161: TQRLabel
        Left = 106
        Top = 716
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          280.458333333333300000
          1894.416666666667000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRLabel161Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel61: TQRLabel
        Left = 358
        Top = 13
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          947.208333333333300000
          34.395833333333330000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ICD-0 '#32534#30721':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel63: TQRLabel
        Left = 273
        Top = 46
        Width = 172
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          722.312500000000000000
          121.708333333333300000
          455.083333333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #23621#27665#32959#30244#30149#20363#25253#21578#21345
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
      object QRLabel60: TQRLabel
        Left = 125
        Top = 13
        Width = 227
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333330000
          330.729166666666700000
          34.395833333333330000
          600.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '            '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 76
      Width = 718
      Height = 113
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
        298.979166666666700000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel10: TQRLabel
        Left = 259
        Top = 9
        Width = 199
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          685.270833333333300000
          23.812500000000000000
          526.520833333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #23621#27665#32959#30244#30149#20363#25253#21578#21345
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 16
      end
      object QRLabel11: TQRLabel
        Left = 34
        Top = 36
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          89.958333333333330000
          95.250000000000000000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #34920'   '#21495':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 358
        Top = 36
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          947.208333333333300000
          95.250000000000000000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21046#34920#26426#20851#65306#21355#29983#37096
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 100
        Top = 36
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          264.583333333333300000
          95.250000000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CRC01'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 34
        Top = 57
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          89.958333333333330000
          150.812500000000000000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #34892#25919#21306#21010#20195#30721':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 34
        Top = 92
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          89.958333333333330000
          243.416666666666700000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32534#21495':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel55: TQRLabel
        Left = 34
        Top = 76
        Width = 160
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          89.958333333333330000
          201.083333333333300000
          423.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #28074#22478#21439'('#21306') '#35686#38047#34903' ('#34903#36947')'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel56: TQRLabel
        Left = 358
        Top = 57
        Width = 131
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          947.208333333333300000
          150.812500000000000000
          346.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25209#20934#26426#20851#65306#22269#23478#32479#35745#23616
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel57: TQRLabel
        Left = 358
        Top = 76
        Width = 181
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          947.208333333333300000
          201.083333333333300000
          478.895833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25209#20934#38382#21495#65306#22269#32479#21046'[2009]   '#21495
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel58: TQRLabel
        Left = 358
        Top = 92
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          947.208333333333300000
          243.416666666666700000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26377#25928#26399#33267#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel156: TQRLabel
        Left = 72
        Top = 93
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          190.500000000000000000
          246.062500000000000000
          224.895833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '            '
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel162: TQRLabel
        Left = 126
        Top = 57
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          333.375000000000000000
          150.812500000000000000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '510703'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1066
    Height = 594
    Align = alClient
    TabOrder = 0
    object pc1: TPageControl
      Left = 1
      Top = 1
      Width = 1064
      Height = 592
      ActivePage = TabSheet2
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = #26032#22686#19978#25253
        object Panel4: TPanel
          Left = 211
          Top = 0
          Width = 845
          Height = 561
          Align = alClient
          Color = clSilver
          ParentBackground = False
          TabOrder = 0
          object Label3: TLabel
            Left = 5
            Top = 418
            Width = 68
            Height = 15
            Caption = #22635#21345#35828#26126':'
            Font.Charset = GB2312_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 5
            Top = 438
            Width = 793
            Height = 15
            Caption = '1.'#33041#21330#20013#65306#33268#27515#24615#21644#38750#33268#27515#24615#33041#21330#20013'(I60-I64)'#65292#21253#25324#34523#32593#33180#19979#33108#20986#34880#65292#33041#20986#34880#65292#33041#26775#22622#21450#26410#20998#31867#33041#21330#20013#65292#19981#21253#25324#19968#36807#24615
            Font.Charset = GB2312_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 21
            Top = 462
            Width = 235
            Height = 15
            Caption = #33041#32570#34880#21457#20316'(TIA)'#21450#24930#24615#33041#21160#33033#30828#21270
            Font.Charset = GB2312_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 5
            Top = 491
            Width = 377
            Height = 15
            Caption = '2.'#20896#24515#30149':'#24613#24615#24515#32908#26775#27515'(I21-I22)'#21644#24515#28304#24615#29469#27515'(I46.1)'
            Font.Charset = GB2312_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object Panel5: TPanel
            Left = 1
            Top = 1
            Width = 843
            Height = 33
            Align = alTop
            BevelInner = bvLowered
            Color = clSilver
            ParentBackground = False
            TabOrder = 0
            object Label25: TLabel
              Left = 198
              Top = 10
              Width = 62
              Height = 15
              AutoSize = False
              Caption = #32534'    '#21495
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object DBEdit13: TDBEdit
              Left = 266
              Top = 6
              Width = 127
              Height = 22
              Ctl3D = False
              DataField = 'id'
              DataSource = DSinsert
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
            object xzsb: TRadioButton
              Left = 14
              Top = 10
              Width = 65
              Height = 17
              Caption = #26032#22686
              Checked = True
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #23435#20307
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              TabStop = True
              OnClick = xzsbClick
            end
            object blsb: TRadioButton
              Left = 82
              Top = 10
              Width = 56
              Height = 17
              Caption = #34917#24405
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #23435#20307
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
              OnClick = blsbClick
            end
          end
          object Panel9: TPanel
            Left = 1
            Top = 190
            Width = 843
            Height = 119
            Align = alTop
            BevelInner = bvLowered
            Color = clSilver
            ParentBackground = False
            TabOrder = 1
            object Label37: TLabel
              Left = 400
              Top = 9
              Width = 78
              Height = 15
              Caption = 'ICD-10'#32534#30721
              FocusControl = DBEdit24
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object jbmc1: TLabel
              Left = 592
              Top = 7
              Width = 198
              Height = 18
              AutoSize = False
              Caption = '           '
              Font.Charset = GB2312_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label45: TLabel
              Left = 198
              Top = 93
              Width = 60
              Height = 15
              Caption = #25253#21345#21333#20301
              FocusControl = DBEdit24
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label46: TLabel
              Left = 414
              Top = 92
              Width = 60
              Height = 15
              Caption = #25253#21345#21307#24072
              FocusControl = DBEdit24
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label47: TLabel
              Left = 199
              Top = 63
              Width = 60
              Height = 15
              Caption = #27515#20129#26085#26399
              FocusControl = DBEdit24
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label48: TLabel
              Left = 415
              Top = 63
              Width = 60
              Height = 15
              Caption = #27515#20129#21407#22240
              FocusControl = DBEdit24
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label33: TLabel
              Left = 14
              Top = 93
              Width = 60
              Height = 15
              Caption = #25253#21345#26085#26399
              FocusControl = DBEdit24
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label58: TLabel
              Left = 592
              Top = 63
              Width = 60
              Height = 15
              Caption = #27515#20129#22320#28857
              FocusControl = DBEdit24
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label2: TLabel
              Left = 5
              Top = 6
              Width = 78
              Height = 13
              Caption = #30142#30149#35786#26029#24207#21495
              FocusControl = DBEdit24
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label15: TLabel
              Left = 14
              Top = 37
              Width = 60
              Height = 15
              Caption = #39318#27425#21457#30149
              FocusControl = DBEdit24
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label24: TLabel
              Left = 198
              Top = 36
              Width = 60
              Height = 15
              Caption = #21457#30149#26085#26399
              FocusControl = DBEdit24
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label35: TLabel
              Left = 414
              Top = 36
              Width = 60
              Height = 15
              Caption = #30830#35786#26085#26399
              FocusControl = DBEdit24
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label36: TLabel
              Left = 584
              Top = 38
              Width = 78
              Height = 13
              Caption = #26368#39640#30830#35786#21333#20301
              FocusControl = DBEdit24
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label38: TLabel
              Left = 15
              Top = 63
              Width = 60
              Height = 15
              Caption = #36716#24402#24773#20917
              FocusControl = DBEdit24
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object jbmc3: TLabel
              Left = 187
              Top = 7
              Width = 206
              Height = 18
              AutoSize = False
              Caption = '           '
              Font.Charset = GB2312_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label27: TLabel
              Left = 10
              Top = 20
              Width = 66
              Height = 13
              Caption = '('#21452#20987#36873#25321')'
              FocusControl = DBEdit24
              Font.Charset = GB2312_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object DBEdit24: TDBEdit
              Left = 480
              Top = 5
              Width = 105
              Height = 22
              Hint = #21452#20987#36827#20837'ICD10'#36873#25321#30028#38754
              Ctl3D = False
              DataField = 'brzd'
              DataSource = DSinsert
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnDblClick = DBEdit24DblClick
              OnKeyPress = DBEdit24KeyPress
            end
            object DBEdit30: TDBEdit
              Left = 266
              Top = 89
              Width = 127
              Height = 20
              Ctl3D = False
              DataField = 'bgdw'
              DataSource = DSinsert
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit31: TDBEdit
              Left = 480
              Top = 89
              Width = 105
              Height = 22
              Ctl3D = False
              DataField = 'bgys'
              DataSource = DSinsert
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
            end
            object dtpswrq: TcxDBDateEdit
              Left = 266
              Top = 60
              DataBinding.DataField = 'swrq'
              DataBinding.DataSource = DSinsert
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -14
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 129
            end
            object dtpbgrq: TcxDBDateEdit
              Left = 82
              Top = 89
              DataBinding.DataField = 'bgrq'
              DataBinding.DataSource = DSinsert
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 101
            end
            object cxComboBox9: TcxComboBox
              Left = 662
              Top = 60
              ParentFont = False
              Properties.Items.Strings = (
                #21307#38498
                #20859#32769#38498
                #26202#26399#32959#30244#30149#25151
                #23478#24237#30149#25151
                #23478#20013
                #19981#35814)
              Style.BorderColor = clInfoBk
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 5
              Width = 119
            end
            object DBEdit3: TDBEdit
              Left = 84
              Top = 5
              Width = 98
              Height = 22
              Hint = #21452#20987#36827#20837'ICD10'#36873#25321#30028#38754
              Ctl3D = False
              DataField = 'jbzdxh'
              DataSource = DSinsert
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 6
              OnDblClick = DBEdit3DblClick
              OnKeyPress = DBEdit24KeyPress
            end
            object fbrq: TcxDBDateEdit
              Left = 266
              Top = 33
              DataBinding.DataField = 'bgrq'
              DataBinding.DataSource = DSinsert
              ParentFont = False
              Properties.Kind = ckDateTime
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -14
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.Shadow = False
              Style.IsFontAssigned = True
              TabOrder = 7
              Width = 141
            end
            object qzrq: TcxDBDateEdit
              Left = 480
              Top = 33
              DataBinding.DataField = 'qzrq'
              DataBinding.DataSource = DSinsert
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 8
              Width = 105
            end
            object cxComboBox10: TcxComboBox
              Left = 82
              Top = 60
              ParentFont = False
              Properties.Items.Strings = (
                #29983#23384'('#27835#24840')'
                #27515#20129
                #20854#20182'('#36164#26009#19981#20840#25110#26080#27861#21028#26029')')
              Style.BorderColor = clInfoBk
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 9
              Width = 101
            end
            object DBEdit2: TDBEdit
              Left = 480
              Top = 60
              Width = 105
              Height = 22
              Ctl3D = False
              DataField = 'gbsy'
              DataSource = DSinsert
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 10
            end
            object cxComboBox4: TcxComboBox
              Left = 82
              Top = 33
              ParentFont = False
              Properties.Items.Strings = (
                #26159
                #21542)
              Style.BorderColor = clInfoBk
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 11
              Width = 101
            end
            object cxComboBox7: TcxComboBox
              Left = 662
              Top = 33
              ParentFont = False
              Properties.Items.Strings = (
                #30465#32423#21307#38498
                #24066#32423#21307#38498
                #21439#32423#21307#38498
                #20065#38215#32423#21307#38498
                #20854#20182
                #19981#35814)
              Style.BorderColor = clInfoBk
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 12
              Width = 119
            end
          end
          object GroupBox1: TGroupBox
            Left = 1
            Top = 358
            Width = 843
            Height = 18
            Align = alTop
            Caption = #35786#26029#20381#25454
            Color = clSilver
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentColor = False
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            Visible = False
            object cxCheckBox2: TcxCheckBox
              Left = 100
              Top = 19
              Caption = 'CT/MRI'
              TabOrder = 1
              Width = 77
            end
            object cxCheckBox3: TcxCheckBox
              Left = 181
              Top = 19
              Caption = #36229#22768
              TabOrder = 2
              Width = 55
            end
            object cxCheckBox4: TcxCheckBox
              Left = 252
              Top = 20
              Caption = #33136#31359
              TabOrder = 3
              Width = 57
            end
            object cxCheckBox5: TcxCheckBox
              Left = 323
              Top = 19
              Caption = #23608#26816
              TabOrder = 4
              Width = 61
            end
            object cxCheckBox6: TcxCheckBox
              Left = 390
              Top = 19
              Caption = #30149#29702
              TabOrder = 5
              Width = 53
            end
            object cxCheckBox7: TcxCheckBox
              Left = 459
              Top = 19
              Caption = #24515#32908#37238
              TabOrder = 6
              Width = 74
            end
            object cxCheckBox1: TcxCheckBox
              Left = 11
              Top = 19
              Caption = #34880#31649#36896#24433
              TabOrder = 0
              Width = 81
            end
            object cxCheckBox8: TcxCheckBox
              Left = 540
              Top = 19
              Caption = #24515#30005#22270
              TabOrder = 7
              Width = 51
            end
            object cxCheckBox9: TcxCheckBox
              Left = 604
              Top = 19
              Caption = #30151#29366
              TabOrder = 8
              Width = 51
            end
            object cxCheckBox10: TcxCheckBox
              Left = 672
              Top = 19
              Caption = #20307#24449
              TabOrder = 9
              Width = 51
            end
          end
          object DBGrid3: TDBGridEh
            Left = 63
            Top = 42
            Width = 412
            Height = 191
            Ctl3D = False
            DataGrouping.GroupLevels = <>
            DataSource = DataSource8
            Flat = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #23435#20307
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Tahoma'
            FooterFont.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            TabOrder = 3
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Visible = False
            OnDblClick = DBGrid3DblClick
            OnKeyPress = DBGrid3KeyPress
            Columns = <
              item
                EditButtons = <>
                FieldName = 'mc'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #21517#31216
                Title.Font.Charset = GB2312_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -15
                Title.Font.Name = #23435#20307
                Title.Font.Style = []
                Width = 286
              end
              item
                EditButtons = <>
                FieldName = 'DM'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #20195#30721
                Title.Font.Charset = GB2312_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -15
                Title.Font.Name = #23435#20307
                Title.Font.Style = []
                Width = 89
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object Panel7: TPanel
            Left = 1
            Top = 520
            Width = 843
            Height = 40
            Align = alBottom
            BevelInner = bvLowered
            Color = clTeal
            ParentBackground = False
            TabOrder = 4
            object B_save: TBitBtn
              Left = 448
              Top = 6
              Width = 81
              Height = 26
              Caption = '[&S]'#20445' '#23384
              TabOrder = 0
              OnClick = B_saveClick
            end
            object BitBtn6: TBitBtn
              Left = 653
              Top = 6
              Width = 90
              Height = 26
              Caption = #36864' '#20986'[&X]'
              TabOrder = 1
              Kind = bkClose
            end
            object Button1: TButton
              Left = 16
              Top = 8
              Width = 75
              Height = 24
              Caption = #25171#21360'[&R]'
              TabOrder = 2
              OnClick = Button1Click
            end
            object BitBtn2: TBitBtn
              Left = 549
              Top = 6
              Width = 81
              Height = 26
              Caption = '[&W]'#23436'  '#25104
              TabOrder = 3
              OnClick = BitBtn2Click
            end
          end
          object Panel8: TPanel
            Left = 1
            Top = 34
            Width = 843
            Height = 156
            Align = alTop
            BevelInner = bvLowered
            Color = clSilver
            ParentBackground = False
            TabOrder = 5
            object Label7: TLabel
              Left = 414
              Top = 8
              Width = 60
              Height = 15
              Caption = #30149#20154#31185#23460
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 592
              Top = 59
              Width = 63
              Height = 15
              AutoSize = False
              Caption = #32852#31995#30005#35805
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label9: TLabel
              Left = 16
              Top = 8
              Width = 61
              Height = 15
              Caption = #38376' '#35786' '#21495
              Color = clSilver
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label11: TLabel
              Left = 15
              Top = 33
              Width = 60
              Height = 15
              Caption = #24739#32773#22995#21517
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label12: TLabel
              Left = 414
              Top = 33
              Width = 60
              Height = 15
              Caption = #24739#32773#24180#40836
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label14: TLabel
              Left = 591
              Top = 36
              Width = 62
              Height = 15
              Caption = #27665'    '#26063
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label10: TLabel
              Left = 198
              Top = 8
              Width = 61
              Height = 15
              Caption = #20303' '#38498' '#21495
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 198
              Top = 33
              Width = 60
              Height = 15
              Caption = #24739#32773#24615#21035
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label17: TLabel
              Left = 592
              Top = 8
              Width = 63
              Height = 15
              AutoSize = False
              Caption = #20986#29983#26085#26399
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 15
              Top = 59
              Width = 62
              Height = 15
              Caption = #32844'    '#19994
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label19: TLabel
              Left = 198
              Top = 59
              Width = 63
              Height = 15
              AutoSize = False
              Caption = #24037#20316#21333#20301
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label20: TLabel
              Left = 15
              Top = 109
              Width = 60
              Height = 16
              Caption = #25143#31821#22320#22336
              FocusControl = DBEdit16
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label21: TLabel
              Left = 14
              Top = 84
              Width = 60
              Height = 15
              Caption = #36523#20221#35777#21495
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label22: TLabel
              Left = 14
              Top = 133
              Width = 60
              Height = 15
              Caption = #23621#20303#22320#22336
              FocusControl = DBEdit16
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label34: TLabel
              Left = 398
              Top = 132
              Width = 331
              Height = 15
              Caption = '('#19982#25143#21475#25152#22312#22320#19981#21516#32773#22635#20889','#21482#19978#25253#32501#38451#24066#30149#20154')'
              FocusControl = DBEdit16
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label50: TLabel
              Left = 398
              Top = 83
              Width = 162
              Height = 15
              Caption = #33509#27809#26377#36523#20221#35777#21017#22635'"'#26080'"'
              FocusControl = DBEdit16
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label1: TLabel
              Left = 415
              Top = 59
              Width = 63
              Height = 15
              AutoSize = False
              Caption = #32852' '#31995' '#20154
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object DBEdit6: TDBEdit
              Left = 82
              Top = 30
              Width = 101
              Height = 22
              Ctl3D = False
              DataField = 'brxm'
              DataSource = DSinsert
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit4: TDBEdit
              Left = 660
              Top = 57
              Width = 119
              Height = 22
              Ctl3D = False
              DataField = 'jtdh'
              DataSource = DSinsert
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
            end
            object cxComboBox3: TcxComboBox
              Left = 266
              Top = 30
              ParentFont = False
              Properties.Items.Strings = (
                #30007
                #22899
                #20854#20182)
              Style.BorderColor = clInfoBk
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 129
            end
            object DBEdit7: TDBEdit
              Left = 480
              Top = 30
              Width = 105
              Height = 22
              Ctl3D = False
              DataField = 'brnl'
              DataSource = DSinsert
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
            end
            object dtpcsrq: TcxDBDateEdit
              Left = 660
              Top = 4
              DataBinding.DataField = 'csrq'
              DataBinding.DataSource = DSinsert
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -14
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 5
              Width = 119
            end
            object cxComboBox5: TcxComboBox
              Left = 82
              Top = 55
              AutoSize = False
              ParentFont = False
              Properties.Items.Strings = (
                #20844#21153#21592
                #19987#19994#25216#26415#20154#21592
                #32844#21592
                #20225#19994#31649#29702#32773
                #24037#20154
                #20892#27665
                #23398#29983
                #29616#24441#20891#20154
                #33258#30001#32844#19994#32773
                #20010#20307#32463#33829#32773
                #26080#19994#20154#21592
                #31163#36864#20241#20154#21592
                #20854#20182)
              Style.BorderColor = clInfoBk
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -13
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 7
              Height = 24
              Width = 101
            end
            object DBEdit9: TDBEdit
              Left = 266
              Top = 57
              Width = 127
              Height = 22
              Ctl3D = False
              DataField = 'gzdw'
              DataSource = DSinsert
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 8
            end
            object DBEdit16: TDBEdit
              Left = 82
              Top = 106
              Width = 311
              Height = 21
              Hint = #26576#30465#26576#24066#26576#21439#65288#21306#65289#26576#20065#65288#38215#12289#34903#36947#65289
              TabStop = False
              Ctl3D = False
              DataField = 'hkdz'
              DataSource = DSinsert
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 10
            end
            object DBEdit10: TDBEdit
              Left = 82
              Top = 81
              Width = 311
              Height = 21
              Ctl3D = False
              DataField = 'sfzhm'
              DataSource = DSinsert
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 9
            end
            object DBEdit12: TDBEdit
              Left = 82
              Top = 130
              Width = 311
              Height = 21
              Hint = #26576#30465#26576#24066#26576#21439#65288#21306#65289#26576#20065#65288#38215#12289#34903#36947#65289
              TabStop = False
              Ctl3D = False
              DataField = 'jzdz'
              DataSource = DSinsert
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 11
              OnExit = DBEdit12Exit
            end
            object cxComboBox6: TcxComboBox
              Left = 660
              Top = 30
              ParentFont = False
              Properties.Items.Strings = (
                #26377
                #26080)
              Style.BorderColor = clInfoBk
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 6
              OnExit = cxComboBox6Exit
              Width = 119
            end
            object DBEdit17: TDBEdit
              Left = 480
              Top = 4
              Width = 105
              Height = 22
              Ctl3D = False
              DataField = 'brks'
              DataSource = DSinsert
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
            end
            object Edit1: TEdit
              Left = 266
              Top = 4
              Width = 127
              Height = 21
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 12
              OnKeyPress = Edit1KeyPress
            end
            object Edit2: TEdit
              Left = 82
              Top = 4
              Width = 101
              Height = 21
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 13
              OnKeyPress = Edit2KeyPress
            end
            object DBEdit1: TDBEdit
              Left = 480
              Top = 57
              Width = 105
              Height = 22
              Ctl3D = False
              DataField = 'lxr'
              DataSource = DSinsert
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 14
            end
          end
          object GroupBox2: TGroupBox
            Left = 1
            Top = 309
            Width = 843
            Height = 49
            Align = alTop
            Caption = #26368#39640#35786#26029#20381#25454
            Color = clSilver
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentColor = False
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 6
            object cxCheckBox12: TcxCheckBox
              Left = 98
              Top = 19
              Caption = 'CT/MRI'
              TabOrder = 1
              Width = 77
            end
            object cxCheckBox13: TcxCheckBox
              Left = 179
              Top = 19
              Caption = #36229#22768
              TabOrder = 2
              Width = 55
            end
            object cxCheckBox14: TcxCheckBox
              Left = 252
              Top = 19
              Caption = #33136#31359
              TabOrder = 3
              Width = 57
            end
            object cxCheckBox15: TcxCheckBox
              Left = 324
              Top = 19
              Caption = #23608#26816
              TabOrder = 4
              Width = 61
            end
            object cxCheckBox16: TcxCheckBox
              Left = 390
              Top = 19
              Caption = #30149#29702
              TabOrder = 5
              Width = 53
            end
            object cxCheckBox17: TcxCheckBox
              Left = 459
              Top = 19
              Caption = #24515#32908#37238
              TabOrder = 6
              Width = 74
            end
            object cxCheckBox11: TcxCheckBox
              Left = 9
              Top = 19
              Caption = #34880#31649#36896#24433
              TabOrder = 0
              Width = 81
            end
            object cxCheckBox18: TcxCheckBox
              Left = 540
              Top = 19
              Caption = #24515#30005#22270
              TabOrder = 7
              Width = 51
            end
            object cxCheckBox19: TcxCheckBox
              Left = 602
              Top = 19
              Caption = #30151#29366
              TabOrder = 8
              Width = 51
            end
            object cxCheckBox20: TcxCheckBox
              Left = 672
              Top = 19
              Caption = #20307#24449
              TabOrder = 9
              Width = 51
            end
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 211
          Height = 561
          Align = alLeft
          TabOrder = 1
          object DBGridEh1: TDBGridEh
            Left = 1
            Top = 1
            Width = 209
            Height = 559
            Align = alClient
            Color = clWhite
            DataGrouping.GroupLevels = <>
            DataSource = DSinsert
            Flat = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            FooterColor = clYellow
            FooterFont.Charset = ANSI_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -15
            FooterFont.Name = #23435#20307
            FooterFont.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            PopupMenu = ckqk
            RowDetailPanel.Color = clBtnFace
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = #23435#20307
            TitleFont.Style = []
            OnCellClick = DBGridEh1CellClick
            OnDblClick = DBGridEh1DblClick
            Columns = <
              item
                EditButtons = <>
                FieldName = 'mztmh'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #38376#35786#21495
                Width = 67
              end
              item
                EditButtons = <>
                FieldName = 'zytmh'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #20303#38498#21495
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'brxm'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #22995#21517
                Width = 57
              end
              item
                EditButtons = <>
                FieldName = 'brnl'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #24180#40836
                Width = 35
              end
              item
                EditButtons = <>
                FieldName = 'brxb'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #24615#21035
                Width = 35
              end
              item
                EditButtons = <>
                FieldName = 'bgys'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #19978#25253#21307#29983
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'bgrq'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #19978#25253#26085#26399
                Width = 80
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = #20107#20214#26597#35810
        ImageIndex = 1
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 1056
          Height = 36
          Align = alTop
          TabOrder = 0
          object Label13: TLabel
            Left = 154
            Top = 10
            Width = 60
            Height = 15
            Caption = #22635#25253#26085#26399
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object Label23: TLabel
            Left = 344
            Top = 10
            Width = 15
            Height = 15
            Caption = #33267
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 883
            Top = 8
            Width = 128
            Height = 15
            Caption = #27880':'#32418#33394#34920#31034#24050#23457#26680
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object gr: TRadioButton
            Left = 10
            Top = 10
            Width = 65
            Height = 17
            Caption = #20010#20154
            Checked = True
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #23435#20307
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            TabStop = True
          end
          object ks: TRadioButton
            Left = 83
            Top = 10
            Width = 56
            Height = 17
            Caption = #31185#23460
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #23435#20307
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
          object Button9: TButton
            Left = 510
            Top = 2
            Width = 73
            Height = 29
            Caption = #26597'  '#35810
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = Button9Click
          end
          object dtpksrq: TDateTimePicker
            Left = 226
            Top = 6
            Width = 105
            Height = 23
            Date = 0.000011574074074074
            Time = 0.000011574074074074
            Checked = False
            Font.Charset = GB2312_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object dtpjsrq: TDateTimePicker
            Left = 373
            Top = 6
            Width = 105
            Height = 23
            Date = 0.000011574074074074
            Time = 0.000011574074074074
            Checked = False
            Font.Charset = GB2312_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object Button7: TButton
            Left = 788
            Top = 2
            Width = 73
            Height = 29
            Caption = #36864'  '#20986
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = Button7Click
          end
          object Button12: TButton
            Left = 691
            Top = 2
            Width = 73
            Height = 29
            Caption = #23548#20986#25968#25454
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnClick = Button12Click
          end
          object Button10: TButton
            Left = 598
            Top = 2
            Width = 73
            Height = 29
            Caption = #23457#26680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnClick = Button10Click
          end
        end
        object cxGrid1: TcxGrid
          Left = 0
          Top = 36
          Width = 1056
          Height = 536
          Align = alTop
          TabOrder = 1
          object cxGrid1DBTableView1: TcxGridDBTableView
            PopupMenu = ckqk
            NavigatorButtons.ConfirmDelete = False
            OnCellDblClick = cxGrid1DBTableView1CellDblClick
            OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
            DataController.DataSource = ds_sjcx
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.MultiSelect = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object cxGrid1DBTableView1mztmh: TcxGridDBColumn
              Caption = #38376#35786#26465#30721#21495
              DataBinding.FieldName = 'mztmh'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 81
            end
            object cxGrid1DBTableView1zytmh: TcxGridDBColumn
              Caption = #20303#38498#26465#30721#21495
              DataBinding.FieldName = 'zytmh'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 77
            end
            object cxGrid1DBTableView1brks: TcxGridDBColumn
              Caption = #30149#20154#31185#23460
              DataBinding.FieldName = 'brks'
              HeaderAlignmentHorz = taCenter
              Width = 143
            end
            object cxGrid1DBTableView1brxm: TcxGridDBColumn
              Caption = #30149#20154#22995#21517
              DataBinding.FieldName = 'brxm'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 82
            end
            object cxGrid1DBTableView1brnl: TcxGridDBColumn
              Caption = #30149#20154#24180#40836
              DataBinding.FieldName = 'brnl'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 72
            end
            object cxGrid1DBTableView1brxb: TcxGridDBColumn
              Caption = #24615#21035
              DataBinding.FieldName = 'brxb'
              Width = 40
            end
            object cxGrid1DBTableView1sbrq: TcxGridDBColumn
              Caption = #19978#25253#26085#26399
              DataBinding.FieldName = 'bgrq'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 145
            end
            object cxGrid1DBTableView1sbr: TcxGridDBColumn
              Caption = #19978#25253#20154
              DataBinding.FieldName = 'bgys'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 68
            end
            object cxGrid1DBTableView1sbks: TcxGridDBColumn
              Caption = #19978#25253#31185#23460
              DataBinding.FieldName = 'sbksmc'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 112
            end
            object cxGrid1DBTableView1sfwc: TcxGridDBColumn
              Caption = #26159#21542#23436#25104
              DataBinding.FieldName = 'lcsfwc'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 78
            end
            object cxGrid1DBTableView1brlymc: TcxGridDBColumn
              Caption = #30149#20154#26469#28304
              DataBinding.FieldName = 'brlymc'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 74
            end
            object cxGrid1DBTableView1sfsh: TcxGridDBColumn
              Caption = #26159#21542#23457#26680
              DataBinding.FieldName = 'lcsfsh'
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = #28431#25253#26597#35810
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid2: TcxGrid
          Left = 0
          Top = 36
          Width = 1056
          Height = 562
          Align = alTop
          PopupMenu = PopupMenu2
          TabOrder = 0
          ExplicitLeft = 48
          ExplicitTop = 0
          object cxGridDBTableView1: TcxGridDBTableView
            OnDblClick = cxGridDBTableView1DblClick
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ds_sjcx1
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.MultiSelect = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object zytmh: TcxGridDBColumn
              Caption = #26465#30721#21495
              DataBinding.FieldName = 'tmh'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 79
            end
            object brxm: TcxGridDBColumn
              Caption = #22995#21517
              DataBinding.FieldName = 'brxm'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 69
            end
            object brxb: TcxGridDBColumn
              Caption = #24615#21035
              DataBinding.FieldName = 'brxb'
              Width = 43
            end
            object brnl: TcxGridDBColumn
              Caption = #30149#20154#24180#40836
              DataBinding.FieldName = 'brnl'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 69
            end
            object brks: TcxGridDBColumn
              Caption = #30149#20154#31185#23460
              DataBinding.FieldName = 'cyks'
              HeaderAlignmentHorz = taCenter
              Width = 144
            end
            object zzys: TcxGridDBColumn
              Caption = #20027#27835#21307#24072
              DataBinding.FieldName = 'zzys'
              Width = 67
            end
            object zyys: TcxGridDBColumn
              Caption = #20303#38498#21307#24072
              DataBinding.FieldName = 'zyys'
              Width = 68
            end
            object rysj: TcxGridDBColumn
              Caption = #20837#38498#26085#26399
              DataBinding.FieldName = 'rysj'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 102
            end
            object cysj: TcxGridDBColumn
              Caption = #20986#38498#26085#26399
              DataBinding.FieldName = 'CYSJ'
              HeaderAlignmentHorz = taCenter
              Width = 110
            end
            object brly: TcxGridDBColumn
              Caption = #30149#20154#26469#28304
              DataBinding.FieldName = 'brly'
              HeaderAlignmentHorz = taCenter
              Width = 68
            end
            object csdmc: TcxGridDBColumn
              Caption = #23478#24237#22320#22336
              DataBinding.FieldName = 'CSDMC'
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1056
          Height = 36
          Align = alTop
          TabOrder = 1
          ExplicitWidth = 1043
          object Label52: TLabel
            Left = 154
            Top = 10
            Width = 60
            Height = 15
            Caption = #32479#35745#26085#26399
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object Label53: TLabel
            Left = 344
            Top = 10
            Width = 15
            Height = 15
            Caption = #33267
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object Label59: TLabel
            Left = 798
            Top = 7
            Width = 203
            Height = 15
            Caption = #28857#20987#21491#38190#21487#25490#38500#28431#25253','#19981#20877#25552#31034
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lbgr: TRadioButton
            Left = 10
            Top = 10
            Width = 65
            Height = 17
            Caption = #20010#20154
            Checked = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = True
          end
          object lbks: TRadioButton
            Left = 83
            Top = 10
            Width = 56
            Height = 17
            Caption = #31185#23460
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object Button2: TButton
            Left = 511
            Top = 2
            Width = 73
            Height = 29
            Caption = #26597'  '#35810
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = Button2Click
          end
          object dtplbksrq: TDateTimePicker
            Left = 226
            Top = 6
            Width = 105
            Height = 23
            BevelOuter = bvNone
            BevelKind = bkFlat
            Date = 0.000011574074074074
            Time = 0.000011574074074074
            Checked = False
            Font.Charset = GB2312_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object dtplbjsrq: TDateTimePicker
            Left = 373
            Top = 6
            Width = 105
            Height = 23
            BevelOuter = bvNone
            BevelKind = bkFlat
            Date = 0.000011574074074074
            Time = 0.000011574074074074
            Checked = False
            Font.Charset = GB2312_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object Button3: TButton
            Left = 717
            Top = 2
            Width = 73
            Height = 29
            Caption = #36864'  '#20986
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = Button7Click
          end
          object Button4: TButton
            Left = 613
            Top = 2
            Width = 73
            Height = 29
            Caption = #23548#20986#25968#25454
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnClick = Button12Click
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = #19978#25253#27719#24635
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object QuickRep2: TQuickRep
          Left = -21
          Top = 100
          Width = 1123
          Height = 794
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = sp_sjcx2
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
          object QRBand2: TQRBand
            Left = 38
            Top = 38
            Width = 1047
            Height = 82
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              216.958333333333300000
              2770.187500000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object QRLabel157: TQRLabel
              Left = 430
              Top = 7
              Width = 171
              Height = 23
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                60.854166666666670000
                1137.708333333333000000
                18.520833333333330000
                452.437500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #32501#38451#24066#32959#30244#30331#35760#26376#25253#34920
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #23435#20307
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 12
            end
            object QRLabel158: TQRLabel
              Left = 14
              Top = 34
              Width = 78
              Height = 23
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                60.854166666666670000
                37.041666666666670000
                89.958333333333330000
                206.375000000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #25253#21578#21333#20301':'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #23435#20307
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 12
            end
            object QRLabel159: TQRLabel
              Left = 801
              Top = 34
              Width = 78
              Height = 23
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                60.854166666666670000
                2119.312500000000000000
                89.958333333333330000
                206.375000000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #22635#25253#26085#26399':'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #23435#20307
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 12
            end
          end
          object QRSubDetail1: TQRSubDetail
            Left = 38
            Top = 120
            Width = 1047
            Height = 29
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              76.729166666666670000
              2770.187500000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            Master = QuickRep2
            DataSet = sp_sjcx2
            PrintBefore = False
            PrintIfEmpty = True
            object s_brbh: TQRDBText
              Left = 8
              Top = 8
              Width = 15
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                21.166666666666670000
                21.166666666666670000
                39.687500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = sp_sjcx2
              DataField = 'id'
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRDBText2: TQRDBText
              Left = 50
              Top = 9
              Width = 29
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                132.291666666666700000
                23.812500000000000000
                76.729166666666670000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = sp_sjcx2
              DataField = 'brxm'
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRDBText3: TQRDBText
              Left = 91
              Top = 9
              Width = 36
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                240.770833333333300000
                23.812500000000000000
                95.250000000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = True
              Color = clWhite
              DataSet = sp_sjcx2
              DataField = 'sfzhm'
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRDBText4: TQRDBText
              Left = 231
              Top = 9
              Width = 29
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                611.187500000000000000
                23.812500000000000000
                76.729166666666670000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = sp_sjcx2
              DataField = 'brxb'
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRDBText5: TQRDBText
              Left = 268
              Top = 8
              Width = 64
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                709.083333333333300000
                21.166666666666670000
                169.333333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRDBText6: TQRDBText
              Left = 335
              Top = 9
              Width = 64
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                886.354166666666700000
                23.812500000000000000
                169.333333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRDBText7: TQRDBText
              Left = 389
              Top = 9
              Width = 64
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1029.229166666667000000
                23.812500000000000000
                169.333333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRDBText8: TQRDBText
              Left = 441
              Top = 8
              Width = 64
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1166.812500000000000000
                21.166666666666670000
                169.333333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRDBText9: TQRDBText
              Left = 514
              Top = 9
              Width = 64
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1359.958333333333000000
                23.812500000000000000
                169.333333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRDBText10: TQRDBText
              Left = 572
              Top = 9
              Width = 71
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1513.416666666667000000
                23.812500000000000000
                187.854166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRDBText11: TQRDBText
              Left = 634
              Top = 9
              Width = 71
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1677.458333333333000000
                23.812500000000000000
                187.854166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRDBText12: TQRDBText
              Left = 684
              Top = 9
              Width = 71
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1809.750000000000000000
                23.812500000000000000
                187.854166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRDBText13: TQRDBText
              Left = 751
              Top = 9
              Width = 71
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1987.020833333333000000
                23.812500000000000000
                187.854166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRDBText14: TQRDBText
              Left = 900
              Top = 9
              Width = 71
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                2381.250000000000000000
                23.812500000000000000
                187.854166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
          end
        end
        object Panel11: TPanel
          Left = 0
          Top = 0
          Width = 1056
          Height = 36
          Align = alTop
          TabOrder = 0
          object Label54: TLabel
            Left = 171
            Top = 10
            Width = 60
            Height = 15
            Caption = #19978#25253#26085#26399
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object Label55: TLabel
            Left = 379
            Top = 10
            Width = 15
            Height = 15
            Caption = #33267
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object Button5: TButton
            Left = 607
            Top = 2
            Width = 73
            Height = 29
            Caption = #26597'  '#35810
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = Button5Click
          end
          object dtpsbksrq: TDateTimePicker
            Left = 246
            Top = 6
            Width = 105
            Height = 23
            BevelOuter = bvNone
            BevelKind = bkFlat
            Date = 0.000011574074074074
            Time = 0.000011574074074074
            Checked = False
            Font.Charset = GB2312_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object dtpsbjsrq: TDateTimePicker
            Left = 419
            Top = 6
            Width = 105
            Height = 23
            BevelOuter = bvNone
            BevelKind = bkFlat
            Date = 0.000011574074074074
            Time = 0.000011574074074074
            Checked = False
            Font.Charset = GB2312_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object Button6: TButton
            Left = 858
            Top = 1
            Width = 73
            Height = 29
            Caption = #36864'  '#20986
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = Button7Click
          end
          object Button8: TButton
            Left = 736
            Top = 2
            Width = 73
            Height = 29
            Caption = #23548#20986#25968#25454
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = Button8Click
          end
          object hzks: TRadioButton
            Left = 83
            Top = 10
            Width = 56
            Height = 17
            Caption = #31185#23460
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object hzgr: TRadioButton
            Left = 10
            Top = 10
            Width = 65
            Height = 17
            Caption = #20010#20154
            Checked = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            TabStop = True
          end
        end
        object cxGrid3: TcxGrid
          Left = 0
          Top = 36
          Width = 1056
          Height = 638
          Align = alTop
          PopupMenu = PopupMenu1
          TabOrder = 1
          object cxGridDBTableView2: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnCellDblClick = cxGridDBTableView2CellDblClick
            DataController.DataSource = ds_sjcx2
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.MultiSelect = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
      end
    end
  end
  object DBGridEh5: TDBGridEh
    Left = 554
    Top = 284
    Width = 364
    Height = 120
    AllowedOperations = []
    Ctl3D = False
    DataGrouping.GroupLevels = <>
    DataSource = ds_cydj
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    RowDetailPanel.Color = clBtnFace
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UseMultiTitle = True
    Visible = False
    OnDblClick = DBGridEh5DblClick
    OnKeyDown = DBGridEh5KeyDown
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XM'
        Footers = <>
        Title.Caption = #22995#21517
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'KH'
        Footers = <>
        Title.Caption = #20303#38498#21495
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'XB'
        Footers = <>
        Title.Caption = #24615#21035
        Width = 17
      end
      item
        EditButtons = <>
        FieldName = 'BRNL'
        Footers = <>
        Title.Caption = #24180#40836
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'RYSJ'
        Footers = <>
        Title.Caption = #20837#38498#26085#26399
        Width = 120
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object AdoInsert: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'select * from  zybl_xnxgsb where 1=2'
    MasterFields = 'id'
    Parameters = <>
    Prepared = True
    Left = 36
    Top = 241
    object AdoInsertid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object AdoInsertmztmh: TStringField
      FieldName = 'mztmh'
      Size = 18
    end
    object AdoInsertzytmh: TStringField
      FieldName = 'zytmh'
      Size = 18
    end
    object AdoInsertzyh: TStringField
      FieldName = 'zyh'
    end
    object AdoInsertksdm: TStringField
      FieldName = 'ksdm'
      Size = 4
    end
    object AdoInsertsbczy: TStringField
      FieldName = 'sbczy'
      Size = 4
    end
    object AdoInsertysmzzy: TStringField
      FieldName = 'ysmzzy'
      Size = 10
    end
    object AdoInsertbrxm: TStringField
      FieldName = 'brxm'
      Size = 10
    end
    object AdoInsertbrxb: TStringField
      FieldName = 'brxb'
      Size = 4
    end
    object AdoInsertbrnl: TStringField
      FieldName = 'brnl'
    end
    object AdoInsertcsrq: TDateTimeField
      FieldName = 'csrq'
    end
    object AdoInsertsfzhm: TStringField
      FieldName = 'sfzhm'
    end
    object AdoInsertjbzdxh: TStringField
      FieldName = 'jbzdxh'
    end
    object AdoInsertbrzd: TStringField
      FieldName = 'brzd'
      Size = 80
    end
    object AdoInsertbrmz: TStringField
      FieldName = 'brmz'
    end
    object AdoInserthyzk: TStringField
      FieldName = 'hyzk'
      Size = 10
    end
    object AdoInsertbrzy: TStringField
      FieldName = 'brzy'
      Size = 30
    end
    object AdoInsertgzdw: TStringField
      FieldName = 'gzdw'
      Size = 80
    end
    object AdoInsertjtdh: TStringField
      FieldName = 'jtdh'
      Size = 15
    end
    object AdoInserthkdz: TStringField
      FieldName = 'hkdz'
      Size = 100
    end
    object AdoInserthkdzsq: TStringField
      FieldName = 'hkdzsq'
      Size = 50
    end
    object AdoInserthkdzxq: TStringField
      FieldName = 'hkdzxq'
      Size = 50
    end
    object AdoInserthkdzxz: TStringField
      FieldName = 'hkdzxz'
      Size = 50
    end
    object AdoInsertjzdz: TStringField
      FieldName = 'jzdz'
      Size = 100
    end
    object AdoInsertbrks: TStringField
      FieldName = 'brks'
      Size = 60
    end
    object AdoInsertsjbh: TStringField
      FieldName = 'sjbh'
      Size = 18
    end
    object AdoInsertxzqhdm: TStringField
      FieldName = 'xzqhdm'
    end
    object AdoInsertxzqhxq: TStringField
      FieldName = 'xzqhxq'
      Size = 55
    end
    object AdoInsertxzqhjd: TStringField
      FieldName = 'xzqhjd'
      Size = 50
    end
    object AdoInsertyxq: TDateTimeField
      FieldName = 'yxq'
    end
    object AdoInsertqzfq: TStringField
      FieldName = 'qzfq'
      Size = 10
    end
    object AdoInsertbgdw: TStringField
      FieldName = 'bgdw'
      Size = 50
    end
    object AdoInsertbgys: TStringField
      FieldName = 'bgys'
      Size = 50
    end
    object AdoInsertbgrq: TDateTimeField
      FieldName = 'bgrq'
    end
    object AdoInsertswrq: TDateTimeField
      FieldName = 'swrq'
    end
    object AdoInsertgbsy: TStringField
      FieldName = 'gbsy'
      Size = 50
    end
    object AdoInsertswdd: TStringField
      FieldName = 'swdd'
      Size = 50
    end
    object AdoInsertyzd: TStringField
      FieldName = 'yzd'
      Size = 50
    end
    object AdoInsertyzdrq: TDateTimeField
      FieldName = 'yzdrq'
    end
    object AdoInsertblyf: TStringField
      FieldName = 'blyf'
      Size = 1
    end
    object AdoInsertsjybl: TStringField
      FieldName = 'sjybl'
      Size = 1
    end
    object AdoInsertbfb: TStringField
      FieldName = 'bfb'
      Size = 1
    end
    object AdoInsertsjsbrq: TDateTimeField
      FieldName = 'sjsbrq'
    end
    object AdoInsertzdyj: TStringField
      FieldName = 'zdyj'
    end
    object AdoInsertzdyjmc: TStringField
      FieldName = 'zdyjmc'
      Size = 120
    end
    object AdoInsertscfb: TStringField
      FieldName = 'scfb'
      Size = 10
    end
    object AdoInsertfbrq: TDateTimeField
      FieldName = 'fbrq'
    end
    object AdoInsertqzrq: TDateTimeField
      FieldName = 'qzrq'
    end
    object AdoInsertzgqk: TStringField
      FieldName = 'zgqk'
    end
    object AdoInsertzgqzdw: TStringField
      FieldName = 'zgqzdw'
    end
    object AdoInsertbrly: TStringField
      FieldName = 'brly'
      Size = 10
    end
    object AdoInsertsfwc: TStringField
      FieldName = 'sfwc'
      FixedChar = True
      Size = 1
    end
    object AdoInsertsfdy: TStringField
      FieldName = 'sfdy'
      FixedChar = True
      Size = 1
    end
    object AdoInsertlxr: TStringField
      FieldName = 'lxr'
    end
    object AdoInsertqzdw: TStringField
      FieldName = 'qzdw'
      Size = 50
    end
    object AdoInsertzgzdyj: TStringField
      FieldName = 'zgzdyj'
    end
    object AdoInsertzgzdyjmc: TStringField
      FieldName = 'zgzdyjmc'
      Size = 120
    end
    object AdoInserthkdzbm: TStringField
      FieldName = 'hkdzbm'
    end
    object AdoInsertjzdzbm: TStringField
      FieldName = 'jzdzbm'
    end
    object AdoInsertbrzdxh: TStringField
      FieldName = 'brzdxh'
      Size = 6
    end
    object AdoInsertjbzdxhmc: TStringField
      FieldName = 'jbzdxhmc'
      Size = 100
    end
    object AdoInsertsfsh: TBooleanField
      FieldName = 'sfsh'
    end
  end
  object DSinsert: TDataSource
    DataSet = AdoInsert
    Left = 33
    Top = 272
  end
  object qry_temp: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  *  from zybl_zlblsbk   where 1=2')
    Left = 100
    Top = 270
  end
  object ado_cydj: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    MaxRecords = 1000
    CommandText = 'select *  from ba_zybak where kh=:v_tmh  order by rysj desc'
    Parameters = <
      item
        Name = 'v_tmh'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 9
        Value = Null
      end>
    Left = 170
    Top = 239
    object ado_cydjKH: TStringField
      FieldName = 'KH'
      Size = 9
    end
    object ado_cydjXM: TStringField
      FieldName = 'XM'
    end
    object ado_cydjXB: TStringField
      FieldName = 'XB'
      Size = 6
    end
    object ado_cydjBRNL: TStringField
      FieldName = 'BRNL'
      Size = 12
    end
    object ado_cydjRYSJ: TDateTimeField
      FieldName = 'RYSJ'
    end
    object ado_cydjZYH: TStringField
      FieldName = 'ZYH'
      Size = 16
    end
  end
  object qry_pub: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select bqdm,ksdm,ysdm,jynr,id from zybl_tsnr where jsrq>GETDATE(' +
        ')')
    Left = 68
    Top = 270
  end
  object ad_jbbm: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 
      'select * FROM icd10 a,sys_jbsypl b where mbm=b.jbdm and b.ysdm=:' +
      'ysdm ORDER BY b.yspl desc,mbm'
    Parameters = <
      item
        Name = 'ysdm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    Left = 72
    Top = 240
  end
  object ADODataSet10: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    MaxRecords = 1000
    CommandText = 
      'select dm dm,mc mc,dw srm from  ba_sxdmk where dm='#39#20854#20182#39' or mc lik' +
      'e '#39#20854#20182'%'#39' or Upper(dw) like '#39'%'#20854#20182'%'#39' order by dm'
    Parameters = <>
    Left = 138
    Top = 239
  end
  object ADODataSet8: TADODataSet
    AutoCalcFields = False
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    MaxRecords = 200
    CommandText = 'select * from icd10'
    Parameters = <>
    Prepared = True
    Left = 103
    Top = 240
  end
  object DataSource8: TDataSource
    DataSet = ADODataSet8
    Left = 171
    Top = 272
  end
  object ckqk: TPopupMenu
    Left = 72
    Top = 200
    object N1: TMenuItem
      Caption = #21024#38500
      OnClick = N1Click
    end
  end
  object ds_sjcx: TDataSource
    DataSet = sp_sjcx
    Left = 31
    Top = 312
  end
  object SaveDialog1: TSaveDialog
    Left = 136
    Top = 344
  end
  object sp_sjcx1: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnCalcFields = sp_sjcxCalcFields
    ProcedureName = 'blsj_sjcx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@czy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '9999'
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '0011'
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '2015-01-01'
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '2015-10-10'
      end
      item
        Name = '@cxlx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = '@sjlx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = '8'
      end>
    Left = 96
    Top = 311
    object sp_sjcx1tmh: TStringField
      FieldName = 'tmh'
      Size = 9
    end
    object sp_sjcx1brxm: TStringField
      FieldName = 'brxm'
    end
    object sp_sjcx1brxb: TStringField
      FieldName = 'brxb'
      Size = 6
    end
    object sp_sjcx1rysj: TDateTimeField
      FieldName = 'rysj'
    end
    object sp_sjcx1cyks: TStringField
      FieldName = 'cyks'
    end
    object sp_sjcx1CYSJ: TDateTimeField
      FieldName = 'CYSJ'
    end
    object sp_sjcx1brnl: TStringField
      FieldName = 'brnl'
      Size = 12
    end
    object sp_sjcx1zzys: TStringField
      FieldName = 'zzys'
      Size = 10
    end
    object sp_sjcx1zyys: TStringField
      FieldName = 'zyys'
      Size = 10
    end
    object sp_sjcx1brly: TStringField
      FieldName = 'brly'
      ReadOnly = True
      Size = 4
    end
    object sp_sjcx1zyh: TStringField
      FieldName = 'zyh'
      Size = 16
    end
    object sp_sjcx1CSDMC: TStringField
      FieldName = 'CSDMC'
      Size = 60
    end
  end
  object ds_sjcx1: TDataSource
    DataSet = sp_sjcx1
    Left = 135
    Top = 311
  end
  object sp_sjcx2: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnCalcFields = sp_sjcxCalcFields
    ProcedureName = 'blsj_sjcx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@czy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '9999'
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '9999'
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '2014-01-01'
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '2014-12-12'
      end
      item
        Name = '@cxlx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = '@sjlx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = '9'
      end>
    Left = 170
    Top = 311
  end
  object ds_sjcx2: TDataSource
    DataSet = sp_sjcx2
    Left = 172
    Top = 345
  end
  object ds_cydj: TDataSource
    DataSet = ado_cydj
    Left = 141
    Top = 271
  end
  object PopupMenu1: TPopupMenu
    Left = 112
    Top = 200
    object MenuItem1: TMenuItem
      Caption = #25351#23450#25171#21360
      OnClick = MenuItem1Click
    end
    object N2: TMenuItem
      Caption = #20840#37096#25171#21360
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #20840#37096#26410#25171#21360
      OnClick = N3Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 160
    Top = 200
    object MenuItem2: TMenuItem
      Caption = #25490#38500#28431#25253
      OnClick = MenuItem2Click
    end
  end
  object sp_sjcx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnCalcFields = sp_sjcxCalcFields
    ProcedureName = 'blsj_sjcx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@czy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '9999'
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '0435'
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '1899-12-30'
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '2013-01-01'
      end
      item
        Name = '@cxlx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = '@sjlx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = '10'
      end>
    Left = 64
    Top = 312
    object sp_sjcxid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object sp_sjcxsbksmc: TStringField
      FieldKind = fkCalculated
      FieldName = 'sbksmc'
      Size = 50
      Calculated = True
    end
    object sp_sjcxlcsfwc: TStringField
      FieldKind = fkCalculated
      FieldName = 'lcsfwc'
      Calculated = True
    end
    object sp_sjcxbrlymc: TStringField
      FieldKind = fkCalculated
      FieldName = 'brlymc'
      Calculated = True
    end
    object sp_sjcxysmzzy: TStringField
      FieldName = 'ysmzzy'
      Size = 10
    end
    object sp_sjcxmztmh: TStringField
      FieldName = 'mztmh'
      Size = 18
    end
    object sp_sjcxzytmh: TStringField
      FieldName = 'zytmh'
      Size = 18
    end
    object sp_sjcxzyh: TStringField
      FieldName = 'zyh'
    end
    object sp_sjcxksdm: TStringField
      FieldName = 'ksdm'
      Size = 4
    end
    object sp_sjcxsbczy: TStringField
      FieldName = 'sbczy'
      Size = 4
    end
    object sp_sjcxbrxm: TStringField
      FieldName = 'brxm'
      Size = 10
    end
    object sp_sjcxbrxb: TStringField
      FieldName = 'brxb'
      Size = 4
    end
    object sp_sjcxbrnl: TStringField
      FieldName = 'brnl'
    end
    object sp_sjcxcsrq: TDateTimeField
      FieldName = 'csrq'
    end
    object sp_sjcxsfzhm: TStringField
      FieldName = 'sfzhm'
    end
    object sp_sjcxjbzdxh: TStringField
      FieldName = 'jbzdxh'
    end
    object sp_sjcxbrzd: TStringField
      FieldName = 'brzd'
      Size = 80
    end
    object sp_sjcxbrmz: TStringField
      FieldName = 'brmz'
    end
    object sp_sjcxhyzk: TStringField
      FieldName = 'hyzk'
      Size = 10
    end
    object sp_sjcxbrzy: TStringField
      FieldName = 'brzy'
      Size = 30
    end
    object sp_sjcxgzdw: TStringField
      FieldName = 'gzdw'
      Size = 80
    end
    object sp_sjcxjtdh: TStringField
      FieldName = 'jtdh'
      Size = 15
    end
    object sp_sjcxlxr: TStringField
      FieldName = 'lxr'
    end
    object sp_sjcxhkdz: TStringField
      FieldName = 'hkdz'
      Size = 100
    end
    object sp_sjcxhkdzsq: TStringField
      FieldName = 'hkdzsq'
      Size = 50
    end
    object sp_sjcxhkdzxq: TStringField
      FieldName = 'hkdzxq'
      Size = 50
    end
    object sp_sjcxhkdzxz: TStringField
      FieldName = 'hkdzxz'
      Size = 50
    end
    object sp_sjcxjzdz: TStringField
      FieldName = 'jzdz'
      Size = 100
    end
    object sp_sjcxbrks: TStringField
      FieldName = 'brks'
      Size = 60
    end
    object sp_sjcxsjbh: TStringField
      FieldName = 'sjbh'
      Size = 18
    end
    object sp_sjcxxzqhdm: TStringField
      FieldName = 'xzqhdm'
    end
    object sp_sjcxxzqhxq: TStringField
      FieldName = 'xzqhxq'
      Size = 55
    end
    object sp_sjcxxzqhjd: TStringField
      FieldName = 'xzqhjd'
      Size = 50
    end
    object sp_sjcxyxq: TDateTimeField
      FieldName = 'yxq'
    end
    object sp_sjcxqzfq: TStringField
      FieldName = 'qzfq'
      Size = 10
    end
    object sp_sjcxbgdw: TStringField
      FieldName = 'bgdw'
      Size = 50
    end
    object sp_sjcxbgys: TStringField
      FieldName = 'bgys'
      Size = 50
    end
    object sp_sjcxbgrq: TDateTimeField
      FieldName = 'bgrq'
    end
    object sp_sjcxswrq: TDateTimeField
      FieldName = 'swrq'
    end
    object sp_sjcxgbsy: TStringField
      FieldName = 'gbsy'
      Size = 50
    end
    object sp_sjcxswdd: TStringField
      FieldName = 'swdd'
      Size = 50
    end
    object sp_sjcxyzd: TStringField
      FieldName = 'yzd'
      Size = 50
    end
    object sp_sjcxyzdrq: TDateTimeField
      FieldName = 'yzdrq'
    end
    object sp_sjcxblyf: TStringField
      FieldName = 'blyf'
      Size = 1
    end
    object sp_sjcxsjybl: TStringField
      FieldName = 'sjybl'
      Size = 1
    end
    object sp_sjcxbfb: TStringField
      FieldName = 'bfb'
      Size = 1
    end
    object sp_sjcxsjsbrq: TDateTimeField
      FieldName = 'sjsbrq'
    end
    object sp_sjcxzdyj: TStringField
      FieldName = 'zdyj'
    end
    object sp_sjcxzdyjmc: TStringField
      FieldName = 'zdyjmc'
      Size = 120
    end
    object sp_sjcxzgzdyj: TStringField
      FieldName = 'zgzdyj'
    end
    object sp_sjcxzgzdyjmc: TStringField
      FieldName = 'zgzdyjmc'
      Size = 120
    end
    object sp_sjcxscfb: TStringField
      FieldName = 'scfb'
      Size = 10
    end
    object sp_sjcxfbrq: TDateTimeField
      FieldName = 'fbrq'
    end
    object sp_sjcxqzrq: TDateTimeField
      FieldName = 'qzrq'
    end
    object sp_sjcxzgqk: TStringField
      FieldName = 'zgqk'
    end
    object sp_sjcxzgqzdw: TStringField
      FieldName = 'zgqzdw'
    end
    object sp_sjcxqzdw: TStringField
      FieldName = 'qzdw'
      Size = 50
    end
    object sp_sjcxbrly: TStringField
      FieldName = 'brly'
      Size = 10
    end
    object sp_sjcxsfwc: TStringField
      FieldName = 'sfwc'
      FixedChar = True
      Size = 1
    end
    object sp_sjcxsfdy: TStringField
      FieldName = 'sfdy'
      FixedChar = True
      Size = 1
    end
    object sp_sjcxlcsfsh: TStringField
      FieldKind = fkCalculated
      FieldName = 'lcsfsh'
      Size = 10
      Calculated = True
    end
    object sp_sjcxsfsh: TBooleanField
      FieldName = 'sfsh'
    end
  end
end
