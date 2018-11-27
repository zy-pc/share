object frm_dysxsqd: Tfrm_dysxsqd
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #25171#21360#36755#34880#30003#35831#21333
  ClientHeight = 482
  ClientWidth = 926
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 926
    Height = 58
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 16
      Width = 75
      Height = 15
      Caption = #30149#20154#21345#21495#65306
    end
    object Label2: TLabel
      Left = 240
      Top = 16
      Width = 45
      Height = 15
      Caption = #26085#26399#65306
    end
    object Edit1: TEdit
      Left = 88
      Top = 13
      Width = 121
      Height = 23
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 511
      Top = 12
      Width = 75
      Height = 25
      Caption = #26597#25214
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 299
      Top = 12
      Width = 150
      Height = 23
      Date = 41129.690956261580000000
      Time = 41129.690956261580000000
      TabOrder = 2
      OnChange = DateTimePicker1Change
    end
    object Button2: TButton
      Left = 744
      Top = 12
      Width = 75
      Height = 25
      Caption = #36820#22238
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 631
      Top = 12
      Width = 75
      Height = 25
      Caption = #25171#21360
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Button3Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 56
    Width = 926
    Height = 426
    Align = alBottom
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 924
      Height = 424
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxGrid1DBTableView1Column10: TcxGridDBColumn
          Caption = #30003#35831#21333#21495
          DataBinding.FieldName = 'apply_num'
          Width = 118
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = #20303#38498#21495
          DataBinding.FieldName = 'INP_NO'
          Width = 116
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = #21463#34880#32773#34880#22411
          DataBinding.FieldName = 'PAT_BLOOD_GROUP'
          Width = 95
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = 'RH'#34880#22411
          DataBinding.FieldName = 'Rh_zw'
          Width = 68
        end
        object cxGrid1DBTableView1Column4: TcxGridDBColumn
          Caption = #36755#34880#24635#37327
          DataBinding.FieldName = 'BLOOD_SUM'
          Width = 83
        end
        object cxGrid1DBTableView1Column6: TcxGridDBColumn
          Caption = #36755#34880#21333#20301
          DataBinding.FieldName = 'BLOOD_UNIT'
          Width = 83
        end
        object cxGrid1DBTableView1Column5: TcxGridDBColumn
          Caption = #30003#35831#25104#20998#34880
          DataBinding.FieldName = 'BLOOD_TYPE_NAME'
          Width = 97
        end
        object cxGrid1DBTableView1Column7: TcxGridDBColumn
          Caption = #24202#21495
          DataBinding.FieldName = 'BED_NO'
          Width = 69
        end
        object cxGrid1DBTableView1Column8: TcxGridDBColumn
          Caption = #36755#34880#26102#38388
          DataBinding.FieldName = 'TRANS_DATE'
          Width = 157
        end
        object cxGrid1DBTableView1Column9: TcxGridDBColumn
          Caption = #26159#21542#25171#21360
          DataBinding.FieldName = 'dyyxsq'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 80
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object QuickRep3: TQuickRep
      Left = 572
      Top = 250
      Width = 151
      Height = 112
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
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
      Options = []
      Page.Columns = 1
      Page.Orientation = poPortrait
      Page.PaperSize = Custom
      Page.Values = (
        0.000000000000000000
        296.300000000000000000
        0.000000000000000000
        399.500000000000000000
        0.000000000000000000
        0.000000000000000000
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
      object DetailBand2: TQRBand
        Left = 0
        Top = 0
        Width = 151
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
          264.583333333333300000
          399.520833333333300000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbDetail
        object QRImage3: TQRImage
          Left = 18
          Top = 2
          Width = 113
          Height = 36
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            95.250000000000000000
            47.625000000000000000
            5.291666666666667000
            298.979166666666700000)
        end
        object QRDBText11: TQRDBText
          Left = 31
          Top = 54
          Width = 89
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            82.020833333333330000
            142.875000000000000000
            235.479166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ADOQuery1
          DataField = 'brxm1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = False
          FontSize = 8
        end
        object QRDBText21: TQRDBText
          Left = 99
          Top = 67
          Width = 47
          Height = 12
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.750000000000000000
            261.937500000000000000
            177.270833333333300000
            124.354166666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ADOQuery1
          DataField = 'BLOOD_UNIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText1: TQRDBText
          Left = 106
          Top = 99
          Width = 45
          Height = 12
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Frame.Style = psDash
          Size.Values = (
            31.750000000000000000
            280.458333333333300000
            261.937500000000000000
            119.062500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataField = 'jydlpx'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRDBText2: TQRDBText
          Left = 113
          Top = 54
          Width = 43
          Height = 12
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.750000000000000000
            298.979166666666700000
            142.875000000000000000
            113.770833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ADOQuery1
          DataField = 'BED_NO'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel2: TQRLabel
          Left = 1
          Top = 40
          Width = 49
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2.645833333333333000
            105.833333333333300000
            129.645833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #20303#38498#21495#65306
          Color = clWhite
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText4: TQRDBText
          Left = 38
          Top = 41
          Width = 65
          Height = 12
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.750000000000000000
            100.541666666666700000
            108.479166666666700000
            171.979166666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ADOQuery1
          DataField = 'INP_NO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object qrdbtxtbrxm: TQRDBText
          Left = 55
          Top = 67
          Width = 42
          Height = 12
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.750000000000000000
            145.520833333333300000
            177.270833333333300000
            111.125000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ADOQuery1
          DataField = 'BLOOD_SUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel1: TQRLabel
          Left = 3
          Top = 94
          Width = 62
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            47.625000000000000000
            7.937500000000000000
            248.708333333333300000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #36755#34880#26102#38388#65306
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText3: TQRDBText
          Left = 52
          Top = 89
          Width = 95
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            137.583333333333300000
            235.479166666666700000
            251.354166666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Color = clWhite
          DataSet = ADOQuery1
          DataField = 'TRANS_DATE'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel3: TQRLabel
          Left = 0
          Top = 67
          Width = 61
          Height = 12
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.750000000000000000
            0.000000000000000000
            177.270833333333300000
            161.395833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #36755#34880#24635#37327#65306
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel5: TQRLabel
          Left = 0
          Top = 53
          Width = 32
          Height = 12
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.750000000000000000
            0.000000000000000000
            140.229166666666700000
            84.666666666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #22995#21517':'
          Color = clWhite
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText5: TQRDBText
          Left = 44
          Top = 79
          Width = 66
          Height = 12
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.750000000000000000
            116.416666666666700000
            209.020833333333300000
            174.625000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Color = clWhite
          DataSet = ADOQuery1
          DataField = 'BLOOD_TYPE_NAME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel6: TQRLabel
          Left = 0
          Top = 79
          Width = 49
          Height = 12
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.750000000000000000
            0.000000000000000000
            209.020833333333300000
            129.645833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #25104#20998#34880#65306
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText6: TQRDBText
          Left = 104
          Top = 41
          Width = 46
          Height = 12
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.750000000000000000
            275.166666666666700000
            108.479166666666700000
            121.708333333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ADOQuery1
          DataField = 'mc'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
      end
    end
    object brcd1: TBarCode
      Left = 124
      Top = 216
      Width = 318
      Height = 146
      BarType = bcCode128C
      BarCode = '123456'
      Modul = 1
      Ratio = 2.000000000000000000
      TextShow = tsBarCode
      About = 
        'BarCode VCL Component, Copyright(C) Han-soft Software.(http://ww' +
        'w.han-soft.com)'
      TabOrder = 2
      Visible = False
    end
    object QuickRep1: TQuickRep
      Left = 368
      Top = 79
      Width = 189
      Height = 283
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
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
      Page.PaperSize = Custom
      Page.Values = (
        20.000000000000000000
        750.000000000000000000
        20.000000000000000000
        500.000000000000000000
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
      object QRBand1: TQRBand
        Left = 8
        Top = 8
        Width = 174
        Height = 266
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
          703.791666666666700000
          460.375000000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbDetail
        object QRImage1: TQRImage
          Left = 10
          Top = 5
          Width = 154
          Height = 42
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            111.125000000000000000
            26.458333333333330000
            13.229166666666670000
            407.458333333333300000)
        end
        object QRDBText7: TQRDBText
          Left = 51
          Top = 94
          Width = 118
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333330000
            134.937500000000000000
            248.708333333333300000
            312.208333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ADOQuery1
          DataField = 'brxm1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = False
          FontSize = 10
        end
        object QRDBText8: TQRDBText
          Left = 121
          Top = 140
          Width = 50
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            320.145833333333300000
            370.416666666666700000
            132.291666666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ADOQuery1
          DataField = 'BLOOD_UNIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 9
        end
        object QRDBText10: TQRDBText
          Left = 54
          Top = 116
          Width = 110
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333330000
            142.875000000000000000
            306.916666666666700000
            291.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ADOQuery1
          DataField = 'BED_NO'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel4: TQRLabel
          Left = 5
          Top = 49
          Width = 53
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            13.229166666666670000
            129.645833333333300000
            140.229166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #20303#38498#21495#65306
          Color = clWhite
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 9
        end
        object QRDBText12: TQRDBText
          Left = 62
          Top = 49
          Width = 107
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333330000
            164.041666666666700000
            129.645833333333300000
            283.104166666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ADOQuery1
          DataField = 'INP_NO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText13: TQRDBText
          Left = 72
          Top = 140
          Width = 47
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            190.500000000000000000
            370.416666666666700000
            124.354166666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ADOQuery1
          DataField = 'BLOOD_SUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 9
        end
        object QRLabel7: TQRLabel
          Left = 9
          Top = 225
          Width = 68
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            23.812500000000000000
            595.312500000000000000
            179.916666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #36755#34880#26102#38388#65306
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 9
        end
        object QRDBText14: TQRDBText
          Left = 62
          Top = 224
          Width = 107
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            164.041666666666700000
            592.666666666666700000
            283.104166666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Color = clWhite
          DataSet = ADOQuery1
          DataField = 'TRANS_DATE'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 9
        end
        object QRLabel8: TQRLabel
          Left = 5
          Top = 140
          Width = 66
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            13.229166666666670000
            370.416666666666700000
            174.625000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #36755#34880#24635#37327#65306
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 9
        end
        object QRLabel9: TQRLabel
          Left = 7
          Top = 95
          Width = 34
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            18.520833333333330000
            251.354166666666700000
            89.958333333333330000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #22995#21517':'
          Color = clWhite
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 9
        end
        object QRDBText15: TQRDBText
          Left = 64
          Top = 162
          Width = 103
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            47.625000000000000000
            169.333333333333300000
            428.625000000000000000
            272.520833333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Color = clWhite
          DataSet = ADOQuery1
          DataField = 'BLOOD_TYPE_NAME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 9
        end
        object QRLabel10: TQRLabel
          Left = 5
          Top = 163
          Width = 53
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            13.229166666666670000
            431.270833333333300000
            140.229166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #25104#20998#34880#65306
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 9
        end
        object QRDBText16: TQRDBText
          Left = 64
          Top = 71
          Width = 105
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333330000
            169.333333333333300000
            187.854166666666700000
            277.812500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ADOQuery1
          DataField = 'mc'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 11
        end
        object QRLabel11: TQRLabel
          Left = 7
          Top = 73
          Width = 40
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            18.520833333333330000
            193.145833333333300000
            105.833333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #31185#23460#65306
          Color = clWhite
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 9
        end
        object QRLabel12: TQRLabel
          Left = 7
          Top = 117
          Width = 40
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            18.520833333333330000
            309.562500000000000000
            105.833333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #24202#21495#65306
          Color = clWhite
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 9
        end
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    Left = 496
    Top = 56
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 528
    Top = 56
  end
  object ADOQuery2: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    Left = 632
    Top = 184
  end
end
