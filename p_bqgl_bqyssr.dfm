object frm_yssr: Tfrm_yssr
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #30149#21306#21307#29983#25910#20837#26597#35810
  ClientHeight = 550
  ClientWidth = 795
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 43
    Width = 795
    Height = 507
    Align = alClient
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 2
      Top = 17
      Width = 791
      Height = 488
      Align = alClient
      TabOrder = 2
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds_yysrcx
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = '0.00'
            Kind = skSum
            Position = spFooter
            Column = cxGrid1DBTableView1fyzje
          end
          item
            Kind = skCount
            Position = spFooter
            Column = cxGrid1DBTableView1brxm
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0.00'
            Kind = skSum
            Column = cxGrid1DBTableView1fyzje
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        object cxGrid1DBTableView1srlb: TcxGridDBColumn
          Caption = #25910#20837#31867#21035
          DataBinding.FieldName = 'srlb'
          Visible = False
          GroupIndex = 0
          Options.Filtering = False
          Options.Moving = False
          Width = 80
        end
        object cxGrid1DBTableView1tmh: TcxGridDBColumn
          Caption = #26465#30721#21495
          DataBinding.FieldName = 'tmh'
          Options.Filtering = False
          Options.Grouping = False
          Options.Moving = False
          Width = 67
        end
        object cxGrid1DBTableView1brxm: TcxGridDBColumn
          Caption = #30149#20154#22995#21517
          DataBinding.FieldName = 'brxm'
          Options.Filtering = False
          Options.Grouping = False
          Options.Moving = False
          Width = 64
        end
        object cxGrid1DBTableView1brxb: TcxGridDBColumn
          Caption = #24615#21035
          DataBinding.FieldName = 'brxb'
          Options.Filtering = False
          Options.Grouping = False
          Width = 40
        end
        object cxGrid1DBTableView1kdysmc: TcxGridDBColumn
          Caption = #24320#21333#21307#29983
          DataBinding.FieldName = 'kdysmc'
          Visible = False
          GroupIndex = 1
          Width = 80
        end
        object cxGrid1DBTableView1kdksmc: TcxGridDBColumn
          Caption = #24320#21333#31185#23460
          DataBinding.FieldName = 'kdksmc'
          Width = 80
        end
        object cxGrid1DBTableView1czysmc: TcxGridDBColumn
          Caption = #22788#32622#21307#29983
          DataBinding.FieldName = 'czysmc'
          Width = 80
        end
        object cxGrid1DBTableView1czksmc: TcxGridDBColumn
          Caption = #22788#32622#31185#23460
          DataBinding.FieldName = 'czksmc'
          Width = 80
        end
        object cxGrid1DBTableView1fymc: TcxGridDBColumn
          Caption = #36153#29992#21517#31216
          DataBinding.FieldName = 'fymc'
          Options.Grouping = False
          Width = 80
        end
        object cxGrid1DBTableView1fyzje: TcxGridDBColumn
          Caption = #36153#29992#37329#39069
          DataBinding.FieldName = 'fyzje'
          Options.Grouping = False
          Width = 80
        end
        object cxGrid1DBTableView1sfczymc: TcxGridDBColumn
          Caption = #25910#36153#25805#20316#21592
          DataBinding.FieldName = 'sfczymc'
          Options.Grouping = False
          Width = 80
        end
        object cxGrid1DBTableView1sfrq: TcxGridDBColumn
          Caption = #25910#36153#26085#26399
          DataBinding.FieldName = 'sfrq'
          Options.Grouping = False
          Width = 86
        end
        object cxGrid1DBTableView1sjbh: TcxGridDBColumn
          Caption = #25910#25454#21495
          DataBinding.FieldName = 'sjbh'
          Options.Grouping = False
          Width = 80
        end
        object cxGrid1DBTableView1tfczymc: TcxGridDBColumn
          Caption = #36864#36153#25805#20316#21592
          DataBinding.FieldName = 'tfczymc'
          Options.Grouping = False
          Width = 80
        end
        object cxGrid1DBTableView1tfbz: TcxGridDBColumn
          Caption = #36864#36153#26631#24535
          DataBinding.FieldName = 'tfbz'
          Options.Grouping = False
          Width = 80
        end
        object cxGrid1DBTableView1zfbz: TcxGridDBColumn
          Caption = #20316#24223#26631#24535
          DataBinding.FieldName = 'zfbz'
          Options.Grouping = False
          Width = 80
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object rep_hz: TQuickRep
      Left = 389
      Top = 1000
      Width = 688
      Height = 971
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
      Page.PaperSize = B5
      Page.Values = (
        100.000000000000000000
        2570.000000000000000000
        100.000000000000000000
        1820.000000000000000000
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
      object QRBand2: TQRBand
        Left = 38
        Top = 123
        Width = 612
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
          1619.250000000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbDetail
        object QRDBText2: TQRDBText
          Left = 91
          Top = 1
          Width = 142
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            240.770833333333300000
            2.645833333333333000
            375.708333333333400000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataField = 'mc'
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
          Left = 406
          Top = 1
          Width = 163
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            1074.208333333333000000
            2.645833333333333000
            431.270833333333400000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataField = 'fyje'
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
        object QRDBText12: TQRDBText
          Left = 10
          Top = 1
          Width = 79
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            26.458333333333330000
            2.645833333333333000
            209.020833333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataField = 'ysdm'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText13: TQRDBText
          Left = 244
          Top = 0
          Width = 149
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            645.583333333333400000
            0.000000000000000000
            394.229166666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataField = 'fysl'
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
      object QRBand3: TQRBand
        Left = 38
        Top = 38
        Width = 612
        Height = 85
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
          224.895833333333300000
          1619.250000000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbColumnHeader
        object QRLabel17: TQRLabel
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
          Caption = #30149#21306#21307#29983#25910#20837#27719#24635
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
        object QRShape9: TQRShape
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
        object QRShape10: TQRShape
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
        object QRLabel18: TQRLabel
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
          Caption = #30149#21306#21517#31216':'
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
        object qrl_hzbq: TQRLabel
          Left = 80
          Top = 40
          Width = 121
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            211.666666666666700000
            105.833333333333300000
            320.145833333333400000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #30149#21306#21517#31216':'
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
        object QRExpr2: TQRExpr
          Left = 456
          Top = 40
          Width = 113
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333340000
            1206.500000000000000000
            105.833333333333300000
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
        object QRShape11: TQRShape
          Left = 1
          Top = 57
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
            150.812500000000000000
            1894.416666666667000000)
          Shape = qrsHorLine
          VertAdjust = 0
        end
        object QRSysData2: TQRSysData
          Left = 576
          Top = 40
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
            105.833333333333300000
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
        object qrl_hzsj: TQRLabel
          Left = 205
          Top = 40
          Width = 248
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            542.395833333333400000
            105.833333333333300000
            656.166666666666800000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #30149#21306#21517#31216':'
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
        object QRLabel19: TQRLabel
          Left = 20
          Top = 64
          Width = 57
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            52.916666666666670000
            169.333333333333300000
            150.812500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #36153#29992#20195#30721
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel20: TQRLabel
          Left = 122
          Top = 64
          Width = 53
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            322.791666666666700000
            169.333333333333300000
            140.229166666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #36153#29992#21517#31216
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
        object QRLabel22: TQRLabel
          Left = 288
          Top = 64
          Width = 53
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            762.000000000000000000
            169.333333333333300000
            140.229166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #36153#29992#25968#37327
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
        object QRLabel23: TQRLabel
          Left = 456
          Top = 64
          Width = 53
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1206.500000000000000000
            169.333333333333300000
            140.229166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #36153#29992#37329#39069
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
        object QRShape7: TQRShape
          Left = 1
          Top = 81
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
            214.312500000000000000
            1894.416666666667000000)
          Shape = qrsHorLine
          VertAdjust = 0
        end
      end
      object QRBand4: TQRBand
        Left = 38
        Top = 141
        Width = 612
        Height = 20
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
          52.916666666666670000
          1619.250000000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbSummary
        object QRShape12: TQRShape
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
        object QRExpr3: TQRExpr
          Left = 240
          Top = 3
          Width = 361
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333340000
            635.000000000000000000
            7.937500000000000000
            955.145833333333500000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          Color = clWhite
          ParentFont = False
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = 
            #39#25968#37327#27719#24635':'#39'+str(SUM(qry_kdczhz.fysl))+'#39'  '#37329#39069#27719#24635':'#39'+str(sum(qry_kdczhz.f' +
            'yje))'
          FontSize = 11
        end
      end
    end
    object rep_dryphz: TQuickRep
      Left = -445
      Top = 1000
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
          Left = 83
          Top = 1
          Width = 262
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            219.604166666666700000
            2.645833333333333000
            693.208333333333400000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataField = 'fymc'
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
          Left = 405
          Top = 1
          Width = 86
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            1071.562500000000000000
            2.645833333333333000
            227.541666666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataField = 'fysl'
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
          Left = 494
          Top = 1
          Width = 73
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            1307.041666666667000000
            2.645833333333333000
            193.145833333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataField = 'fyje'
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
          Left = 570
          Top = 1
          Width = 145
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            1508.125000000000000000
            2.645833333333333000
            383.645833333333400000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataField = 'sfrq'
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
          Left = 2
          Top = 1
          Width = 79
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            5.291666666666667000
            2.645833333333333000
            209.020833333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataField = 'fydm'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText4: TQRDBText
          Left = 348
          Top = 0
          Width = 54
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            920.750000000000000000
            0.000000000000000000
            142.875000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataField = 'lb'
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
        Expression = 'qry_kdczmx.ysdm'
        FooterBand = QRBand1
        Master = rep_dryphz
        ReprintOnNewPage = False
        object QRDBText3: TQRDBText
          Left = 80
          Top = 8
          Width = 97
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            211.666666666666700000
            21.166666666666670000
            256.645833333333400000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataField = 'mc'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 11
        end
        object QRShape3: TQRShape
          Left = 1
          Top = 24
          Width = 191
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
            505.354166666666700000)
          Shape = qrsHorLine
          VertAdjust = 0
        end
        object QRLabel3: TQRLabel
          Left = 186
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
            492.125000000000000000
            84.666666666666670000
            140.229166666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #36153#29992#21517#31216
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
          Left = 10
          Top = 32
          Width = 57
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            26.458333333333330000
            84.666666666666670000
            150.812500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #36153#29992#20195#30721
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel9: TQRLabel
          Left = 424
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
            1121.833333333333000000
            84.666666666666670000
            140.229166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #36153#29992#25968#37327
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
          Left = 504
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
            1333.500000000000000000
            84.666666666666670000
            140.229166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #36153#29992#37329#39069
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
          Left = 4
          Top = 8
          Width = 74
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            10.583333333333330000
            21.166666666666670000
            195.791666666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #21307#29983#21517#31216':'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 11
        end
        object QRLabel5: TQRLabel
          Left = 605
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
            1600.729166666667000000
            84.666666666666670000
            140.229166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #25910#36153#26085#26399
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
          Left = 356
          Top = 32
          Width = 39
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            941.916666666666700000
            84.666666666666670000
            103.187500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #31867#21035':'
          Color = clWhite
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
          Caption = #30149#21306#21307#29983#25910#20837#26126#32454
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
          Caption = #30149#21306#21517#31216':'
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
        object qrl_bqmc: TQRLabel
          Left = 80
          Top = 40
          Width = 121
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            211.666666666666700000
            105.833333333333300000
            320.145833333333400000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #30149#21306#21517#31216':'
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
          Left = 456
          Top = 40
          Width = 113
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333340000
            1206.500000000000000000
            105.833333333333300000
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
          Top = 40
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
            105.833333333333300000
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
        object qrl_sj: TQRLabel
          Left = 205
          Top = 40
          Width = 248
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            542.395833333333400000
            105.833333333333300000
            656.166666666666800000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #30149#21306#21517#31216':'
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
    object Button2: TButton
      Left = 608
      Top = 31
      Width = 113
      Height = 25
      Caption = #23548#20986#25968#25454#21040'(&EXCEL)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 795
    Height = 43
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 38
      Height = 15
      Caption = #21307#29983':'
    end
    object Label2: TLabel
      Left = 157
      Top = 16
      Width = 38
      Height = 15
      Caption = #26102#38388':'
    end
    object Label3: TLabel
      Left = 306
      Top = 16
      Width = 15
      Height = 15
      Caption = #21040
    end
    object Button1: TButton
      Left = 613
      Top = 12
      Width = 75
      Height = 25
      Caption = #26597#35810'(&Q)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object dtp_ks: TDateTimePicker
      Left = 197
      Top = 12
      Width = 105
      Height = 23
      Date = 38852.468250868060000000
      Time = 38852.468250868060000000
      TabOrder = 2
    end
    object dtp_js: TDateTimePicker
      Left = 325
      Top = 12
      Width = 105
      Height = 23
      Date = 38852.468250868060000000
      Time = 38852.468250868060000000
      TabOrder = 3
    end
    object Button3: TButton
      Left = 703
      Top = 12
      Width = 75
      Height = 25
      Caption = #36820#22238'(&B)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button3Click
    end
    object rb_cz: TRadioButton
      Left = 498
      Top = 18
      Width = 49
      Height = 17
      Caption = #22788#32622
      TabOrder = 4
    end
    object rb_kd: TRadioButton
      Left = 443
      Top = 18
      Width = 49
      Height = 17
      Caption = #24320#21333
      Checked = True
      TabOrder = 5
      TabStop = True
    end
    object db_ys: TDBLookupComboBox
      Left = 48
      Top = 12
      Width = 94
      Height = 23
      KeyField = 'dm'
      ListField = 'mc'
      ListSource = ds_ysdm
      TabOrder = 6
    end
  end
  object sp_yysrcx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'bqgl_cx_yssrmx;1'
    Parameters = <
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = #39#39
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = #39#39
      end
      item
        Name = '@ysdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = #39#39
      end
      item
        Name = '@czlb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = '1'
      end>
    Left = 416
    Top = 144
  end
  object ds_yysrcx: TDataSource
    DataSet = sp_yysrcx
    Left = 456
    Top = 144
  end
  object qry_ysdm: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'cxysdm'
        DataType = ftString
        Size = 2
        Value = #39#39
      end>
    SQL.Strings = (
      'select * from sys_czy where ksdm=:cxysdm and ysbz=1')
    Left = 312
    Top = 144
  end
  object ds_ysdm: TDataSource
    DataSet = qry_ysdm
    Left = 272
    Top = 144
  end
  object SaveDialog1: TSaveDialog
    Left = 224
    Top = 144
  end
end
