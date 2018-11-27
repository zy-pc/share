object frm_mzczyjz: Tfrm_mzczyjz
  Left = 150
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #38376#35786#25910#36153#25805#20316#21592#32467#24080
  ClientHeight = 433
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 792
    Height = 39
    Align = alTop
    Shape = bsFrame
    Style = bsRaised
  end
  object Label15: TLabel
    Left = 201
    Top = 13
    Width = 48
    Height = 16
    Caption = #25805#20316#21592
  end
  object Label16: TLabel
    Left = 454
    Top = 12
    Width = 104
    Height = 16
    Caption = #25910#25454#20351#29992#25968#37327':'
  end
  object BitBtn1: TBitBtn
    Left = 95
    Top = 4
    Width = 82
    Height = 32
    Caption = #32467#24080'(&J)'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 7
    Top = 4
    Width = 82
    Height = 32
    Caption = #32479#35745'(&T)'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn4: TBitBtn
    Left = 703
    Top = 7
    Width = 82
    Height = 30
    Caption = #36864#20986'(&X)'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn4Click
    NumGlyphs = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 39
    Width = 792
    Height = 394
    Align = alClient
    TabOrder = 3
    object Panel2: TPanel
      Left = 502
      Top = 1
      Width = 289
      Height = 392
      Align = alRight
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 96
        Height = 16
        Caption = #25910#25454#36215#27490#21495#65306
      end
      object Label2: TLabel
        Left = 14
        Top = 153
        Width = 96
        Height = 16
        Caption = #36864#36153#25910#25454#21495#65306
      end
      object Label3: TLabel
        Left = 8
        Top = 277
        Width = 88
        Height = 16
        Caption = #20316#24223#25910#25454#21495':'
      end
      object Memo1: TMemo
        Left = 10
        Top = 25
        Width = 272
        Height = 121
        Lines.Strings = (
          '')
        ReadOnly = True
        TabOrder = 0
      end
      object Memo2: TMemo
        Left = 12
        Top = 175
        Width = 271
        Height = 92
        ReadOnly = True
        TabOrder = 1
      end
      object Memo3: TMemo
        Left = 9
        Top = 299
        Width = 274
        Height = 84
        Lines.Strings = (
          '')
        ReadOnly = True
        TabOrder = 2
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 501
      Height = 392
      Align = alClient
      TabOrder = 1
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 225
        Height = 349
        Align = alClient
        Caption = #24635#25910#36153#39069
        TabOrder = 0
        object Label9: TLabel
          Left = 9
          Top = 23
          Width = 48
          Height = 16
          Caption = #24635#37329#39069
        end
        object Label10: TLabel
          Left = 9
          Top = 62
          Width = 48
          Height = 16
          Caption = #24635#20154#27425
        end
        object Label12: TLabel
          Left = 9
          Top = 100
          Width = 64
          Height = 16
          Caption = #36864#36153#37329#39069
        end
        object Label13: TLabel
          Left = 9
          Top = 139
          Width = 64
          Height = 16
          Caption = #36864#36153#20154#27425
        end
        object Label20: TLabel
          Left = 9
          Top = 178
          Width = 64
          Height = 16
          Caption = #20316#24223#37329#39069
        end
        object Label19: TLabel
          Left = 9
          Top = 216
          Width = 64
          Height = 16
          Caption = #20316#24223#20154#27425
        end
        object Edit1: TEdit
          Left = 77
          Top = 19
          Width = 133
          Height = 24
          Enabled = False
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 77
          Top = 58
          Width = 133
          Height = 24
          Enabled = False
          TabOrder = 1
        end
        object Edit3: TEdit
          Left = 77
          Top = 96
          Width = 133
          Height = 24
          Enabled = False
          TabOrder = 2
        end
        object Edit4: TEdit
          Left = 77
          Top = 135
          Width = 133
          Height = 24
          Enabled = False
          TabOrder = 3
        end
        object Edit6: TEdit
          Left = 77
          Top = 174
          Width = 133
          Height = 24
          Enabled = False
          TabOrder = 4
        end
        object Edit5: TEdit
          Left = 77
          Top = 212
          Width = 133
          Height = 24
          Enabled = False
          TabOrder = 5
        end
      end
      object GroupBox2: TGroupBox
        Left = 226
        Top = 1
        Width = 274
        Height = 349
        Align = alRight
        Caption = #20854#20013#65306#38750#29616#37329
        TabOrder = 1
        object Label4: TLabel
          Left = 9
          Top = 23
          Width = 48
          Height = 16
          Caption = #24635#37329#39069
        end
        object Label5: TLabel
          Left = 9
          Top = 62
          Width = 48
          Height = 16
          Caption = #24635#20154#27425
        end
        object Label6: TLabel
          Left = 9
          Top = 100
          Width = 64
          Height = 16
          Caption = #36864#36153#37329#39069
        end
        object Label7: TLabel
          Left = 9
          Top = 139
          Width = 64
          Height = 16
          Caption = #36864#36153#20154#27425
        end
        object Label8: TLabel
          Left = 9
          Top = 178
          Width = 64
          Height = 16
          Caption = #20316#24223#37329#39069
        end
        object Label11: TLabel
          Left = 9
          Top = 216
          Width = 64
          Height = 16
          Caption = #20316#24223#20154#27425
        end
        object Edit8: TEdit
          Left = 77
          Top = 19
          Width = 129
          Height = 24
          Enabled = False
          TabOrder = 0
        end
        object Edit9: TEdit
          Left = 77
          Top = 58
          Width = 129
          Height = 24
          Enabled = False
          TabOrder = 1
        end
        object Edit10: TEdit
          Left = 77
          Top = 96
          Width = 129
          Height = 24
          Enabled = False
          TabOrder = 2
        end
        object Edit11: TEdit
          Left = 77
          Top = 135
          Width = 129
          Height = 24
          Enabled = False
          TabOrder = 3
        end
        object Edit12: TEdit
          Left = 77
          Top = 174
          Width = 129
          Height = 24
          Enabled = False
          TabOrder = 4
        end
        object Edit13: TEdit
          Left = 77
          Top = 212
          Width = 129
          Height = 24
          Enabled = False
          TabOrder = 5
        end
      end
      object Panel4: TPanel
        Left = 1
        Top = 350
        Width = 499
        Height = 41
        Align = alBottom
        TabOrder = 2
        object Label14: TLabel
          Left = 17
          Top = 13
          Width = 64
          Height = 16
          Caption = #24212#20132#37329#39069
        end
        object Edit7: TEdit
          Left = 85
          Top = 9
          Width = 156
          Height = 24
          Enabled = False
          TabOrder = 0
        end
      end
    end
  end
  object QuickRep1: TQuickRep
    Left = 8
    Top = 1000
    Width = 794
    Height = 386
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = qry_dy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
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
      50.000000000000000000
      1020.000000000000000000
      50.000000000000000000
      2100.800000000000000000
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
    PreviewDefaultSaveType = stQRP
    object TitleBand1: TQRBand
      Left = 19
      Top = 19
      Width = 756
      Height = 302
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
        799.041666666666700000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRShape3: TQRShape
        Left = 10
        Top = 266
        Width = 732
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.958333333333300000
          26.458333333333300000
          703.791666666667000000
          1936.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object star_date: TQRLabel
        Left = 19
        Top = 49
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          50.270833333333330000
          129.645833333333300000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#36215#26102#38388':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object end_date: TQRLabel
        Left = 284
        Top = 51
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          751.416666666666800000
          134.937500000000000000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#27490#26102#38388':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object czydm: TQRLabel
        Left = 585
        Top = 51
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1547.812500000000000000
          134.937500000000000000
          164.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#21592': '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object bt: TQRLabel
        Left = 215
        Top = 15
        Width = 221
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          568.854166666666700000
          39.687500000000000000
          584.729166666666800000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38376#35786#25805#20316#21592#25910#36153#20132#27454#34920
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 16
      end
      object QRShape17: TQRShape
        Left = 299
        Top = 72
        Width = 443
        Height = 56
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          148.166666666667000000
          791.104166666667000000
          190.500000000000000000
          1172.104166666670000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText9: TQRDBText
        Left = 402
        Top = 74
        Width = 332
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          1063.625000000000000000
          195.791666666667000000
          878.416666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'sjqzh'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRShape28: TQRShape
        Left = 10
        Top = 237
        Width = 732
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          26.458333333333300000
          627.062500000000000000
          1936.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 299
        Top = 182
        Width = 443
        Height = 56
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          148.166666666667000000
          791.104166666667000000
          481.541666666667000000
          1172.104166666670000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 299
        Top = 127
        Width = 443
        Height = 56
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          148.166666666667000000
          791.104166666667000000
          336.020833333333000000
          1172.104166666670000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText10: TQRDBText
        Left = 403
        Top = 130
        Width = 330
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          1066.270833333330000000
          343.958333333333000000
          873.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'zfsjh'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText11: TQRDBText
        Left = 403
        Top = 186
        Width = 330
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333000000
          1066.270833333330000000
          492.125000000000000000
          873.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'tfsjh'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel10: TQRLabel
        Left = 308
        Top = 90
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          814.916666666666800000
          238.125000000000000000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#25454#36215#27490#21495
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
      object QRLabel11: TQRLabel
        Left = 306
        Top = 144
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          809.625000000000000000
          381.000000000000000000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20316#24223#25910#25454#21495
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
      object QRLabel12: TQRLabel
        Left = 307
        Top = 196
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          812.270833333333400000
          518.583333333333400000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36864#36153#25910#25454#21495
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
      object QRShape20: TQRShape
        Left = 10
        Top = 72
        Width = 290
        Height = 166
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          439.208333333333000000
          26.458333333333300000
          190.500000000000000000
          767.291666666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 11
        Top = 122
        Width = 289
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          29.104166666666700000
          322.791666666667000000
          764.645833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 12
        Top = 146
        Width = 289
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          31.750000000000000000
          386.291666666667000000
          764.645833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 11
        Top = 168
        Width = 289
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          29.104166666666700000
          444.500000000000000000
          764.645833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 12
        Top = 192
        Width = 288
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          31.750000000000000000
          508.000000000000000000
          762.000000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 12
        Top = 216
        Width = 288
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          31.750000000000000000
          571.500000000000000000
          762.000000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel13: TQRLabel
        Left = 21
        Top = 101
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          55.562500000000000000
          267.229166666666700000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#24635#37329#39069#65306
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
      object QRLabel14: TQRLabel
        Left = 21
        Top = 126
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          55.562500000000000000
          333.375000000000000000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#24635#31080#25968#65306
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
      object QRLabel15: TQRLabel
        Left = 21
        Top = 148
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          55.562500000000000000
          391.583333333333400000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20316#24223#24635#37329#39069#65306
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
      object QRLabel16: TQRLabel
        Left = 21
        Top = 172
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          55.562500000000000000
          455.083333333333300000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20316#24223#24635#31080#25968#65306
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
      object QRLabel17: TQRLabel
        Left = 21
        Top = 195
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          55.562500000000000000
          515.937500000000000000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36864#36153#24635#37329#39069#65306
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
        Left = 21
        Top = 218
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          55.562500000000000000
          576.791666666666800000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36864#36153#24635#31080#25968#65306
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
      object QRDBText12: TQRDBText
        Left = 136
        Top = 105
        Width = 25
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          359.833333333333400000
          277.812500000000000000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'sfje'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText13: TQRDBText
        Left = 136
        Top = 127
        Width = 25
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          359.833333333333400000
          336.020833333333400000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'sfrc'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText14: TQRDBText
        Left = 136
        Top = 150
        Width = 25
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          359.833333333333400000
          396.875000000000000000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'zfje'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText15: TQRDBText
        Left = 136
        Top = 172
        Width = 25
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          359.833333333333400000
          455.083333333333300000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'zfrc'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText16: TQRDBText
        Left = 136
        Top = 196
        Width = 25
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          359.833333333333400000
          518.583333333333400000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'tfje'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText17: TQRDBText
        Left = 136
        Top = 221
        Width = 25
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          359.833333333333400000
          584.729166666666800000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'tfrc'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel19: TQRLabel
        Left = 22
        Top = 243
        Width = 121
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          58.208333333333340000
          642.937500000000000000
          320.145833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23454#25910#24635#37329#39069#65306
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
      object QRDBText18: TQRDBText
        Left = 155
        Top = 244
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          410.104166666666700000
          645.583333333333400000
          97.895833333333320000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'ssje'
        Font.Charset = DEFAULT_CHARSET
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
      object QRLabel1: TQRLabel
        Left = 403
        Top = 244
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1066.270833333333000000
          645.583333333333400000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#31038#20445#37329#39069
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
        Left = 650
        Top = 237
        Width = 1
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1719.791666666670000000
          627.062500000000000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel2: TQRLabel
        Left = 597
        Top = 244
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1579.562500000000000000
          645.583333333333400000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23384#38134#34892
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
      object QRShape27: TQRShape
        Left = 395
        Top = 73
        Width = 1
        Height = 226
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          597.958333333333000000
          1045.104166666670000000
          193.145833333333000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 586
        Top = 237
        Width = 1
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1550.458333333330000000
          627.062500000000000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object dxje: TQRLabel
        Left = 22
        Top = 275
        Width = 101
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          58.208333333333340000
          727.604166666666800000
          267.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22823#20889#37329#39069#65306
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
      object QRLabel3: TQRLabel
        Left = 402
        Top = 273
        Width = 81
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1063.625000000000000000
          722.312500000000000000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #19978#20132#37329#39069#65306
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRShape26: TQRShape
        Left = 125
        Top = 72
        Width = 1
        Height = 167
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          441.854166666667000000
          330.729166666667000000
          190.500000000000000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 212
        Top = 72
        Width = 1
        Height = 167
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          441.854166666667000000
          560.916666666667000000
          190.500000000000000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText1: TQRDBText
        Left = 219
        Top = 105
        Width = 43
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          579.437500000000000000
          277.812500000000000000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'fxjsfje'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText2: TQRDBText
        Left = 219
        Top = 127
        Width = 43
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          579.437500000000000000
          336.020833333333400000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'fxjsfrc'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText3: TQRDBText
        Left = 219
        Top = 150
        Width = 43
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          579.437500000000000000
          396.875000000000000000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'fxjzfje'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText4: TQRDBText
        Left = 219
        Top = 172
        Width = 43
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          579.437500000000000000
          455.083333333333300000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'fxjzfrc'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText5: TQRDBText
        Left = 219
        Top = 196
        Width = 43
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          579.437500000000000000
          518.583333333333400000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'fxjtfje'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText6: TQRDBText
        Left = 219
        Top = 221
        Width = 43
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          579.437500000000000000
          584.729166666666800000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'fxjtfrc'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRShape5: TQRShape
        Left = 11
        Top = 97
        Width = 289
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          29.104166666666700000
          256.645833333333000000
          764.645833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel4: TQRLabel
        Left = 136
        Top = 80
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          359.833333333333400000
          211.666666666666700000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24635#25910#36153#39069
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
        Left = 219
        Top = 80
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          579.437500000000000000
          211.666666666666700000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20854#20013#65306#21345#25903#20184
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRShape6: TQRShape
        Left = 244
        Top = 238
        Width = 1
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666700000
          645.583333333333000000
          629.708333333333000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 490
        Top = 267
        Width = 1
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.666666666666700000
          1296.458333333330000000
          706.437500000000000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 490
        Top = 236
        Width = 1
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.666666666666700000
          1296.458333333330000000
          624.416666666667000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel7: TQRLabel
        Left = 248
        Top = 244
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          656.166666666666800000
          645.583333333333400000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21345#25903#20184
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
      object QRShape9: TQRShape
        Left = 299
        Top = 238
        Width = 1
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666700000
          791.104166666667000000
          629.708333333333000000
          2.645833333333330000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText7: TQRDBText
        Left = 307
        Top = 244
        Width = 19
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          812.270833333333400000
          645.583333333333400000
          50.270833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qry_dy
        DataField = 'kzf'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
    end
    object SummaryBand1: TQRBand
      Left = 19
      Top = 321
      Width = 756
      Height = 36
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
        95.250000000000000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object zbdate: TQRLabel
        Left = 487
        Top = 3
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1288.520833333333000000
          7.937500000000000000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21046#34920#26085#26399':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object zbr: TQRLabel
        Left = 211
        Top = 3
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          558.270833333333400000
          7.937500000000000000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#21592#31614#23383':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRLabel8: TQRLabel
        Left = 17
        Top = 3
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          44.979166666666670000
          7.937500000000000000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23457#26680#20154#31614#23383':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
    end
  end
  object czybox: TDBLookupComboBox
    Left = 255
    Top = 9
    Width = 166
    Height = 24
    KeyField = 'dm'
    ListField = 'mc'
    ListSource = ds_cxczy
    TabOrder = 5
  end
  object Edit14: TEdit
    Left = 564
    Top = 8
    Width = 121
    Height = 22
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 6
  end
  object sp_czyjz: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'mzsf_in_czyjz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@jzdh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
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
        Name = '@jzrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@xybs'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@sjqzh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@zfsjh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@tfsjh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@sfrc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@sfje'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end
      item
        Name = '@tfrc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@tfje'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end
      item
        Name = '@zfrc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@zfje'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end
      item
        Name = '@ssje'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end
      item
        Name = '@fxjsfrc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@fxjsfje'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end
      item
        Name = '@fxjtfrc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@fxjtfje'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end
      item
        Name = '@fxjzfrc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@fxjzfje'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
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
    Left = 198
    Top = 318
  end
  object sp_srzk: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'mzsf_cx_sfzk;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 242
    Top = 317
  end
  object sp_cxsjh: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'mzsf_cx_sjbh;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 292
    Top = 316
  end
  object sp_jzdy: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'mzsf_in_czyrb;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
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
        Name = '@jzdh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 342
    Top = 318
  end
  object qry_dy: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'czydm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'jzdh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'select *,fxjsfje-(fxjtfje+fxjzfje) kzf from mzsf_czyjz where czy' +
        'dm=:czydm and jzdh=:jzdh')
    Left = 388
    Top = 316
  end
  object qry_cxczy: TADOQuery
    Connection = DM_data.ado_mydata
    AfterScroll = qry_cxczyAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT czy.dm, czy.mc,czy.sybz'
      ' FROM sys_czy czy,sys_ksdm ks,sys_kssxdm kssx'
      ' where czy.ksdm=ks.dm and'
      '       ks.kssx=kssx.dm and'
      '       kssx.dm='#39'06'#39' '
      ' order by czy.dm'
      '')
    Left = 476
    Top = 318
  end
  object ds_cxczy: TDataSource
    DataSet = qry_cxczy
    Left = 430
    Top = 318
  end
end
