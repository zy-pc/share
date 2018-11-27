object Frm_zyplcffy: TFrm_zyplcffy
  Left = 63
  Top = 81
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #33647#21697#25209#37327#36890#30693
  ClientHeight = 550
  ClientWidth = 987
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 176
    Top = 8
    Width = 48
    Height = 15
    Caption = 'Label1'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 987
    Height = 550
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #25209#37327#36890#30693
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 265
        Height = 519
        Align = alLeft
        Caption = #30149#21592#21450#22788#26041
        TabOrder = 0
        object DBGridEh2: TDBGridEh
          Left = 2
          Top = 48
          Width = 261
          Height = 469
          Align = alClient
          DataSource = DS_zb
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          OnCellClick = DBGridEh2CellClick
          OnDrawColumnCell = DBGridEh2DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'xzbz'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #36873#25321
              Width = 33
            end
            item
              EditButtons = <>
              FieldName = 'yfmc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #33647#25151
              Width = 55
            end
            item
              EditButtons = <>
              FieldName = 'yybch'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #30149#24202#21495
              Width = 43
            end
            item
              EditButtons = <>
              FieldName = 'brxm'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #30149#20154#22995#21517
              Width = 61
            end
            item
              EditButtons = <>
              FieldName = 'yzsx'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #21307#22065#23646#24615
            end
            item
              EditButtons = <>
              FieldName = 'cfbh'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #22788#26041#32534#21495
              Width = 125
            end>
        end
        object Panel9: TPanel
          Left = 2
          Top = 17
          Width = 261
          Height = 31
          Align = alTop
          TabOrder = 1
          object Label53: TLabel
            Left = 83
            Top = 11
            Width = 25
            Height = 9
            AutoSize = False
            Color = 8421631
            ParentColor = False
          end
          object Label2: TLabel
            Left = 2
            Top = 8
            Width = 75
            Height = 15
            Caption = #40635#37257#65292#31934#19968
          end
          object Label3: TLabel
            Left = 109
            Top = 8
            Width = 30
            Height = 15
            Caption = #31934#20108
          end
          object Label4: TLabel
            Left = 145
            Top = 11
            Width = 25
            Height = 9
            AutoSize = False
            Color = 16777088
            ParentColor = False
          end
          object BitBtn1: TBitBtn
            Left = 193
            Top = 1
            Width = 67
            Height = 29
            Align = alRight
            Caption = #20840#36873
            TabOrder = 0
            OnClick = BitBtn1Click
          end
        end
      end
      object Panel3: TPanel
        Left = 265
        Top = 0
        Width = 714
        Height = 519
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 1
        object Panel4: TPanel
          Left = 2
          Top = 2
          Width = 710
          Height = 52
          Align = alTop
          BevelInner = bvLowered
          TabOrder = 0
          object Label5: TLabel
            Left = 426
            Top = 18
            Width = 60
            Height = 15
            Caption = #21307#22065#23646#24615
          end
          object b_ok: TBitBtn
            Left = 107
            Top = 8
            Width = 83
            Height = 38
            Caption = #20840#37096#36890#30693
            Enabled = False
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = b_okClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333333333333333333333333333FFFFF3333333333CCCCC33
              33333FFFF77777FFFFFFCCCCCC808CCCCCC377777737F777777F008888070888
              8003773FFF7773FFF77F0F0770F7F0770F037F777737F777737F70FFFFF7FFFF
              F07373F3FFF7F3FFF37F70F000F7F000F07337F77737F777373330FFFFF7FFFF
              F03337FF3FF7F3FF37F3370F00F7F00F0733373F7737F77337F3370FFFF7FFFF
              0733337F33373F337333330FFF030FFF03333373FF7373FF7333333000333000
              3333333777333777333333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333}
            NumGlyphs = 2
          end
          object b_gr: TBitBtn
            Left = 4
            Top = 8
            Width = 83
            Height = 38
            Caption = #21333#20010#36890#30693
            Enabled = False
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = b_grClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555500000000
              0555555F7777777775F55500FFFFFFFFF0555577F5FFFFFFF7F550F0FEEEEEEE
              F05557F7F777777757F550F0FFFFFFFFF05557F7F5FFFFFFF7F550F0FEEEEEEE
              F05557F7F777777757F550F0FF777FFFF05557F7F5FFFFFFF7F550F0FEEEEEEE
              F05557F7F777777757F550F0FF7F777FF05557F7F5FFFFFFF7F550F0FEEEEEEE
              F05557F7F777777757F550F0FF77F7FFF05557F7F5FFFFFFF7F550F0FEEEEEEE
              F05557F7F777777757F550F0FFFFFFFFF05557F7FF5F5F5F57F550F00F0F0F0F
              005557F77F7F7F7F77555055070707070555575F7F7F7F7F7F55550507070707
              0555557575757575755555505050505055555557575757575555}
            NumGlyphs = 2
          end
          object b_xz: TBitBtn
            Left = 206
            Top = 8
            Width = 83
            Height = 38
            Caption = #36873#25321#36890#30693
            Enabled = False
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = b_xzClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333333333333333333333333333FFFFF3333333333CCCCC33
              33333FFFF77777FFFFFFCCCCCC808CCCCCC377777737F777777F008888070888
              8003773FFF7773FFF77F0F0770F7F0770F037F777737F777737F70FFFFF7FFFF
              F07373F3FFF7F3FFF37F70F000F7F000F07337F77737F777373330FFFFF7FFFF
              F03337FF3FF7F3FF37F3370F00F7F00F0733373F7737F77337F3370FFFF7FFFF
              0733337F33373F337333330FFF030FFF03333373FF7373FF7333333000333000
              3333333777333777333333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333}
            NumGlyphs = 2
          end
          object b_kfy: TBitBtn
            Left = 295
            Top = 8
            Width = 125
            Height = 38
            Caption = #21482#36890#30693#21475#26381#33647#22788#26041
            Enabled = False
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = b_kfyClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333333333333333333333333333FFFFF3333333333CCCCC33
              33333FFFF77777FFFFFFCCCCCC808CCCCCC377777737F777777F008888070888
              8003773FFF7773FFF77F0F0770F7F0770F037F777737F777737F70FFFFF7FFFF
              F07373F3FFF7F3FFF37F70F000F7F000F07337F77737F777373330FFFFF7FFFF
              F03337FF3FF7F3FF37F3370F00F7F00F0733373F7737F77337F3370FFFF7FFFF
              0733337F33373F337333330FFF030FFF03333373FF7373FF7333333000333000
              3333333777333777333333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333}
            NumGlyphs = 2
          end
          object yzsx: TComboBox
            Left = 490
            Top = 15
            Width = 79
            Height = 23
            AutoComplete = False
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ItemHeight = 15
            TabOrder = 4
            OnChange = yzsxChange
            Items.Strings = (
              #20840#37096
              #38271#26399
              #20020#26102)
          end
        end
        object DBGridEh1: TDBGridEh
          Left = 2
          Top = 54
          Width = 710
          Height = 463
          Align = alClient
          DataSource = DS_mx
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'cfbh'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #22788#26041#32534#21495
            end
            item
              EditButtons = <>
              FieldName = 'ypmc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #33647#21697#21517#31216
              Width = 195
            end
            item
              EditButtons = <>
              FieldName = 'ypgg'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #33647#21697#35268#26684
              Width = 114
            end
            item
              EditButtons = <>
              FieldName = 'ypdw'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #21333#20301
              Width = 47
            end
            item
              EditButtons = <>
              FieldName = 'ypsl'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #25968#37327
              Width = 67
            end
            item
              EditButtons = <>
              FieldName = 'yf'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #29992#27861
            end>
        end
        object QuickRep2: TQuickRep
          Left = -6
          Top = 3000
          Width = 504
          Height = 688
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = SP_cfmx
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
          Page.PaperSize = Custom
          Page.Values = (
            100.000000000000000000
            1820.333333333333000000
            100.000000000000000000
            1333.500000000000000000
            20.000000000000000000
            20.000000000000000000
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
          PreviewWidth = 800
          PrevInitialZoom = qrZoomToFit
          PreviewDefaultSaveType = stQRP
          object DetailBand1: TQRBand
            Left = 8
            Top = 169
            Width = 489
            Height = 30
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
              79.375000000000000000
              1293.812500000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBText1: TQRDBText
              Left = 5
              Top = 8
              Width = 187
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
                494.770833333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = SP_cfmx
              DataField = 'ypmc'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 9
            end
            object QRDBText2: TQRDBText
              Left = 214
              Top = 8
              Width = 101
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
                267.229166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = SP_cfmx
              DataField = 'ypgg'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 9
            end
            object QRDBText3: TQRDBText
              Left = 339
              Top = 8
              Width = 43
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                896.937500000000000000
                21.166666666666670000
                113.770833333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = SP_cfmx
              DataField = 'ypdw'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 9
            end
            object QRDBText4: TQRDBText
              Left = 389
              Top = 8
              Width = 43
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1029.229166666667000000
                21.166666666666670000
                113.770833333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = SP_cfmx
              DataField = 'ypsl'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 9
            end
            object QRDBText5: TQRDBText
              Left = 457
              Top = 8
              Width = 9
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1209.145833333333000000
                21.166666666666670000
                23.812500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = SP_cfmx
              DataField = 'yl'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 9
            end
            object QRDBText6: TQRDBText
              Left = 515
              Top = 8
              Width = 25
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1362.604166666667000000
                21.166666666666670000
                66.145833333333330000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = SP_cfmx
              DataField = 'yldw'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 9
            end
            object QRDBText7: TQRDBText
              Left = 575
              Top = 8
              Width = 9
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1521.354166666667000000
                21.166666666666670000
                23.812500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = SP_cfmx
              DataField = 'yf'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 9
            end
            object QRDBText8: TQRDBText
              Left = 623
              Top = 8
              Width = 17
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1648.354166666667000000
                21.166666666666670000
                44.979166666666670000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = SP_cfmx
              DataField = 'yytj'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 9
            end
          end
          object PageHeaderBand1: TQRBand
            Left = 8
            Top = 38
            Width = 489
            Height = 131
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
              346.604166666666700000
              1293.812500000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbPageHeader
            object QRLabel30: TQRLabel
              Left = 285
              Top = 6
              Width = 106
              Height = 21
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                55.562500000000000000
                754.062500000000000000
                15.875000000000000000
                280.458333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #39046#33647#21333#26126#32454
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -20
              Font.Name = #40657#20307
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 15
            end
            object qrl_brxm: TQRLabel
              Left = 148
              Top = 39
              Width = 29
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                391.583333333333300000
                103.187500000000000000
                76.729166666666670000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'brxm'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #40657#20307
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object qrl_brnl: TQRLabel
              Left = 282
              Top = 39
              Width = 57
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                746.125000000000000000
                103.187500000000000000
                150.812500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'qrl_brnl'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #40657#20307
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object qrl_bch: TQRLabel
              Left = 460
              Top = 40
              Width = 50
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1217.083333333333000000
                105.833333333333300000
                132.291666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'qrl_bch'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #40657#20307
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object qrl_ksmc: TQRLabel
              Left = 556
              Top = 39
              Width = 57
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1471.083333333333000000
                103.187500000000000000
                150.812500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'qrl_ksmc'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #40657#20307
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object qrl_xb: TQRLabel
              Left = 382
              Top = 39
              Width = 43
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1010.708333333333000000
                103.187500000000000000
                113.770833333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'qrl_xb'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #40657#20307
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object qrl_cfbh: TQRLabel
              Left = 11
              Top = 67
              Width = 25
              Height = 18
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                47.625000000000000000
                29.104166666666670000
                177.270833333333300000
                66.145833333333330000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'cfbh'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object qrl_dyrq: TQRLabel
              Left = 533
              Top = 66
              Width = 47
              Height = 18
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                47.625000000000000000
                1410.229166666667000000
                174.625000000000000000
                124.354166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'qrl_dyrq'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRLabel31: TQRLabel
              Left = 11
              Top = 109
              Width = 52
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                29.104166666666670000
                288.395833333333300000
                137.583333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #33647#21697#21517
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRLabel32: TQRLabel
              Left = 211
              Top = 109
              Width = 35
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                558.270833333333300000
                288.395833333333300000
                92.604166666666670000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #35268#26684
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRLabel33: TQRLabel
              Left = 338
              Top = 109
              Width = 35
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                894.291666666666700000
                288.395833333333300000
                92.604166666666670000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #21333#20301
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRLabel34: TQRLabel
              Left = 389
              Top = 109
              Width = 35
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1029.229166666667000000
                288.395833333333300000
                92.604166666666670000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #25968#37327
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRLabel35: TQRLabel
              Left = 439
              Top = 109
              Width = 35
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1161.520833333333000000
                288.395833333333300000
                92.604166666666670000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #29992#37327
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRLabel36: TQRLabel
              Left = 560
              Top = 109
              Width = 35
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1481.666666666667000000
                288.395833333333300000
                92.604166666666670000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #29992#27861
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRLabel37: TQRLabel
              Left = 485
              Top = 109
              Width = 69
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1283.229166666667000000
                288.395833333333300000
                182.562500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #29992#37327#21333#20301
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRLabel38: TQRLabel
              Left = 604
              Top = 109
              Width = 69
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1598.083333333333000000
                288.395833333333300000
                182.562500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = #29992#33647#36884#24452
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRShape4: TQRShape
              Left = 0
              Top = 95
              Width = 673
              Height = 1
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                2.645833333333333000
                0.000000000000000000
                251.354166666666700000
                1780.645833333333000000)
              Shape = qrsRectangle
              VertAdjust = 0
            end
            object qrl_pldh: TQRLabel
              Left = 169
              Top = 67
              Width = 46
              Height = 18
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                47.625000000000000000
                447.145833333333300000
                177.270833333333300000
                121.708333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'qrl_pldh'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object qrl_tmh: TQRLabel
              Left = 12
              Top = 39
              Width = 22
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                31.750000000000000000
                103.187500000000000000
                58.208333333333330000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'tmh'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #40657#20307
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object qrl_zgysmc: TQRLabel
              Left = 380
              Top = 67
              Width = 47
              Height = 18
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                47.625000000000000000
                1005.416666666667000000
                177.270833333333300000
                124.354166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'zgysmc'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #25171#21360#36890#30693
      ImageIndex = 1
      OnShow = TabSheet2Show
      object Splitter1: TSplitter
        Left = 275
        Top = 0
        Height = 519
        ResizeStyle = rsLine
        ExplicitLeft = 205
        ExplicitHeight = 534
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 275
        Height = 519
        Align = alLeft
        BevelInner = bvLowered
        TabOrder = 0
        object Panel6: TPanel
          Left = 2
          Top = 2
          Width = 271
          Height = 53
          Align = alTop
          Font.Charset = GB2312_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object CheckBox1: TCheckBox
            Left = 12
            Top = 19
            Width = 95
            Height = 17
            Caption = #26174#31034#20840#37096
            TabOrder = 0
            OnClick = CheckBox1Click
          end
          object B_refesh: TBitBtn
            Left = 149
            Top = 8
            Width = 78
            Height = 38
            Caption = #21047#26032
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = B_refeshClick
            Glyph.Data = {
              0E060000424D0E06000000000000360000002800000016000000160000000100
              180000000000D8050000120B0000120B00000000000000000000BFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
              BF00000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000BFBFBFBFBFBF000000000000BFBFBFBFBFBF
              0000BFBFBF7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF0000FF00FFFF0000FF0000
              00BFBFBF0000BFBFBF7F7F7FBFBFBFFFFFFFBFBFBFFFFFFFBFBFBFFFFFFFBFBF
              BFFFFFFFBFBFBFFFFFFFBFBFBFFFFFFFBFBFBF0000000000FF00FFFF0000FF00
              00FF000000BFBFBF0000BFBFBF7F7F7FFFFFFFBFBFBFFFFFFFBFBFBFFFFFFFBF
              BFBFFFFFFFBFBFBFBFBFBF0000000000000000000000000000FF00FFFF0000FF
              0000FF000000BFBFBFBFBFBF0000BFBFBF7F7F7FBFBFBFFFFFFFBFBFBFFFFFFF
              BFBFBFFFFFFFBFBFBFBFBFBF7F7F7F7F7F007F7F007F7F007F7F000000000000
              FF0000FF000000BFBFBFBFBFBFBFBFBF0000BFBFBF7F7F7FFFFFFFBFBFBFFFFF
              FFBFBFBFFFFFFFBFBFBFBFBFBF7F7F7FFFFF00FFFF00FFFF007F7F007F7F007F
              7F00000000000000BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBF7F7F7FBFBFBFFF
              FFFFBFBFBFFFFFFFBFBFBFFFFFFF7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFFFFF00
              7F7F007F7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBF7F7F7F
              FFFFFFBFBFBFFFFFFFBFBFBFFFFFFFBFBFBF7F7F7FBFBFBFFFFFFFBFBFBFBFBF
              BFBFBFBFFFFF007F7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
              BF7F7F7FFFFFFFFFFFFFBFBFBFFFFFFFBFBFBFFFFFFF7F7F7FBFBFBFFFFFFFFF
              FFFFFFFFFFBFBFBFBFBFBFFFFF007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBF
              0000BFBFBF7F7F7FBFBFBFFFFFFFFFFFFFBFBFBFFFFFFFBFBFBF7F7F7FBFBFBF
              FFFFFFFFFFFFFFFFFFBFBFBFBFBFBFFFFF007F7F7F000000BFBFBFBFBFBFBFBF
              BFBFBFBF0000BFBFBF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFFFFFBFBF
              BF7F7F7FBFBFBFFFFFFFFFFFFFFFFFFFBFBFBF7F7F7F000000BFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBF0000BFBFBF7F7F7FFFFFFFBFBFBFFFFFFFBFBFBFFFFFFFBF
              BFBFFFFFFFBFBFBF7F7F7FBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFBFBFBFFFFFFFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7F000000BFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBF7F7F7FFFFFFFFFFFFFFFFF
              FFFFFFFFBFBFBFFFFFFFFFFFFFFFFFFFBFBFBFFFFFFFBFBFBFBFBFBFBFBFBF00
              0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBF7F7F7FFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFFFFF000000000000000000
              000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBF7F7F7F
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFFFFFBFBFBF7F7F7FFFFF
              FFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
              BF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFFFFF7F
              7F7FFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              0000BFBFBF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF7F7F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBF0000BFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000}
          end
        end
        object DBGridEh3: TDBGridEh
          Left = 2
          Top = 55
          Width = 271
          Height = 462
          Align = alClient
          Color = clWhite
          DataSource = DS_ks
          Flat = False
          FooterColor = clYellow
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ReadOnly = True
          SumList.Active = True
          SumList.VirtualRecords = True
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          OnDrawColumnCell = DBGridEh3DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ksmc'
              Footer.Value = #25209#37327#36890#30693#25968
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = #21462#33647#33647#25151
              Width = 82
            end
            item
              EditButtons = <>
              FieldName = 'scsj'
              Footer.Alignment = taCenter
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = #36890#30693#26102#38388
              Width = 138
            end
            item
              EditButtons = <>
              FieldName = 'pldh'
              Footers = <>
              Title.Caption = #25209#37327#21333#21495
              Width = 139
            end
            item
              EditButtons = <>
              FieldName = 'bqlyddy'
              Footers = <>
              Title.Caption = #25171#21360#26631#35782'||'#39046#33647#21333
              Width = 59
            end
            item
              EditButtons = <>
              FieldName = 'bqbyddy'
              Footers = <>
              Title.Caption = #25171#21360#26631#35782'||'#25670#33647#21333
              Width = 54
            end
            item
              EditButtons = <>
              FieldName = 'dybz'
              Footers = <>
              Title.Caption = #25171#21360#26631#35782'||'#33647#25151#25171#21360
            end>
        end
      end
      object Panel2: TPanel
        Left = 278
        Top = 0
        Width = 701
        Height = 519
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 1
        object TJGRID: TDBGridEh
          Left = 10
          Top = 215
          Width = 560
          Height = 527
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ypdm'
              Footers = <>
              Title.Caption = #33647#21697#20195#30721
              Width = 104
            end
            item
              EditButtons = <>
              FieldName = 'ypmc'
              Footers = <>
              Title.Caption = #33647#21697#21517#31216
              Width = 134
            end
            item
              EditButtons = <>
              FieldName = 'ypgg'
              Footers = <>
              Title.Caption = #33647#21697#35268#26684
              Width = 81
            end
            item
              EditButtons = <>
              FieldName = 'ypdw'
              Footers = <>
              Title.Caption = #21333#20301
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'ypsl'
              Footers = <>
              Title.Caption = #21457#33647#25968#37327
              Width = 66
            end>
        end
        object DBGridEh4: TDBGridEh
          Left = 2
          Top = 269
          Width = 697
          Height = 248
          Align = alClient
          DataSource = ds_cfmx
          Flat = False
          FooterColor = clYellow
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FooterRowCount = 1
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ypmc'
              Footer.Value = #33647#21697#25968
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = #33647#21697#21517#31216
              Width = 134
            end
            item
              EditButtons = <>
              FieldName = 'ypgg'
              Footers = <>
              Title.Caption = #35268#26684
              Width = 51
            end
            item
              EditButtons = <>
              FieldName = 'ypdw'
              Footers = <>
              Title.Caption = #21333#20301
              Width = 39
            end
            item
              EditButtons = <>
              FieldName = 'ypsl'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = #25968#37327
              Width = 42
            end
            item
              EditButtons = <>
              FieldName = 'ypdj'
              Footers = <>
              Title.Caption = #21333#20215
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'ypje'
              Footers = <>
              Title.Caption = #37329#39069
              Width = 48
            end
            item
              AutoFitColWidth = False
              EditButtons = <>
              FieldName = 'yl'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #29992#37327
              Width = 40
            end
            item
              AutoFitColWidth = False
              EditButtons = <>
              FieldName = 'yldw'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #29992#37327#21333#20301
              Width = 63
            end
            item
              AutoFitColWidth = False
              EditButtons = <>
              FieldName = 'yf'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #29992#27861
              Width = 42
            end
            item
              AutoFitColWidth = False
              EditButtons = <>
              FieldName = 'yytj'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #29992#33647#36884#24452
            end
            item
              EditButtons = <>
              FieldName = 'kcsl'
              Footers = <>
              Title.Caption = #24211#23384#25968#37327
              Width = 76
            end>
        end
        object Panel5: TPanel
          Left = 2
          Top = 2
          Width = 697
          Height = 52
          Align = alTop
          TabOrder = 2
          object B_dylyd: TBitBtn
            Left = 19
            Top = 7
            Width = 94
            Height = 38
            Caption = #39046#33647#21333#25171#21360
            Enabled = False
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = B_dylydClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
              00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
              8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
              8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
              8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
              03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
              03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
              33333337FFFF7733333333300000033333333337777773333333}
            NumGlyphs = 2
          end
          object b_byddy: TBitBtn
            Left = 127
            Top = 8
            Width = 125
            Height = 38
            Caption = #30149#20154#25670#33647#21333#25171#21360
            Enabled = False
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = b_byddyClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
              00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
              8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
              8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
              8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
              03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
              03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
              33333337FFFF7733333333300000033333333337777773333333}
            NumGlyphs = 2
          end
          object BitBtn2: TBitBtn
            Left = 266
            Top = 8
            Width = 107
            Height = 38
            Caption = #22788#26041#26126#32454#25171#21360
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = BitBtn2Click
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333333333333333333333333333FFFFF3333333333CCCCC33
              33333FFFF77777FFFFFFCCCCCC808CCCCCC377777737F777777F008888070888
              8003773FFF7773FFF77F0F0770F7F0770F037F777737F777737F70FFFFF7FFFF
              F07373F3FFF7F3FFF37F70F000F7F000F07337F77737F777373330FFFFF7FFFF
              F03337FF3FF7F3FF37F3370F00F7F00F0733373F7737F77337F3370FFFF7FFFF
              0733337F33373F337333330FFF030FFF03333373FF7373FF7333333000333000
              3333333777333777333333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333}
            NumGlyphs = 2
          end
          object BitBtn3: TBitBtn
            Left = 390
            Top = 8
            Width = 123
            Height = 38
            Caption = #25209#37327#30149#20154#33647#21697#27719#24635
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = BitBtn3Click
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333333333333333333333333333FFFFF3333333333CCCCC33
              33333FFFF77777FFFFFFCCCCCC808CCCCCC377777737F777777F008888070888
              8003773FFF7773FFF77F0F0770F7F0770F037F777737F777737F70FFFFF7FFFF
              F07373F3FFF7F3FFF37F70F000F7F000F07337F77737F777373330FFFFF7FFFF
              F03337FF3FF7F3FF37F3370F00F7F00F0733373F7737F77337F3370FFFF7FFFF
              0733337F33373F337333330FFF030FFF03333373FF7373FF7333333000333000
              3333333777333777333333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333}
            NumGlyphs = 2
          end
        end
        object Panel7: TPanel
          Left = 2
          Top = 54
          Width = 697
          Height = 215
          Align = alTop
          TabOrder = 3
          object DBGridEh5: TDBGridEh
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 689
            Height = 207
            Align = alClient
            DataSource = ds_cfzb
            Flat = False
            FooterColor = clYellow
            FooterFont.Charset = GB2312_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -15
            FooterFont.Name = #23435#20307
            FooterFont.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = GB2312_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = #23435#20307
            TitleFont.Style = []
            OnDrawColumnCell = DBGridEh5DrawColumnCell
            Columns = <
              item
                EditButtons = <>
                FieldName = 'brxm'
                Footer.Value = #22788#26041#25968
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #22995#21517
                Width = 112
              end
              item
                EditButtons = <>
                FieldName = 'bch'
                Footer.Alignment = taRightJustify
                Footers = <
                  item
                  end
                  item
                  end
                  item
                  end>
                Title.Alignment = taCenter
                Title.Caption = #30149#24202
                Width = 40
              end
              item
                EditButtons = <>
                FieldName = 'cfbh'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #22788#26041#21495
                Width = 122
              end
              item
                EditButtons = <>
                FieldName = 'sfbz'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #25910#36153
                Width = 90
              end
              item
                EditButtons = <>
                FieldName = 'fybzmc'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #21457#33647
                Width = 98
              end>
          end
        end
      end
    end
  end
  object b_close: TBitBtn
    Left = 846
    Top = 37
    Width = 83
    Height = 38
    Caption = #32467#26463
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = b_closeClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object QuickRep3: TQuickRep
    Left = 263
    Top = 3000
    Width = 901
    Height = 688
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
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
      1820.333333333333000000
      100.000000000000000000
      2383.895833333333000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = True
    PrinterSettings.UseCustomBinCode = True
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = True
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
      Left = 38
      Top = 38
      Width = 825
      Height = 253
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
        669.395833333333300000
        2182.812500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel11: TQRLabel
        Left = 184
        Top = 16
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          486.833333333333300000
          42.333333333333330000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #33647#21697#39046#33647#21333
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
      object QRShape1: TQRShape
        Left = 8
        Top = 56
        Width = 602
        Height = 162
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          428.625000000000000000
          21.166666666666670000
          148.166666666666700000
          1592.791666666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel12: TQRLabel
        Left = 41
        Top = 67
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          108.479166666666700000
          177.270833333333300000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25209#37327#21333#21495':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel13: TQRLabel
        Left = 375
        Top = 67
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          992.187500000000000000
          177.270833333333300000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30149#21306':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 41
        Top = 103
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          108.479166666666700000
          272.520833333333300000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25209#37327#29983#25104#26102#38388':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 375
        Top = 103
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          992.187500000000000000
          272.520833333333300000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39046#33647#33647#25151':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 41
        Top = 174
        Width = 121
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          108.479166666666700000
          460.375000000000000000
          320.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39046#33647#20154':'#65288#31614#23383#65289
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 375
        Top = 174
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          992.187500000000000000
          460.375000000000000000
          235.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21457#33647#20154#31614#23383':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qr_dysj: TQRLabel
        Left = 333
        Top = 224
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          881.062500000000000000
          592.666666666666700000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25171#21360#26102#38388#65306
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qr_pldh: TQRLabel
        Left = 124
        Top = 67
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          328.083333333333300000
          177.270833333333300000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qr_pldh'
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
      object qr_bqmc: TQRLabel
        Left = 431
        Top = 67
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1140.354166666667000000
          177.270833333333300000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qr_bqmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qr_plscrq: TQRLabel
        Left = 152
        Top = 103
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          402.166666666666700000
          272.520833333333300000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qr_plscrq'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qr_lyyf: TQRLabel
        Left = 454
        Top = 103
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1201.208333333333000000
          272.520833333333300000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qr_lyyf'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel19: TQRLabel
        Left = 41
        Top = 137
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          108.479166666666700000
          362.479166666666700000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22788#26041#37329#39069':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qr_cfje: TQRLabel
        Left = 124
        Top = 137
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          328.083333333333300000
          362.479166666666700000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qr_cfje'
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
      object QRLabel20: TQRLabel
        Left = 375
        Top = 137
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          992.187500000000000000
          362.479166666666700000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22788#26041#25968':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qr_cfsl: TQRLabel
        Left = 438
        Top = 137
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1158.875000000000000000
          362.479166666666700000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qr_cfsl'
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
      object qrl_brxx: TQRLabel
        Left = 41
        Top = 33
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          108.479166666666700000
          87.312500000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'brl_brxx'
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
  end
  object QuickRep1: TQuickRep
    Left = 105
    Top = 3000
    Width = 820
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep1BeforePrint
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
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
      2794.000000000000000000
      100.000000000000000000
      2170.000000000000000000
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
    Units = Pixels
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 744
      Height = 66
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
        174.625000000000000000
        1968.500000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object bt1: TQRLabel
        Left = 360
        Top = 7
        Width = 23
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          952.500000000000000000
          18.520833333333330000
          60.854166666666670000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'bt'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 16
      end
      object ks: TQRLabel
        Left = 8
        Top = 42
        Width = 17
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          21.166666666666670000
          111.125000000000000000
          44.979166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ks'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object qssj: TQRLabel
        Left = 491
        Top = 42
        Width = 33
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1299.104166666667000000
          111.125000000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qssj'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object zs: TQRLabel
        Left = 213
        Top = 42
        Width = 17
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          563.562500000000000000
          111.125000000000000000
          44.979166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'zs'
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
      object QRLabepldh: TQRLabel
        Left = 282
        Top = 42
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          746.125000000000000000
          111.125000000000000000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_pldh'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 104
      Width = 744
      Height = 24
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
        63.500000000000000000
        1968.500000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupHeader
      object QRLabel1: TQRLabel
        Left = 48
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
          127.000000000000000000
          10.583333333333330000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #33647#21697#21517#31216
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
      object QRLabel2: TQRLabel
        Left = 264
        Top = 4
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          698.500000000000000000
          10.583333333333330000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35268#26684
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
        Left = 416
        Top = 4
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1100.666666666667000000
          10.583333333333330000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25968#37327
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
      object QRLabel3: TQRLabel
        Left = 520
        Top = 4
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1375.833333333333000000
          10.583333333333330000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21333#20301
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
        Left = 608
        Top = 4
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1608.666666666667000000
          10.583333333333330000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21333#20215
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
        Left = 672
        Top = 4
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1778.000000000000000000
          10.583333333333330000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#39069
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
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 128
      Width = 744
      Height = 22
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
        58.208333333333330000
        1968.500000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      FooterBand = QRBand3
      HeaderBand = QRBand2
      OnNeedData = QRSubDetail1NeedData
      PrintBefore = False
      PrintIfEmpty = True
      object ypmc: TQRLabel
        Left = 56
        Top = 1
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          148.166666666666700000
          2.645833333333333000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ypmc'
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
      object ypgg: TQRLabel
        Left = 264
        Top = 1
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          698.500000000000000000
          2.645833333333333000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ypgg'
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
      object ypsl: TQRLabel
        Left = 425
        Top = 1
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1124.479166666667000000
          2.645833333333333000
          87.312500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ypsl'
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
      object ypdw: TQRLabel
        Left = 523
        Top = 1
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1383.770833333333000000
          2.645833333333333000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ypdw'
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
      object dj: TQRLabel
        Left = 611
        Top = 1
        Width = 17
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1616.604166666667000000
          2.645833333333333000
          44.979166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'dj'
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
      object je: TQRLabel
        Left = 715
        Top = 1
        Width = 17
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1891.770833333333000000
          2.645833333333333000
          44.979166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'je'
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
      object xh: TQRLabel
        Left = 12
        Top = 2
        Width = 17
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          5.291666666666667000
          44.979166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'xh'
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
    object QRSubDetail2: TQRSubDetail
      Left = 38
      Top = 313
      Width = 744
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
        1968.500000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      FooterBand = QRBand3
      HeaderBand = QRBand4
      OnNeedData = QRSubDetail2NeedData
      PrintBefore = False
      PrintIfEmpty = True
      object tmh: TQRLabel
        Left = 11
        Top = 2
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          5.291666666666667000
          58.208333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'tmh'
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
      object ypmc1: TQRLabel
        Left = 168
        Top = 2
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          444.500000000000000000
          5.291666666666667000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ypmc1'
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
      object ypgg1: TQRLabel
        Left = 352
        Top = 2
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          931.333333333333300000
          5.291666666666667000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ypgg1'
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
      object ypsl1: TQRLabel
        Left = 504
        Top = 2
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1333.500000000000000000
          5.291666666666667000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ypsl1'
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
      object ypdw1: TQRLabel
        Left = 600
        Top = 2
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1587.500000000000000000
          5.291666666666667000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ypdw1'
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
      object ypje: TQRLabel
        Left = 696
        Top = 2
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1841.500000000000000000
          5.291666666666667000
          76.729166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ypje'
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
      object brxm: TQRLabel
        Left = 80
        Top = 2
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
          5.291666666666667000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'brxm'
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
    object QRBand4: TQRBand
      Left = 38
      Top = 287
      Width = 744
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
        1968.500000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupHeader
      object QRLabel7: TQRLabel
        Left = 168
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
          444.500000000000000000
          10.583333333333330000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #33647#21697#21517#31216
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
      object QRLabel8: TQRLabel
        Left = 360
        Top = 4
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          952.500000000000000000
          10.583333333333330000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35268#26684
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
        Left = 512
        Top = 4
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1354.666666666667000000
          10.583333333333330000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25968#37327
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
      object QRLabel10: TQRLabel
        Left = 600
        Top = 4
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1587.500000000000000000
          10.583333333333330000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21333#20301
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
        Left = 688
        Top = 4
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1820.333333333333000000
          10.583333333333330000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#39069
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
      object QRLabel21: TQRLabel
        Left = 8
        Top = 4
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          10.583333333333330000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21345#21495
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
      object QRLabel22: TQRLabel
        Left = 80
        Top = 4
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          211.666666666666700000
          10.583333333333330000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995#21517
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
      object QRShape2: TQRShape
        Left = 4
        Top = 24
        Width = 744
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          10.583333333333300000
          63.500000000000000000
          1968.500000000000000000)
        Shape = qrsTopAndBottom
        VertAdjust = 0
      end
    end
    object ChildBand1: TQRChildBand
      Left = 38
      Top = 335
      Width = 744
      Height = 43
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
        113.770833333333300000
        1968.500000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = QRSubDetail2
      PrintOrder = cboAfterParent
      object QRLabel23: TQRLabel
        Left = 8
        Top = 8
        Width = 33
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
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21345#21495
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
      object QRLabel24: TQRLabel
        Left = 80
        Top = 8
        Width = 33
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
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995#21517
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
      object QRLabel25: TQRLabel
        Left = 168
        Top = 8
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          444.500000000000000000
          21.166666666666670000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #33647#21697#21517#31216
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
      object QRLabel26: TQRLabel
        Left = 360
        Top = 8
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          952.500000000000000000
          21.166666666666670000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35268#26684
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
        Left = 512
        Top = 8
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1354.666666666667000000
          21.166666666666670000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25968#37327
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
        Left = 600
        Top = 8
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1587.500000000000000000
          21.166666666666670000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21333#20301
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
        Left = 688
        Top = 8
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1820.333333333333000000
          21.166666666666670000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#39069
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
      object QRShape3: TQRShape
        Left = 4
        Top = 33
        Width = 744
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          10.583333333333300000
          87.312500000000000000
          1968.500000000000000000)
        Shape = qrsTopAndBottom
        VertAdjust = 0
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 150
      Width = 744
      Height = 137
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand3BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = QRSubDetail1
      Size.Values = (
        362.479166666666700000
        1968.500000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object bt: TQRLabel
        Left = 361
        Top = 68
        Width = 21
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          955.145833333333300000
          179.916666666666700000
          55.562500000000000000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'bt'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
      object ks1: TQRLabel
        Left = 16
        Top = 109
        Width = 21
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          42.333333333333330000
          288.395833333333300000
          55.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ks'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
      object dysj: TQRLabel
        Left = 360
        Top = 109
        Width = 41
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          952.500000000000000000
          288.395833333333300000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'dysj'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
      object jsbz: TQRLabel
        Left = 703
        Top = 43
        Width = 41
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1860.020833333333000000
          113.770833333333300000
          108.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'jsbz'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
      object QRLabel_pjhj: TQRLabel
        Left = 536
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
          1418.166666666667000000
          21.166666666666670000
          256.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel_pjhj'
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
    object QRBand5: TQRBand
      Left = 38
      Top = 378
      Width = 744
      Height = 50
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
        132.291666666666700000
        1968.500000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object jsbz1: TQRLabel
        Left = 693
        Top = 7
        Width = 51
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1833.562500000000000000
          18.520833333333330000
          134.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'jsbz1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
    end
  end
  object Panel8: TPanel
    Left = 148
    Top = 5
    Width = 740
    Height = 17
    BevelOuter = bvNone
    Caption = #35831#27880#24847#65306#36873#25321#26631#24535#21482#36866#29992#20110#36873#25321#25209#37327#36890#30693#65292#32039#24613#25209#37327#36890#30693#28857#36873#22788#26041#34892#36827#34892#36890#30693#12290#35831#24403#26085#25209#37327#24403#26085#39046#33647#23436#25104','#36926#26399#33647#25151#35270#20026#26080#25928#20973#21333
    Font.Charset = GB2312_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DS_zb: TDataSource
    DataSet = Qry_zb
    Left = 311
    Top = 304
  end
  object DS_mx: TDataSource
    DataSet = ad_tzcfmx
    Left = 365
    Top = 281
  end
  object Qry_zb: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    AfterScroll = Qry_zbAfterScroll
    Parameters = <
      item
        Name = 'bqdm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = '0013'
      end>
    SQL.Strings = (
      'if object_id('#39'tempdb..#lsb'#39') is not null '
      'drop table #lsb'
      ''
      
        'select distinct convert(bit,0) xzbz,a.cfzje,a.yzsx,c.kssj,a.cfbh' +
        ',b.*,c.pldh,c.tzbz,c.jjtz,d.mc yfmc,e.mc ksmc,'
      
        'f.yybch,case when sfjsyp=1 then '#39#31934#31070#33647#21697#39'  when sfdmyp=1 then  '#39#27602#24615#33647 +
        #21697#39' when  sfmzyp=1 then  '#39#40635#37257#33647#21697#39' else'
      #39#26222#36890#33647#21697#39' end yplb   '
      'into #lsb '
      
        ' from  zyxyf_zycfzb a,zysf_zydj b,zyxyf_pltzb c ,sys_ksdm d,sys_' +
        'ksdm e,sys_kscwsz f,zyxyf_zycfmx g,'
      '         sys_ypdm h'
      '  where a.tmh=b.tmh and '
      'sfbz=1 and'
      ' fybz=0  and '
      'a.tybz=0  and '
      'c.tzbz=0 and '
      'b.ksdm=e.dm and'
      '             a.czks= d.dm  and'
      '             a.pldh=c.pldh and'
      '             c.ksdm=:bqdm and '
      '             a.zyh=f.zyh'
      'and a.cfbh=g.cfbh '
      'and g.ypdm=h.ypdm'
      '  '
      'order by yfmc'
      ''
      'select * from #lsb order by yfmc,yybch'
      '')
    Left = 294
    Top = 329
  end
  object Images: TImageList
    DrawingStyle = dsTransparent
    Left = 540
    Top = 337
    Bitmap = {
      494C010103000500240110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484000000
      00000000000000000000000000000000000000000000FFFFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFEF0042297300A5BDF700DEE7F7007B8C
      9C00000000000000000000000000000000000000000000000000949494006B6B
      6B007B7B7B007B7B7B009C9CBD0039395A007B7B7B007B7B7B006B6B6B009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484000000
      000000000000000000000000000000000000FFF7E700FFFFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFEF00AD94A500733131004A2929004A294A00DEE7F700FFF7
      F70010081800000000000008000000000000A5A5A50000000000A5A5A5007B7B
      7B007B7B7B00212121006B6B6B0039395A007B7B7B007B7B7B007B7B7B00A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0084848400848484000000
      000000000000000000000000000000000000FFFFDE00FFFFEF00FFFFFF00FFFF
      FF00FFFFFF007363A5009CADEF0094CEF7007B94E7006B4A7B0042297300DEE7
      F700AD94A5000000000000000000421008003939390063636300B5B5B5006B6B
      6B007B7B7B00EFEFEF00EFEFEF00EFEFEF00BDBDBD00000000007B7B7B007373
      7300A5A5A50000000000636363007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400C6C6C600FFFFFF0084848400848484008484
      84008484840000000000000000000000000000000000FFFFEF00FFFFEF00FFFF
      FF00FFF7F7007363A5007363A500A5CEF70094D6FF007BBDFF006B94E7006363
      BD00EFDEDE00A5737300A5634A00F7F7D600FFFFFF00BDBDBD007B7B7B002121
      2100BDBDBD00ADADCE006B6BAD007B7BBD00EFEFEF00BDBDBD00393939006363
      630039393900BDBDBD00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600848484008484
      840084848400848484000000000000000000FFEFDE0000000000F7FFF700FFFF
      EF009494E7009494E7009CADEF006B94E70094CEF70094D6FF0094D6FF007BBD
      FF009494E7006363BD00FFEFC600F7F7D600FFFFFF00FFFFFF00FFFFFF007B7B
      7B00FFFFFF00EFEFEF00C6C6C600DEDEDE00DEDEDE00FFFFFF009C9CBD003939
      3900FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084848400848484008484840000000000FFFFDE0000000000FFFFEF00FFFF
      EF0094CEF70042297300A5BDF700A5DEF700ADF7FF009CE7FF0094D6FF008CBD
      F700739CF7004A4A7B00EFCEBD00FFEFC600FFFFFF00FFFFFF00FFFFFF008C8C
      AD00EFEFEF009494B5005A5A5A00DEDEDE00FFFFFF00FFFFFF00BDBDDE007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFF
      FF00FFFFFF00848484008484840084848400FFEFDE00FFEFDE00E7F7EF00948C
      AD00A5BDF7009CE7FF0094D6FF00B5EFFF00BDF7FF009CE7FF0094D6FF008CBD
      F700A5BDF7004A294A0073313100FFEFC600FFFFFF00FFFFFF00CECECE00BDBD
      BD00FFFFFF008484A500EFEFEF00FFFFFF00FFFFFF00EFEFEF00FFFFFF003939
      3900FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FF000000FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008484840084848400FFEFDE00F7F7D600D6E7BD006363
      BD009494E700A5DEF7009CE7FF00ADF7FF00BDF7FF00B5EFFF00A5CEF70094CE
      F700A5CEF7007BCEFF005A4A4A00FFFFC600FFFFFF00FFFFFF007B7B7B00FFFF
      FF00CECECE0052527300FFFFFF00EFEFEF00EFEFEF00EFEFEF00ADADCE009C9C
      9C007B7B7B00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FF000000FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008484840084848400F7F7D600FFEFC600736B7B007363
      A500738CD60094D6FF00739CF700738CD6009CE7FF00ADF7FF008CE7FF005252
      A5006B73D600A5CEF7004A292900FFEFC600FFFFFF00FFFFFF007B7B7B00BDBD
      BD005A5A7B005A5A5A00FFFFFF009C9C9C0039395A00EFEFEF0039393900DEDE
      DE005A5A5A00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FF000000FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008484840084848400F7F7D600FFEFC6004A2929009494
      E7008CBDF700A5CEF7006363BD008CBDF7008CBDF70094D6FF007BCEFF002910
      4A00422973006B73D60042100800FFF7CE00FFFFFF00BDBDBD007B7B7B009C9C
      9C009C9C9C00BDBDBD00BDBDBD005A5A5A007B7B7B00BDBDBD00000000009C9C
      9C005A5A5A00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600FF000000FF000000FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008484840084848400FFF7CE00F7E7B500292921009494
      E7007BBDFF0094D6FF00B5EFFF00A5DEF7008CE7FF0073ADF700422973003118
      21002900000031182100F7E7B500FFEFC600FFFFFF007B7B7B0039393900FFFF
      FF00FFFFFF00FFFFFF00DEDEDE00FFFFFF00FFFFFF00FFFFFF00000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008484840000000000FFE7BD00EFBD9C004A294A005A4A
      4A009CADEF007BBDFF0094D6FF007BCEFF0073ADF7005252A50029294A002900
      21001808000073291000FFEFDE00FFEFC600FFFFFF007B7B7B0000000000BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C6000000000000000000FFEFC600B59473005A4A4A002108
      31004A294A006B73D6006B73D6006363BD004229730031182100180010001808
      000042100800FFEFC600FFEFC600FFEFC600FFFFFF007B7B7B00000000000000
      000000000000000000007B7B7B007B7B7B007B7B7B0039393900000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000FFEFC600EFE7BD00AD7B52003118
      2100311018002108310029182900292931002108310029182900211000003108
      0000FFD6BD00FFF7CE00FFEFC600FFEFC600FFFFFF00DEDEDE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C60000000000000000000000000000000000FFE7BD00FFE7BD00F7E7B5004A29
      29004A292900311821004A294A005A2110004A2929004A2929004A2929008C42
      3900FFEFC600FFEFC600FFE7BD00FFEFC600FFFFFF00FFFFFF00BDBDBD003939
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84008484840084848400C6C6C600C6C6C600C6C6C60084848400848484008484
      840000000000000000000000000000000000FFE7BD00FFE7BD00FFE7BD00FFE7
      BD00FFE7AD00F7CE9400FFE7AD00FFEFAD00FFD69C00F7CE9400FFDEA500FFE7
      B500FFEFC600FFE7BD00FFE7BD00FFE7BD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFAD00BDBD7B007B7B7B007B7B7B007B7B7B00BDBD7B00FFFFBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FF9F8000C00F0000FF1F0000400F0000
      FC1F000000040000F007800000000000E003400000000000C001400000000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000010000000000008003000000000000
      C007000000000000E00F00000000000000000000000000000000000000000000
      000000000000}
  end
  object sp_up_fypl: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'bqgl_up_pltz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@kssj'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pldh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@pdbq'
        Attributes = [paNullable]
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 1
        Value = Null
      end>
    Left = 408
    Top = 337
  end
  object ad_cfmx: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 
      'select e.pldh,a.tmh,a.bch,b.cfbh,a.brxm,c.ypmc,c.ypgg,b.ypdw,b.y' +
      'psl,b.ypsl*b.ypdj je from zysf_zydj a,zyxyf_zycfmx b,sys_ypdm c,' +
      'zyxyf_zycfzb e'#13#10'where a.zyh=e.zyh and b.cfbh=e.cfbh and e.pldh=:' +
      'pldh and e.sfbz=1 and b.ypdm=c.ypdm  order by a.tmh,b.cfbh'
    Parameters = <
      item
        Name = 'pldh'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    Left = 584
    Top = 337
  end
  object ad_plcl: TADODataSet
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 497
    Top = 337
  end
  object sp_up_jjtz: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'bqgl_up_jjpl;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@pldh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@cfbh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@pdbq'
        Attributes = [paNullable]
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 1
        Value = Null
      end>
    Left = 369
    Top = 337
  end
  object qry_sum: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = Qry_zbAfterScroll
    Parameters = <
      item
        Name = 'pldh'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'pldh1'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select sum(cfzje) cfzje,sum(cfjl) cfsl   from'
      ''
      '(select cfzje cfzje,cfbh, isnull(cfjl,1) cfjl from '
      ' zyxyf_zycfzb'
      'where pldh =:pldh'
      ''
      'union all'
      ''
      ''
      'select cfzje cfzje,cfbh, isnull(cfjl,1) cfjl from '
      ' zyxyf_cycfzb'
      'where pldh =:pldh1'
      ') a')
    Left = 657
    Top = 337
  end
  object DS_ks: TDataSource
    DataSet = qry_ks
    Left = 136
    Top = 358
  end
  object ds_cfzb: TDataSource
    DataSet = qry_cfzb
    Left = 137
    Top = 294
  end
  object qry_cfzb: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qry_cfzbAfterScroll
    Parameters = <
      item
        Name = 'pldh'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = '0704200305010065'
      end>
    SQL.Strings = (
      'exec qry_cfzb :pldh')
    Left = 49
    Top = 301
  end
  object ds_cfmx: TDataSource
    DataSet = SP_cfmx
    Left = 138
    Top = 253
  end
  object SP_cfmx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zyxyf_plfy_cfmx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@cfbh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = ' '
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = ' '
      end
      item
        Name = '@bz'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 72
    Top = 244
  end
  object ad_qdybz: TADODataSet
    Connection = DM_data.ado_mydata
    CommandText = 'select * from zyxyf_pltzb where pldh=:pldh'
    Parameters = <
      item
        Name = 'pldh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    Left = 483
    Top = 251
  end
  object adc_dycl: TADOCommand
    CommandText = 'update zyxyf_pltzb set dybz=1 where pldh=:pldh'
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'pldh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    Left = 525
    Top = 251
  end
  object ad_plzb: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 
      'select  c.mc jxmc,b.ypmc,b.ypgg,a.ypdw,sum(a.ypsl)ypsl ,avg(b.zy' +
      'lsj)  zylsj, sum(a.ypsl*b.zylsj) je'#13#10' from zyxyf_plfyb a,sys_ypd' +
      'm b,sys_jxbm c '#13#10'where a.ypdm=b.ypdm and b.jxbm=c.dm and plbh=:p' +
      'ldh '#13#10'group by c.mc,ypmc,ypgg,ypdw'
    Parameters = <
      item
        Name = 'pldh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    Left = 559
    Top = 251
  end
  object ad_tzcfmx: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 
      'select b.cfbh,c.ypmc,c.ypgg,b.ypdw,b.ypsl,b.yf,b.yl,b.yldw,b.yyt' +
      'j from zyxyf_zycfmx b,sys_ypdm c,zyxyf_zycfzb e'#13#10'where b.cfbh=e.' +
      'cfbh and e.cfbh=:cfbh and b.ypdm=c.ypdm'
    Parameters = <
      item
        Name = 'cfbh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    Left = 400
    Top = 281
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'bqgl_up_pltz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@kssj'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pldh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 1
        Value = Null
      end>
    Left = 408
    Top = 337
  end
  object qry_ks: TADOStoredProc
    Connection = DM_data.ado_mydata
    AfterScroll = Qry_ksAfterScroll
    ProcedureName = 'p_zyplcffy_cx'
    Parameters = <
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@lx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@pdbq'
        Attributes = [paNullable]
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 47
    Top = 364
  end
  object qry_zb1: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'bqdm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = '0013'
      end>
    SQL.Strings = (
      'if object_id('#39'tempdb..#lsb'#39') is not null '
      'drop table #lsb'
      ''
      
        'select distinct convert(bit,0) xzbz,a.cfzje,a.yzsx,c.kssj,a.cfbh' +
        ',b.*,c.pldh,c.tzbz,c.jjtz,d.mc yfmc,e.mc ksmc,'
      
        'f.yybch,case when sfjsyp=1 then '#39#31934#31070#33647#21697#39'  when sfdmyp=1 then  '#39#27602#24615#33647 +
        #21697#39' when  sfdmyp=1 then  '#39#40635#37257#33647#21697#39' else'
      #39#26222#36890#33647#21697#39' end yplb   '
      'into #lsb '
      
        ' from  zyxyf_zycfzb a,zysf_zydj b,zyxyf_pltzb c ,sys_ksdm d,sys_' +
        'ksdm e,sys_kscwsz f,zyxyf_zycfmx g,'
      '         sys_ypdm h'
      '  where a.tmh=b.tmh and '
      'sfbz=1 and'
      ' fybz=0  and '
      'a.tybz=0  and '
      'c.tzbz=0 and '
      'b.ksdm=e.dm and'
      '             a.czks= d.dm  and'
      '             a.pldh=c.pldh and'
      '             c.ksdm=:bqdm and '
      '             a.zyh=f.zyh'
      'and a.cfbh=g.cfbh '
      'and g.ypdm=h.ypdm'
      '  '
      'order by yfmc'
      ''
      'select * from #lsb order by yfmc,yybch'
      '')
    Left = 478
    Top = 401
  end
  object qry_cfzb_1: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'bqdm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = '0013'
      end>
    SQL.Strings = (
      'if object_id('#39'tempdb..#lsb'#39') is not null '
      'drop table #lsb'
      ''
      
        'select distinct convert(bit,0) xzbz,a.cfzje,c.kssj,a.cfbh,b.*,c.' +
        'pldh,c.tzbz,c.jjtz,d.mc yfmc,e.mc ksmc,'
      
        'f.yybch,case when sfjsyp=1 then '#39#31934#31070#33647#21697#39'  when sfdmyp=1 then  '#39#27602#24615#33647 +
        #21697#39' when  sfdmyp=1 then  '#39#40635#37257#33647#21697#39' else'
      #39#26222#36890#33647#21697#39' end yplb   '
      'into #lsb '
      
        ' from  zyxyf_zycfzb a,zysf_zydj b,zyxyf_pltzb c ,sys_ksdm d,sys_' +
        'ksdm e,sys_kscwsz f,zyxyf_zycfmx g,'
      '         sys_ypdm h'
      '  where a.tmh=b.tmh and '
      'sfbz=1 and'
      ' fybz=0  and '
      'a.tybz=0  and '
      'c.tzbz=0 and '
      'b.ksdm=e.dm and'
      '             a.czks= d.dm  and'
      '             a.pldh=c.pldh and'
      '             c.ksdm=:bqdm and '
      '             a.zyh=f.zyh'
      'and a.cfbh=g.cfbh '
      'and g.ypdm=h.ypdm'
      '  '
      'order by yfmc'
      ''
      'select * from #lsb order by yfmc,yybch'
      '')
    Left = 142
    Top = 193
  end
  object sp_xztz: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'bqgl_up_xzpl;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@pldh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@cfbh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 3000
        Value = Null
      end
      item
        Name = '@pdbq'
        Attributes = [paNullable]
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 1
        Value = Null
      end>
    Left = 313
    Top = 337
  end
  object qry_sum1: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = Qry_zbAfterScroll
    Parameters = <
      item
        Name = 'pldh'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'pldh1'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select sum(cfzje) cfzje,sum(cfjl) cfsl   from'
      ''
      '(select cfzje,cfbh, cfjl from '
      ' zyxyf_zycfzb'
      'where pldh =:pldh'
      ''
      'union all'
      ''
      ''
      'select cfzje,cfbh, cfjl from '
      ' zyxyf_cycfzb'
      'where pldh =:pldh1'
      ') a')
    Left = 385
    Top = 449
  end
  object Qry_fbqpltzd: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 400
    Top = 176
  end
end
