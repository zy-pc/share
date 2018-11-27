object frm_repo_jssj: Tfrm_repo_jssj
  Left = 193
  Top = 180
  Caption = 'frm_repo_jssj'
  ClientHeight = 572
  ClientWidth = 867
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
  object scjssj_sw: TQuickRep
    Tag = 1
    Left = 8
    Top = 8
    Width = 672
    Height = 367
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = DM_data.sp_dysj
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
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      100.000000000000000000
      970.000000000000000000
      80.000000000000000000
      1778.000000000000000000
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
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 30
      Width = 596
      Height = 323
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = PageHeaderBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        854.604166666666700000
        1576.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object brxm: TQRLabel
        Left = 90
        Top = 13
        Width = 29
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          238.125000000000000000
          34.395833333333340000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'brxm'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ksmc: TQRLabel
        Left = 303
        Top = 13
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          801.687500000000000000
          34.395833333333340000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ksmc'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object tmh: TQRLabel
        Left = 433
        Top = 34
        Width = 22
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1145.645833333333000000
          89.958333333333320000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'tmh'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ryrq: TQRLabel
        Left = 101
        Top = 34
        Width = 29
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          267.229166666666700000
          89.958333333333320000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ryrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object cyrq: TQRLabel
        Left = 304
        Top = 34
        Width = 29
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          804.333333333333200000
          89.958333333333320000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'cyrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object zfy: TQRLabel
        Left = 391
        Top = 215
        Width = 22
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1034.520833333333000000
          568.854166666666700000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'zfy'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object zfymc: TQRLabel
        Left = 179
        Top = 268
        Width = 36
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          473.604166666666700000
          709.083333333333200000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'zfymc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object yymc: TQRLabel
        Left = 93
        Top = 285
        Width = 136
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          246.062500000000000000
          754.062500000000000000
          359.833333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'yymc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object czy: TQRLabel
        Left = 381
        Top = 284
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1008.062500000000000000
          751.416666666666800000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'czy'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jsrq: TQRLabel
        Left = 500
        Top = 284
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1322.916666666667000000
          751.416666666666800000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'jsrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 117
        Top = 134
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          309.562500000000000000
          354.541666666666700000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f104'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 117
        Top = 75
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          309.562500000000000000
          198.437500000000000000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f101'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 117
        Top = 95
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          309.562500000000000000
          251.354166666666700000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f102'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 117
        Top = 114
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          309.562500000000000000
          301.625000000000000000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f103'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 117
        Top = 195
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          309.562500000000000000
          515.937500000000000000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f107'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 117
        Top = 175
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          309.562500000000000000
          463.020833333333400000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f106'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 252
        Top = 75
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          666.750000000000000000
          198.437500000000000000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f109'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 252
        Top = 114
        Width = 25
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          666.750000000000000000
          301.625000000000000000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f111'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 252
        Top = 134
        Width = 25
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          666.750000000000000000
          354.541666666666700000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f112'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 117
        Top = 215
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          309.562500000000000000
          568.854166666666700000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f108'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 117
        Top = 155
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          309.562500000000000000
          410.104166666666700000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f105'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 252
        Top = 155
        Width = 25
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          666.750000000000000000
          410.104166666666700000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f113'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 252
        Top = 175
        Width = 25
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          666.750000000000000000
          463.020833333333400000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f114'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText14: TQRDBText
        Left = 252
        Top = 95
        Width = 25
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          666.750000000000000000
          251.354166666666700000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f110'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText15: TQRDBText
        Left = 252
        Top = 195
        Width = 25
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          666.750000000000000000
          515.937500000000000000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f115'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText16: TQRDBText
        Left = 252
        Top = 215
        Width = 25
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          666.750000000000000000
          568.854166666666700000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f116'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText17: TQRDBText
        Left = 389
        Top = 75
        Width = 25
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1029.229166666667000000
          198.437500000000000000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f117'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object sjh: TQRLabel
        Left = 478
        Top = 13
        Width = 22
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1264.708333333333000000
          34.395833333333340000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'sjh'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ytje: TQRLabel
        Left = 481
        Top = 162
        Width = 29
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1272.645833333333000000
          428.625000000000000000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ytje'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object zfze: TQRLabel
        Left = 121
        Top = 230
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          320.145833333333400000
          608.541666666666800000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'zfze'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object tcze: TQRLabel
        Left = 253
        Top = 230
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          669.395833333333400000
          608.541666666666800000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'tcze'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object yjze: TQRLabel
        Left = 503
        Top = 105
        Width = 29
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1330.854166666667000000
          277.812500000000000000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'yjze'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object brxb: TQRLabel
        Left = 175
        Top = 13
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          463.020833333333400000
          34.395833333333340000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'brxb'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object brnl: TQRLabel
        Left = 239
        Top = 13
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          632.354166666666800000
          34.395833333333340000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'brnl'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object w: TQRLabel
        Left = 164
        Top = 246
        Width = 8
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          433.916666666666700000
          650.875000000000000000
          21.166666666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'w'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object q: TQRLabel
        Left = 206
        Top = 246
        Width = 8
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          545.041666666666700000
          650.875000000000000000
          21.166666666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'q'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object b: TQRLabel
        Left = 253
        Top = 246
        Width = 8
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          669.395833333333400000
          650.875000000000000000
          21.166666666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'b'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object s: TQRLabel
        Left = 290
        Top = 246
        Width = 8
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          767.291666666666800000
          650.875000000000000000
          21.166666666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 's'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object y: TQRLabel
        Left = 339
        Top = 246
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
          650.875000000000000000
          21.166666666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'y'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object j: TQRLabel
        Left = 380
        Top = 246
        Width = 8
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1005.416666666667000000
          650.875000000000000000
          21.166666666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'j'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object f: TQRLabel
        Left = 419
        Top = 246
        Width = 8
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1108.604166666667000000
          650.875000000000000000
          21.166666666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'f'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 328
        Top = 95
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          867.833333333333000000
          251.354166666667000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 389
        Top = 95
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1029.229166666670000000
          251.354166666667000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 328
        Top = 114
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          867.833333333333000000
          301.625000000000000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 389
        Top = 114
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1029.229166666670000000
          301.625000000000000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 328
        Top = 134
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          867.833333333333000000
          354.541666666667000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 389
        Top = 134
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1029.229166666670000000
          354.541666666667000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 328
        Top = 155
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          867.833333333333000000
          410.104166666667000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 389
        Top = 155
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1029.229166666670000000
          410.104166666667000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel9: TQRLabel
        Left = 328
        Top = 175
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          867.833333333333000000
          463.020833333333000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 389
        Top = 175
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1029.229166666670000000
          463.020833333333000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 328
        Top = 195
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          867.833333333333000000
          515.937500000000000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 389
        Top = 195
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1029.229166666670000000
          515.937500000000000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object sw: TQRLabel
        Left = 104
        Top = 246
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          275.166666666666700000
          650.875000000000000000
          39.687500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'sw'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 353
      Width = 596
      Height = 1
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
        2.645833333333333000
        1576.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
    end
    object QRLabel14: TQRLabel
      Left = 106
      Top = 4
      Width = 224
      Height = 20
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666670000
        280.458333333333400000
        10.583333333333330000
        592.666666666666800000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #22235#24029#30465#21307#38498#20303#38498#36153'('#32467#31639')'#25910#25454'('#21313#19975#20301')'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object scjssj_w: TQuickRep
    Tag = 1
    Left = 8
    Top = 25
    Width = 672
    Height = 399
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = DM_data.sp_dysj
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
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      100.000000000000000000
      1055.687500000000000000
      80.000000000000000000
      1778.000000000000000000
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
    object QRBand4: TQRBand
      Left = 38
      Top = 30
      Width = 596
      Height = 323
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
        854.604166666666700000
        1576.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object brxm_w: TQRLabel
        Left = 90
        Top = 13
        Width = 29
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          238.125000000000000000
          34.395833333333340000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'brxm'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ksmc_w: TQRLabel
        Left = 303
        Top = 16
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          801.687500000000000000
          42.333333333333340000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ksmc'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object tmh_w: TQRLabel
        Left = 433
        Top = 32
        Width = 22
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1145.645833333333000000
          84.666666666666680000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'tmh'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ryrq_w: TQRLabel
        Left = 101
        Top = 33
        Width = 29
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          267.229166666666700000
          87.312500000000000000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ryrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object cyrq_w: TQRLabel
        Left = 304
        Top = 34
        Width = 29
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          804.333333333333200000
          89.958333333333320000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'cyrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object zfy_w: TQRLabel
        Left = 389
        Top = 215
        Width = 22
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1029.229166666667000000
          568.854166666666700000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'zfy'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object zfymc_w: TQRLabel
        Left = 179
        Top = 268
        Width = 36
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          473.604166666666700000
          709.083333333333200000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'zfymc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object yymc_w: TQRLabel
        Left = 93
        Top = 285
        Width = 136
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          246.062500000000000000
          754.062500000000000000
          359.833333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'yymc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object czy_w: TQRLabel
        Left = 366
        Top = 284
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          968.375000000000000000
          751.416666666666800000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'czy'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jsrq_w: TQRLabel
        Left = 498
        Top = 284
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1317.625000000000000000
          751.416666666666800000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'jsrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText36: TQRDBText
        Left = 117
        Top = 134
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          309.562500000000000000
          354.541666666666700000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f104'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText37: TQRDBText
        Left = 117
        Top = 75
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          309.562500000000000000
          198.437500000000000000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f101'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText38: TQRDBText
        Left = 117
        Top = 95
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          309.562500000000000000
          251.354166666666700000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f102'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText39: TQRDBText
        Left = 117
        Top = 114
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          309.562500000000000000
          301.625000000000000000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f103'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText40: TQRDBText
        Left = 117
        Top = 195
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          309.562500000000000000
          515.937500000000000000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f107'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText41: TQRDBText
        Left = 117
        Top = 175
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          309.562500000000000000
          463.020833333333400000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f106'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText42: TQRDBText
        Left = 252
        Top = 75
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          666.750000000000000000
          198.437500000000000000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f109'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText43: TQRDBText
        Left = 252
        Top = 114
        Width = 25
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          666.750000000000000000
          301.625000000000000000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f111'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText44: TQRDBText
        Left = 252
        Top = 134
        Width = 25
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          666.750000000000000000
          354.541666666666700000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f112'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText45: TQRDBText
        Left = 117
        Top = 215
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          309.562500000000000000
          568.854166666666700000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f108'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText46: TQRDBText
        Left = 117
        Top = 155
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          309.562500000000000000
          410.104166666666700000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f105'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText47: TQRDBText
        Left = 252
        Top = 155
        Width = 25
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          666.750000000000000000
          410.104166666666700000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f113'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText48: TQRDBText
        Left = 252
        Top = 175
        Width = 25
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          666.750000000000000000
          463.020833333333400000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f114'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText49: TQRDBText
        Left = 252
        Top = 95
        Width = 25
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          666.750000000000000000
          251.354166666666700000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f110'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText50: TQRDBText
        Left = 252
        Top = 195
        Width = 25
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          666.750000000000000000
          515.937500000000000000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f115'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText51: TQRDBText
        Left = 252
        Top = 215
        Width = 25
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          666.750000000000000000
          568.854166666666700000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f116'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText52: TQRDBText
        Left = 389
        Top = 75
        Width = 25
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1029.229166666667000000
          198.437500000000000000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f117'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object sjh_w: TQRLabel
        Left = 478
        Top = 13
        Width = 22
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1264.708333333333000000
          34.395833333333340000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'sjh'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ytje_w: TQRLabel
        Left = 477
        Top = 146
        Width = 29
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1262.062500000000000000
          386.291666666666700000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ytje'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object zfze_w: TQRLabel
        Left = 121
        Top = 230
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          320.145833333333400000
          608.541666666666800000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'zfze'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object tcze_w: TQRLabel
        Left = 253
        Top = 230
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          669.395833333333400000
          608.541666666666800000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'tcze'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object yjze_w: TQRLabel
        Left = 499
        Top = 105
        Width = 29
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1320.270833333333000000
          277.812500000000000000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'yjze'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object brxb_w: TQRLabel
        Left = 175
        Top = 15
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          463.020833333333400000
          39.687500000000000000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'brxb'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object brnl_w: TQRLabel
        Left = 239
        Top = 15
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          632.354166666666800000
          39.687500000000000000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'brnl'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object w_w: TQRLabel
        Left = 104
        Top = 246
        Width = 8
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          275.166666666666700000
          650.875000000000000000
          21.166666666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'w'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object q_w: TQRLabel
        Left = 176
        Top = 246
        Width = 8
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          465.666666666666700000
          650.875000000000000000
          21.166666666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'q'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object b_w: TQRLabel
        Left = 224
        Top = 246
        Width = 8
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          592.666666666666800000
          650.875000000000000000
          21.166666666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'b'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object s_w: TQRLabel
        Left = 264
        Top = 246
        Width = 8
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          698.500000000000000000
          650.875000000000000000
          21.166666666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 's'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object y_w: TQRLabel
        Left = 320
        Top = 246
        Width = 8
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          846.666666666666800000
          650.875000000000000000
          21.166666666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'y'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object j_w: TQRLabel
        Left = 368
        Top = 246
        Width = 8
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          973.666666666666800000
          650.875000000000000000
          21.166666666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'j'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object f_w: TQRLabel
        Left = 418
        Top = 246
        Width = 8
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1105.958333333333000000
          650.875000000000000000
          21.166666666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'f'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel39: TQRLabel
        Left = 328
        Top = 95
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          867.833333333333000000
          251.354166666667000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel40: TQRLabel
        Left = 389
        Top = 95
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1029.229166666670000000
          251.354166666667000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel41: TQRLabel
        Left = 328
        Top = 114
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          867.833333333333000000
          301.625000000000000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel42: TQRLabel
        Left = 389
        Top = 114
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1029.229166666670000000
          301.625000000000000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel43: TQRLabel
        Left = 328
        Top = 134
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          867.833333333333000000
          354.541666666667000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel44: TQRLabel
        Left = 389
        Top = 134
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1029.229166666670000000
          354.541666666667000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel45: TQRLabel
        Left = 328
        Top = 155
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          867.833333333333000000
          410.104166666667000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel46: TQRLabel
        Left = 389
        Top = 155
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1029.229166666670000000
          410.104166666667000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel47: TQRLabel
        Left = 328
        Top = 175
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          867.833333333333000000
          463.020833333333000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel48: TQRLabel
        Left = 389
        Top = 175
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1029.229166666670000000
          463.020833333333000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel49: TQRLabel
        Left = 328
        Top = 195
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          867.833333333333000000
          515.937500000000000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel51: TQRLabel
        Left = 389
        Top = 195
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1029.229166666670000000
          515.937500000000000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand5: TQRBand
      Left = 38
      Top = 353
      Width = 596
      Height = 1
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
        2.645833333333333000
        1576.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
    end
    object QRLabel38: TQRLabel
      Left = 106
      Top = 4
      Width = 211
      Height = 20
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666670000
        280.458333333333400000
        10.583333333333330000
        558.270833333333400000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #22235#24029#30465#21307#38498#20303#38498#36153'('#32467#31639')'#25910#25454'('#19975#20301')'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object jxjssj: TQuickRep
    Tag = 1
    Left = 8
    Top = 51
    Width = 726
    Height = 386
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = DM_data.sp_dysj
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
      1020.000000000000000000
      100.000000000000000000
      1920.000000000000000000
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
    object QRBand2: TQRBand
      Left = 38
      Top = 38
      Width = 650
      Height = 342
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = PageHeaderBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        904.875000000000000000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object jx_brxm: TQRLabel
        Left = 78
        Top = 30
        Width = 29
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          206.375000000000000000
          79.375000000000000000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'brxm'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jx_r: TQRLabel
        Left = 355
        Top = 30
        Width = 15
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          939.270833333333400000
          79.375000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '12'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jx_tmh: TQRLabel
        Left = 529
        Top = 53
        Width = 22
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1399.645833333333000000
          140.229166666666700000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'tmh'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jx_y1: TQRLabel
        Left = 117
        Top = 54
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          309.562500000000000000
          142.875000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '12'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jx_zyts: TQRLabel
        Left = 327
        Top = 51
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          865.187500000000000000
          134.937500000000000000
          76.729166666666680000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'zyts'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jx_zfy: TQRLabel
        Left = 572
        Top = 196
        Width = 22
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1513.416666666667000000
          518.583333333333300000
          58.208333333333320000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'zfy'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jx_fh: TQRLabel
        Left = 193
        Top = 311
        Width = 15
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          510.645833333333300000
          822.854166666666800000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'fh'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jx_jbr: TQRLabel
        Left = 378
        Top = 311
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1000.125000000000000000
          822.854166666666800000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'jbr'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText18: TQRDBText
        Left = 158
        Top = 172
        Width = 29
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          418.041666666666700000
          455.083333333333300000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f104'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText19: TQRDBText
        Left = 158
        Top = 108
        Width = 29
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          418.041666666666700000
          285.750000000000000000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f101'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText20: TQRDBText
        Left = 158
        Top = 129
        Width = 29
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          418.041666666666700000
          341.312500000000000000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f102'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText21: TQRDBText
        Left = 158
        Top = 149
        Width = 29
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          418.041666666666700000
          394.229166666666700000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f103'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText22: TQRDBText
        Left = 158
        Top = 241
        Width = 29
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          418.041666666666700000
          637.645833333333400000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f107'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText23: TQRDBText
        Left = 158
        Top = 218
        Width = 29
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          418.041666666666700000
          576.791666666666800000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f106'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText24: TQRDBText
        Left = 365
        Top = 103
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          965.729166666666800000
          272.520833333333400000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f109'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText25: TQRDBText
        Left = 365
        Top = 149
        Width = 29
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          965.729166666666800000
          394.229166666666700000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f111'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText26: TQRDBText
        Left = 365
        Top = 149
        Width = 29
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          965.729166666666800000
          394.229166666666700000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f112'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText27: TQRDBText
        Left = 158
        Top = 260
        Width = 29
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          418.041666666666700000
          687.916666666666800000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f108'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText28: TQRDBText
        Left = 158
        Top = 196
        Width = 29
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          418.041666666666700000
          518.583333333333400000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f105'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText29: TQRDBText
        Left = 365
        Top = 172
        Width = 29
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          965.729166666666800000
          455.083333333333300000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f113'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText30: TQRDBText
        Left = 365
        Top = 196
        Width = 29
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          965.729166666666800000
          518.583333333333400000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f114'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText31: TQRDBText
        Left = 365
        Top = 126
        Width = 29
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          965.729166666666800000
          333.375000000000000000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f110'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText34: TQRDBText
        Left = 565
        Top = 149
        Width = 29
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1494.895833333333000000
          394.229166666666700000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f117'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jx_sjh: TQRLabel
        Left = 500
        Top = 30
        Width = 22
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1322.916666666667000000
          79.375000000000000000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'sjh'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jx_ybje: TQRLabel
        Left = 565
        Top = 241
        Width = 29
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1494.895833333333000000
          637.645833333333200000
          76.729166666666680000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ybje'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jx_yjze: TQRLabel
        Left = 565
        Top = 218
        Width = 29
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1494.895833333333000000
          576.791666666666800000
          76.729166666666680000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'yjze'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jx_n: TQRLabel
        Left = 269
        Top = 30
        Width = 29
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          711.729166666666800000
          79.375000000000000000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '2007'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jx_y: TQRLabel
        Left = 318
        Top = 29
        Width = 15
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          841.375000000000000000
          76.729166666666680000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '12'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jx_dx: TQRLabel
        Left = 193
        Top = 285
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          510.645833333333300000
          754.062500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'dx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jx_r1: TQRLabel
        Left = 146
        Top = 54
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          386.291666666666700000
          142.875000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '12'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jx_y2: TQRLabel
        Left = 220
        Top = 54
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          582.083333333333400000
          142.875000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '12'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jx_r2: TQRLabel
        Left = 249
        Top = 54
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          658.812500000000000000
          142.875000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '12'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jx_ytje: TQRLabel
        Left = 565
        Top = 260
        Width = 29
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1494.895833333333000000
          687.916666666666800000
          76.729166666666680000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ytje'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText32: TQRDBText
        Left = 565
        Top = 103
        Width = 29
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1494.895833333333000000
          272.520833333333300000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f115'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText33: TQRDBText
        Left = 565
        Top = 126
        Width = 29
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1494.895833333333000000
          333.375000000000000000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f116'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jx_ksmc: TQRLabel
        Left = 161
        Top = 31
        Width = 29
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          425.979166666666700000
          82.020833333333340000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ksmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText35: TQRDBText
        Left = 565
        Top = 172
        Width = 29
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1494.895833333333000000
          455.083333333333300000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f117'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 380
      Width = 650
      Height = 1
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
        2.645833333333333000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
    end
    object QRLabel50: TQRLabel
      Left = 106
      Top = 4
      Width = 171
      Height = 20
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666670000
        280.458333333333400000
        10.583333333333330000
        452.437500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #27743#35199#30465#21307#38498#20303#38498#36153'('#32467#31639')'#25910#25454
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object xjjssj: TQuickRep
    Tag = 1
    Left = 32
    Top = 73
    Width = 718
    Height = 529
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
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
    OnNeedData = xjjssjNeedData
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      100.000000000000000000
      1400.000000000000000000
      100.000000000000000000
      1900.000000000000000000
      150.000000000000000000
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
    object QRBand6: TQRBand
      Left = 57
      Top = 38
      Width = 624
      Height = 91
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
        240.770833333333300000
        1651.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object brxm_xj: TQRLabel
        Left = 183
        Top = 50
        Width = 29
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          484.187500000000000000
          132.291666666666700000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'brxm'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ksmc_xj: TQRLabel
        Left = 331
        Top = 51
        Width = 29
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          875.770833333333400000
          134.937500000000000000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ksmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object tmh_xj: TQRLabel
        Left = 58
        Top = 47
        Width = 22
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          153.458333333333300000
          124.354166666666700000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'tmh'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ryrq_xj: TQRLabel
        Left = 24
        Top = 75
        Width = 29
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          63.500000000000000000
          198.437500000000000000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ryrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object cyrq_xj: TQRLabel
        Left = 185
        Top = 74
        Width = 29
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          489.479166666666700000
          195.791666666666700000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'cyrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object yymc_xj: TQRLabel
        Left = 57
        Top = 20
        Width = 29
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          150.812500000000000000
          52.916666666666670000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'yymc'
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
      object sjh_xj: TQRLabel
        Left = 489
        Top = 34
        Width = 22
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1293.812500000000000000
          89.958333333333320000
          58.208333333333320000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'sjh'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object xbnl_xj: TQRLabel
        Left = 237
        Top = 51
        Width = 50
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          627.062500000000000000
          134.937500000000000000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'xbnl_xj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object bydw_xj: TQRLabel
        Left = 487
        Top = 53
        Width = 50
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1288.520833333333000000
          140.229166666666700000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'bydw_xj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ts_xj: TQRLabel
        Left = 391
        Top = 77
        Width = 36
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1034.520833333333000000
          203.729166666666700000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ts_xj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jsrq_xj: TQRLabel
        Left = 514
        Top = 76
        Width = 29
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1359.958333333333000000
          201.083333333333300000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'jsrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object DetailBand1: TQRBand
      Left = 57
      Top = 129
      Width = 624
      Height = 18
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
        47.625000000000000000
        1651.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object FY01: TQRLabel
        Left = 19
        Top = 2
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          50.270833333333330000
          5.291666666666667000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FY01'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object FY02: TQRLabel
        Left = 115
        Top = 2
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          304.270833333333400000
          5.291666666666667000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FY02'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object FY03: TQRLabel
        Left = 208
        Top = 2
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          550.333333333333400000
          5.291666666666667000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FY03'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object FY04: TQRLabel
        Left = 307
        Top = 2
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          812.270833333333400000
          5.291666666666667000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FY04'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object fy05: TQRLabel
        Left = 410
        Top = 2
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1084.791666666667000000
          5.291666666666667000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FY05'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object fy06: TQRLabel
        Left = 501
        Top = 2
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1325.562500000000000000
          5.291666666666667000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FY06'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand7: TQRBand
      Left = 57
      Top = 147
      Width = 624
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
        1651.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object zfy_xj: TQRLabel
        Left = 448
        Top = 41
        Width = 22
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1185.333333333333000000
          108.479166666666700000
          58.208333333333340000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'zfy'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ZYJ_xj: TQRLabel
        Left = 428
        Top = 66
        Width = 43
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1132.416666666667000000
          174.625000000000000000
          113.770833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ZYJ_xj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ytje_xj: TQRLabel
        Left = 79
        Top = 87
        Width = 29
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          209.020833333333300000
          230.187500000000000000
          76.729166666666680000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ytje'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object YBJE_xj: TQRLabel
        Left = 331
        Top = 88
        Width = 50
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          875.770833333333400000
          232.833333333333400000
          132.291666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'YBJE_xj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ZFYDX_xj: TQRLabel
        Left = 106
        Top = 38
        Width = 57
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          280.458333333333400000
          100.541666666666700000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ZFYDX_xj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object czy_xj: TQRLabel
        Left = 269
        Top = 117
        Width = 22
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          711.729166666666800000
          309.562500000000000000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'czy'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object zfze_xj: TQRLabel
        Left = 207
        Top = 20
        Width = 29
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          547.687500000000000000
          52.916666666666670000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'zfze'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object tcze_xj: TQRLabel
        Left = 407
        Top = 20
        Width = 29
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1076.854166666667000000
          52.916666666666670000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TCZE'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object zyjdx_xj: TQRLabel
        Left = 105
        Top = 64
        Width = 36
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          277.812500000000000000
          169.333333333333300000
          95.250000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ZYJdx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRLabel27: TQRLabel
      Left = 82
      Top = 6
      Width = 158
      Height = 20
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666670000
        216.958333333333400000
        15.875000000000000000
        418.041666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #26032#30086#21307#38498#20303#38498#36153'('#32467#31639')'#25910#25454
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object sxjssj: TQuickRep
    Tag = 1
    Left = 32
    Top = 105
    Width = 672
    Height = 382
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = DM_data.sp_dysj
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
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      100.000000000000000000
      1010.000000000000000000
      80.000000000000000000
      1778.000000000000000000
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
    object QRBand8: TQRBand
      Left = 38
      Top = 30
      Width = 596
      Height = 329
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
        870.479166666666700000
        1576.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object brxm_sx: TQRLabel
        Left = 51
        Top = 46
        Width = 50
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          134.937500000000000000
          121.708333333333300000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'brxm_sx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ksmc_sx: TQRLabel
        Left = 499
        Top = 48
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1320.270833333333000000
          127.000000000000000000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ksmc_sx'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object tmh_sx: TQRLabel
        Left = 333
        Top = 48
        Width = 43
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          881.062500000000000000
          127.000000000000000000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'tmh_sx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ryrq_sx: TQRLabel
        Left = 177
        Top = 66
        Width = 50
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          468.312500000000000000
          174.625000000000000000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ryrq_sx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object cyrq_sx: TQRLabel
        Left = 348
        Top = 66
        Width = 50
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          920.750000000000000000
          174.625000000000000000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'cyrq_sx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object zfy_sx: TQRLabel
        Left = 495
        Top = 187
        Width = 22
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1309.687500000000000000
          494.770833333333400000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'zfy'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object czy_sx: TQRLabel
        Left = 281
        Top = 302
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          743.479166666666800000
          799.041666666666800000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'czy_sx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jsrq_sx: TQRLabel
        Left = 295
        Top = 23
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          780.520833333333400000
          60.854166666666680000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'jsrq_sx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText53: TQRDBText
        Left = 42
        Top = 187
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          111.125000000000000000
          494.770833333333400000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f104'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText54: TQRDBText
        Left = 42
        Top = 115
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          111.125000000000000000
          304.270833333333400000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f101'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText55: TQRDBText
        Left = 42
        Top = 139
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          111.125000000000000000
          367.770833333333400000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f102'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText56: TQRDBText
        Left = 42
        Top = 163
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          111.125000000000000000
          431.270833333333400000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f103'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText57: TQRDBText
        Left = 191
        Top = 163
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          505.354166666666700000
          431.270833333333400000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f107'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText58: TQRDBText
        Left = 191
        Top = 139
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          505.354166666666700000
          367.770833333333400000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f106'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText59: TQRDBText
        Left = 333
        Top = 115
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          881.062500000000000000
          304.270833333333400000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f109'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText60: TQRDBText
        Left = 333
        Top = 163
        Width = 25
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          881.062500000000000000
          431.270833333333400000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f111'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText61: TQRDBText
        Left = 333
        Top = 187
        Width = 25
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          881.062500000000000000
          494.770833333333400000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f112'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText62: TQRDBText
        Left = 191
        Top = 187
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          505.354166666666700000
          494.770833333333400000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f108'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText63: TQRDBText
        Left = 191
        Top = 115
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          505.354166666666700000
          304.270833333333400000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f105'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText64: TQRDBText
        Left = 495
        Top = 115
        Width = 25
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1309.687500000000000000
          304.270833333333400000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f113'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText65: TQRDBText
        Left = 495
        Top = 139
        Width = 25
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1309.687500000000000000
          367.770833333333400000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f114'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText66: TQRDBText
        Left = 333
        Top = 139
        Width = 25
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          881.062500000000000000
          367.770833333333400000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f110'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText67: TQRDBText
        Left = 495
        Top = 163
        Width = 25
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1309.687500000000000000
          431.270833333333400000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_dysj
        DataField = 'f115'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object sjh_sx: TQRLabel
        Left = 478
        Top = 13
        Width = 43
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1264.708333333333000000
          34.395833333333340000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'sjh_sx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ytje_sx: TQRLabel
        Left = 161
        Top = 241
        Width = 50
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          425.979166666666700000
          637.645833333333400000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ytje_sx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object zfze_sx: TQRLabel
        Left = 333
        Top = 278
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          881.062500000000000000
          735.541666666666800000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'zfze_sx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object tcze_sx: TQRLabel
        Left = 505
        Top = 278
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1336.145833333333000000
          735.541666666666800000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'tcze_sx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object yjze_sx: TQRLabel
        Left = 55
        Top = 241
        Width = 50
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          145.520833333333300000
          637.645833333333400000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'yjze_sx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object brxb_sx: TQRLabel
        Left = 203
        Top = 47
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          537.104166666666700000
          124.354166666666700000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'brxb_sx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object brnl_sx: TQRLabel
        Left = 51
        Top = 71
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          134.937500000000000000
          187.854166666666700000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ybkh'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object zyts_sx: TQRLabel
        Left = 517
        Top = 66
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1367.895833333333000000
          174.625000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ts'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ybje_sx: TQRLabel
        Left = 497
        Top = 237
        Width = 50
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1314.979166666667000000
          627.062500000000000000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ybje_sx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object dxje_sx: TQRLabel
        Left = 88
        Top = 216
        Width = 50
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          232.833333333333400000
          571.500000000000000000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'dxje_sx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object yymc_sx: TQRLabel
        Left = 56
        Top = 23
        Width = 50
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          148.166666666666700000
          60.854166666666680000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'yymc_sx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand9: TQRBand
      Left = 38
      Top = 359
      Width = 596
      Height = 1
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
        2.645833333333333000
        1576.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
    end
    object QRLabel15: TQRLabel
      Left = 82
      Top = 6
      Width = 158
      Height = 20
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666670000
        216.958333333333400000
        15.875000000000000000
        418.041666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #38485#35199#21307#38498#20303#38498#36153'('#32467#31639')'#25910#25454
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object QuickRep1: TQuickRep
    Left = 34
    Top = 135
    Width = 718
    Height = 386
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
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
      0.000000000000000000
      1020.000000000000000000
      0.000000000000000000
      1900.000000000000000000
      0.000000000000000000
      0.000000000000000000
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
    object QRBand10: TQRBand
      Left = 0
      Top = 0
      Width = 718
      Height = 386
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
        1021.291666666667000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRL_name: TQRLabel
        Left = 113
        Top = 46
        Width = 102
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          298.979166666667000000
          121.708333333333000000
          269.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_name'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_tmh: TQRLabel
        Left = 274
        Top = 46
        Width = 176
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          724.958333333333000000
          121.708333333333000000
          465.666666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_tmh'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_yyyy: TQRLabel
        Left = 163
        Top = 72
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          431.270833333333000000
          190.500000000000000000
          113.770833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'yyyy'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_mm: TQRLabel
        Left = 225
        Top = 72
        Width = 23
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          595.312500000000000000
          190.500000000000000000
          60.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'mm'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_dd: TQRLabel
        Left = 268
        Top = 72
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          709.083333333333000000
          190.500000000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'dd'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_yyyy_z: TQRLabel
        Left = 322
        Top = 72
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          851.958333333333000000
          190.500000000000000000
          89.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'yyyy'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_mm_z: TQRLabel
        Left = 378
        Top = 72
        Width = 23
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1000.125000000000000000
          190.500000000000000000
          60.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'mm'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_dd_z: TQRLabel
        Left = 422
        Top = 72
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1116.541666666670000000
          190.500000000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'dd'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_ts: TQRLabel
        Left = 508
        Top = 72
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1344.083333333330000000
          190.500000000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'ts'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_xyf: TQRLabel
        Left = 152
        Top = 124
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          402.166666666667000000
          328.083333333333000000
          256.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_xyf'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_zcyf: TQRLabel
        Left = 152
        Top = 158
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          402.166666666667000000
          418.041666666667000000
          256.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_zcyf'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_zcf: TQRLabel
        Left = 152
        Top = 216
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          402.166666666667000000
          571.500000000000000000
          256.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_zcf'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_qtf: TQRLabel
        Left = 152
        Top = 244
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          402.166666666667000000
          645.583333333333000000
          193.145833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_qtf'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_zlf: TQRLabel
        Left = 335
        Top = 216
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          886.354166666667000000
          571.500000000000000000
          256.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_zlf'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_fsf: TQRLabel
        Left = 335
        Top = 186
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          886.354166666667000000
          492.125000000000000000
          256.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_fsf'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_hyf: TQRLabel
        Left = 335
        Top = 158
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          886.354166666667000000
          418.041666666667000000
          256.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_hyf'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_jcf: TQRLabel
        Left = 335
        Top = 124
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          886.354166666667000000
          328.083333333333000000
          256.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_jcf'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_ssf: TQRLabel
        Left = 511
        Top = 124
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1352.020833333330000000
          328.083333333333000000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_ssf'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_xf: TQRLabel
        Left = 511
        Top = 158
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1352.020833333330000000
          418.041666666667000000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_xf'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_hlf: TQRLabel
        Left = 511
        Top = 186
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1352.020833333330000000
          492.125000000000000000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_hlf'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_cwf: TQRLabel
        Left = 511
        Top = 216
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1352.020833333330000000
          571.500000000000000000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_cwf'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_w_h: TQRLabel
        Left = 199
        Top = 271
        Width = 26
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          526.520833333333000000
          717.020833333333000000
          68.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_w_h'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_q_h: TQRLabel
        Left = 244
        Top = 271
        Width = 24
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          645.583333333333000000
          717.020833333333000000
          63.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_q_h'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_b_h: TQRLabel
        Left = 286
        Top = 271
        Width = 24
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          756.708333333333000000
          717.020833333333000000
          63.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_b_h'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_s_h: TQRLabel
        Left = 326
        Top = 271
        Width = 24
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          862.541666666667000000
          717.020833333333000000
          63.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_s_h'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_y_h: TQRLabel
        Left = 368
        Top = 271
        Width = 24
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          973.666666666667000000
          717.020833333333000000
          63.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_y_h'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_j_h: TQRLabel
        Left = 417
        Top = 271
        Width = 24
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1103.312500000000000000
          717.020833333333000000
          63.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_j_h'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_f_h: TQRLabel
        Left = 459
        Top = 271
        Width = 24
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1214.437500000000000000
          717.020833333333000000
          63.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_f_h'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_f_y: TQRLabel
        Left = 459
        Top = 296
        Width = 24
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1214.437500000000000000
          783.166666666667000000
          63.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_f_y'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_j_y: TQRLabel
        Left = 417
        Top = 296
        Width = 24
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1103.312500000000000000
          783.166666666667000000
          63.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_j_y'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_y_y: TQRLabel
        Left = 368
        Top = 296
        Width = 24
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          973.666666666667000000
          783.166666666667000000
          63.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_y_y'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_s_y: TQRLabel
        Left = 326
        Top = 296
        Width = 24
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          862.541666666667000000
          783.166666666667000000
          63.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_s_y'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_b_y: TQRLabel
        Left = 286
        Top = 296
        Width = 24
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          756.708333333333000000
          783.166666666667000000
          63.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_b_y'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_q_y: TQRLabel
        Left = 244
        Top = 296
        Width = 24
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          645.583333333333000000
          783.166666666667000000
          63.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_q_y'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_w_y: TQRLabel
        Left = 199
        Top = 296
        Width = 26
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          526.520833333333000000
          783.166666666667000000
          68.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_w_y'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_xs: TQRLabel
        Left = 199
        Top = 324
        Width = 130
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          526.520833333333000000
          857.250000000000000000
          343.958333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_xs'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_fh: TQRLabel
        Left = 151
        Top = 354
        Width = 98
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          399.520833333333000000
          936.625000000000000000
          259.291666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_fh'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_sfy: TQRLabel
        Left = 303
        Top = 354
        Width = 106
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          801.687500000000000000
          936.625000000000000000
          280.458333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_sfy'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_yt: TQRLabel
        Left = 455
        Top = 324
        Width = 130
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1203.854166666670000000
          857.250000000000000000
          343.958333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_yt'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_yyyy_d: TQRLabel
        Left = 471
        Top = 354
        Width = 42
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1246.187500000000000000
          936.625000000000000000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_yyyy_d'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_mm_d: TQRLabel
        Left = 535
        Top = 354
        Width = 23
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1415.520833333330000000
          936.625000000000000000
          60.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_mm_d'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_dd_d: TQRLabel
        Left = 577
        Top = 354
        Width = 26
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1526.645833333330000000
          936.625000000000000000
          68.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_dd_d'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_cyf: TQRLabel
        Left = 152
        Top = 186
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          402.166666666667000000
          492.125000000000000000
          256.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_cyf'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_kzf_c: TQRLabel
        Left = 224
        Top = 244
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          592.666666666666800000
          645.583333333333400000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21345#25903#20184
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_kzf: TQRLabel
        Left = 276
        Top = 244
        Width = 74
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          730.250000000000000000
          645.583333333333000000
          195.791666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_kzf'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_sbzf_c: TQRLabel
        Left = 352
        Top = 244
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          931.333333333333500000
          645.583333333333400000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#20445#33258#20184
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_sbzf: TQRLabel
        Left = 418
        Top = 244
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1105.958333333330000000
          645.583333333333000000
          161.395833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_sbzf'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_xjzf_c: TQRLabel
        Left = 480
        Top = 244
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1270.000000000000000000
          645.583333333333400000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #29616#37329#33258#20184
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRL_xjzf: TQRLabel
        Left = 546
        Top = 244
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1444.625000000000000000
          645.583333333333000000
          161.395833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_xjzf'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 80
        Top = 5
        Width = 193
        Height = 20
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          211.666666666666700000
          13.229166666666670000
          510.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26032#30086#36793#38450#21307#38498#21307#38498#20303#38498#36153'('#32467#31639')'#25910#25454
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
  end
  object xxjssj: TQuickRep
    Left = 54
    Top = 160
    Width = 454
    Height = 576
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = DEFAULT_CHARSET
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
    OnNeedData = xxjssjNeedData
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      0.000000000000000000
      1525.000000000000000000
      100.000000000000000000
      1200.000000000000000000
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
    object QRLabel16: TQRLabel
      Left = 57
      Top = 4
      Width = 133
      Height = 20
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666670000
        150.812500000000000000
        10.583333333333330000
        351.895833333333400000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #35199#20065#21439#20154#27665#21307#38498#32467#31639#25910#25454
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object PageHeaderBand2: TQRBand
      Left = 38
      Top = 38
      Width = 378
      Height = 190
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
        502.708333333333300000
        1000.125000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object sjbh_xx: TQRLabel
        Left = 254
        Top = 55
        Width = 50
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          672.041666666666800000
          145.520833333333300000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'sjbh_xx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRExpr1: TQRExpr
        Left = 81
        Top = 55
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          214.312500000000000000
          145.520833333333300000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'DATE'
        FontSize = 10
      end
      object brxm_xx: TQRLabel
        Left = 63
        Top = 85
        Width = 50
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          166.687500000000000000
          224.895833333333300000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'brxm_xx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object xb_xx: TQRLabel
        Left = 195
        Top = 86
        Width = 36
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          515.937500000000000000
          227.541666666666700000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'xb_xx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object zyh_xx: TQRLabel
        Left = 274
        Top = 85
        Width = 43
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          724.958333333333200000
          224.895833333333300000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'zyh_xx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object zyts_xx: TQRLabel
        Left = 320
        Top = 125
        Width = 50
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          846.666666666666800000
          330.729166666666700000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'zyts_xx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ksmc_xx: TQRLabel
        Left = 63
        Top = 118
        Width = 43
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666680000
          166.687500000000000000
          312.208333333333300000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'ksmc_xx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ryrq_xx: TQRLabel
        Left = 175
        Top = 115
        Width = 50
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          463.020833333333400000
          304.270833333333400000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ryrq_xx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object cyrq_xx: TQRLabel
        Left = 175
        Top = 135
        Width = 50
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          463.020833333333400000
          357.187500000000000000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'cyrq_xx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object DetailBand2: TQRBand
      Left = 38
      Top = 228
      Width = 378
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
        1000.125000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object je01: TQRLabel
        Left = 151
        Top = 5
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          399.520833333333400000
          13.229166666666670000
          76.729166666666680000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'je01'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object xm01: TQRLabel
        Left = 33
        Top = 5
        Width = 77
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          87.312500000000000000
          13.229166666666670000
          203.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'xm01'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object xm02: TQRLabel
        Left = 194
        Top = 5
        Width = 79
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          513.291666666666700000
          13.229166666666670000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'xm02'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object je02: TQRLabel
        Left = 316
        Top = 5
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          836.083333333333400000
          13.229166666666670000
          76.729166666666680000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'je02'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 252
      Width = 378
      Height = 143
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
        378.354166666666700000
        1000.125000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object zfy_xx: TQRLabel
        Left = 124
        Top = 19
        Width = 43
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          328.083333333333400000
          50.270833333333330000
          113.770833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'zfy_xx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object cjyj_xx: TQRLabel
        Left = 285
        Top = 19
        Width = 50
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          754.062500000000000000
          50.270833333333330000
          132.291666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'cjyj_xx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ytje_xx: TQRLabel
        Left = 117
        Top = 50
        Width = 50
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          309.562500000000000000
          132.291666666666700000
          132.291666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ytje_xx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ybje_xx: TQRLabel
        Left = 285
        Top = 50
        Width = 50
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          754.062500000000000000
          132.291666666666700000
          132.291666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ybje_xx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object dx_xx: TQRLabel
        Left = 147
        Top = 79
        Width = 36
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          388.937500000000000000
          209.020833333333300000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'dx_xx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object czy_xx: TQRLabel
        Left = 281
        Top = 108
        Width = 43
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          743.479166666666800000
          285.750000000000000000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'czy_xx'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
end
