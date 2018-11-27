object frm_yjcl_qr: Tfrm_yjcl_qr
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #21307#25216#30830#35748
  ClientHeight = 544
  ClientWidth = 941
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 941
    Height = 544
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = '  '#21307#25216#30830#35748'  '
      object QuickRep1: TQuickRep
        Left = 79
        Top = 157
        Width = 296
        Height = 345
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
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
        Page.PaperSize = Custom
        Page.Values = (
          100.000000000000000000
          912.800000000000000000
          10.000000000000000000
          783.200000000000000000
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
        PrevInitialZoom = qrZoomToFit
        PreviewDefaultSaveType = stQRP
        object DetailBand2: TQRBand
          Left = 8
          Top = 4
          Width = 281
          Height = 307
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ForceNewColumn = False
          ForceNewPage = False
          ParentFont = False
          Size.Values = (
            812.270833333333300000
            743.479166666666700000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object qrl_xm: TQRLabel
            Left = 7
            Top = 78
            Width = 28
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              18.520833333333330000
              206.375000000000000000
              74.083333333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #22995#21517':'
            Color = clWhite
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
          object qrl_xb: TQRLabel
            Left = 145
            Top = 78
            Width = 28
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              383.645833333333300000
              206.375000000000000000
              74.083333333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #24615#21035':'
            Color = clWhite
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
          object qrl_yymc: TQRLabel
            Left = 100
            Top = 8
            Width = 81
            Height = 21
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              55.562500000000000000
              264.583333333333300000
              21.166666666666670000
              214.312500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #21307#38498#21517#31216
            Color = clWhite
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = #40657#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 15
          end
          object qrl_nl: TQRLabel
            Left = 212
            Top = 78
            Width = 28
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              560.916666666666700000
              206.375000000000000000
              74.083333333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #24180#40836':'
            Color = clWhite
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
          object qrl_tmh: TQRLabel
            Left = 7
            Top = 36
            Width = 40
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              18.520833333333330000
              95.250000000000000000
              105.833333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #26465#30721#21495':'
            Color = clWhite
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
          object qrl_zd: TQRLabel
            Left = 7
            Top = 122
            Width = 28
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              18.520833333333330000
              322.791666666666700000
              74.083333333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #35786#26029':'
            Color = clWhite
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
          object qrl_sjh: TQRLabel
            Left = 7
            Top = 57
            Width = 40
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              18.520833333333330000
              150.812500000000000000
              105.833333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #25910#25454#21495':'
            Color = clWhite
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
          object qrl_lb: TQRLabel
            Left = 212
            Top = 36
            Width = 28
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              560.916666666666700000
              95.250000000000000000
              74.083333333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #31867#21035':'
            Color = clWhite
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
          object qrl_ks: TQRLabel
            Left = 7
            Top = 100
            Width = 28
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              18.520833333333330000
              264.583333333333300000
              74.083333333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #31185#23460':'
            Color = clWhite
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
          object qrl_ch: TQRLabel
            Left = 145
            Top = 100
            Width = 28
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              383.645833333333300000
              264.583333333333300000
              74.083333333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #24202#21495':'
            Color = clWhite
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
          object qrl_cs1: TQRLabel
            Left = 15
            Top = 170
            Width = 25
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              39.687500000000000000
              449.791666666666700000
              66.145833333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #27425#25968
            Color = clWhite
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
          object qrl_je1: TQRLabel
            Left = 153
            Top = 170
            Width = 25
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              404.812500000000000000
              449.791666666666700000
              66.145833333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #37329#39069
            Color = clWhite
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
          object qrl_cs2: TQRLabel
            Left = 15
            Top = 210
            Width = 25
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              39.687500000000000000
              555.625000000000000000
              66.145833333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #27425#25968
            Color = clWhite
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
          object qrl_xmmc2: TQRLabel
            Left = 15
            Top = 194
            Width = 25
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              39.687500000000000000
              513.291666666666700000
              66.145833333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #21517#31216
            Color = clWhite
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
          object qrl_cs3: TQRLabel
            Left = 15
            Top = 253
            Width = 25
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              39.687500000000000000
              669.395833333333300000
              66.145833333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #27425#25968
            Color = clWhite
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
          object qrl_je3: TQRLabel
            Left = 153
            Top = 253
            Width = 25
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              404.812500000000000000
              669.395833333333300000
              66.145833333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #37329#39069
            Color = clWhite
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
          object qrl_xmmc3: TQRLabel
            Left = 15
            Top = 233
            Width = 25
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              39.687500000000000000
              616.479166666666700000
              66.145833333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #21517#31216
            Color = clWhite
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
          object QRShape1: TQRShape
            Left = 1
            Top = 144
            Width = 281
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              2.645833333333333000
              381.000000000000000000
              743.479166666666800000)
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object qrl_ys: TQRLabel
            Left = 13
            Top = 282
            Width = 28
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              34.395833333333330000
              746.125000000000000000
              74.083333333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #21307#29983':'
            Color = clWhite
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
          object qrl_rq: TQRLabel
            Left = 151
            Top = 282
            Width = 25
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              399.520833333333300000
              746.125000000000000000
              66.145833333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #26085#26399
            Color = clWhite
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
          object QRShape2: TQRShape
            Left = 1
            Top = 276
            Width = 281
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              2.645833333333333000
              730.250000000000000000
              743.479166666666800000)
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object qrl_xmmc1: TQRLabel
            Left = 15
            Top = 149
            Width = 25
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              39.687500000000000000
              394.229166666666700000
              66.145833333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #21517#31216
            Color = clWhite
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
          object qrl_je2: TQRLabel
            Left = 153
            Top = 210
            Width = 25
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              404.812500000000000000
              555.625000000000000000
              66.145833333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #37329#39069
            Color = clWhite
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
      end
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 933
        Height = 49
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 0
        object edt_lsh: TEdit
          Left = 374
          Top = 9
          Width = 177
          Height = 26
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          TabOrder = 0
          OnKeyDown = edt_lshKeyDown
        end
        object BBtn_qr: TBitBtn
          Left = 701
          Top = 6
          Width = 81
          Height = 33
          Caption = #30830#35748#22788#29702
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BBtn_qrClick
        end
        object BBtn_qx: TBitBtn
          Left = 782
          Top = 6
          Width = 81
          Height = 33
          Caption = #21462#28040#30830#35748
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BBtn_qxClick
        end
        object btn_cx: TBitBtn
          Left = 552
          Top = 6
          Width = 80
          Height = 33
          Caption = #26597#35810#36153#29992
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = btn_cxClick
        end
        object lb_id: TRadioButton
          Left = 6
          Top = 16
          Width = 95
          Height = 17
          Caption = #26102#38388
          Checked = True
          TabOrder = 4
          TabStop = True
          OnClick = lb_idClick
        end
        object lb_zyh: TRadioButton
          Left = 295
          Top = 16
          Width = 79
          Height = 17
          Caption = #20303#38498#21345#21495
          TabOrder = 5
          OnClick = lb_sjhClick
        end
        object lb_sjh: TRadioButton
          Left = 101
          Top = 16
          Width = 95
          Height = 17
          Caption = #38376#35786#25910#25454#21495
          TabOrder = 6
          OnClick = lb_sjhClick
        end
        object lb_tmh: TRadioButton
          Left = 197
          Top = 16
          Width = 95
          Height = 17
          Caption = #38376#35786#26465#30721#21495
          TabOrder = 7
          OnClick = lb_sjhClick
        end
        object DateTimePicker1: TDateTimePicker
          Left = 374
          Top = 9
          Width = 179
          Height = 27
          Date = 41136.687419756940000000
          Time = 41136.687419756940000000
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          TabOrder = 8
        end
      end
      object dbgrdh1: TDBGridEh
        Left = 51
        Top = 345
        Width = 859
        Height = 377
        DataGrouping.GroupLevels = <>
        DataSource = ds_fyqk
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'Tahoma'
        FooterFont.Style = []
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        RowDetailPanel.Color = clBtnFace
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgrdh1DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'lb'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #31867#21035
            Width = 32
          end
          item
            EditButtons = <>
            FieldName = 'brxm'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #22995#21517
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'sjbh'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #24207#21495
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'fymc'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #36153#29992#21517#31216
            Width = 139
          end
          item
            EditButtons = <>
            FieldName = 'fysl'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #25968#37327
            Width = 39
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'ssje'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #23454#25910#37329#39069
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'kdksmc'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #22788#32622#31185#23460
            Width = 103
          end
          item
            EditButtons = <>
            FieldName = 'qrbz'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #30830#35748
            Width = 33
          end
          item
            EditButtons = <>
            FieldName = 'czymc'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #25805#20316#21592
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'qrsj'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #30830#35748#26102#38388
            Width = 121
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Memo1: TMemo
        Left = 0
        Top = 411
        Width = 933
        Height = 100
        Align = alBottom
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Lines.Strings = (
          #27492#30830#35748#21151#33021#26159#23545#24403#21069#25152#38656#30830#35748#36153#29992#36827#34892#24050#22788#32622#26631#35782#65292#19968#32463#30830#35748#22788#29702#35813#36153#29992#22312#26410#21462#28040#30830#35748#20043#21069#26080#27861#20877#20316#36864#36153#25805#20316#65281#65281
          #27880#65306
          ' 1'#12289' '#38376#35786#24403#26085#36153#29992#20316#30830#35748#22788#29702#65292#38500#23545#35813#36153#29992#36827#34892#24050#22788#32622#26631#35782#22806#65292#22914#26524#27492#36153#29992#25152#23646#22788#32622#31185#23460#26377#35823#36824#23558#20854#22788#32622#31185#23460#26356
          #27491#20026#24403#21069#30830#35748#31185#23460#12290
          '2'#12289' '#38376#35786#24448#26085#36153#29992#30001#20110#20854#25968#25454#24050#36827#20837#27719#24635#65292#20877#20316#30830#35748#22788#29702#21482#33021#36827#34892#24050#32622#26631#35782#65292#19981#33021#26356#25913#20854#22788#32622#31185#23460#12290#22914#26524#26377#24448#26085
          #22788#32622#31185#23460#24405#20837#38169#35823#30340#38376#35786#36153#29992#65292#21482#33021#22312#36864#25481#35813#31508#36153#29992#20043#21518#21478#34892#20877#25910#12290)
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 49
        Width = 933
        Height = 362
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 3
        object cxGrid2DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCustomDrawCell = cxGrid2DBTableView1CustomDrawCell
          DataController.DataSource = ds_fyqk
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'ssje'
              Column = cxGrid2DBTableView1ssje
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.Footer = True
          Styles.StyleSheet = GridTableViewStyleSheetUserFormat2
          object cxGrid2DBTableView1Column1: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object cxGrid2DBTableView1lb: TcxGridDBColumn
            Caption = #31867#21035
            DataBinding.FieldName = 'lb'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 40
            Options.Editing = False
            Options.Filtering = False
          end
          object cxGrid2DBTableView1tmh: TcxGridDBColumn
            Caption = #26465#30721#21495
            DataBinding.FieldName = 'tmh'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
            Options.Editing = False
          end
          object cxGrid2DBTableView1sjbh: TcxGridDBColumn
            Caption = #25910#25454#21495
            DataBinding.FieldName = 'sjbh'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
            Options.Editing = False
            Width = 100
          end
          object cxGrid2DBTableView1brxm: TcxGridDBColumn
            Caption = #30149#20154#22995#21517
            DataBinding.FieldName = 'brxm'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
            Options.Editing = False
          end
          object cxGrid2DBTableView1brxb: TcxGridDBColumn
            Caption = #24615#21035
            DataBinding.FieldName = 'brxb'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 40
            Options.Editing = False
            Options.Filtering = False
          end
          object cxGrid2DBTableView1brnl: TcxGridDBColumn
            Caption = #24180#40836
            DataBinding.FieldName = 'brnl'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 40
            Options.Editing = False
            Options.Filtering = False
            Width = 47
          end
          object cxGrid2DBTableView1fymc: TcxGridDBColumn
            Caption = #36153#29992#21517#31216
            DataBinding.FieldName = 'fymc'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 150
            Options.Editing = False
            Options.Filtering = False
            Width = 150
          end
          object cxGrid2DBTableView1fysl: TcxGridDBColumn
            Caption = #25968#37327
            DataBinding.FieldName = 'fysl'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Width = 41
          end
          object cxGrid2DBTableView1ssje: TcxGridDBColumn
            Caption = #23454#25910#36153
            DataBinding.FieldName = 'ssje'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 50
            Options.Editing = False
            Options.Filtering = False
            Width = 57
          end
          object cxGrid2DBTableView1kdksmc: TcxGridDBColumn
            Caption = #24320#21333#31185#23460
            DataBinding.FieldName = 'kdksmc'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 80
            Options.Editing = False
            Options.Filtering = False
            Width = 80
          end
          object cxGrid2DBTableView1czksmc: TcxGridDBColumn
            Caption = #22788#32622#31185#23460
            DataBinding.FieldName = 'czksmc'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 80
            Options.Editing = False
            Options.Filtering = False
            Width = 80
          end
          object cxGrid2DBTableView1Column3: TcxGridDBColumn
            Caption = #24320#21333#21307#29983
            DataBinding.FieldName = 'kdysmc'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Width = 64
          end
          object cxGrid2DBTableView1qrbz: TcxGridDBColumn
            Caption = #30830#35748#26631#24535
            DataBinding.FieldName = 'qrbz'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 70
            Options.Editing = False
            Options.Filtering = False
            Width = 70
          end
          object cxGrid2DBTableView1czymc: TcxGridDBColumn
            Caption = #25805#20316#21592#21517#31216
            DataBinding.FieldName = 'czymc'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 80
            Options.Editing = False
            Options.Filtering = False
            Width = 80
          end
          object cxGrid2DBTableView1ryzd: TcxGridDBColumn
            Caption = #35786#26029
            DataBinding.FieldName = 'ryzd'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 150
            Options.Editing = False
            Options.Filtering = False
            Width = 150
          end
          object cxGrid2DBTableView1Column2: TcxGridDBColumn
            Caption = #25910#36153#26102#38388
            DataBinding.FieldName = 'sfrq'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Width = 124
          end
          object cxGrid2DBTableView1qrsj: TcxGridDBColumn
            Caption = #30830#35748#26102#38388
            DataBinding.FieldName = 'qrsj'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
            Options.Editing = False
            Options.Filtering = False
            Width = 100
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
    object ts1: TTabSheet
      Caption = '  '#30830#36153#26597#35810'  '
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 45
        Width = 933
        Height = 466
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
          DataController.DataSource = ds_cxqf
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object cxGrid1DBTableView1tmh: TcxGridDBColumn
            Caption = #26465#30721#21495
            DataBinding.FieldName = 'tmh'
            HeaderAlignmentHorz = taCenter
            Width = 136
          end
          object cxGrid1DBTableView1sjbh: TcxGridDBColumn
            Caption = #25910#25454#32534#21495
            DataBinding.FieldName = 'sjbh'
            HeaderAlignmentHorz = taCenter
            Width = 86
          end
          object cxGrid1DBTableView1id_mx: TcxGridDBColumn
            Caption = #27969#27700#21495
            DataBinding.FieldName = 'id_mx'
            HeaderAlignmentHorz = taCenter
            Width = 83
          end
          object cxGrid1DBTableView1brxm: TcxGridDBColumn
            Caption = #30149#20154#22995#21517
            DataBinding.FieldName = 'brxm'
            HeaderAlignmentHorz = taCenter
            Width = 123
          end
          object cxGrid1DBTableView1fymc: TcxGridDBColumn
            Caption = #36153#29992#21517#31216
            DataBinding.FieldName = 'fymc'
            HeaderAlignmentHorz = taCenter
            Width = 245
          end
          object cxGrid1DBTableView1fysl: TcxGridDBColumn
            Caption = #25968#37327
            DataBinding.FieldName = 'fysl'
            HeaderAlignmentHorz = taCenter
            Width = 46
          end
          object cxGrid1DBTableView1ssje: TcxGridDBColumn
            Caption = #37329#39069
            DataBinding.FieldName = 'ssje'
            HeaderAlignmentHorz = taCenter
          end
          object cxGrid1DBTableView1kdksmc: TcxGridDBColumn
            Caption = #24320#21333#31185#23460
            DataBinding.FieldName = 'kdksmc'
            HeaderAlignmentHorz = taCenter
            Width = 145
          end
          object cxGrid1DBTableView1czksmc_y: TcxGridDBColumn
            Caption = #21407#22788#32622#31185#23460
            DataBinding.FieldName = 'czksmc_y'
            HeaderAlignmentHorz = taCenter
            Width = 137
          end
          object cxGrid1DBTableView1czksmc_x: TcxGridDBColumn
            Caption = #29616#22788#32622#31185#23460
            DataBinding.FieldName = 'czksmc_x'
            HeaderAlignmentHorz = taCenter
            Width = 141
          end
          object cxGrid1DBTableView1lb: TcxGridDBColumn
            Caption = #31867#21035
            DataBinding.FieldName = 'lb'
            HeaderAlignmentHorz = taCenter
            Width = 51
          end
          object cxGrid1DBTableView1czymc: TcxGridDBColumn
            Caption = #25805#20316#20154#21592
            DataBinding.FieldName = 'czymc'
            HeaderAlignmentHorz = taCenter
            Width = 112
          end
          object cxGrid1DBTableView1qrsj: TcxGridDBColumn
            Caption = #30830#35748#26102#38388
            DataBinding.FieldName = 'qrsj'
            HeaderAlignmentHorz = taCenter
            Width = 149
          end
          object cxGrid1DBTableView1zfbz: TcxGridDBColumn
            Caption = #21462#28040#30830#36153
            DataBinding.FieldName = 'zfbz'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderAlignmentHorz = taCenter
            Options.ShowEditButtons = isebAlways
            Options.SortByDisplayText = isbtOff
            Width = 92
          end
          object cxGrid1DBTableView1qxczymc: TcxGridDBColumn
            Caption = #30830#36153#21462#28040#20154#21592
            DataBinding.FieldName = 'qxczymc'
            HeaderAlignmentHorz = taCenter
            Width = 118
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 933
        Height = 45
        Align = alTop
        TabOrder = 1
        object Label9: TLabel
          Left = 8
          Top = 13
          Width = 64
          Height = 16
          Caption = #24320#22987#26102#38388
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 232
          Top = 13
          Width = 64
          Height = 16
          Caption = #32467#26463#26102#38388
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object dtp1: TDateTimePicker
          Left = 73
          Top = 8
          Width = 120
          Height = 24
          Date = 37457.369681273200000000
          Time = 37457.369681273200000000
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          TabOrder = 0
        end
        object dtp2: TDateTimePicker
          Left = 297
          Top = 8
          Width = 120
          Height = 24
          Date = 37457.369723344900000000
          Time = 37457.369723344900000000
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          TabOrder = 1
        end
        object BitBtn1: TBitBtn
          Left = 441
          Top = 9
          Width = 75
          Height = 25
          Caption = #26597#35810
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn1Click
        end
        object BitBtn2: TBitBtn
          Left = 561
          Top = 9
          Width = 75
          Height = 25
          Caption = #25171#21360#26816#26597#21333' '
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Visible = False
          OnClick = BitBtn2Click
        end
      end
    end
  end
  object BBtn_exit: TBitBtn
    Left = 867
    Top = 35
    Width = 70
    Height = 33
    Caption = #36820#22238
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BBtn_exitClick
  end
  object BitBtn3: TBitBtn
    Left = 658
    Top = 35
    Width = 57
    Height = 33
    Caption = #30005#23376#30149#21382
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    OnClick = BitBtn3Click
  end
  object qry_fyqk1: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'sjbh'
        DataType = ftString
        Size = 1
        Value = '1'
      end>
    SQL.Strings = (
      
        'select a.tmh,a.id,e.brxm,a.sjbh,a.fysl,a.fyje,a.ssje,a.czks,a.fy' +
        'dm,b.fymc,c.mc czksmc,a.kdks,d.mc kdksmc,'
      
        '       case when f.tmh is null then '#39#21542#39' else '#39#26159#39' end qrbz,f.czym' +
        'c,f.qrsj,'
      
        '       a.fyje/case when a.fysl=0 then 1 else a.fysl end fydj,'#39#20303#38498 +
        #39' lb,f.id_mx'
      '  from zysf_zyfymx a left join sys_kjsfxm b on a.fydm=b.fydm'
      '                     left join sys_ksdm   c on a.czks=c.dm'
      '                     left join zysf_zydj  e on a.zyh=e.zyh '
      '                     left join sys_ksdm   d on a.kdks=d.dm'
      
        '                     left join cwk_yjqfmx f on a.id=f.sjbh and f' +
        '.zfbz=0 and f.lb='#39#20303#38498#39' and a.id=f.id_mx'
      '  where a.id=:id '
      'union all'
      
        'select a.tmh,a.id,a.brxm,a.sjbh,a.fysl,a.fyzje,a.sszje,a.czks,a.' +
        'fydm,b.fymc,c.mc czksmc,a.kdks,d.mc ksksmc,'
      
        '       case when f.tmh is null then '#39#21542#39' else '#39#26159#39' end qrbz,f.czym' +
        'c,f.qrsj,'
      
        '       a.fyzje/case when a.fysl=0 then 1 else a.fysl end fydj,'#39#38376 +
        #35786#39' lb,f.id_mx'
      '  from mzsf_mzfymx a left join sys_kjsfxm b on a.fydm=b.fydm'
      '                     left join sys_ksdm   c on a.czks=c.dm'
      '                     left join sys_ksdm   d on a.kdks=d.dm'
      
        '                     left join cwk_yjqfmx f on a.sjbh=f.sjbh and' +
        ' f.zfbz=0 and f.lb='#39#38376#35786#39' and a.id=f.id_mx'
      '  where a.sjbh=:sjbh '
      '             and a.sfbz=1 and a.tfbz=0')
    Left = 32
    Top = 144
  end
  object ds_fyqk: TDataSource
    DataSet = sp_fyqk
    Left = 120
    Top = 136
  end
  object qry_clqk: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'sjbh'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'lb'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from cwk_yjqfmx where sjbh=:sjbh and lb=:lb and zfbz=0'
      ''
      '   ')
    Left = 32
    Top = 176
  end
  object qry_clqk_qx: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ksdm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'lb'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'sjbh'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'id_mx'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from cwk_yjqfmx where czks_y=:ksdm and lb=:lb and sjbh=' +
        ':sjbh and id_mx=:id_mx')
    Left = 32
    Top = 214
  end
  object qry_qf_qx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'ksdm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'lb'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'sjbh'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'id_mx'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'update cwk_yjqfmx set zfbz=1 where czks_y=:ksdm and lb=:lb and s' +
        'jbh=:sjbh and id_mx=:id_mx')
    Left = 32
    Top = 263
  end
  object ds_cxqf: TDataSource
    DataSet = sp_cxqf
    Left = 112
    Top = 200
  end
  object sp_yjqf: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'cwk_up_yjksqf'
    Parameters = <
      item
        Name = '@brlb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@mzsjbh'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@zyid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@czymc'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@czks'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@czksmc'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@sc_cg'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 50
        Value = Null
      end>
    Left = 32
    Top = 352
  end
  object sp_qxqf: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'cwk_up_yjksqxqf'
    Parameters = <
      item
        Name = '@brlb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@mzsjbh'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@zyid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@czymc'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@sc_cg'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 50
        Value = '1'
      end>
    Left = 32
    Top = 296
  end
  object sp_fyqk: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = sp_fyqkAfterScroll
    ProcedureName = 'bqgl_yjqf_fyqk;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@v_sjbh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 6
        Value = Null
      end
      item
        Name = '@lb'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 144
    Top = 136
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 80
    Top = 144
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
      AssignedValues = [svColor, svTextColor]
      Color = 9234160
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 11788021
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
  object sp_cxqf: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'cwk_cx_yjqf;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@lb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end
      item
        Name = '@czks'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@sjh'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@idh'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 144
    Top = 200
  end
  object GridppReport1: TGridppReport
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 720
    Top = 88
  end
  object PopupMenu1: TPopupMenu
    Left = 664
    Top = 152
    object N3: TMenuItem
      Caption = #20840#37096#30830#36153
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #30830#36153#36873#20013#39033
      OnClick = N4Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object N1: TMenuItem
      Caption = #26816#39564#30003#35831#21333
      OnClick = N1Click
    end
  end
  object ApplicationEvents1: TApplicationEvents
    Left = 464
    Top = 280
  end
end
