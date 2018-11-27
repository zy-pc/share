object frm_repo_bryjmx: Tfrm_repo_bryjmx
  Left = 16
  Top = 143
  Caption = 'frm_repo_bryjmx'
  ClientHeight = 443
  ClientWidth = 770
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
    Top = 0
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = DM_data.sp_yjmx
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
      Top = 209
      Width = 718
      Height = 32
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
        84.666666666666680000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRShape6: TQRShape
        Left = 8
        Top = 28
        Width = 689
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          21.166666666666700000
          74.083333333333300000
          1822.979166666670000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 696
        Top = -4
        Width = 1
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.666666666666700000
          1841.500000000000000000
          -10.583333333333300000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 479
        Top = -4
        Width = 1
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.666666666666700000
          1267.354166666670000000
          -10.583333333333300000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 205
        Top = -4
        Width = 1
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.666666666666700000
          542.395833333333000000
          -10.583333333333300000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 118
        Top = -4
        Width = 1
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.666666666666700000
          312.208333333333000000
          -10.583333333333300000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 7
        Top = -4
        Width = 1
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.666666666666700000
          18.520833333333300000
          -10.583333333333300000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText1: TQRDBText
        Left = 31
        Top = 4
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          82.020833333333340000
          10.583333333333330000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_yjmx
        DataField = 'yjje'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText2: TQRDBText
        Left = 132
        Top = 5
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          349.250000000000000000
          13.229166666666670000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_yjmx
        DataField = 'fkfsmc'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText3: TQRDBText
        Left = 216
        Top = 5
        Width = 41
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          571.500000000000000000
          13.229166666666670000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_yjmx
        DataField = 'czymc'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText4: TQRDBText
        Left = 511
        Top = 5
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1352.020833333333000000
          13.229166666666670000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_yjmx
        DataField = 'sfrq'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape18: TQRShape
        Left = 328
        Top = -4
        Width = 1
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.666666666666700000
          867.833333333333000000
          -10.583333333333300000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText5: TQRDBText
        Left = 335
        Top = 8
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          886.354166666666900000
          21.166666666666670000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_yjmx
        DataField = 'sjbh'
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 171
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
        452.437500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 240
        Top = 8
        Width = 201
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          635.000000000000000000
          21.166666666666670000
          531.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20303#38498#30149#21592#39044#20132#26126#32454#28165#21333
        Color = clWhite
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
      object QRLabel2: TQRLabel
        Left = 24
        Top = 63
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          166.687500000000000000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#38498#21517#31216':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel3: TQRLabel
        Left = 411
        Top = 65
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1087.437500000000000000
          171.979166666666700000
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
      object QRLabel4: TQRLabel
        Left = 24
        Top = 87
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          230.187500000000000000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995'   '#21517':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel5: TQRLabel
        Left = 224
        Top = 87
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          592.666666666666800000
          230.187500000000000000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21345'  '#21495':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel6: TQRLabel
        Left = 411
        Top = 89
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1087.437500000000000000
          235.479166666666700000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31185'   '#23460':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel7: TQRLabel
        Left = 24
        Top = 111
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          293.687500000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24635#39044#20132':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel8: TQRLabel
        Left = 224
        Top = 111
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          592.666666666666800000
          293.687500000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24635#36153#29992':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object yk: TQRLabel
        Left = 411
        Top = 113
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1087.437500000000000000
          298.979166666666700000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21097#20313#25276#37329
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRSysData1: TQRSysData
        Left = 491
        Top = 66
        Width = 89
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1299.104166666667000000
          174.625000000000000000
          235.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Transparent = False
        FontSize = 11
      end
      object QRShape1: TQRShape
        Left = 8
        Top = 55
        Width = 689
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          21.166666666666700000
          145.520833333333000000
          1822.979166666670000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 8
        Top = 134
        Width = 689
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          21.166666666666700000
          354.541666666667000000
          1822.979166666670000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 7
        Top = 55
        Width = 1
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333000000
          18.520833333333300000
          145.520833333333000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 696
        Top = 55
        Width = 1
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333000000
          1841.500000000000000000
          145.520833333333000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel10: TQRLabel
        Left = 24
        Top = 144
        Width = 77
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          63.500000000000000000
          381.000000000000000000
          203.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39044#20132#27454'('#20803')'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel11: TQRLabel
        Left = 129
        Top = 144
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          341.312500000000000000
          381.000000000000000000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20184#27454#26041#24335
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel12: TQRLabel
        Left = 216
        Top = 144
        Width = 46
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          571.500000000000000000
          381.000000000000000000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#27454#20154
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel13: TQRLabel
        Left = 528
        Top = 144
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1397.000000000000000000
          381.000000000000000000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#27454#26085#26399
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape5: TQRShape
        Left = 8
        Top = 166
        Width = 689
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          21.166666666666700000
          439.208333333333000000
          1822.979166666670000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 7
        Top = 134
        Width = 1
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.666666666666700000
          18.520833333333300000
          354.541666666667000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 118
        Top = 134
        Width = 1
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.666666666666700000
          312.208333333333000000
          354.541666666667000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 205
        Top = 134
        Width = 1
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.666666666666700000
          542.395833333333000000
          354.541666666667000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 479
        Top = 134
        Width = 1
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.666666666666700000
          1267.354166666670000000
          354.541666666667000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 696
        Top = 134
        Width = 1
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.666666666666700000
          1841.500000000000000000
          354.541666666667000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object yymc: TQRLabel
        Left = 97
        Top = 64
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          256.645833333333400000
          169.333333333333300000
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
      object QRShape17: TQRShape
        Left = 328
        Top = 134
        Width = 1
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.666666666666700000
          867.833333333333000000
          354.541666666667000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel14: TQRLabel
        Left = 360
        Top = 144
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          952.500000000000000000
          381.000000000000000000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#25454#32534#21495
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object brxm: TQRLabel
        Left = 97
        Top = 88
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          256.645833333333400000
          232.833333333333400000
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
      object zyj: TQRLabel
        Left = 97
        Top = 112
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          256.645833333333400000
          296.333333333333400000
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
      object tmh: TQRLabel
        Left = 297
        Top = 88
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          785.812500000000000000
          232.833333333333400000
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
      object zfy: TQRLabel
        Left = 298
        Top = 112
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          788.458333333333400000
          296.333333333333400000
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
      object ksmc: TQRLabel
        Left = 489
        Top = 88
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1293.812500000000000000
          232.833333333333400000
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
      object syyj: TQRLabel
        Left = 489
        Top = 112
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1293.812500000000000000
          296.333333333333400000
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
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 241
      Width = 718
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
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel9: TQRLabel
        Left = 24
        Top = 8
        Width = 394
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          63.500000000000000000
          21.166666666666670000
          1042.458333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22791#27880':'#27492#28165#21333#19981#20316#25253#38144#20973#35777','#20197#32467#24080#25910#25454#20026#20934'!'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #23435#20307
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
    end
  end
end
