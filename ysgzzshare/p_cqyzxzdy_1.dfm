object frm_cqyzxzdy: Tfrm_cqyzxzdy
  Left = 0
  Top = 0
  Caption = #38271#26399#21307#22065#36873#25321#25171#21360
  ClientHeight = 474
  ClientWidth = 1063
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 1063
    Height = 433
    Align = alTop
    Caption = #38271#26399#21307#22065#25171#21360#36873#25321
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 17
      Width = 1059
      Height = 414
      Align = alClient
      DataSource = ds_cx
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      UseMultiTitle = True
      OnCellClick = DBGridEh1CellClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ksrq'
          Footers = <>
          Title.Caption = #24320#22987'|'#26085#26399
          Width = 51
        end
        item
          EditButtons = <>
          FieldName = 'kdysmc'
          Footers = <>
          Title.Caption = #24320#22987'|'#21307#22065#32773
          Width = 51
        end
        item
          EditButtons = <>
          FieldName = 'zxhsmc'
          Footers = <>
          Title.Caption = #24320#22987'|'#25191#34892#32773
          Width = 55
        end
        item
          EditButtons = <>
          FieldName = 'min_jlsj'
          Footers = <>
          Title.Caption = #24320#22987'|'#25191#34892
          Width = 55
        end
        item
          EditButtons = <>
          FieldName = 'xmmc'
          Footers = <>
          Title.Caption = #38271#26399#21307#22065
          Width = 177
        end
        item
          EditButtons = <>
          FieldName = 'ypyf'
          Footers = <>
          Title.Caption = #29992#27861
          Width = 37
        end
        item
          EditButtons = <>
          FieldName = 'tzrq'
          Footers = <>
          Title.Caption = #20572#27490'|'#26085#26399
          Width = 47
        end
        item
          EditButtons = <>
          FieldName = 'tzysmc'
          Footers = <>
          Title.Caption = #20572#27490'|'#21307#22065#32773
          Width = 58
        end
        item
          EditButtons = <>
          FieldName = 'zhhsmc'
          Footers = <>
          Title.Caption = #20572#27490'|'#25191#34892#32773
          Width = 57
        end
        item
          EditButtons = <>
          FieldName = 'max_jlsj'
          Footers = <>
          Title.Caption = #20572#27490'|'#25191#34892
          Width = 56
        end
        item
          Checkboxes = True
          EditButtons = <>
          FieldName = 'sfdy'
          Footers = <>
          ReadOnly = True
          Title.Caption = #26159#21542#25171#21360
        end
        item
          EditButtons = <>
          FieldName = 'xh2'
          Footers = <>
          ReadOnly = True
          Title.Caption = #25171#21360#39034#24207
          Width = 35
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 433
    Width = 1063
    Height = 41
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 627
      Top = 12
      Width = 60
      Height = 15
      Caption = #25171#21360#39034#24207
    end
    object Button1: TButton
      Left = 376
      Top = 8
      Width = 78
      Height = 25
      Caption = #25171#21360#39044#35272
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 486
      Top = 8
      Width = 75
      Height = 25
      Caption = #36864#20986
      TabOrder = 1
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 697
      Top = 7
      Width = 67
      Height = 23
      TabOrder = 2
      OnKeyPress = Edit1KeyPress
    end
    object Button3: TButton
      Left = 780
      Top = 6
      Width = 109
      Height = 25
      Caption = #25171#21360#24207#21495#20462#25913
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object QuickRep1: TQuickRep
    Left = 35
    Top = 112
    Width = 688
    Height = 971
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = qry_cx
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    Page.PaperSize = B5
    Page.Values = (
      50.000000000000000000
      2570.000000000000000000
      100.000000000000000000
      1820.000000000000000000
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
    ShowProgress = False
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    object PageFooterBand1: TQRBand
      Left = 19
      Top = 161
      Width = 650
      Height = 31
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
        82.020833333333330000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel13: TQRLabel
        Left = 427
        Top = 6
        Width = 223
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1129.770833333333000000
          15.875000000000000000
          590.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #23457#26680#21307#29983':                 '#23457#26680#25252#22763#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRSysData1: TQRSysData
        Left = 331
        Top = 6
        Width = 39
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          875.770833333333300000
          15.875000000000000000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Transparent = False
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 318
        Top = 6
        Width = 13
        Height = 50
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          132.291666666666700000
          841.375000000000000000
          15.875000000000000000
          34.395833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31532
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 353
        Top = 6
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          933.979166666666700000
          15.875000000000000000
          34.395833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39029
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRL_ys_cq: TQRLabel
        Left = 274
        Top = 6
        Width = 41
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          724.958333333333300000
          15.875000000000000000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_ys_cq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRL_dysj_cq: TQRLabel
        Left = -3
        Top = 7
        Width = 268
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          -7.937500000000000000
          18.520833333333330000
          709.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #25171#21360#26102#38388':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 19
      Top = 38
      Width = 650
      Height = 102
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
        269.875000000000000000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape1: TQRShape
        Left = 0
        Top = 44
        Width = 650
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333330000
          0.000000000000000000
          116.416666666666700000
          1719.791666666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRL_yymc_cq: TQRLabel
        Left = 257
        Top = 0
        Width = 136
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          679.979166666666700000
          0.000000000000000000
          359.833333333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_yymc_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRL_brxm_cq: TQRLabel
        Left = 8
        Top = 30
        Width = 101
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          21.166666666666670000
          79.375000000000000000
          267.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_brxm_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRL_tmh_cq: TQRLabel
        Left = 427
        Top = 30
        Width = 92
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1129.770833333333000000
          79.375000000000000000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_tmh_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object sj1: TQRLabel
        Left = 11
        Top = 72
        Width = 31
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          29.104166666666670000
          190.500000000000000000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #26085#26399#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 56
        Top = 78
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          148.166666666666700000
          206.375000000000000000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#22065#32773
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 98
        Top = 79
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          259.291666666666700000
          209.020833333333300000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #25191#34892#32773
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 258
        Top = 60
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          682.625000000000000000
          158.750000000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38271'   '#26399'  '#21307'   '#22065
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object sj3: TQRLabel
        Left = 475
        Top = 72
        Width = 33
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          1256.770833333333000000
          190.500000000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #26085#26399#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape2: TQRShape
        Left = -2
        Top = 64
        Width = 193
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          -5.291666666666667000
          169.333333333333300000
          510.645833333333300000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel8: TQRLabel
        Left = 91
        Top = 51
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          240.770833333333300000
          134.937500000000000000
          66.145833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24320#22987
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape3: TQRShape
        Left = -4
        Top = 49
        Width = 5
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          -10.583333333333330000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 188
        Top = 49
        Width = 5
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          497.416666666666700000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 512
        Top = 71
        Width = 5
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666670000
          1354.666666666667000000
          187.854166666666700000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel9: TQRLabel
        Left = 543
        Top = 55
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1436.687500000000000000
          145.520833333333300000
          66.145833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20572#27490
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape9: TQRShape
        Left = 447
        Top = 66
        Width = 204
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          1182.687500000000000000
          174.625000000000000000
          539.750000000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel10: TQRLabel
        Left = 516
        Top = 78
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1365.250000000000000000
          206.375000000000000000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#22065#32773
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 558
        Top = 78
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1476.375000000000000000
          206.375000000000000000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25191#34892#32773
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape10: TQRShape
        Left = 51
        Top = 71
        Width = 5
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666670000
          134.937500000000000000
          187.854166666666700000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 93
        Top = 71
        Width = 5
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666670000
          246.062500000000000000
          187.854166666666700000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 447
        Top = 49
        Width = 5
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          1182.687500000000000000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 648
        Top = 49
        Width = 5
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          1714.500000000000000000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 554
        Top = 71
        Width = 5
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666670000
          1465.791666666667000000
          187.854166666666700000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRL_bch_cq: TQRLabel
        Left = 556
        Top = 30
        Width = 92
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1471.083333333333000000
          79.375000000000000000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_bch_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape6: TQRShape
        Left = 134
        Top = 71
        Width = 5
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666670000
          354.541666666666700000
          187.854166666666700000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object sj2: TQRLabel
        Left = 140
        Top = 72
        Width = 31
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          370.416666666666700000
          190.500000000000000000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #25191#34892#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape7: TQRShape
        Left = 596
        Top = 72
        Width = 5
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666670000
          1576.916666666667000000
          190.500000000000000000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object sj4: TQRLabel
        Left = 615
        Top = 73
        Width = 31
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          1627.187500000000000000
          193.145833333333300000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #25191#34892#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xb_cq: TQRLabel
        Left = 136
        Top = 30
        Width = 43
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          359.833333333333300000
          79.375000000000000000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'xb_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object nl_cq: TQRLabel
        Left = 216
        Top = 30
        Width = 39
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          571.500000000000000000
          79.375000000000000000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'nl_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object zd_cq: TQRLabel
        Left = 302
        Top = 30
        Width = 117
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          799.041666666666700000
          79.375000000000000000
          309.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'zd_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 19
      Top = 140
      Width = 650
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRSubDetail1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        55.562500000000000000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      OnNeedData = QRSubDetail1NeedData
      PrintBefore = False
      PrintIfEmpty = True
      object ksrq: TQRLabel
        Left = 1
        Top = 2
        Width = 51
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          2.645833333333333000
          5.291666666666667000
          134.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object zxhsmc: TQRLabel
        Left = 97
        Top = 2
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          256.645833333333300000
          5.291666666666667000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'zxhsmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc: TQRLabel
        Left = 192
        Top = 2
        Width = 198
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          508.000000000000000000
          5.291666666666667000
          523.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object tzrq: TQRLabel
        Left = 458
        Top = 2
        Width = 52
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1211.791666666667000000
          5.291666666666667000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'tzrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object tzysmc: TQRLabel
        Left = 516
        Top = 2
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1365.250000000000000000
          5.291666666666667000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'tzysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object zhhsmc: TQRLabel
        Left = 558
        Top = 2
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1476.375000000000000000
          5.291666666666667000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'zhhsmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ypyf: TQRLabel
        Left = 397
        Top = 2
        Width = 42
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1050.395833333333000000
          5.291666666666667000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object zxzxsj: TQRLabel
        Left = 139
        Top = 2
        Width = 49
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          367.770833333333300000
          5.291666666666667000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'zxzxsj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object zhzxsj: TQRLabel
        Left = 600
        Top = 2
        Width = 54
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1587.500000000000000000
          5.291666666666667000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'zhzxsj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc: TQRLabel
        Left = 55
        Top = 2
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          145.520833333333300000
          5.291666666666667000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRgrImage1: TQRImage
        Left = 387
        Top = 1
        Width = 11
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          1023.937500000000000000
          2.645833333333333000
          29.104166666666670000)
        Picture.Data = {
          07544269746D6170DA010000424DDA010000000000003E000000280000001F00
          00006700000001000100000000009C0100000000000000000000020000000000
          000000000000FFFFFF001FFFFFFE1FFFFFFE1FFFFFFE0FFFFFFE0FFFFFFE0FFF
          FFFE0FFFFFFE07FFFFFE07FFFFFE87FFFFFE83FFFFFE83FFFFFEC3FFFFFEC1FF
          FFFEC1FFFFFEE1FFFFFEE1FFFFFEE0FFFFFEE0FFFFFEF0FFFFFEF07FFFFEF07F
          FFFEF87FFFFEF87FFFFEF83FFFFEF83FFFFEFC3FFFFEFC1FFFFEFC1FFFFEFE1F
          FFFEFE0FFFFEFE0FFFFEFF0FFFFEFF0FFFFEFF07FFFEFF07FFFEFF87FFFEFF83
          FFFEFF83FFFEFFC3FFFEFFC3FFFEFFC1FFFEFFC1FFFEFFE1FFFEFFE0FFFEFFE0
          FFFEFFF0FFFEFFF07FFEFFF07FFEFFF87FFEFFF87FFEFFF83FFEFFF83FFEFFFC
          3FFEFFFC1FFEFFFC1FFEFFFE1FFEFFFE0FFEFFFE0FFEFFFF0FFEFFFF0FFEFFFF
          07FEFFFF07FEFFFF87FEFFFF83FEFFFF83FEFFFFC3FEFFFFC3FEFFFFC1FEFFFF
          C1FEFFFFE1FEFFFFE0FEFFFFE0FEFFFFF0FEFFFFF07EFFFFF07EFFFFF87EFFFF
          F87EFFFFF83EFFFFF83EFFFFFC3EFFFFFC1EFFFFFC1EFFFFFE1EFFFFFE1EFFFF
          FE0EFFFFFE0EFFFFFF0EFFFFFF06FFFFFF06FFFFFF86FFFFFF82FFFFFF82FFFF
          FFC2FFFFFFC2FFFFFFC0FFFFFFC0FFFFFFE0FFFFFFE0FFFFFFE0FFFFFFF0FFFF
          FFF0FFFFFFF0}
        Stretch = True
      end
      object QRsh1: TQRShape
        Left = 53
        Top = 0
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          140.229166666666700000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 95
        Top = 0
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          251.354166666666700000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = -2
        Top = 0
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          -5.291666666666667000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 191
        Top = 0
        Width = 0
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          505.354166666666700000
          0.000000000000000000
          0.000000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 136
        Top = 0
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          359.833333333333300000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 449
        Top = 0
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1187.979166666667000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 514
        Top = 0
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1359.958333333333000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 556
        Top = 0
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1471.083333333333000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 598
        Top = 0
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1582.208333333333000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 649
        Top = 0
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1717.145833333333000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
  end
  object sp_zxjl_cq_dy: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zybl_cx_yzzxjl_xz_print;1'
    Parameters = <>
    Left = 408
    Top = 80
  end
  object ds_zxjl_cq_dy: TDataSource
    DataSet = sp_zxjl_cq_dy
    Left = 448
    Top = 77
  end
  object qry_cx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 320
    Top = 80
  end
  object ds_cx: TDataSource
    DataSet = qry_cx
    Left = 352
    Top = 77
  end
end
