object frm_print_qxlist: Tfrm_print_qxlist
  Left = 190
  Top = 114
  Caption = 'frm_print_qxlist'
  ClientHeight = 453
  ClientWidth = 741
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
    DataSet = ADOQuery1
    Font.Charset = DEFAULT_CHARSET
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
    Options = [FirstPageHeader]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      127.000000000000000000
      2970.000000000000000000
      127.000000000000000000
      2100.000000000000000000
      127.000000000000000000
      127.000000000000000000
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
    Units = Inches
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
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
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        272.520833333333300000
        1846.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
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
          18.520833333333300000
          0.000000000000000000
          198.437500000000000000
          1846.791666666670000000)
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
          79.375000000000000000
          751.416666666666700000
          13.229166666666670000
          341.312500000000000000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = True
        Caption = 'QRLabel1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -29
        Font.Name = #26999#20307'_GB2312'
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
          44.979166666666670000
          23.812500000000000000
          156.104166666666700000
          171.979166666666700000)
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
          44.979166666666670000
          1259.416666666667000000
          156.104166666666700000
          129.645833333333300000)
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
          44.979166666666670000
          552.979166666666700000
          156.104166666666700000
          193.145833333333300000)
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
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          216.958333333333300000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23376#27169#22359#21517#31216
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
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
          44.979166666666670000
          272.520833333333300000
          216.958333333333300000
          296.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25480#26435' '#26435#38480#21517#31216
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
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
          44.979166666666670000
          788.458333333333300000
          216.958333333333300000
          296.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25480#26435' '#26435#38480#21517#31216
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
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
          44.979166666666670000
          1312.333333333333000000
          216.958333333333300000
          296.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25480#26435' '#26435#38480#21517#31216
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 48
      Top = 173
      Width = 698
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
        1846.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      FooterBand = QRBand3
      OnNeedData = QRSubDetail1NeedData
      PrintBefore = False
      PrintIfEmpty = True
      object QRShape1: TQRShape
        Left = 0
        Top = 22
        Width = 698
        Height = 7
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          18.520833333333300000
          0.000000000000000000
          58.208333333333300000
          1846.791666666670000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel5: TQRLabel
        Left = 309
        Top = 5
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          817.562500000000000000
          13.229166666666670000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20869#23481'2'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel7: TQRLabel
        Left = 507
        Top = 5
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1341.437500000000000000
          13.229166666666670000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20869#23481'3'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel8: TQRLabel
        Left = 8
        Top = 5
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          13.229166666666670000
          116.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20869#23481'1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel4: TQRLabel
        Left = 113
        Top = 5
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          298.979166666666700000
          13.229166666666670000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20869#23481'1'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object QRBand2: TQRBand
      Left = 48
      Top = 200
      Width = 698
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
        1846.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
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
          44.979166666666670000
          26.458333333333330000
          15.875000000000000000
          298.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26435#38480#25152#22312#31185#23460#65306
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
          44.979166666666670000
          1026.583333333333000000
          15.875000000000000000
          298.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31185#36127#36131#20154#31614#25209#65306
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
          44.979166666666670000
          26.458333333333330000
          100.541666666666700000
          298.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20998#31649#38498#38271#31614#25209#65306
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
          44.979166666666670000
          26.458333333333330000
          214.312500000000000000
          510.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31614#25209#26102#38388#65306'    '#24180'  '#26376'  '#26085
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
          44.979166666666670000
          627.062500000000000000
          214.312500000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel11'
        Color = clWhite
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
          44.979166666666670000
          1026.583333333333000000
          100.541666666666700000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38498#38271#31614#25209#65306
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
          44.979166666666670000
          566.208333333333300000
          15.875000000000000000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26412#20154#31614#21517#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object QRGroup1: TQRGroup
      Left = 48
      Top = 151
      Width = 698
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
        1846.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'ADOQuery1.mkmc'
      FooterBand = QRBand3
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRDBText1: TQRDBText
        Left = 10
        Top = 1
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psDot
        Size.Values = (
          44.979166666666670000
          26.458333333333330000
          2.645833333333333000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'mkmc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        OnPrint = QRDBText1Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape4: TQRShape
        Left = 0
        Top = 18
        Width = 698
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          0.000000000000000000
          47.625000000000000000
          1846.791666666670000000)
        Pen.Style = psDot
        Shape = qrsTopAndBottom
        VertAdjust = 0
      end
    end
    object QRBand3: TQRBand
      Left = 48
      Top = 200
      Width = 698
      Height = 0
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
        0.000000000000000000
        1846.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
    end
  end
  object TQRChildBand
    Left = 0
    Top = 0
    Width = 15
    Height = 40
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
      105.833333333333000000
      40.000000000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
  end
  object TQRChildBand
    Left = 0
    Top = 0
    Width = 15
    Height = 40
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
      105.833333333333000000
      40.000000000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
  end
  object sp_cx_qxlist: TADOStoredProc
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
    Left = 34
    Top = 331
  end
  object ADOQuery1: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select distinct rtrim(qxdldm) qxdldm,rtrim(qxdlmc) mkmc  from sy' +
        's_qxdl'
      'where kmjs=1'
      'GRoup by qxdldm,qxdlmc'
      'order by qxdldm')
    Left = 62
    Top = 379
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    OnDataChange = DataSource1DataChange
    Left = 94
    Top = 379
  end
  object qry_czy: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 200
    Top = 336
  end
end
