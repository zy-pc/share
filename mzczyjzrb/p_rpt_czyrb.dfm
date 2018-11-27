object frm_rtp_czyrb: Tfrm_rtp_czyrb
  Left = -8
  Top = 142
  Caption = 'frm_rtp_czyrb'
  ClientHeight = 592
  ClientWidth = 804
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 8
    Top = -8
    Width = 794
    Height = 945
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = DM_data.qry_dy_sfmx
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
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
      50.000000000000000000
      2500.000000000000000000
      50.000000000000000000
      2100.000000000000000000
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
    PreviewDefaultSaveType = stQRP
    object TitleBand1: TQRBand
      Left = 19
      Top = 19
      Width = 756
      Height = 71
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
        187.854166666666700000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object star_date: TQRLabel
        Left = 21
        Top = 44
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          55.562500000000000000
          116.416666666666700000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32479#35745#36215#26085#26399':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object end_date: TQRLabel
        Left = 255
        Top = 44
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          674.687500000000000000
          116.416666666666700000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32479#35745#27490#26085#26399':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object czydm: TQRLabel
        Left = 567
        Top = 44
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1500.187500000000000000
          116.416666666666700000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25805#20316#21592#22995#21517': '
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object bt: TQRLabel
        Left = 224
        Top = 12
        Width = 221
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          592.666666666666800000
          31.750000000000000000
          584.729166666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38376#35786#25805#20316#21592#25910#36153#32564#27454#34920
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
    end
    object ColumnHeaderBand1: TQRBand
      Left = 19
      Top = 90
      Width = 756
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
        66.145833333333340000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRShape4: TQRShape
        Left = 299
        Top = 1
        Width = 75
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666700000
          791.104166666667000000
          2.645833333333330000
          198.437500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 198
        Top = 1
        Width = 102
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666700000
          523.875000000000000000
          2.645833333333330000
          269.875000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 117
        Top = 1
        Width = 82
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666700000
          309.562500000000000000
          2.645833333333330000
          216.958333333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 10
        Top = 1
        Width = 108
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666700000
          26.458333333333300000
          2.645833333333330000
          285.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel2: TQRLabel
        Left = 121
        Top = 4
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          320.145833333333400000
          10.583333333333330000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#37329#39069
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object QRLabel1: TQRLabel
        Left = 21
        Top = 4
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          55.562500000000000000
          10.583333333333330000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#39033#30446
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object QRShape5: TQRShape
        Left = 373
        Top = 1
        Width = 111
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666700000
          986.895833333333000000
          2.645833333333330000
          293.687500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 483
        Top = 1
        Width = 75
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666700000
          1277.937500000000000000
          2.645833333333330000
          198.437500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel3: TQRLabel
        Left = 208
        Top = 4
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          550.333333333333400000
          10.583333333333330000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#39033#30446
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object QRLabel4: TQRLabel
        Left = 304
        Top = 4
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          804.333333333333200000
          10.583333333333330000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#37329#39069
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object QRLabel5: TQRLabel
        Left = 383
        Top = 4
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1013.354166666667000000
          10.583333333333330000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#39033#30446
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object QRLabel6: TQRLabel
        Left = 486
        Top = 4
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1285.875000000000000000
          10.583333333333330000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#37329#39069
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object QRShape13: TQRShape
        Left = 557
        Top = 1
        Width = 111
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666700000
          1473.729166666670000000
          2.645833333333330000
          293.687500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 667
        Top = 1
        Width = 75
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666700000
          1764.770833333330000000
          2.645833333333330000
          198.437500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel7: TQRLabel
        Left = 567
        Top = 4
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1500.187500000000000000
          10.583333333333330000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#39033#30446
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object QRLabel9: TQRLabel
        Left = 673
        Top = 4
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1780.645833333333000000
          10.583333333333330000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#37329#39069
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
    end
    object DetailBand1: TQRBand
      Left = 19
      Top = 115
      Width = 756
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
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRShape12: TQRShape
        Left = 483
        Top = -1
        Width = 75
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1277.937500000000000000
          -2.645833333333330000
          198.437500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 373
        Top = -1
        Width = 111
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          986.895833333333000000
          -2.645833333333330000
          293.687500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 299
        Top = -1
        Width = 75
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          791.104166666667000000
          -2.645833333333330000
          198.437500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 198
        Top = -1
        Width = 102
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          523.875000000000000000
          -2.645833333333330000
          269.875000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 117
        Top = -1
        Width = 82
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          309.562500000000000000
          -2.645833333333330000
          216.958333333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 10
        Top = -1
        Width = 108
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          26.458333333333300000
          -2.645833333333330000
          285.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText1: TQRDBText
        Left = 17
        Top = 2
        Width = 98
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          44.979166666666670000
          5.291666666666667000
          259.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_dy_sfmx
        DataField = 'm1'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText2: TQRDBText
        Left = 127
        Top = 4
        Width = 13
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          336.020833333333400000
          10.583333333333330000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_dy_sfmx
        DataField = 'j1'
        Mask = '#.00'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText3: TQRDBText
        Left = 205
        Top = 3
        Width = 93
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          542.395833333333300000
          7.937500000000000000
          246.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_dy_sfmx
        DataField = 'm2'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText4: TQRDBText
        Left = 309
        Top = 3
        Width = 13
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          817.562500000000000000
          7.937500000000000000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_dy_sfmx
        DataField = 'j2'
        Mask = '#.00'
        OnPrint = QRDBText4Print
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText5: TQRDBText
        Left = 380
        Top = 3
        Width = 101
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1005.416666666667000000
          7.937500000000000000
          267.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_dy_sfmx
        DataField = 'm3'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText6: TQRDBText
        Left = 495
        Top = 3
        Width = 13
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1309.687500000000000000
          7.937500000000000000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_dy_sfmx
        DataField = 'j3'
        Mask = '#.00'
        OnPrint = QRDBText6Print
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRShape15: TQRShape
        Left = 667
        Top = -1
        Width = 75
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1764.770833333330000000
          -2.645833333333330000
          198.437500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 557
        Top = -1
        Width = 111
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1473.729166666670000000
          -2.645833333333330000
          293.687500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText7: TQRDBText
        Left = 565
        Top = 3
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1494.895833333333000000
          7.937500000000000000
          264.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_dy_sfmx
        DataField = 'm4'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText8: TQRDBText
        Left = 679
        Top = 3
        Width = 13
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1796.520833333334000000
          7.937500000000000000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_dy_sfmx
        DataField = 'j4'
        Mask = '#.00'
        OnPrint = QRDBText6Print
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
    end
    object SummaryBand1: TQRBand
      Left = 19
      Top = 139
      Width = 756
      Height = 384
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
        1016.000000000000000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRShape45: TQRShape
        Left = 10
        Top = 263
        Width = 384
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333340000
          26.458333333333330000
          695.854166666666800000
          1016.000000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape44: TQRShape
        Left = 10
        Top = 235
        Width = 384
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666680000
          26.458333333333330000
          621.770833333333400000
          1016.000000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape43: TQRShape
        Left = 10
        Top = 163
        Width = 732
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          26.458333333333330000
          431.270833333333400000
          1936.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape41: TQRShape
        Left = 10
        Top = 235
        Width = 732
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666680000
          26.458333333333330000
          621.770833333333400000
          1936.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape40: TQRShape
        Left = 10
        Top = 211
        Width = 732
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.791666666666680000
          26.458333333333330000
          558.270833333333400000
          1936.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape39: TQRShape
        Left = 10
        Top = 186
        Width = 732
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.791666666666680000
          26.458333333333330000
          492.124999999999900000
          1936.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape32: TQRShape
        Left = 10
        Top = 322
        Width = 732
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333340000
          26.458333333333330000
          851.958333333333400000
          1936.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Left = 10
        Top = 293
        Width = 732
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          26.458333333333330000
          775.229166666666800000
          1936.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 299
        Top = 108
        Width = 443
        Height = 56
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          148.166666666666700000
          791.104166666666800000
          285.750000000000000000
          1172.104166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 299
        Top = 84
        Width = 443
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.791666666666680000
          791.104166666666800000
          222.250000000000000000
          1172.104166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 299
        Top = 26
        Width = 443
        Height = 59
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          156.104166666666700000
          791.104166666666800000
          68.791666666666680000
          1172.104166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object zbdate: TQRLabel
        Left = 558
        Top = 359
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1476.375000000000000000
          949.854166666666800000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21046#34920#26085#26399':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object zbr: TQRLabel
        Left = 351
        Top = 359
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          928.687500000000000000
          949.854166666666800000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#21592#31614#23383':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel8: TQRLabel
        Left = 48
        Top = 357
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          127.000000000000000000
          944.562500000000000000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23457#26680#20154#31614#23383':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText9: TQRDBText
        Left = 400
        Top = 29
        Width = 332
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          1058.333333333333000000
          76.729166666666680000
          878.416666666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'sjqzh'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText10: TQRDBText
        Left = 402
        Top = 88
        Width = 330
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1063.625000000000000000
          232.833333333333300000
          873.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'zfsjh'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText11: TQRDBText
        Left = 402
        Top = 113
        Width = 330
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          1063.625000000000000000
          298.979166666666700000
          873.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'tfsjh'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel10: TQRLabel
        Left = 308
        Top = 47
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          814.916666666666800000
          124.354166666666700000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#25454#36215#27490#21495
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object QRLabel11: TQRLabel
        Left = 306
        Top = 90
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          809.625000000000000000
          238.125000000000000000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20316#24223#25910#25454#21495
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object QRLabel12: TQRLabel
        Left = 306
        Top = 121
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          809.625000000000000000
          320.145833333333400000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36864#36153#25910#25454#21495
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object QRShape20: TQRShape
        Left = 10
        Top = -2
        Width = 290
        Height = 166
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          439.208333333333300000
          26.458333333333330000
          -5.291666666666667000
          767.291666666666800000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 12
        Top = 26
        Width = 289
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          31.750000000000000000
          68.791666666666700000
          764.645833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 12
        Top = 54
        Width = 289
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          31.750000000000000000
          142.875000000000000000
          764.645833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 12
        Top = 84
        Width = 289
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          31.750000000000000000
          222.250000000000000000
          764.645833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 12
        Top = 109
        Width = 288
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          31.750000000000000000
          288.395833333333000000
          762.000000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 12
        Top = 137
        Width = 288
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          31.750000000000000000
          362.479166666667000000
          762.000000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape26: TQRShape
        Left = 147
        Top = -4
        Width = 1
        Height = 327
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          865.187500000000000000
          388.937500000000000000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel13: TQRLabel
        Left = 21
        Top = 4
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          55.562500000000000000
          10.583333333333330000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#24635#37329#39069#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object QRLabel14: TQRLabel
        Left = 21
        Top = 34
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          55.562500000000000000
          89.958333333333340000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#24635#39033#25968#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object QRLabel15: TQRLabel
        Left = 21
        Top = 60
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          55.562500000000000000
          158.750000000000000000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20316#24223#24635#37329#39069#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object QRLabel16: TQRLabel
        Left = 21
        Top = 90
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          55.562500000000000000
          238.125000000000000000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20316#24223#24635#39033#25968#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object QRLabel17: TQRLabel
        Left = 21
        Top = 116
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          55.562500000000000000
          306.916666666666700000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36864#36153#24635#37329#39069#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object QRLabel18: TQRLabel
        Left = 21
        Top = 141
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          55.562500000000000000
          373.062500000000000000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36864#36153#24635#39033#25968#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object QRDBText12: TQRDBText
        Left = 170
        Top = 8
        Width = 25
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          449.791666666666700000
          21.166666666666670000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'sfje'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText13: TQRDBText
        Left = 170
        Top = 33
        Width = 25
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          449.791666666666700000
          87.312500000000000000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'sfrc'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText14: TQRDBText
        Left = 170
        Top = 62
        Width = 25
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          449.791666666666700000
          164.041666666666700000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'zfje'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText15: TQRDBText
        Left = 170
        Top = 90
        Width = 25
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          449.791666666666700000
          238.125000000000000000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'zfrc'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText16: TQRDBText
        Left = 170
        Top = 117
        Width = 25
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          449.791666666666700000
          309.562500000000000000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'tfje'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText17: TQRDBText
        Left = 170
        Top = 144
        Width = 25
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          449.791666666666700000
          381.000000000000000000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'tfrc'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRShape29: TQRShape
        Left = 299
        Top = 305
        Width = 1
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          791.104166666666800000
          806.979166666666800000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel19: TQRLabel
        Left = 20
        Top = 296
        Width = 121
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          52.916666666666670000
          783.166666666666800000
          320.145833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23454#25910#24635#37329#39069#65306
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
      object QRDBText18: TQRDBText
        Left = 171
        Top = 300
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          452.437500000000000000
          793.750000000000000000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'ssje2'
        Font.Charset = DEFAULT_CHARSET
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
      object QRShape30: TQRShape
        Left = 299
        Top = -1
        Width = 443
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333320000
          791.104166666666800000
          -2.645833333333333000
          1172.104166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel20: TQRLabel
        Left = 306
        Top = 5
        Width = 81
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          809.625000000000000000
          13.229166666666670000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#25454#20351#29992#25968
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object QRDBText19: TQRDBText
        Left = 402
        Top = 3
        Width = 330
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1063.625000000000000000
          7.937500000000000000
          873.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'sjsl'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRShape27: TQRShape
        Left = 393
        Top = 83
        Width = 1
        Height = 240
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          635.000000000000000000
          1039.812500000000000000
          219.604166666666700000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel21: TQRLabel
        Left = 306
        Top = 300
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          809.625000000000000000
          793.750000000000000000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38750#29616#37329#37329#39069
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object QRShape31: TQRShape
        Left = 531
        Top = 322
        Width = 1
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333340000
          1404.937500000000000000
          851.958333333333400000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape33: TQRShape
        Left = 656
        Top = 295
        Width = 1
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666680000
          1735.666666666667000000
          780.520833333333400000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel22: TQRLabel
        Left = 601
        Top = 300
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1590.145833333333000000
          793.750000000000000000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23384#38134#34892
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object QRLabel23: TQRLabel
        Left = 419
        Top = 330
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1108.604166666667000000
          873.124999999999900000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #19978#32564#37329#39069
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object dxje: TQRLabel
        Left = 21
        Top = 327
        Width = 52
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          55.562500000000000000
          865.187500000000000000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22823#20889':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
      object QRLabel24: TQRLabel
        Left = 463
        Top = 299
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1225.020833333333000000
          791.104166666666800000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31038#20445#37329#39069
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object QRShape34: TQRShape
        Left = 593
        Top = 294
        Width = 1
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666680000
          1568.979166666667000000
          777.875000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape35: TQRShape
        Left = 461
        Top = 293
        Width = 1
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1219.729166666667000000
          775.229166666666800000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape36: TQRShape
        Left = 531
        Top = 293
        Width = 1
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1404.937500000000000000
          775.229166666666800000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText20: TQRDBText
        Left = 400
        Top = 300
        Width = 43
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1058.333333333333000000
          793.750000000000000000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'fxjssje'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText21: TQRDBText
        Left = 663
        Top = 300
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1754.187500000000000000
          793.750000000000000000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'ssje'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText22: TQRDBText
        Left = 538
        Top = 329
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1423.458333333333000000
          870.479166666666800000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'ssje2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qrl_sbje: TQRLabel
        Left = 538
        Top = 300
        Width = 49
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1423.458333333333000000
          793.750000000000000000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrl_sbje'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRShape37: TQRShape
        Left = 10
        Top = 1
        Width = 1
        Height = 190
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          502.708333333333300000
          26.458333333333330000
          2.645833333333333000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape38: TQRShape
        Left = 741
        Top = -1
        Width = 1
        Height = 307
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          812.270833333333200000
          1960.562500000000000000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel25: TQRLabel
        Left = 17
        Top = 270
        Width = 113
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          44.979166666666670000
          714.375000000000000000
          298.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38134#34892#21047#21345#37329#39069#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object QRDBText23: TQRDBText
        Left = 170
        Top = 270
        Width = 43
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          449.791666666666700000
          714.375000000000000000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'fxjyhhk'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRShape42: TQRShape
        Left = 299
        Top = 83
        Width = 1
        Height = 236
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          624.416666666666800000
          791.104166666666800000
          219.604166666666700000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel26: TQRLabel
        Left = 21
        Top = 169
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          55.562500000000000000
          447.145833333333400000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#39044#20132#24635#39069#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object QRLabel27: TQRLabel
        Left = 21
        Top = 192
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          55.562500000000000000
          508.000000000000000000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#39044#20132#20154#27425#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object QRLabel28: TQRLabel
        Left = 21
        Top = 215
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          55.562500000000000000
          568.854166666666800000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36864#39044#20132#24635#39069#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object QRLabel29: TQRLabel
        Left = 21
        Top = 238
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          55.562500000000000000
          629.708333333333400000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36864#39044#20132#20154#27425#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
      object QRDBText24: TQRDBText
        Left = 170
        Top = 169
        Width = 43
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          449.791666666666700000
          447.145833333333400000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'mzsyjje'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText25: TQRDBText
        Left = 170
        Top = 194
        Width = 43
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          449.791666666666700000
          513.291666666666800000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'mzsyjrc'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText26: TQRDBText
        Left = 171
        Top = 218
        Width = 43
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          452.437500000000000000
          576.791666666666800000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'mztyjje'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText27: TQRDBText
        Left = 170
        Top = 243
        Width = 43
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          449.791666666666700000
          642.937500000000000000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'mztyjrc'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel30: TQRLabel
        Left = 319
        Top = 170
        Width = 49
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          844.020833333333500000
          449.791666666666700000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22235#33293#20116#20837
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel31: TQRLabel
        Left = 306
        Top = 193
        Width = 61
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          809.625000000000000000
          510.645833333333300000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36716#36134#27719#27454#25910
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel32: TQRLabel
        Left = 306
        Top = 219
        Width = 61
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          809.625000000000000000
          579.437500000000000000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36716#36134#27719#27454#36864
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel33: TQRLabel
        Left = 306
        Top = 245
        Width = 61
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          809.625000000000000000
          648.229166666666800000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31038#20445#30452#25509#25910
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel34: TQRLabel
        Left = 306
        Top = 272
        Width = 61
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          809.625000000000000000
          719.666666666666800000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31038#20445#30452#25509#36864
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText28: TQRDBText
        Left = 402
        Top = 172
        Width = 37
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1063.625000000000000000
          455.083333333333300000
          97.895833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'sswrje'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText29: TQRDBText
        Left = 402
        Top = 193
        Width = 43
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1063.625000000000000000
          510.645833333333300000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'fxjzzsf'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText30: TQRDBText
        Left = 400
        Top = 218
        Width = 43
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1058.333333333333000000
          576.791666666666800000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'fxjzztf'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText31: TQRDBText
        Left = 400
        Top = 243
        Width = 43
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1058.333333333333000000
          642.937500000000000000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'fxjsbsf'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText32: TQRDBText
        Left = 400
        Top = 270
        Width = 43
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1058.333333333333000000
          714.375000000000000000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'fxjsbtf'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object z: TQRShape
        Left = 461
        Top = 164
        Width = 1
        Height = 129
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          341.312500000000000000
          1219.729166666667000000
          433.916666666666800000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape46: TQRShape
        Left = 656
        Top = 163
        Width = 1
        Height = 131
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          346.604166666666700000
          1735.666666666667000000
          431.270833333333400000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape47: TQRShape
        Left = 531
        Top = 165
        Width = 1
        Height = 129
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          341.312500000000000000
          1404.937500000000000000
          436.562499999999900000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape48: TQRShape
        Left = 593
        Top = 164
        Width = 1
        Height = 130
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          343.958333333333400000
          1568.979166666667000000
          433.916666666666700000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText33: TQRDBText
        Left = 468
        Top = 172
        Width = 13
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1238.250000000000000000
          455.083333333333300000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frm_czyrbjkb.qry_tsbrfy
        DataField = 'm1'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText34: TQRDBText
        Left = 600
        Top = 170
        Width = 13
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1587.500000000000000000
          449.791666666666700000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frm_czyrbjkb.qry_tsbrfy
        DataField = 'm2'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText35: TQRDBText
        Left = 468
        Top = 193
        Width = 13
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1238.250000000000000000
          510.645833333333300000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frm_czyrbjkb.qry_tsbrfy
        DataField = 'm3'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText36: TQRDBText
        Left = 600
        Top = 193
        Width = 13
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1587.500000000000000000
          510.645833333333300000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frm_czyrbjkb.qry_tsbrfy
        DataField = 'm4'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText37: TQRDBText
        Left = 468
        Top = 218
        Width = 13
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1238.250000000000000000
          576.791666666666800000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frm_czyrbjkb.qry_tsbrfy
        DataField = 'm5'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText38: TQRDBText
        Left = 600
        Top = 218
        Width = 13
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1587.500000000000000000
          576.791666666666800000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frm_czyrbjkb.qry_tsbrfy
        DataField = 'm6'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText39: TQRDBText
        Left = 468
        Top = 243
        Width = 13
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1238.250000000000000000
          642.937500000000000000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frm_czyrbjkb.qry_tsbrfy
        DataField = 'm7'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText40: TQRDBText
        Left = 600
        Top = 243
        Width = 13
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1587.500000000000000000
          642.937500000000000000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frm_czyrbjkb.qry_tsbrfy
        DataField = 'm8'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText41: TQRDBText
        Left = 468
        Top = 270
        Width = 13
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1238.250000000000000000
          714.375000000000000000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frm_czyrbjkb.qry_tsbrfy
        DataField = 'm9'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText42: TQRDBText
        Left = 600
        Top = 270
        Width = 19
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1587.500000000000000000
          714.375000000000000000
          50.270833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frm_czyrbjkb.qry_tsbrfy
        DataField = 'm10'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText43: TQRDBText
        Left = 538
        Top = 172
        Width = 13
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1423.458333333333000000
          455.083333333333300000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frm_czyrbjkb.qry_tsbrfy
        DataField = 'j1'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText44: TQRDBText
        Left = 663
        Top = 172
        Width = 13
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1754.187500000000000000
          455.083333333333300000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frm_czyrbjkb.qry_tsbrfy
        DataField = 'j2'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText45: TQRDBText
        Left = 538
        Top = 195
        Width = 13
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1423.458333333333000000
          515.937500000000000000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frm_czyrbjkb.qry_tsbrfy
        DataField = 'j3'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText46: TQRDBText
        Left = 663
        Top = 195
        Width = 13
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1754.187500000000000000
          515.937500000000000000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frm_czyrbjkb.qry_tsbrfy
        DataField = 'j4'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText47: TQRDBText
        Left = 538
        Top = 218
        Width = 13
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1423.458333333333000000
          576.791666666666800000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frm_czyrbjkb.qry_tsbrfy
        DataField = 'j5'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText48: TQRDBText
        Left = 663
        Top = 218
        Width = 13
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1754.187500000000000000
          576.791666666666800000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frm_czyrbjkb.qry_tsbrfy
        DataField = 'j6'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText49: TQRDBText
        Left = 538
        Top = 243
        Width = 13
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1423.458333333333000000
          642.937500000000000000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frm_czyrbjkb.qry_tsbrfy
        DataField = 'j7'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText50: TQRDBText
        Left = 663
        Top = 243
        Width = 13
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1754.187500000000000000
          642.937500000000000000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frm_czyrbjkb.qry_tsbrfy
        DataField = 'j8'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText51: TQRDBText
        Left = 538
        Top = 270
        Width = 13
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1423.458333333333000000
          714.375000000000000000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frm_czyrbjkb.qry_tsbrfy
        DataField = 'j9'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText52: TQRDBText
        Left = 663
        Top = 270
        Width = 19
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1754.187500000000000000
          714.375000000000000000
          50.270833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frm_czyrbjkb.qry_tsbrfy
        DataField = 'j10'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel35: TQRLabel
        Left = 487
        Top = 170
        Width = 73
        Height = 13
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1288.520833333333000000
          449.791666666666700000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35786#26597#36153#24635#20154#27425
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel36: TQRLabel
        Left = 487
        Top = 193
        Width = 61
        Height = 13
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1288.520833333333000000
          510.645833333333300000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38134#34892#35786#26597#36153
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel37: TQRLabel
        Left = 487
        Top = 217
        Width = 61
        Height = 13
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1288.520833333333000000
          574.145833333333400000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#20445#35786#26597#36153
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel38: TQRLabel
        Left = 487
        Top = 243
        Width = 61
        Height = 13
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1288.520833333333000000
          642.937500000000000000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36716#24080#35786#26597#36153
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel39: TQRLabel
        Left = 487
        Top = 270
        Width = 61
        Height = 13
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1288.520833333333000000
          714.375000000000000000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #29616#37329#35786#26597#36153
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText53: TQRDBText
        Left = 626
        Top = 170
        Width = 31
        Height = 13
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1656.291666666667000000
          449.791666666666700000
          82.020833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'mzzcf'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText54: TQRDBText
        Left = 626
        Top = 193
        Width = 37
        Height = 13
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1656.291666666667000000
          510.645833333333300000
          97.895833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'yhkzcf'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText55: TQRDBText
        Left = 626
        Top = 216
        Width = 31
        Height = 13
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1656.291666666667000000
          571.500000000000000000
          82.020833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'ybzcf'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText56: TQRDBText
        Left = 626
        Top = 243
        Width = 31
        Height = 13
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1656.291666666667000000
          642.937500000000000000
          82.020833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'zzzcf'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText57: TQRDBText
        Left = 625
        Top = 270
        Width = 31
        Height = 13
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1653.645833333333000000
          714.375000000000000000
          82.020833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.qry_cxjz_mx
        DataField = 'xjzcf'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
    end
  end
end
