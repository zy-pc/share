object frm_lsyzxzdy: Tfrm_lsyzxzdy
  Left = 0
  Top = 193
  Align = alCustom
  Caption = #20020#26102#21307#22065#25171#21360
  ClientHeight = 478
  ClientWidth = 881
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 881
    Height = 433
    Align = alTop
    Caption = #20020#26102#21307#22065#25171#21360
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 17
      Width = 877
      Height = 414
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = ds_cx
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      RowDetailPanel.Color = clBtnFace
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      UseMultiTitle = True
      OnCellClick = DBGridEh1CellClick
      OnDrawColumnCell = DBGridEh1DrawColumnCell
      Columns = <
        item
          EditButtons = <>
          FieldName = 'kdrq'
          Footers = <>
          Title.Caption = #26085#26399#26102#38388
          Width = 113
        end
        item
          EditButtons = <>
          FieldName = 'kdysmc'
          Footers = <>
          Title.Caption = #21307#22065#32773
          Width = 76
        end
        item
          EditButtons = <>
          FieldName = 'xmmc'
          Footers = <>
          Title.Caption = #20020#26102#21307#22065
          Width = 177
        end
        item
          EditButtons = <>
          FieldName = 'gysj'
          Footers = <>
          Title.Caption = #32473#20104#26102#38388
          Width = 117
        end
        item
          EditButtons = <>
          FieldName = 'zxhsmc_sqm'
          Footers = <>
          Title.Caption = #25191#34892#32773
          Width = 74
        end
        item
          Checkboxes = True
          EditButtons = <>
          FieldName = 'sfdy'
          Footers = <>
          ReadOnly = True
          Title.Caption = #26159#21542#25171#21360
          Width = 76
        end
        item
          EditButtons = <>
          FieldName = 'xh2'
          Footers = <>
          ReadOnly = True
          Title.Caption = #25171#21360#39034#24207
          Width = 43
        end
        item
          EditButtons = <>
          FieldName = 'dybz'
          Footers = <>
          Title.Caption = #25171#21360#26631#24535
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object QuickRep2: TQuickRep
    Left = 91
    Top = 2000
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
    ShowProgress = False
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    object QRBand1: TQRBand
      Left = 19
      Top = 136
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
      object QRSysData2: TQRSysData
        Left = 299
        Top = 7
        Width = 27
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          791.104166666666800000
          18.520833333333330000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Transparent = False
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel16: TQRLabel
        Left = 286
        Top = 7
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          756.708333333333200000
          18.520833333333330000
          34.395833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31532
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel17: TQRLabel
        Left = 321
        Top = 7
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          849.312500000000000000
          18.520833333333330000
          34.395833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39029
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRL_ys_ls: TQRLabel
        Left = 242
        Top = 7
        Width = 41
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          640.291666666666800000
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
        ExportAs = exptText
        FontSize = 8
      end
      object QRL_dysj_ls: TQRLabel
        Left = 8
        Top = 6
        Width = 228
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          21.166666666666670000
          15.875000000000000000
          603.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_dysj_ls'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Left = 419
        Top = 6
        Width = 223
        Height = 50
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          132.291666666666700000
          1108.604166666667000000
          15.875000000000000000
          590.020833333333200000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #23457#26680#21307#29983':                 '#23457#26680#25252#22763#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
    end
    object QRSubDetail2: TQRSubDetail
      Left = 19
      Top = 113
      Width = 650
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRSubDetail2BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        60.854166666666670000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep2
      OnNeedData = QRSubDetail2NeedData
      PrintBefore = False
      PrintIfEmpty = True
      object ksrq_ls: TQRLabel
        Left = 1
        Top = 3
        Width = 67
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          2.645833333333333000
          7.937500000000000000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object kdys_ls: TQRLabel
        Left = 69
        Top = 3
        Width = 53
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          182.562500000000000000
          7.937500000000000000
          140.229166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object zxryxm_ls: TQRLabel
        Left = 570
        Top = 3
        Width = 70
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1508.125000000000000000
          7.937500000000000000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'zxhsmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object zxsj_ls: TQRLabel
        Left = 481
        Top = 3
        Width = 80
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1272.645833333333000000
          7.937500000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'zxzxsj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object xmmc_ls: TQRLabel
        Left = 123
        Top = 3
        Width = 273
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          325.437500000000000000
          7.937500000000000000
          722.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object ypyf_ls: TQRLabel
        Left = 413
        Top = 3
        Width = 62
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1092.729166666667000000
          7.937500000000000000
          164.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRImage1: TQRImage
        Left = 397
        Top = -1
        Width = 14
        Height = 20
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          1050.395833333333000000
          -2.645833333333333000
          37.041666666666670000)
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
      object QRShape3: TQRShape
        Left = 68
        Top = 0
        Width = 1
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          179.916666666666700000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 122
        Top = 0
        Width = 1
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          322.791666666666700000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 122
        Top = 0
        Width = 1
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          322.791666666666700000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 566
        Top = -1
        Width = 1
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          1497.541666666667000000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 0
        Width = 1
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          0.000000000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 649
        Top = 0
        Width = 0
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          1717.145833333333000000
          0.000000000000000000
          -2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 477
        Top = 0
        Width = 1
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          1262.062500000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 0
        Top = 1
        Width = 650
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psDash
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          2.645833333333333000
          1719.791666666667000000)
        Brush.Color = clRed
        Pen.Color = clRed
        Pen.Style = psDot
        Pen.Width = 4
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 566
        Top = -42
        Width = 1
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          1497.541666666667000000
          -111.125000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 566
        Top = -42
        Width = 1
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          1497.541666666667000000
          -111.125000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
    end
    object QRBand2: TQRBand
      Left = 19
      Top = 38
      Width = 650
      Height = 75
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
        198.437500000000000000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape4: TQRShape
        Left = 0
        Top = 49
        Width = 650
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          129.645833333333300000
          1719.791666666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRL_yymc_ls: TQRLabel
        Left = 260
        Top = 2
        Width = 129
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          687.916666666666700000
          5.291666666666667000
          341.312500000000000000)
        Alignment = taCenter
        AlignToBand = True
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
        ExportAs = exptText
        FontSize = 14
      end
      object QRL_brxm_ls: TQRLabel
        Left = 1
        Top = 30
        Width = 96
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          2.645833333333333000
          79.375000000000000000
          254.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_brxm_ls'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRL_tmh_ls: TQRLabel
        Left = 416
        Top = 30
        Width = 87
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1100.666666666667000000
          79.375000000000000000
          230.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_tmh_ls'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRLabel22: TQRLabel
        Left = 12
        Top = 55
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
          145.520833333333300000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26085#26399#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel23: TQRLabel
        Left = 78
        Top = 55
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          206.375000000000000000
          145.520833333333300000
          97.895833333333320000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#22065#32773
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel24: TQRLabel
        Left = 578
        Top = 55
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1529.291666666667000000
          145.520833333333300000
          97.895833333333320000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25191#34892#32773
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel25: TQRLabel
        Left = 261
        Top = 55
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          690.562500000000000000
          145.520833333333300000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307'  '#22065'  '#20869'  '#23481
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel27: TQRLabel
        Left = 492
        Top = 55
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1301.750000000000000000
          145.520833333333300000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25191#34892#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRShape16: TQRShape
        Left = 0
        Top = 49
        Width = 1
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          0.000000000000000000
          129.645833333333300000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 122
        Top = 49
        Width = 1
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          322.791666666666700000
          129.645833333333300000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 68
        Top = 49
        Width = 1
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          179.916666666666700000
          129.645833333333300000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 566
        Top = 50
        Width = 1
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1497.541666666667000000
          132.291666666666700000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRL_bch_ls: TQRLabel
        Left = 548
        Top = 30
        Width = 87
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1449.916666666667000000
          79.375000000000000000
          230.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_bch_ls'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object xb_ls: TQRLabel
        Left = 120
        Top = 30
        Width = 38
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          317.500000000000000000
          79.375000000000000000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'xb_ls'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object nl_ls: TQRLabel
        Left = 189
        Top = 30
        Width = 34
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          500.062500000000000000
          79.375000000000000000
          89.958333333333320000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'nl_ls'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object zd_ls: TQRLabel
        Left = 276
        Top = 30
        Width = 135
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          730.250000000000000000
          79.375000000000000000
          357.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'zd_ls'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 73
        Width = 650
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          193.145833333333300000
          1719.791666666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 477
        Top = 49
        Width = 1
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1262.062500000000000000
          129.645833333333300000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 648
        Top = 50
        Width = 1
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1714.500000000000000000
          132.291666666666700000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 433
    Width = 881
    Height = 45
    Align = alClient
    TabOrder = 2
    object Label1: TLabel
      Left = 343
      Top = 14
      Width = 60
      Height = 15
      Caption = #25171#21360#39034#24207
    end
    object lbl4: TLabel
      Left = 615
      Top = 14
      Width = 15
      Height = 15
      Caption = #31532
    end
    object Label2: TLabel
      Left = 681
      Top = 14
      Width = 15
      Height = 15
      Caption = #39029
    end
    object lbl2: TLabel
      Left = 702
      Top = 14
      Width = 15
      Height = 15
      Caption = #31532
    end
    object lbl3: TLabel
      Left = 767
      Top = 14
      Width = 45
      Height = 15
      Caption = #34892#24320#22987
    end
    object Button1: TButton
      Left = -6
      Top = 11
      Width = 65
      Height = 25
      Caption = #25171#21360#39044#35272
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 234
      Top = 11
      Width = 47
      Height = 25
      Caption = #36864#20986
      TabOrder = 1
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 409
      Top = 11
      Width = 67
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 2
      OnKeyPress = Edit1KeyPress
    end
    object Button3: TButton
      Left = 497
      Top = 11
      Width = 109
      Height = 25
      Caption = #25171#21360#24207#21495#20462#25913
      TabOrder = 3
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 144
      Top = 11
      Width = 96
      Height = 25
      Caption = #24674#22797#21021#22987#25968#25454
      TabOrder = 4
      OnClick = Button4Click
    end
    object edt_4: TEdit
      Left = 636
      Top = 9
      Width = 39
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 5
      Text = '1'
    end
    object btn4: TButton
      Left = 816
      Top = 8
      Width = 59
      Height = 25
      Caption = #32493#25171
      TabOrder = 6
      OnClick = btn4Click
    end
    object ComboBox1: TComboBox
      Left = 720
      Top = 9
      Width = 49
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 15
      TabOrder = 7
      OnChange = ComboBox1Change
    end
    object Button5: TButton
      Left = 65
      Top = 11
      Width = 81
      Height = 25
      Caption = #26597#25151#21333#25171#21360
      TabOrder = 8
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 282
      Top = 11
      Width = 62
      Height = 25
      Caption = #20840#36873
      TabOrder = 9
      OnClick = Button6Click
    end
  end
  object edt_1: TEdit
    Left = 54
    Top = 256
    Width = 652
    Height = 23
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    TabOrder = 3
    Text = 
      'fzph,kdrq rq,kdrq sj,case rtrim(fzph) when '#39#39' then xmmc+'#39' '#39'+yytj' +
      '+'#39' '#39'+ypyf else xmmc end xmmc,kdysmc,case when left(gysj,4)='#39#24050#21462#28040' ' +
      ' '#39' then left(gysj,4) else '#39#39' end qx,case when left(gysj,4)='#39#24050#21462#28040' ' +
      ' '#39' then substring(gysj,6,len(gysj)-5) else gysj end gysj,zxhsmc,' +
      'rtrim(case rtrim(fzph) when '#39#39' then '#39#39' else yytj+ypyf end) ypyf'
    Visible = False
  end
  object edt_2: TEdit
    Left = 54
    Top = 184
    Width = 652
    Height = 23
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    TabOrder = 4
    Text = 
      'fzph,kdrq,case rtrim(fzph) when '#39#39' then xmmc+'#39' '#39'+yytj+'#39' '#39'+ypyf e' +
      'lse xmmc end xmmc,kdysmc,case when left(gysj,4)='#39#24050#21462#28040'  '#39' then lef' +
      't(gysj,4) else '#39#39' end qx,case when left(gysj,4)='#39#24050#21462#28040'  '#39' then sub' +
      'string(gysj,6,len(gysj)-5) else gysj end gysj,zxhsmc,rtrim(case ' +
      'rtrim(fzph) when '#39#39' then '#39#39' else yytj+ypyf end) ypyf'
    Visible = False
  end
  object sp_zxjl_cq_dy: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zybl_cx_yzzxjl_xz_print;1'
    Parameters = <>
    Left = 112
    Top = 16
  end
  object ds_zxjl_cq_dy: TDataSource
    DataSet = sp_zxjl_cq_dy
    Left = 176
    Top = 16
  end
  object ds_cx: TDataSource
    DataSet = qry_cx
    Left = 208
    Top = 16
  end
  object qry_cx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *from zybl_cqyz_dy_ls where 1=2')
    Left = 72
    Top = 88
  end
  object sp_cxxz: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'bqgl_se_bczy'
    Parameters = <>
    Left = 144
    Top = 16
  end
  object GridppReport1: TGridppReport
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    OnPrintEnd = GridppReport1PrintEnd
    Left = 248
    Top = 96
  end
  object qry_cx_sx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 80
    Top = 16
  end
  object ActionList1: TActionList
    Left = 40
    Top = 96
    object kx: TAction
      Caption = 'kx'
      ShortCut = 49240
      OnExecute = kxExecute
    end
    object zd: TAction
      Caption = 'zd'
      ShortCut = 49236
      OnExecute = zdExecute
    end
  end
  object qry_dybz: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 472
    Top = 144
  end
  object cmd_dybz: TADOCommand
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 584
    Top = 104
  end
  object Qry_lsyzxgbz: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 400
    Top = 320
  end
end
