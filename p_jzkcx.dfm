object frm_jzkcx: Tfrm_jzkcx
  Left = 0
  Top = 0
  Caption = #23601#35786#21345#26597#35810
  ClientHeight = 505
  ClientWidth = 1010
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cts_mx: TcxPageControl
    Left = 0
    Top = 0
    Width = 1010
    Height = 505
    ActivePage = cxTabSheet1
    Align = alClient
    TabOrder = 0
    ClientRectBottom = 505
    ClientRectRight = 1010
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = #23601#35786#21345#27719#24635#32479#35745
      ImageIndex = 0
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1010
        Height = 481
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object Panel4: TPanel
          Left = 2
          Top = 2
          Width = 1006
          Height = 55
          Align = alTop
          TabOrder = 0
          object cb_close1: TcxButton
            Left = 713
            Top = 14
            Width = 75
            Height = 25
            Caption = #36864#20986'(&X)'
            TabOrder = 0
            OnClick = cb_close1Click
          end
          object cxLabel3: TcxLabel
            Left = 246
            Top = 18
            Caption = #21040
          end
          object cxLabel4: TcxLabel
            Left = 12
            Top = 18
            Caption = #26597#35810#26085#26399':'
          end
          object cb_dy: TcxButton
            Left = 610
            Top = 14
            Width = 75
            Height = 25
            Caption = #25171#21360'(&P)'
            TabOrder = 3
            OnClick = cb_dyClick
          end
          object DateTimePicker1: TDateTimePicker
            Left = 78
            Top = 14
            Width = 163
            Height = 24
            Date = 36867.745792511560000000
            Time = 36867.745792511560000000
            TabOrder = 4
          end
          object DateTimePicker2: TDateTimePicker
            Left = 266
            Top = 14
            Width = 162
            Height = 24
            Date = 36867.746220104170000000
            Time = 36867.746220104170000000
            TabOrder = 5
          end
          object cb_cx1: TcxButton
            Left = 505
            Top = 14
            Width = 75
            Height = 25
            Caption = #32479#35745'(&T)'
            TabOrder = 6
            OnClick = cb_cx1Click
          end
        end
        object cxGrid2: TcxGrid
          Left = 2
          Top = 57
          Width = 1006
          Height = 422
          Align = alClient
          TabOrder = 1
          object cxGrid2DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ds_tj_kgl
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = '0.00'
                Column = cxGrid2DBTableView1yjje
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'cqkfksl'
                Column = cxGrid2DBTableView1cqkfksl
              end
              item
                Kind = skSum
                FieldName = 'cqkfkje'
                Column = cxGrid2DBTableView1cqkfkje
              end
              item
                Kind = skSum
                FieldName = 'cqktksl'
                Column = cxGrid2DBTableView1cqktksl
              end
              item
                Kind = skSum
                FieldName = 'cqktkje'
                Column = cxGrid2DBTableView1cqktkje
              end
              item
                Kind = skSum
                FieldName = 'lskfksl'
                Column = cxGrid2DBTableView1lskfksl
              end
              item
                Kind = skSum
                FieldName = 'lskfkje'
                Column = cxGrid2DBTableView1lskfkje
              end
              item
                Kind = skSum
                FieldName = 'lsktksl'
                Column = cxGrid2DBTableView1lsktksl
              end
              item
                Kind = skSum
                FieldName = 'lsktkje'
                Column = cxGrid2DBTableView1lsktkje
              end
              item
                Kind = skSum
                FieldName = 'yjje'
                Column = cxGrid2DBTableView1yjje
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellMultiSelect = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.StyleSheet = GridTableViewStyleSheetUserFormat2
            object cxGrid2DBTableView1czy: TcxGridDBColumn
              Caption = #25805#20316#21592
              DataBinding.FieldName = 'czy'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid2DBTableView1tjrq: TcxGridDBColumn
              Caption = #32479#35745#26085#26399
              DataBinding.FieldName = 'tjrq'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              Width = 125
            end
            object cxGrid2DBTableView1cqkfksl: TcxGridDBColumn
              Caption = #38271#26399#21345#21457#21345#37327
              DataBinding.FieldName = 'cqkfksl'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 81
            end
            object cxGrid2DBTableView1cqkfkje: TcxGridDBColumn
              Caption = #38271#26399#21345#21457#21345#37329#39069
              DataBinding.FieldName = 'cqkfkje'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 95
            end
            object cxGrid2DBTableView1cqktksl: TcxGridDBColumn
              Caption = #38271#26399#21345#36864#21345#37327
              DataBinding.FieldName = 'cqktksl'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 81
            end
            object cxGrid2DBTableView1cqktkje: TcxGridDBColumn
              Caption = #38271#26399#21345#36864#21345#37329#39069
              DataBinding.FieldName = 'cqktkje'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 95
            end
            object cxGrid2DBTableView1lskfksl: TcxGridDBColumn
              Caption = #20020#26102#21345#21457#21345#37327
              DataBinding.FieldName = 'lskfksl'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 81
            end
            object cxGrid2DBTableView1lskfkje: TcxGridDBColumn
              Caption = #20020#26102#21345#21457#21345#37329#39069
              DataBinding.FieldName = 'lskfkje'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 95
            end
            object cxGrid2DBTableView1lsktksl: TcxGridDBColumn
              Caption = #20020#26102#21345#36864#21345#37327
              DataBinding.FieldName = 'lsktksl'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 81
            end
            object cxGrid2DBTableView1lsktkje: TcxGridDBColumn
              Caption = #20020#26102#21345#36864#21345#37329#39069
              DataBinding.FieldName = 'lsktkje'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 95
            end
            object cxGrid2DBTableView1yjje: TcxGridDBColumn
              Caption = #24212#32564#37329#39069
              DataBinding.FieldName = 'yjje'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Width = 90
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #23601#35786#21345#26126#32454
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1010
        Height = 481
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object Panel2: TPanel
          Left = 2
          Top = 2
          Width = 1006
          Height = 71
          Align = alTop
          TabOrder = 0
          object cb_close: TcxButton
            Left = 640
            Top = 24
            Width = 75
            Height = 25
            Caption = #36864#20986'(&X)'
            TabOrder = 0
            OnClick = cb_closeClick
          end
          object ccb_cq: TcxCheckBox
            Left = 78
            Top = 43
            Caption = #38271#26399#23601#35786#21345#24037#26412#36153
            TabOrder = 1
            Width = 134
          end
          object cxLabel1: TcxLabel
            Left = 246
            Top = 18
            Caption = #21040
          end
          object cxLabel2: TcxLabel
            Left = 12
            Top = 18
            Caption = #26597#35810#26085#26399':'
          end
          object ccb_ls: TcxCheckBox
            Left = 266
            Top = 43
            Caption = #20020#26102#23601#35786#21345#25276#37329
            TabOrder = 4
            Width = 129
          end
          object cb_cx: TcxButton
            Left = 472
            Top = 24
            Width = 75
            Height = 25
            Caption = #26597#35810'(&F)'
            TabOrder = 5
            OnClick = cb_cxClick
          end
          object dtp_ks: TDateTimePicker
            Left = 78
            Top = 14
            Width = 163
            Height = 24
            Date = 36867.745792511560000000
            Time = 36867.745792511560000000
            TabOrder = 6
          end
          object dtp_js: TDateTimePicker
            Left = 266
            Top = 14
            Width = 162
            Height = 24
            Date = 36867.746220104170000000
            Time = 36867.746220104170000000
            TabOrder = 7
          end
        end
        object cxGrid1: TcxGrid
          Left = 2
          Top = 73
          Width = 1006
          Height = 406
          Align = alClient
          TabOrder = 1
          object cxGrid1DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ds_cx
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'kh'
                Column = cxGrid1DBTableView1kh
              end
              item
                Kind = skSum
                FieldName = 'kdj'
                Column = cxGrid1DBTableView1kdj
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellMultiSelect = True
            OptionsView.Footer = True
            Styles.GroupByBox = cxStyle7
            Styles.Header = cxStyle8
            Styles.StyleSheet = GridTableViewStyleSheetUserFormat2
            object cxGrid1DBTableView1jkczymc: TcxGridDBColumn
              Caption = #24314#21345#20154#21592#21517#31216
              DataBinding.FieldName = 'jkczymc'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 100
              Width = 120
            end
            object cxGrid1DBTableView1klbmc: TcxGridDBColumn
              Caption = #21345#31867#21035
              DataBinding.FieldName = 'klbmc'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 100
              Width = 110
            end
            object cxGrid1DBTableView1kh: TcxGridDBColumn
              Caption = #21345#21495
              DataBinding.FieldName = 'kh'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 100
              Width = 110
            end
            object cxGrid1DBTableView1kdj: TcxGridDBColumn
              Caption = #21345#21333#20215
              DataBinding.FieldName = 'kdj'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 70
              Width = 70
            end
            object cxGrid1DBTableView1sjbh: TcxGridDBColumn
              Caption = #25910#25454#21495
              DataBinding.FieldName = 'sjbh'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 80
              Width = 100
            end
            object cxGrid1DBTableView1jkrq: TcxGridDBColumn
              Caption = #24314#21345#26085#26399
              DataBinding.FieldName = 'jkrq'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 130
              Width = 135
            end
            object cxGrid1DBTableView1tkbz: TcxGridDBColumn
              Caption = #36864#21345#26631#24535
              DataBinding.FieldName = 'tkbz'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 80
            end
            object cxGrid1DBTableView1tkczymc: TcxGridDBColumn
              Caption = #36864#21345#20154#21592#21517#31216
              DataBinding.FieldName = 'tkczymc'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 100
              Width = 120
            end
            object cxGrid1DBTableView1tkrq: TcxGridDBColumn
              Caption = #36864#21345#26085#26399
              DataBinding.FieldName = 'tkrq'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 130
              Width = 135
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
    end
  end
  object QuickRep1: TQuickRep
    Left = 80
    Top = 168
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = sp_tj_kgl
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
      Top = 138
      Width = 718
      Height = 27
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
        71.437500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 14
        Top = 4
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          37.041666666666670000
          10.583333333333330000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_tj_kgl
        DataField = 'czy'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 116
        Top = 4
        Width = 42
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          306.916666666666700000
          10.583333333333330000
          111.125000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_tj_kgl
        DataField = 'cqkfksl'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 210
        Top = 4
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          555.625000000000000000
          10.583333333333330000
          113.770833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_tj_kgl
        DataField = 'cqktksl'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 390
        Top = 4
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1031.875000000000000000
          10.583333333333330000
          100.541666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_tj_kgl
        DataField = 'lskfksl'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 669
        Top = 4
        Width = 23
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1770.062500000000000000
          10.583333333333330000
          60.854166666666680000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_tj_kgl
        DataField = 'yjje'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape3: TQRShape
        Left = 5
        Top = 25
        Width = 710
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          13.229166666666700000
          66.145833333333300000
          1878.541666666670000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText6: TQRDBText
        Left = 486
        Top = 4
        Width = 39
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
          103.187500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_tj_kgl
        DataField = 'lsktksl'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 299
        Top = 4
        Width = 42
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          791.104166666666800000
          10.583333333333330000
          111.125000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_tj_kgl
        DataField = 'cqkyjje'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 583
        Top = 4
        Width = 38
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1542.520833333333000000
          10.583333333333330000
          100.541666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_tj_kgl
        DataField = 'lskyjje'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 100
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
        264.583333333333400000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel2: TQRLabel
        Left = 8
        Top = 77
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          203.729166666666700000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#21592#22995#21517
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 95
        Top = 77
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          251.354166666666700000
          203.729166666666700000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38271#26399#21345#21457#21345#37327
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object yymc: TQRLabel
        Left = 334
        Top = 28
        Width = 49
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          883.708333333333400000
          74.083333333333340000
          129.645833333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'yymc'
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
      object QRShape1: TQRShape
        Left = 4
        Top = 72
        Width = 711
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          10.583333333333300000
          190.500000000000000000
          1881.187500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 4
        Top = 98
        Width = 711
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          10.583333333333300000
          259.291666666667000000
          1881.187500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel1: TQRLabel
        Left = 197
        Top = 77
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          521.229166666666800000
          203.729166666666700000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38271#26399#21345#36864#21345#37327
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 368
        Top = 77
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          973.666666666666900000
          203.729166666666700000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20020#26102#21345#21457#21345#37327
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 474
        Top = 77
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1254.125000000000000000
          203.729166666666700000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20020#26102#21345#36864#21345#37327
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 649
        Top = 77
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1717.145833333333000000
          203.729166666666700000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24212#32564#37329#39069
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object rq: TQRLabel
        Left = 18
        Top = 52
        Width = 15
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          47.625000000000000000
          137.583333333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'rq'
        Color = clWhite
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
      object QRLabel4: TQRLabel
        Left = 299
        Top = 77
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          791.104166666666800000
          203.729166666666700000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38271#26399#21345#37329#39069
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel5: TQRLabel
        Left = 580
        Top = 77
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1534.583333333333000000
          203.729166666666700000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20020#26102#21345#37329#39069
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 238
      Width = 718
      Height = 31
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
        82.020833333333340000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 165
      Width = 718
      Height = 73
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
        193.145833333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRShape4: TQRShape
        Left = 4
        Top = 23
        Width = 711
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          10.583333333333300000
          60.854166666666700000
          1881.187500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRExpr6: TQRExpr
        Left = 633
        Top = 4
        Width = 59
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1674.812500000000000000
          10.583333333333330000
          156.104166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(yjje)'
        FontSize = 9
      end
      object QRExpr3: TQRExpr
        Left = 357
        Top = 4
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          944.562500000000000000
          10.583333333333330000
          187.854166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(lskfksl)'
        FontSize = 10
      end
      object QRExpr2: TQRExpr
        Left = 83
        Top = 4
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          219.604166666666700000
          10.583333333333330000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(cqkfksl)'
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 18
        Top = 4
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          47.625000000000000000
          10.583333333333330000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21512#35745
        Color = clWhite
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
      object QRExpr7: TQRExpr
        Left = 177
        Top = 4
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          468.312500000000100000
          10.583333333333330000
          201.083333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(cqktksl)'
        FontSize = 10
      end
      object zbr: TQRLabel
        Left = 531
        Top = 26
        Width = 22
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1404.937500000000000000
          68.791666666666680000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'zbr'
        Color = clWhite
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
      object QRExpr5: TQRExpr
        Left = 453
        Top = 4
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1198.562500000000000000
          10.583333333333330000
          190.500000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(lsktksl)'
        FontSize = 10
      end
      object dyrq: TQRLabel
        Left = 18
        Top = 26
        Width = 29
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          47.625000000000000000
          68.791666666666680000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'dyrq'
        Color = clWhite
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
      object QRExpr1: TQRExpr
        Left = 261
        Top = 4
        Width = 80
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          690.562500000000000000
          10.583333333333330000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(cqkyjje)'
        FontSize = 9
      end
      object QRExpr4: TQRExpr
        Left = 545
        Top = 4
        Width = 76
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1441.979166666667000000
          10.583333333333330000
          201.083333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(lskyjje)'
        FontSize = 9
      end
    end
  end
  object qry_cx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ksrq'
        DataType = ftDateTime
        Size = 10
        Value = Null
      end
      item
        Name = 'jsrq'
        DataType = ftDateTime
        Size = 10
        Value = Null
      end
      item
        Name = 'klb_cq'
        DataType = ftString
        Size = 2
        Value = '01'
      end
      item
        Name = 'klb_ls'
        DataType = ftString
        Size = 2
        Value = '01'
      end>
    SQL.Strings = (
      
        'select a.*,b.mc jkczymc,c.mc tkczymc,d.mc klbmc from sys_kgl_fkm' +
        'x a'
      'join sys_czy b on a.jkczy=b.dm'
      'left join sys_czy c on a.tkczy=c.dm'
      'join sys_sjlb d on a.klb=d.dm'
      
        'where convert(char(10),jkrq,120)>=convert(char(10),:ksrq,120) an' +
        'd '
      'convert(char(10),jkrq,120)<=convert(char(10),:jsrq,120)'
      'and klb in (:klb_cq,:klb_ls)'
      'order by jkczy,klb,jkrq')
    Left = 88
    Top = 107
    object qry_cxkh: TStringField
      FieldName = 'kh'
      Size = 12
    end
    object qry_cxklb: TStringField
      FieldName = 'klb'
      FixedChar = True
      Size = 2
    end
    object qry_cxkdj: TBCDField
      FieldName = 'kdj'
      Precision = 18
      Size = 2
    end
    object qry_cxsjbh: TIntegerField
      FieldName = 'sjbh'
    end
    object qry_cxjkczy: TStringField
      FieldName = 'jkczy'
      FixedChar = True
      Size = 4
    end
    object qry_cxjkrq: TDateTimeField
      FieldName = 'jkrq'
    end
    object qry_cxbkbz: TBooleanField
      FieldName = 'bkbz'
    end
    object qry_cxtkbz: TBooleanField
      FieldName = 'tkbz'
    end
    object qry_cxtkczy: TStringField
      FieldName = 'tkczy'
      FixedChar = True
      Size = 4
    end
    object qry_cxtkrq: TDateTimeField
      FieldName = 'tkrq'
    end
    object qry_cxjkczymc: TStringField
      FieldName = 'jkczymc'
      Size = 10
    end
    object qry_cxtkczymc: TStringField
      FieldName = 'tkczymc'
      Size = 10
    end
    object qry_cxklbmc: TStringField
      FieldName = 'klbmc'
      FixedChar = True
      Size = 16
    end
  end
  object ds_cx: TDataSource
    DataSet = qry_cx
    Left = 138
    Top = 105
  end
  object cxStyleRepository1: TcxStyleRepository
    object cxStyle1: TcxStyle
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9234160
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11788021
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11193702
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5737262
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5736750
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4615972
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15136253
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7346457
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = 7346457
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16436871
      TextColor = clBlack
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 8036607
      TextColor = clBlack
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8894686
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12180223
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 1262987
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8894686
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8894686
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Garamond'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14264494
      TextColor = clBlack
    end
    object cxStyle26: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15521240
      TextColor = clBlack
    end
    object cxStyle27: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14264494
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle28: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11619930
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle29: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle30: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14264494
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Garamond'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle31: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11619930
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle32: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14264494
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle33: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11619930
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 11619930
    end
    object cxStyle34: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11619930
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle35: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle36: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 11639171
      TextColor = clBlack
    end
    object cxStyle37: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14273729
      TextColor = clBlack
    end
    object cxStyle38: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11639171
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle39: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8217935
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 14273729
    end
    object cxStyle40: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle41: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11639171
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle42: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8217935
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle43: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11639171
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle44: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 8217935
    end
    object cxStyle45: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8217935
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object GridTableViewStyleSheetUserFormat2: TcxGridTableViewStyleSheet
      Caption = 'UserFormat2'
      Styles.Content = cxStyle2
      Styles.ContentEven = cxStyle3
      Styles.ContentOdd = cxStyle4
      Styles.Inactive = cxStyle9
      Styles.Selection = cxStyle12
      Styles.Footer = cxStyle5
      Styles.Group = cxStyle6
      Styles.GroupByBox = cxStyle7
      Styles.Header = cxStyle8
      Styles.Indicator = cxStyle10
      Styles.Preview = cxStyle11
      BuiltIn = True
    end
  end
  object sp_tj_kgl: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'mzgh_tj_kgl_fkl;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 16
    Top = 104
    object sp_tj_kglczy: TStringField
      FieldName = 'czy'
      ReadOnly = True
    end
    object sp_tj_kgltjrq: TDateTimeField
      FieldName = 'tjrq'
      ReadOnly = True
    end
    object sp_tj_kglcqkfksl: TIntegerField
      FieldName = 'cqkfksl'
      ReadOnly = True
    end
    object sp_tj_kglcqkfkje: TBCDField
      FieldName = 'cqkfkje'
      ReadOnly = True
      DisplayFormat = '0.00'
      Precision = 32
      Size = 2
    end
    object sp_tj_kglcqktksl: TIntegerField
      FieldName = 'cqktksl'
      ReadOnly = True
    end
    object sp_tj_kglcqktkje: TBCDField
      FieldName = 'cqktkje'
      ReadOnly = True
      DisplayFormat = '0.00'
      Precision = 32
      Size = 2
    end
    object sp_tj_kgllskfksl: TIntegerField
      FieldName = 'lskfksl'
      ReadOnly = True
    end
    object sp_tj_kgllskfkje: TBCDField
      FieldName = 'lskfkje'
      ReadOnly = True
      DisplayFormat = '0.00'
      Precision = 32
      Size = 2
    end
    object sp_tj_kgllsktksl: TIntegerField
      FieldName = 'lsktksl'
      ReadOnly = True
    end
    object sp_tj_kgllsktkje: TBCDField
      FieldName = 'lsktkje'
      ReadOnly = True
      DisplayFormat = '0.00'
      Precision = 32
      Size = 2
    end
    object sp_tj_kglyjje: TBCDField
      FieldName = 'yjje'
      ReadOnly = True
      DisplayFormat = '0.00'
      Precision = 32
      Size = 2
    end
    object sp_tj_kglcqkyjje: TBCDField
      FieldName = 'cqkyjje'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object sp_tj_kgllskyjje: TBCDField
      FieldName = 'lskyjje'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
  end
  object ds_tj_kgl: TDataSource
    DataSet = sp_tj_kgl
    Left = 50
    Top = 105
  end
end
