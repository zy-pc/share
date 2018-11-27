object frm_yzzxjl_print: Tfrm_yzzxjl_print
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #21307#22065#25191#34892#35760#24405#25171#21360
  ClientHeight = 546
  ClientWidth = 772
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 772
    Height = 505
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = '  '#38271#26399#21307#22065'  '
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 764
        Height = 475
        Align = alClient
        TabOrder = 0
        object DBGridEh1: TDBGridEh
          Left = 2
          Top = 17
          Width = 760
          Height = 456
          Align = alClient
          DataSource = ds_zxjl_cq
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = ANSI_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          OnDrawColumnCell = DBGridEh1DrawColumnCell
          Columns = <
            item
              Color = clWhite
              EditButtons = <>
              FieldName = 'ksrq'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #24320#22987#26085#26399
              Width = 128
            end
            item
              EditButtons = <>
              FieldName = 'kdysmc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #21307#29983
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'zxhsmc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #25252#22763
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'xmmc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #27835#30103#26041#27861
              Width = 260
            end
            item
              EditButtons = <>
              FieldName = 'sl'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #25968#37327
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'dw'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #21333#20301
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'tzrq'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #20572#27490#26085#26399
              Width = 119
            end
            item
              EditButtons = <>
              FieldName = 'tzysmc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #20572#27490#21307#29983
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'zhhsmc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #20572#27490#25252#22763
              Width = 65
            end>
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '  '#20020#26102#21307#22065'  '
      ImageIndex = 1
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 764
        Height = 475
        Align = alClient
        TabOrder = 0
        object DBGridEh3: TDBGridEh
          Left = 2
          Top = 17
          Width = 760
          Height = 456
          Align = alClient
          DataSource = ds_zxjl_ls
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = ANSI_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          OnDrawColumnCell = DBGridEh3DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ksrq'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #24320#22987#26085#26399
              Width = 123
            end
            item
              EditButtons = <>
              FieldName = 'kdysmc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #21307#29983
              Width = 95
            end
            item
              EditButtons = <>
              FieldName = 'zxhsmc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #25252#22763
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'xmmc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #27835#30103#26041#27861
              Width = 282
            end
            item
              EditButtons = <>
              FieldName = 'sl'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #25968#37327
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'dw'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #21333#20301
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'gysj'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #32473#19982#26102#38388
              Width = 70
            end>
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 772
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 13
      Width = 60
      Height = 15
      Caption = #26465#30721#21495#65306
    end
    object edt_tmh: TEdit
      Left = 80
      Top = 7
      Width = 145
      Height = 23
      TabOrder = 0
      OnKeyDown = edt_tmhKeyDown
    end
    object BBtn_print_cq: TBitBtn
      Left = 475
      Top = 8
      Width = 92
      Height = 25
      Caption = #38271#26399#21307#22065#25171#21360
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BBtn_print_cqClick
    end
    object BBtn_return: TBitBtn
      Left = 681
      Top = 8
      Width = 75
      Height = 25
      Caption = #36820#22238
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BBtn_returnClick
    end
    object BBtn_print_ls: TBitBtn
      Left = 580
      Top = 8
      Width = 92
      Height = 25
      Caption = #20020#26102#21307#22065#25171#21360
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BBtn_print_lsClick
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 80
    Top = 34
    Width = 425
    Height = 215
    DataSource = ds_dj
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDblClick = DBGridEh2DblClick
    OnExit = DBGridEh2Exit
    OnKeyDown = DBGridEh2KeyDown
    Columns = <
      item
        EditButtons = <>
        FieldName = 'tmh'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #26465#30721#21495
        Width = 134
      end
      item
        EditButtons = <>
        FieldName = 'brxm'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #30149#20154#22995#21517
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'brxb'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #24615#21035
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'brnl'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #24180#40836
        Width = 80
      end>
  end
  object QuickRep1: TQuickRep
    Left = 69
    Top = 437
    Width = 688
    Height = 971
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = sp_zxjl_cq
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
      100.000000000000000000
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
    SnapToGrid = True
    Units = Native
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    object PageFooterBand1: TQRBand
      Left = 19
      Top = 155
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
        82.020833333333340000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel13: TQRLabel
        Left = 520
        Top = 7
        Width = 28
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1375.833333333333000000
          18.520833333333330000
          74.083333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31614#21517':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRSysData1: TQRSysData
        Left = 331
        Top = 6
        Width = 27
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          875.770833333333400000
          15.875000000000000000
          71.437500000000000000)
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
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          841.375000000000000000
          15.875000000000000000
          34.395833333333340000)
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
          42.333333333333340000
          933.979166666666600000
          15.875000000000000000
          34.395833333333340000)
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
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          724.958333333333400000
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
        Left = 8
        Top = 7
        Width = 52
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          21.166666666666670000
          18.520833333333330000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
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
      Height = 95
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
        251.354166666666700000
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
        Left = 266
        Top = 8
        Width = 136
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          703.791666666666800000
          21.166666666666670000
          359.833333333333400000)
        Alignment = taCenter
        AlignToBand = False
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
        Top = 32
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          84.666666666666680000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_brxm_cq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRL_tmh_cq: TQRLabel
        Left = 396
        Top = 32
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1047.750000000000000000
          84.666666666666680000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_tmh_cq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 21
        Top = 75
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          55.562500000000000000
          198.437500000000000000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26085#26399#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 91
        Top = 75
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          240.770833333333300000
          198.437500000000000000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#29983
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 155
        Top = 75
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          410.104166666666700000
          198.437500000000000000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25252#22763
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 266
        Top = 62
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          703.791666666666800000
          164.041666666666700000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27835#30103#26041#27861
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 464
        Top = 75
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1227.666666666667000000
          198.437500000000000000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26085#26399#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 66
        Width = 189
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          0.000000000000000000
          174.625000000000000000
          500.062500000000100000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel8: TQRLabel
        Left = 107
        Top = 51
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          283.104166666666700000
          134.937500000000000000
          66.145833333333340000)
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
        Left = -5
        Top = 49
        Width = 10
        Height = 60
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          -13.229166666666670000
          129.645833333333300000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 185
        Top = 49
        Width = 10
        Height = 47
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          124.354166666666700000
          489.479166666666600000
          129.645833333333300000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 380
        Top = 49
        Width = 10
        Height = 47
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          124.354166666666700000
          1005.416666666667000000
          129.645833333333300000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 527
        Top = 71
        Width = 10
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1394.354166666667000000
          187.854166666666700000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel9: TQRLabel
        Left = 576
        Top = 51
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1524.000000000000000000
          134.937500000000000000
          66.145833333333340000)
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
        Left = 452
        Top = 66
        Width = 198
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          1195.916666666667000000
          174.625000000000000000
          523.875000000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel10: TQRLabel
        Left = 548
        Top = 75
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1449.916666666667000000
          198.437500000000000000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#29983
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 603
        Top = 75
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1595.437500000000000000
          198.437500000000000000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25252#22763
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape10: TQRShape
        Left = 75
        Top = 71
        Width = 10
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          198.437500000000000000
          187.854166666666700000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 136
        Top = 71
        Width = 10
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          359.833333333333400000
          187.854166666666700000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 447
        Top = 49
        Width = 10
        Height = 47
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          124.354166666666700000
          1182.687500000000000000
          129.645833333333300000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 644
        Top = 51
        Width = 10
        Height = 47
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          124.354166666666700000
          1703.916666666667000000
          134.937500000000000000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 581
        Top = 71
        Width = 10
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1537.229166666667000000
          187.854166666666700000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel1: TQRLabel
        Left = 404
        Top = 62
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1068.916666666667000000
          164.041666666666700000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35268#26684
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRL_bch_cq: TQRLabel
        Left = 546
        Top = 32
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1444.625000000000000000
          84.666666666666680000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_bch_cq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object DetailBand1: TQRBand
      Left = 19
      Top = 133
      Width = 650
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
        58.208333333333340000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRShape20: TQRShape
        Left = 0
        Top = 15
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
          39.687500000000000000
          1719.791666666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRDBText2: TQRDBText
        Left = 5
        Top = 3
        Width = 22
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          13.229166666666670000
          7.937500000000000000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_zxjl_cq
        DataField = 'ksrq'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 82
        Top = 3
        Width = 38
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          216.958333333333400000
          7.937500000000000000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_zxjl_cq
        DataField = 'kdysmc'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 142
        Top = 3
        Width = 39
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          375.708333333333400000
          7.937500000000000000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_zxjl_cq
        DataField = 'zxhsmc'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 192
        Top = 3
        Width = 191
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          508.000000000000000000
          7.937500000000000000
          505.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_zxjl_cq
        DataField = 'xmmc'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText8: TQRDBText
        Left = 461
        Top = 3
        Width = 20
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1219.729166666667000000
          7.937500000000000000
          52.916666666666660000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_zxjl_cq
        DataField = 'tzrq'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText9: TQRDBText
        Left = 538
        Top = 3
        Width = 36
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1423.458333333333000000
          7.937500000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_zxjl_cq
        DataField = 'tzysmc'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText10: TQRDBText
        Left = 592
        Top = 3
        Width = 39
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1566.333333333333000000
          7.937500000000000000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_zxjl_cq
        DataField = 'zhhsmc'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Left = 389
        Top = 3
        Width = 69
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1029.229166666667000000
          7.937500000000000000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_zxjl_cq
        DataField = 'gg'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
  end
  object QuickRep2: TQuickRep
    Left = 99
    Top = 84
    Width = 688
    Height = 971
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = sp_zxjl_ls
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
      100.000000000000000000
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
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    object QRBand1: TQRBand
      Left = 19
      Top = 155
      Width = 650
      Height = 28
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
        74.083333333333340000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel15: TQRLabel
        Left = 520
        Top = 7
        Width = 28
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1375.833333333333000000
          18.520833333333330000
          74.083333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31614#21517':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRSysData2: TQRSysData
        Left = 331
        Top = 7
        Width = 27
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          875.770833333333400000
          18.520833333333330000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Transparent = False
        FontSize = 8
      end
      object QRLabel16: TQRLabel
        Left = 318
        Top = 7
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          841.375000000000000000
          18.520833333333330000
          34.395833333333340000)
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
      object QRLabel17: TQRLabel
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
          42.333333333333340000
          933.979166666666600000
          15.875000000000000000
          34.395833333333340000)
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
      object QRL_ys_ls: TQRLabel
        Left = 274
        Top = 7
        Width = 41
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          724.958333333333400000
          18.520833333333330000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_ys_ls'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRL_dysj_ls: TQRLabel
        Left = 8
        Top = 7
        Width = 52
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          21.166666666666670000
          18.520833333333330000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25171#21360#26102#38388':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand2: TQRBand
      Left = 19
      Top = 38
      Width = 650
      Height = 95
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
        251.354166666666700000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape4: TQRShape
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
      object QRL_yymc_ls: TQRLabel
        Left = 265
        Top = 8
        Width = 129
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          701.145833333333400000
          21.166666666666670000
          341.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_yymc_ls'
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
      object QRL_brxm_ls: TQRLabel
        Left = 8
        Top = 32
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          84.666666666666680000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_brxm_ls'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRL_tmh_ls: TQRLabel
        Left = 431
        Top = 32
        Width = 59
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1140.354166666667000000
          84.666666666666680000
          156.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_tmh_ls'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel22: TQRLabel
        Left = 12
        Top = 75
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          198.437500000000000000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26085#26399#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel23: TQRLabel
        Left = 94
        Top = 75
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          248.708333333333300000
          198.437500000000000000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#29983
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel24: TQRLabel
        Left = 158
        Top = 75
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          418.041666666666700000
          198.437500000000000000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25252#22763
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel25: TQRLabel
        Left = 305
        Top = 62
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          806.979166666666800000
          164.041666666666700000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27835#30103#26041#27861
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel27: TQRLabel
        Left = 573
        Top = 62
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1516.062500000000000000
          164.041666666666700000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32473#19982#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape15: TQRShape
        Left = 0
        Top = 66
        Width = 194
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          0.000000000000000000
          174.625000000000000000
          513.291666666666800000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel28: TQRLabel
        Left = 75
        Top = 51
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          198.437500000000000000
          134.937500000000000000
          66.145833333333340000)
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
      object QRShape16: TQRShape
        Left = -5
        Top = 49
        Width = 10
        Height = 60
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          -13.229166666666670000
          129.645833333333300000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 188
        Top = 49
        Width = 10
        Height = 47
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          124.354166666666700000
          497.416666666666700000
          129.645833333333300000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 448
        Top = 49
        Width = 10
        Height = 47
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          124.354166666666700000
          1185.333333333333000000
          129.645833333333300000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 78
        Top = 71
        Width = 10
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          206.375000000000000000
          187.854166666666700000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 139
        Top = 71
        Width = 10
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          367.770833333333400000
          187.854166666666700000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 538
        Top = 49
        Width = 10
        Height = 47
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          124.354166666666700000
          1423.458333333333000000
          129.645833333333300000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 644
        Top = 49
        Width = 10
        Height = 47
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          124.354166666666700000
          1703.916666666667000000
          129.645833333333300000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel32: TQRLabel
        Left = 483
        Top = 62
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1277.937500000000000000
          164.041666666666700000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35268#26684
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRL_bch_ls: TQRLabel
        Left = 577
        Top = 32
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1526.645833333333000000
          84.666666666666680000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_bch_ls'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand3: TQRBand
      Left = 19
      Top = 133
      Width = 650
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
        58.208333333333340000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText7: TQRDBText
        Left = 5
        Top = 3
        Width = 22
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          13.229166666666670000
          7.937500000000000000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_zxjl_ls
        DataField = 'ksrq'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText11: TQRDBText
        Left = 85
        Top = 3
        Width = 38
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          224.895833333333300000
          7.937500000000000000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_zxjl_ls
        DataField = 'kdysmc'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText12: TQRDBText
        Left = 144
        Top = 3
        Width = 39
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          381.000000000000000000
          7.937500000000000000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_zxjl_ls
        DataField = 'zxhsmc'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText13: TQRDBText
        Left = 737
        Top = 11
        Width = 733
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1950.000000000000000000
          30.000000000000000000
          1940.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_zxjl_ls
        DataField = 'xmmc'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText15: TQRDBText
        Left = 571
        Top = 2
        Width = 21
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1510.770833333333000000
          5.291666666666667000
          55.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_zxjl_ls
        DataField = 'gysj'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText18: TQRDBText
        Left = 461
        Top = 2
        Width = 80
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1219.729166666667000000
          5.291666666666667000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_zxjl_ls
        DataField = 'gg'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText16: TQRDBText
        Left = 199
        Top = 3
        Width = 253
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          526.520833333333400000
          7.937500000000000000
          669.395833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_zxjl_ls
        DataField = 'xmmc'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape21: TQRShape
        Left = 0
        Top = 15
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
          39.687500000000000000
          1719.791666666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
  end
  object ds_zxjl_cq: TDataSource
    DataSet = sp_zxjl_cq
    Left = 448
    Top = 192
  end
  object qry_dj: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'zyh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'tmh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 9
        Value = Null
      end
      item
        Name = 'ksdm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from zysf_zydj where (zyh=:zyh or tmh like :tmh) and ks' +
        'dm=:ksdm')
    Left = 256
    Top = 160
  end
  object ds_dj: TDataSource
    DataSet = qry_dj
    Left = 256
    Top = 192
  end
  object sp_zxjl_cq: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    ProcedureName = 'zybl_cx_yzzxjl;1'
    Parameters = <
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@fs'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 448
    Top = 152
  end
  object sp_zxjl_ls: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    ProcedureName = 'zybl_cx_yzzxjl;1'
    Parameters = <
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@fs'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 512
    Top = 152
  end
  object ds_zxjl_ls: TDataSource
    DataSet = sp_zxjl_ls
    Left = 512
    Top = 192
  end
end
