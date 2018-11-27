object frm_print_qxlist: Tfrm_print_qxlist
  Left = 190
  Top = 114
  Width = 696
  Height = 480
  Caption = 'frm_print_qxlist'
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
    Left = -18
    Top = 3
    Width = 794
    Height = 1123
    Frame.Color = 16744448
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep1BeforePrint
    DataSet = sp_cx_qxlist
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '宋体'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      127
      2970
      127
      2100
      127
      127
      0)
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
    PrintIfEmpty = True
    SnapToGrid = True
    Units = Inches
    Zoom = 100
    PrevFormStyle = fsNormal
    object QRBand1: TQRBand
      Left = 48
      Top = 48
      Width = 698
      Height = 103
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        272.520833333333
        1846.79166666667)
      BandType = rbPageHeader
      object QRShape2: TQRShape
        Left = 0
        Top = 75
        Width = 698
        Height = 7
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          18.5208333333333
          0
          198.4375
          1846.79166666667)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel1: TQRLabel
        Left = 284
        Top = 5
        Width = 129
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375
          751.416666666667
          13.2291666666667
          341.3125)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = True
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -29
        Font.Name = '楷体_GB2312'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 22
      end
      object QRLabel3: TQRLabel
        Left = 9
        Top = 59
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          23.8125
          156.104166666667
          171.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel3'
        Color = clWhite
        OnPrint = QRLabel3Print
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRSysData1: TQRSysData
        Left = 476
        Top = 59
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1259.41666666667
          156.104166666667
          129.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        OnPrint = QRSysData1Print
        Transparent = False
        FontSize = 12
      end
      object QRLabel12: TQRLabel
        Left = 209
        Top = 59
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          552.979166666667
          156.104166666667
          193.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel12'
        Color = clWhite
        OnPrint = QRLabel12Print
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel15: TQRLabel
        Left = 7
        Top = 82
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          18.5208333333333
          216.958333333333
          182.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '模块名称'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '宋体'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel16: TQRLabel
        Left = 103
        Top = 82
        Width = 112
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          272.520833333333
          216.958333333333
          296.333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '授权 权限名称'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '宋体'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel17: TQRLabel
        Left = 298
        Top = 82
        Width = 112
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          788.458333333333
          216.958333333333
          296.333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '授权 权限名称'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '宋体'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel18: TQRLabel
        Left = 496
        Top = 82
        Width = 112
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1312.33333333333
          216.958333333333
          296.333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '授权 权限名称'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '宋体'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 48
      Top = 151
      Width = 698
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        63.5
        1846.79166666667)
      Master = QuickRep1
      OnNeedData = QRSubDetail1NeedData
      PrintBefore = False
      PrintIfEmpty = True
      object QRShape1: TQRShape
        Left = 0
        Top = 19
        Width = 698
        Height = 7
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          18.5208333333333
          0
          50.2708333333333
          1846.79166666667)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel5: TQRLabel
        Left = 309
        Top = 2
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          817.5625
          5.29166666666667
          108.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '内容2'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel7: TQRLabel
        Left = 507
        Top = 2
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1341.4375
          5.29166666666667
          108.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '内容3'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel8: TQRLabel
        Left = 8
        Top = 2
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          5.29166666666667
          116.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '内容1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '宋体'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel4: TQRLabel
        Left = 113
        Top = 2
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          298.979166666667
          5.29166666666667
          108.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '内容1'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object QRBand2: TQRBand
      Left = 48
      Top = 175
      Width = 698
      Height = 102
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        269.875
        1846.79166666667)
      BandType = rbSummary
      object QRLabel2: TQRLabel
        Left = 10
        Top = 6
        Width = 113
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          26.4583333333333
          15.875
          298.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '权限所在科室：'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel6: TQRLabel
        Left = 388
        Top = 6
        Width = 113
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1026.58333333333
          15.875
          298.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '科负责人签批：'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel9: TQRLabel
        Left = 10
        Top = 38
        Width = 113
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          26.4583333333333
          100.541666666667
          298.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '分管院长签批：'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel10: TQRLabel
        Left = 10
        Top = 81
        Width = 193
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          26.4583333333333
          214.3125
          510.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '签批时间：    年  月  日'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel11: TQRLabel
        Left = 237
        Top = 81
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          627.0625
          214.3125
          193.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel11'
        Color = clWhite
        OnPrint = QRLabel11Print
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel13: TQRLabel
        Left = 388
        Top = 38
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1026.58333333333
          100.541666666667
          214.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '院长签批：'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel14: TQRLabel
        Left = 214
        Top = 6
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          566.208333333333
          15.875
          214.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '本人签名：'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
  end
  object sp_cx_qxlist: TADOStoredProc
    Active = True
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'sys_cx_qxlist;1'
    Parameters = <
      item
        Name = '@qxdldm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = #39'bqgl'#39
      end
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 6
        Value = #39'2083'#39
      end>
    Left = 26
    Top = 323
  end
end
