object frm_cx_byyzxyz: Tfrm_cx_byyzxyz
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #21307#22065#26597#35810#31383#21475
  ClientHeight = 523
  ClientWidth = 854
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 854
    Height = 482
    Align = alClient
    BevelInner = bvLowered
    Caption = 'Panel1'
    TabOrder = 0
    object cxGrid3: TcxGrid
      Left = 2
      Top = 2
      Width = 850
      Height = 478
      HelpType = htKeyword
      HelpKeyword = 'H'
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      RootLevelOptions.DetailFrameWidth = 1
      object cxGridDBTableView3: TcxGridDBTableView
        OnDblClick = cxGridDBTableView3DblClick
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = True
        NavigatorButtons.PriorPage.Visible = True
        NavigatorButtons.Prior.Visible = True
        NavigatorButtons.Next.Visible = True
        NavigatorButtons.NextPage.Visible = True
        NavigatorButtons.Last.Visible = True
        NavigatorButtons.Insert.Visible = True
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Post.Visible = True
        NavigatorButtons.Cancel.Visible = True
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = True
        NavigatorButtons.GotoBookmark.Visible = True
        NavigatorButtons.Filter.Visible = True
        DataController.DataSource = ds_yzmx
        DataController.DetailKeyFieldNames = 'brxm'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <
          item
            Links = <>
            SummaryItems = <>
          end>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        object cxGridDBTableView3brxm: TcxGridDBColumn
          Caption = #30149#20154#22995#21517
          DataBinding.FieldName = 'brxm'
          Visible = False
          GroupIndex = 0
        end
        object cxGridDBTableView3yzsx: TcxGridDBColumn
          Caption = #21307#22065#23646#24615
          DataBinding.FieldName = 'yzsx'
          Visible = False
          GroupIndex = 1
        end
        object cxGridDBTableView3lb: TcxGridDBColumn
          Caption = #31867#21035
          DataBinding.FieldName = 'lb'
          Visible = False
          GroupIndex = 2
          HeaderAlignmentHorz = taCenter
          SortIndex = 0
          SortOrder = soAscending
          Width = 36
        end
        object cxGridDBTableView3zxrq: TcxGridDBColumn
          Caption = #25191#34892#26102#38388
          DataBinding.FieldName = 'zxrq'
          HeaderAlignmentHorz = taCenter
          Width = 94
        end
        object cxGridDBTableView3ysmc: TcxGridDBColumn
          Caption = #21307#29983
          Width = 53
        end
        object cxGridDBTableView3zxry: TcxGridDBColumn
          Caption = #25252#22763
          DataBinding.FieldName = 'zxry'
          Width = 50
        end
        object cxGridDBTableView3xmmc: TcxGridDBColumn
          Caption = #39033#30446#21517#31216
          DataBinding.FieldName = 'xmmc'
          HeaderAlignmentHorz = taCenter
          Width = 163
        end
        object cxGridDBTableView3sl: TcxGridDBColumn
          Caption = #25968#37327
          DataBinding.FieldName = 'sl'
          HeaderAlignmentHorz = taCenter
          Width = 40
        end
        object cxGridDBTableView3dw: TcxGridDBColumn
          Caption = #21333#20301
          DataBinding.FieldName = 'dw'
          HeaderAlignmentHorz = taCenter
          Width = 43
        end
        object cxGridDBTableView3ypyf: TcxGridDBColumn
          Caption = #29992#27861
          DataBinding.FieldName = 'ypyf'
          HeaderAlignmentHorz = taCenter
          Width = 36
        end
        object cxGridDBTableView3ypyl: TcxGridDBColumn
          Caption = #29992#37327
          DataBinding.FieldName = 'ypyl'
          HeaderAlignmentHorz = taCenter
          Width = 40
        end
        object cxGridDBTableView3yldw: TcxGridDBColumn
          DataBinding.FieldName = 'yldw'
          HeaderAlignmentHorz = taCenter
          Width = 22
          IsCaptionAssigned = True
        end
        object cxGridDBTableView3yytj: TcxGridDBColumn
          Caption = #29992#33647#36884#24452
          DataBinding.FieldName = 'yytj'
          HeaderAlignmentHorz = taCenter
          Width = 69
        end
        object cxGridDBTableView3tzrq: TcxGridDBColumn
          Caption = #20572#27490#26102#38388
          DataBinding.FieldName = 'tzrq'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView3tzry: TcxGridDBColumn
          Caption = #20572#27490#21307#29983
          Width = 67
        end
      end
      object cxGridLevel3: TcxGridLevel
        GridView = cxGridDBTableView3
        Options.DetailFrameWidth = 0
      end
    end
  end
  object rep_dryphz: TQuickRep
    Left = 52
    Top = 221
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
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
    PrevFormStyle = fsStayOnTop
    PreviewInitialState = wsMaximized
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoomToFit
    object DetailBand1: TQRBand
      Left = 38
      Top = 150
      Width = 718
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
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 4
        Top = 1
        Width = 301
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          10.583333333333330000
          2.645833333333333000
          796.395833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'xmmc'
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
      object QRDBText2: TQRDBText
        Left = 308
        Top = 1
        Width = 32
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          814.916666666666800000
          2.645833333333333000
          84.666666666666680000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'sl'
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
      object QRDBText5: TQRDBText
        Left = 551
        Top = 1
        Width = 80
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1457.854166666667000000
          2.645833333333333000
          211.666666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'kssj'
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
      object QRDBText6: TQRDBText
        Left = 381
        Top = 1
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1008.062500000000000000
          2.645833333333333000
          100.541666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'ypyf'
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
      object QRDBText7: TQRDBText
        Left = 422
        Top = 1
        Width = 36
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1116.541666666667000000
          2.645833333333333000
          95.250000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'ypyl'
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
      object QRDBText8: TQRDBText
        Left = 458
        Top = 1
        Width = 31
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1211.791666666667000000
          2.645833333333333000
          82.020833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'yldw'
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
      object QRDBText9: TQRDBText
        Left = 491
        Top = 1
        Width = 60
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1299.104166666667000000
          2.645833333333333000
          158.750000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'yytj'
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
      object QRDBText10: TQRDBText
        Left = 633
        Top = 1
        Width = 80
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1674.812500000000000000
          2.645833333333333000
          211.666666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'yjjssj'
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
      object QRDBText4: TQRDBText
        Left = 340
        Top = 1
        Width = 40
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          899.583333333333400000
          2.645833333333333000
          105.833333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'dw'
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
    object QRGroup2: TQRGroup
      Left = 38
      Top = 97
      Width = 718
      Height = 53
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
        140.229166666666700000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'sp_yzmx.ph'
      FooterBand = QRBand1
      Master = rep_dryphz
      ReprintOnNewPage = False
      object QRDBText3: TQRDBText
        Left = 80
        Top = 9
        Width = 135
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          211.666666666666700000
          23.812500000000000000
          357.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'ph'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape3: TQRShape
        Left = 1
        Top = 24
        Width = 344
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333330000
          2.645833333333333000
          63.500000000000000000
          910.166666666666600000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel3: TQRLabel
        Left = 108
        Top = 32
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          285.750000000000000000
          84.666666666666670000
          89.958333333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21517' '#31216
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
      object QRLabel4: TQRLabel
        Left = 311
        Top = 32
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          822.854166666666700000
          84.666666666666670000
          71.437500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25968#37327
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
      object QRLabel5: TQRLabel
        Left = 562
        Top = 32
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1486.958333333333000000
          84.666666666666670000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25191#34892#26085#26399
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
      object QRLabel6: TQRLabel
        Left = 348
        Top = 32
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          920.750000000000000000
          84.666666666666670000
          71.437500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21333#20301
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
      object QRShape4: TQRShape
        Left = 1
        Top = 48
        Width = 716
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333330000
          2.645833333333333000
          127.000000000000000000
          1894.416666666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel8: TQRLabel
        Left = 495
        Top = 32
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1309.687500000000000000
          84.666666666666670000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #29992#33647#36884#24452
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
      object QRLabel9: TQRLabel
        Left = 387
        Top = 32
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1023.937500000000000000
          84.666666666666670000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #29992#27861
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
      object QRLabel10: TQRLabel
        Left = 442
        Top = 32
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1169.458333333333000000
          84.666666666666670000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #29992#37327
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
      object QRLabel14: TQRLabel
        Left = 5
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
          13.229166666666670000
          21.166666666666670000
          182.562500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25191#34892#25209#21495':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel1: TQRLabel
        Left = 648
        Top = 32
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1714.500000000000000000
          84.666666666666670000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32467#26463#26102#38388
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
      object QRLabel7: TQRLabel
        Left = 214
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
          566.208333333333300000
          21.166666666666670000
          182.562500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24320#21333#21307#29983':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText11: TQRDBText
        Left = 285
        Top = 8
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          754.062500000000000000
          21.166666666666670000
          179.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'ysmc'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 59
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
        156.104166666666700000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel2: TQRLabel
        Left = 8
        Top = 5
        Width = 656
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          21.166666666666670000
          13.229166666666670000
          1735.666666666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #30149#21592#21382#21490#21307#22065#26126#32454#34920
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -21
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRShape1: TQRShape
        Left = 218
        Top = 25
        Width = 235
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333330000
          576.791666666666800000
          66.145833333333340000
          621.770833333333400000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 218
        Top = 28
        Width = 235
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333330000
          576.791666666666800000
          74.083333333333340000
          621.770833333333400000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel11: TQRLabel
        Left = 8
        Top = 40
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          105.833333333333300000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30149#21592#22995#21517':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRExpr1: TQRExpr
        Left = 464
        Top = 41
        Width = 113
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1227.666666666667000000
          108.479166666666700000
          298.979166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = #39#31532#39'+STR(PAGENUMBER)+'#39#39029' '#25171#21360#26102#38388':'#39
        FontSize = 9
      end
      object QRShape5: TQRShape
        Left = 1
        Top = 55
        Width = 716
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333330000
          2.645833333333333000
          145.520833333333300000
          1894.416666666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRSysData1: TQRSysData
        Left = 576
        Top = 41
        Width = 73
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1524.000000000000000000
          108.479166666666700000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 9
      end
      object QRLabel17: TQRLabel
        Left = 221
        Top = 40
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          584.729166666666700000
          105.833333333333300000
          103.187500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26085#26399':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel18: TQRLabel
        Left = 267
        Top = 40
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          706.437500000000000000
          105.833333333333300000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #29992#33647#26085#26399':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel19: TQRLabel
        Left = 352
        Top = 40
        Width = 16
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          931.333333333333300000
          105.833333333333300000
          42.333333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21040
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel20: TQRLabel
        Left = 376
        Top = 40
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          994.833333333333300000
          105.833333333333300000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #29992#33647#26085#26399':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText12: TQRDBText
        Left = 83
        Top = 37
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          219.604166666666700000
          97.895833333333320000
          179.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'brxm'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 168
      Width = 718
      Height = 8
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
        21.166666666666670000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRShape6: TQRShape
        Left = 1
        Top = -1
        Width = 716
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333330000
          2.645833333333333000
          -2.645833333333333000
          1894.416666666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object Label2: TLabel
      Left = 4
      Top = 15
      Width = 68
      Height = 15
      Caption = #25191#34892#26102#38388':'
    end
    object Label3: TLabel
      Left = 178
      Top = 15
      Width = 15
      Height = 15
      Caption = #21040
    end
    object Label4: TLabel
      Left = 343
      Top = 14
      Width = 38
      Height = 15
      Caption = #30149#21592':'
    end
    object Button1: TButton
      Left = 488
      Top = 8
      Width = 70
      Height = 25
      Caption = #26597#35810'(&S)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 578
      Top = 8
      Width = 68
      Height = 25
      Caption = #25171#21360'(&P)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 766
      Top = 9
      Width = 66
      Height = 25
      Caption = #36864#20986'(&E)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 72
      Top = 10
      Width = 105
      Height = 23
      Date = 38773.626130821760000000
      Time = 38773.626130821760000000
      TabOrder = 3
      OnChange = DateTimePicker1Change
    end
    object DateTimePicker2: TDateTimePicker
      Left = 194
      Top = 10
      Width = 105
      Height = 23
      Date = 38773.626130821760000000
      Time = 38773.626130821760000000
      TabOrder = 4
      OnChange = DateTimePicker2Change
    end
    object ComboBox1: TComboBox
      Left = 382
      Top = 10
      Width = 95
      Height = 23
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 15
      ParentCtl3D = False
      TabOrder = 5
      OnChange = ComboBox1Change
    end
    object Button4: TButton
      Left = 674
      Top = 8
      Width = 68
      Height = 25
      Caption = #23548#20986'(&T)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button4Click
    end
  end
  object ds_brxx: TDataSource
    Left = 112
    Top = 152
  end
  object cmd_up_lszyyz: TADOCommand
    CommandText = 'zybl_up_lszyyz;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@ph'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 9
        Value = Null
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@kdks'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@kdys'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@yzsx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 160
    Top = 152
  end
  object sp_brxx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_cx_zybrbq;1'
    Parameters = <
      item
        Name = '@sr_bqdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 320
    Top = 152
  end
  object qry_yz: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'cxyzrq'
        Attributes = [paSigned, paNullable]
        DataType = ftDateTime
        Precision = 10
        Size = 4
        Value = 0d
      end
      item
        Name = 'cxzyh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'cxyzsx'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'cxlb'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from zybl_zyyz where datediff(day,yzrq,:cxyzrq)=0 and z' +
        'yh=:cxzyh and yzsx=:cxyzsx and lb=:cxlb and zxbz=0')
    Left = 280
    Top = 152
  end
  object qry_pub: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'cxyzrq'
        Attributes = [paSigned, paNullable]
        DataType = ftDateTime
        Precision = 10
        Size = 4
        Value = 0d
      end
      item
        Name = 'cxzyh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'cxyzsx'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'cxlb'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from zybl_zyyz where datediff(day,yzrq,:cxyzrq)=0 and z' +
        'yh=:cxzyh and yzsx=:cxyzsx and lb=:cxlb and zxbz=0')
    Left = 360
    Top = 152
  end
  object ds_yzmx: TDataSource
    Left = 248
    Top = 152
  end
  object sp_yzmx: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_cx_yzxyzxm;1'
    Parameters = <
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@kssj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end
      item
        Name = '@jssj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end>
    Left = 200
    Top = 152
  end
end
