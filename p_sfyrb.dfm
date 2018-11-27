object frm_sfyrb: Tfrm_sfyrb
  Left = 158
  Top = 134
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #20303#38498#25910#36153#26085#25253#34920
  ClientHeight = 580
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 774
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 12
      Width = 80
      Height = 16
      Caption = #32479#35745#26085#26399#36215
    end
    object Label2: TLabel
      Left = 207
      Top = 13
      Width = 16
      Height = 16
      Caption = #27490
    end
    object dtp1: TDateTimePicker
      Left = 91
      Top = 8
      Width = 113
      Height = 24
      Date = 37752.683657326400000000
      Time = 37752.683657326400000000
      TabOrder = 0
      OnChange = dtp1Change
    end
    object BitBtn1: TcxButton
      Left = 355
      Top = 6
      Width = 70
      Height = 27
      Caption = #26597#35810'(&Q)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn2: TcxButton
      Left = 426
      Top = 6
      Width = 70
      Height = 27
      Caption = #25171#21360'(&P)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn2Click
    end
    object BitBtn3: TcxButton
      Left = 689
      Top = 6
      Width = 81
      Height = 27
      Caption = #36864#20986'(&X)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn3Click
    end
    object BitBtn4: TcxButton
      Left = 497
      Top = 6
      Width = 95
      Height = 27
      Caption = #25171#21360#20010#20154'(&W)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn4Click
    end
    object BitBtn5: TcxButton
      Left = 593
      Top = 6
      Width = 95
      Height = 27
      Caption = #25171#21360#26126#32454'(&M)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn5Click
    end
    object dtp2: TDateTimePicker
      Left = 226
      Top = 8
      Width = 121
      Height = 24
      Date = 37777.690698055600000000
      Time = 37777.690698055600000000
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 774
    Height = 539
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 772
      Height = 537
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = ' &1.'#25805#20316#21592#32467#31639#24773#20917' '
        object DBGridEh1: TDBGridEh
          Left = 0
          Top = 0
          Width = 764
          Height = 506
          Hint = #21452#20987#26174#31034#39044#20132#26126#32454
          Align = alClient
          DataSource = ds_sfyrb
          EditActions = [geaCopyEh, geaSelectAllEh]
          Flat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -16
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 1
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnDblClick = DBGridEh1DblClick
          OnKeyPress = DBGridEh1KeyPress
          Columns = <
            item
              EditButtons = <>
              FieldName = 'xm'
              Footer.Alignment = taCenter
              Footer.Color = clYellow
              Footer.Value = #21512#35745
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = #22995#21517
            end
            item
              EditButtons = <>
              FieldName = 'bryrs'
              Footer.Alignment = taCenter
              Footer.Color = clYellow
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = #20837#38498#20154#25968
              Width = 49
            end
            item
              EditButtons = <>
              FieldName = 'syjrc'
              Footer.Color = clYellow
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #22312#38498'|'#39044#20132'|'#20154#27425
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'syjze'
              Footer.Color = clYellow
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #22312#38498'|'#39044#20132'|'#37329#39069
              Width = 94
            end
            item
              EditButtons = <>
              FieldName = 'tyjrc'
              Footer.Color = clYellow
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #22312#38498'|'#36864#39044#20132'|'#20154#27425
              Width = 57
            end
            item
              EditButtons = <>
              FieldName = 'tyjze'
              Footer.Color = clYellow
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #22312#38498'|'#36864#39044#20132'|'#37329#39069
              Width = 82
            end
            item
              EditButtons = <>
              FieldName = 'jfbs'
              Footer.Color = clYellow
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #22312#38498'|'#35760#36153'|'#20154#27425
              Width = 37
            end
            item
              EditButtons = <>
              FieldName = 'jfje'
              Footer.Color = clYellow
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #22312#38498'|'#35760#36153'|'#37329#39069
              Width = 96
            end
            item
              EditButtons = <>
              FieldName = 'bcyrs'
              Footer.Color = clYellow
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #20986#38498'|'#20154#25968
              Width = 39
            end
            item
              EditButtons = <>
              FieldName = 'cybxrc'
              Footer.Color = clYellow
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #20986#38498'|'#34917#27454'|'#20154#27425
              Width = 54
            end
            item
              EditButtons = <>
              FieldName = 'cybxje'
              Footer.Color = clYellow
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #20986#38498'|'#34917#27454'|'#37329#39069
              Width = 104
            end
            item
              EditButtons = <>
              FieldName = 'cytxrc'
              Footer.Color = clYellow
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #20986#38498'|'#36864#27454'|'#20154#27425
              Width = 61
            end
            item
              EditButtons = <>
              FieldName = 'cytxje'
              Footer.Color = clYellow
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #20986#38498'|'#36864#27454'|'#37329#39069
              Width = 61
            end
            item
              EditButtons = <>
              FieldName = 'jsyjbs'
              Footer.Color = clYellow
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #20986#38498'|'#32467#31639'|'#20914#36716#39044#20132'|'#20154#27425
              Width = 55
            end
            item
              EditButtons = <>
              FieldName = 'jsbryj'
              Footer.Color = clYellow
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #20986#38498'|'#32467#31639'|'#20914#36716#39044#20132'|'#37329#39069
              Width = 82
            end
            item
              EditButtons = <>
              FieldName = 'jsbrfy'
              Footer.Color = clYellow
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #20986#38498'|'#32467#31639'|'#36153#29992
              Width = 84
            end
            item
              EditButtons = <>
              FieldName = 'jsqfbryj'
              Footer.Color = clYellow
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #20986#38498'|'#32467#31639'|'#24453#20914#39044#20132
              Width = 82
            end
            item
              EditButtons = <>
              FieldName = 'jsqfbrfy'
              Footer.Color = clYellow
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #20986#38498'|'#32467#31639'|'#24453#32467#24080
              Width = 102
            end
            item
              EditButtons = <>
              FieldName = 'hjje'
              Footer.Color = clYellow
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #24212#32564#37329#39069
              Width = 115
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = ' &2.'#25805#20316#21592#25910#27454#26126#32454' '
        ImageIndex = 1
        object DBGridEh3: TDBGridEh
          Left = 0
          Top = 0
          Width = 764
          Height = 506
          Align = alClient
          AllowedOperations = []
          DataSource = ds_sfmx
          EditActions = [geaCopyEh, geaSelectAllEh]
          Flat = False
          FooterColor = clYellow
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -16
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ReadOnly = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridEh3DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'sfrq'
              Footer.Alignment = taCenter
              Footer.Value = #21512#35745
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #25910#36153#26085#26399
              Width = 143
            end
            item
              EditButtons = <>
              FieldName = 'brxm'
              Footer.Alignment = taCenter
              Footer.Value = #21512#35745
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #22995#21517
              Width = 92
            end
            item
              EditButtons = <>
              FieldName = 'sjh'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #25910#25454#21495
              Width = 113
            end
            item
              EditButtons = <>
              FieldName = 'yjje'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #20132#36153#37329#39069
              Width = 90
            end
            item
              EditButtons = <>
              FieldName = 'fyze'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #24635#36153#29992
              Width = 92
            end
            item
              EditButtons = <>
              FieldName = 'yjze'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #24635#39044#20132
              Width = 90
            end
            item
              EditButtons = <>
              FieldName = 'yjxssm'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #35828#26126
              Width = 126
            end>
        end
      end
    end
  end
  object QuickRep1: TQuickRep
    Left = 24
    Top = 1000
    Width = 1056
    Height = 816
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = ad_sfrb
    Font.Charset = GB2312_CHARSET
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
    Page.Orientation = poLandscape
    Page.PaperSize = Letter
    Page.Values = (
      100.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      2794.000000000000000000
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
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 980
      Height = 69
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
        182.562500000000000000
        2592.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object bt: TQRLabel
        Left = 442
        Top = 6
        Width = 96
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1169.458333333333000000
          15.875000000000000000
          254.000000000000000000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#26085#25253#34920
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object bbrq: TQRLabel
        Left = 2
        Top = 45
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          5.291666666666670000
          119.062500000000000000
          129.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25253#34920#26085#26399
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 107
      Width = 980
      Height = 50
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
        132.291666666666700000
        2592.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel3: TQRLabel
        Left = 269
        Top = 4
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          711.729166666667000000
          10.583333333333300000
          97.895833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36864#39044#20132
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel4: TQRLabel
        Left = 191
        Top = 29
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          505.354166666667000000
          76.729166666666700000
          66.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#39069
        Color = clWhite
        Font.Charset = GB2312_CHARSET
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
        Left = 105
        Top = 27
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          277.812500000000000000
          71.437500000000000000
          66.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20154#27425
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel6: TQRLabel
        Left = 68
        Top = 10
        Width = 26
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          179.916666666667000000
          26.458333333333300000
          68.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #20837#38498#20154#25968
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel7: TQRLabel
        Left = 2
        Top = 20
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          5.291666666666670000
          52.916666666666700000
          66.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995#21517
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel8: TQRLabel
        Left = 160
        Top = 4
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          423.333333333333000000
          10.583333333333300000
          66.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39044#25910
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel9: TQRLabel
        Left = 502
        Top = 9
        Width = 27
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.958333333333300000
          1328.208333333330000000
          23.812500000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #20986#38498#20154#25968
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel11: TQRLabel
        Left = 298
        Top = 29
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          788.458333333333000000
          76.729166666666700000
          66.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#39069
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel12: TQRLabel
        Left = 232
        Top = 29
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          613.833333333333000000
          76.729166666666700000
          66.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20154#27425
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel13: TQRLabel
        Left = 563
        Top = 20
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1489.604166666670000000
          52.916666666666700000
          129.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20914#20256#39044#20132
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel14: TQRLabel
        Left = 737
        Top = 20
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1949.979166666670000000
          52.916666666666700000
          129.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24453#20914#39044#20132
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape1: TQRShape
        Left = 105
        Top = 24
        Width = 120
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          277.812500000000000000
          63.500000000000000000
          317.500000000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 247
        Top = 24
        Width = 81
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          653.520833333333000000
          63.500000000000000000
          214.312500000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel20: TQRLabel
        Left = 665
        Top = 20
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1759.479166666670000000
          52.916666666666700000
          129.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20986#38498#25910#27454
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel21: TQRLabel
        Left = 832
        Top = 20
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2201.333333333330000000
          52.916666666666700000
          97.895833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24453#32467#24080
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel22: TQRLabel
        Left = 921
        Top = 20
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2436.812500000000000000
          52.916666666666700000
          97.895833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24212#32564#27454
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel1: TQRLabel
        Left = 409
        Top = 4
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1082.145833333330000000
          10.583333333333300000
          66.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35760#36153
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel19: TQRLabel
        Left = 445
        Top = 28
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1177.395833333330000000
          74.083333333333300000
          66.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#39069
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel26: TQRLabel
        Left = 354
        Top = 28
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          936.625000000000000000
          74.083333333333300000
          66.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20154#27425
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape5: TQRShape
        Left = 353
        Top = 24
        Width = 119
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          933.979166666667000000
          63.500000000000000000
          314.854166666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 157
      Width = 980
      Height = 20
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
        52.916666666666670000
        2592.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 2
        Top = 2
        Width = 15
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666670000
          5.291666666666670000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ad_sfrb
        DataField = 'xm'
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
      object QRDBText2: TQRDBText
        Left = 61
        Top = 2
        Width = 30
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          161.395833333333000000
          5.291666666666670000
          79.375000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ad_sfrb
        DataField = 'bryrs'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 96
        Top = 2
        Width = 35
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          254.000000000000000000
          5.291666666666670000
          92.604166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ad_sfrb
        DataField = 'syjrc'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 134
        Top = 2
        Width = 90
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          354.541666666667000000
          5.291666666666670000
          238.125000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ad_sfrb
        DataField = 'syjze'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 228
        Top = 2
        Width = 32
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          603.250000000000000000
          5.291666666666670000
          84.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ad_sfrb
        DataField = 'tyjrc'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 265
        Top = 2
        Width = 62
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          701.145833333333000000
          5.291666666666670000
          164.041666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ad_sfrb
        DataField = 'tyjze'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 483
        Top = 2
        Width = 41
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1277.937500000000000000
          5.291666666666670000
          108.479166666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ad_sfrb
        DataField = 'bcyrs'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 528
        Top = 2
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1397.000000000000000000
          5.291666666666670000
          227.541666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ad_sfrb
        DataField = 'jsbryj'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 617
        Top = 2
        Width = 88
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1632.479166666670000000
          5.291666666666670000
          232.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ad_sfrb
        DataField = 'jsbrfy'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 708
        Top = 2
        Width = 75
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1873.250000000000000000
          5.291666666666670000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ad_sfrb
        DataField = 'jsqfbryj'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 787
        Top = 2
        Width = 76
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          2082.270833333330000000
          5.291666666666670000
          201.083333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ad_sfrb
        DataField = 'jsqfbrfy'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText14: TQRDBText
        Left = 867
        Top = 2
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          2293.937500000000000000
          5.291666666666670000
          227.541666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ad_sfrb
        DataField = 'ssje'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText17: TQRDBText
        Left = 330
        Top = 2
        Width = 48
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          873.125000000000000000
          5.291666666666670000
          127.000000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ad_sfrb
        DataField = 'jfbs'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText18: TQRDBText
        Left = 381
        Top = 2
        Width = 97
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1008.062500000000000000
          5.291666666666670000
          256.645833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ad_sfrb
        DataField = 'jfje'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand5: TQRBand
      Left = 38
      Top = 199
      Width = 980
      Height = 26
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
        68.791666666666670000
        2592.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel23: TQRLabel
        Left = 2
        Top = 2
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          5.291666666666670000
          5.291666666666670000
          66.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20027#31649
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object zbr: TQRLabel
        Left = 416
        Top = 2
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1100.666666666670000000
          5.291666666666670000
          97.895833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21046#34920#20154
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRSysData1: TQRSysData
        Left = 853
        Top = 2
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2256.895833333330000000
          5.291666666666670000
          145.520833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Text = #31532
        Transparent = False
        FontSize = 9
      end
      object QRLabel25: TQRLabel
        Left = 921
        Top = 2
        Width = 13
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2436.812500000000000000
          5.291666666666670000
          34.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39029
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 177
      Width = 980
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = True
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
        2592.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRExpr1: TQRExpr
        Left = 96
        Top = 4
        Width = 35
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          254.000000000000000000
          10.583333333333300000
          92.604166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(ad_sfrb.syjrc)'
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 2
        Top = 4
        Width = 25
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          5.291666666666670000
          10.583333333333300000
          66.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21512#35745
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRExpr3: TQRExpr
        Left = 134
        Top = 4
        Width = 90
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          354.541666666667000000
          10.583333333333300000
          238.125000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(ad_sfrb.syjze)'
        FontSize = 10
      end
      object QRExpr4: TQRExpr
        Left = 228
        Top = 4
        Width = 32
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          603.250000000000000000
          10.583333333333300000
          84.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(ad_sfrb.tyjrc)'
        FontSize = 10
      end
      object QRExpr5: TQRExpr
        Left = 265
        Top = 4
        Width = 62
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          701.145833333333000000
          10.583333333333300000
          164.041666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(ad_sfrb.tyjze)'
        FontSize = 10
      end
      object QRExpr10: TQRExpr
        Left = 330
        Top = 4
        Width = 48
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          873.125000000000000000
          10.583333333333300000
          127.000000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(ad_sfrb.jfbs)'
        FontSize = 10
      end
      object QRExpr11: TQRExpr
        Left = 380
        Top = 4
        Width = 97
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1005.416666666670000000
          10.583333333333300000
          256.645833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(ad_sfrb.jfje)'
        FontSize = 10
      end
      object QRExpr12: TQRExpr
        Left = 481
        Top = 4
        Width = 41
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1272.645833333330000000
          10.583333333333300000
          108.479166666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(ad_sfrb.bcyrs)'
        FontSize = 10
      end
      object QRExpr13: TQRExpr
        Left = 527
        Top = 4
        Width = 86
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1394.354166666670000000
          10.583333333333300000
          227.541666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(ad_sfrb.jsbryj)'
        FontSize = 10
      end
      object QRExpr14: TQRExpr
        Left = 617
        Top = 4
        Width = 88
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1632.479166666670000000
          10.583333333333300000
          232.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(ad_sfrb.jsbrfy)'
        FontSize = 10
      end
      object QRExpr15: TQRExpr
        Left = 709
        Top = 4
        Width = 75
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1875.895833333330000000
          10.583333333333300000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(ad_sfrb.jsqfbryj)'
        FontSize = 10
      end
      object QRExpr16: TQRExpr
        Left = 788
        Top = 4
        Width = 76
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          2084.916666666670000000
          10.583333333333300000
          201.083333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(ad_sfrb.jsqfbrfy)'
        FontSize = 10
      end
      object QRExpr17: TQRExpr
        Left = 865
        Top = 4
        Width = 86
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          2288.645833333330000000
          10.583333333333300000
          227.541666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(ad_sfrb.ssje)'
        FontSize = 10
      end
      object QRExpr18: TQRExpr
        Left = 60
        Top = 4
        Width = 30
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          158.750000000000000000
          10.583333333333300000
          79.375000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'sum(ad_sfrb.bryrs)'
        FontSize = 10
      end
    end
  end
  object QuickRep3: TQuickRep
    Left = -8
    Top = 1000
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = sp_czyyjmx
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
      2160.000000000000000000
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
    object QRBand4: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 64
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
        169.333333333333300000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object BT3: TQRLabel
        Left = 354
        Top = 5
        Width = 31
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          936.625000000000000000
          13.229166666666670000
          82.020833333333330000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'BT3'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object SFY: TQRLabel
        Left = 3
        Top = 37
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          7.937500000000000000
          97.895833333333340000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SFY'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object dysj: TQRLabel
        Left = 468
        Top = 40
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1238.250000000000000000
          105.833333333333300000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'dysj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object QRBand6: TQRBand
      Left = 38
      Top = 102
      Width = 740
      Height = 28
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
        74.083333333333330000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel56: TQRLabel
        Left = 16
        Top = 5
        Width = 65
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          42.333333333333340000
          13.229166666666670000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#27454#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel57: TQRLabel
        Left = 168
        Top = 5
        Width = 33
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          444.500000000000000000
          13.229166666666670000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21345#21495
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel58: TQRLabel
        Left = 256
        Top = 5
        Width = 33
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          677.333333333333400000
          13.229166666666670000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995#21517
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel59: TQRLabel
        Left = 315
        Top = 5
        Width = 49
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          833.437500000000000000
          13.229166666666670000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#25454#21495
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel60: TQRLabel
        Left = 595
        Top = 5
        Width = 33
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1574.270833333333000000
          13.229166666666670000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#39069
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel61: TQRLabel
        Left = 690
        Top = 5
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1825.625000000000000000
          13.229166666666670000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35828#26126
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel37: TQRLabel
        Left = 419
        Top = 5
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1108.604166666667000000
          13.229166666666670000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24635#36153#29992
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel67: TQRLabel
        Left = 498
        Top = 5
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1317.625000000000000000
          13.229166666666670000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24635#39044#20132
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object QRBand7: TQRBand
      Left = 38
      Top = 130
      Width = 740
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
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText19: TQRDBText
        Left = 10
        Top = 4
        Width = 33
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          26.458333333333330000
          10.583333333333330000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_czyyjmx
        DataField = 'sfrq'
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText20: TQRDBText
        Left = 176
        Top = 4
        Width = 25
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          465.666666666666800000
          10.583333333333330000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_czyyjmx
        DataField = 'tmh'
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText21: TQRDBText
        Left = 256
        Top = 4
        Width = 50
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          677.333333333333000000
          10.583333333333300000
          132.291666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_czyyjmx
        DataField = 'brxm'
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText22: TQRDBText
        Left = 310
        Top = 2
        Width = 76
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          820.208333333334000000
          5.291666666666670000
          201.083333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_czyyjmx
        DataField = 'sjh'
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText23: TQRDBText
        Left = 547
        Top = 2
        Width = 81
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          1447.270833333330000000
          5.291666666666670000
          214.312500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_czyyjmx
        DataField = 'yjje'
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText24: TQRDBText
        Left = 650
        Top = 5
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1719.791666666670000000
          13.229166666666700000
          224.895833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_czyyjmx
        DataField = 'yjxssm'
        OnPrint = QRDBText24Print
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText25: TQRDBText
        Left = 474
        Top = 4
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1254.125000000000000000
          10.583333333333300000
          185.208333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_czyyjmx
        DataField = 'yjze'
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText26: TQRDBText
        Left = 390
        Top = 3
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1031.875000000000000000
          7.937500000000000000
          209.020833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_czyyjmx
        DataField = 'fyze'
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object QRBand8: TQRBand
      Left = 38
      Top = 183
      Width = 740
      Height = 29
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
        76.729166666666670000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel64: TQRLabel
        Left = 39
        Top = 2
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          103.187500000000000000
          5.291666666666667000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21046#34920#65306
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel65: TQRLabel
        Left = 359
        Top = 2
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          949.854166666666800000
          5.291666666666667000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23457#26680
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRSysData3: TQRSysData
        Left = 588
        Top = 2
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1555.750000000000000000
          5.291666666666667000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Text = #31532
        Transparent = False
        FontSize = 12
      end
      object QRLabel66: TQRLabel
        Left = 652
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
          1725.083333333334000000
          5.291666666666667000
          44.979166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39029
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object QRBand9: TQRBand
      Left = 38
      Top = 156
      Width = 740
      Height = 27
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
        71.437500000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel55: TQRLabel
        Left = 91
        Top = 5
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          240.770833333333300000
          13.229166666666670000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21512'    '#35745
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRExpr2: TQRExpr
        Left = 586
        Top = 5
        Width = 109
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1550.458333333330000000
          13.229166666666700000
          288.395833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(sp_czyyjmx.yjje)'
        FontSize = 12
      end
      object QRLabel62: TQRLabel
        Left = 491
        Top = 5
        Width = 17
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1299.104166666667000000
          13.229166666666670000
          44.979166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31508
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel63: TQRLabel
        Left = 699
        Top = 5
        Width = 17
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1849.437500000000000000
          13.229166666666670000
          44.979166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20803
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRSysData2: TQRSysData
        Left = 434
        Top = 7
        Width = 48
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1148.291666666670000000
          18.520833333333300000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsDetailCount
        Transparent = False
        FontSize = 12
      end
    end
  end
  object QuickRep2: TQuickRep
    Left = 9
    Top = 1500
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
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
      50.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
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
    object ColumnHeaderBand1: TQRBand
      Left = 19
      Top = 38
      Width = 756
      Height = 1051
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
        2780.770833333333000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel27: TQRLabel
        Left = 633
        Top = 421
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1674.812500000000000000
          1113.895833333330000000
          256.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32467#31639#24212#20132#37329#39069
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel28: TQRLabel
        Left = 660
        Top = 501
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1746.250000000000000000
          1325.562500000000000000
          171.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24453#32467#36134#39069
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel29: TQRLabel
        Left = 586
        Top = 501
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1550.458333333330000000
          1325.562500000000000000
          171.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24453#20914#39044#25910
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel30: TQRLabel
        Left = 5
        Top = 872
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          13.229166666666700000
          2307.166666666670000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23457#26680
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel31: TQRLabel
        Left = 362
        Top = 488
        Width = 51
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.895833333333300000
          957.791666666667000000
          1291.166666666670000000
          134.937500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #21150#20837#38498#20154#27425
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel32: TQRLabel
        Left = 21
        Top = 164
        Width = 145
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          55.562500000000000000
          433.916666666667000000
          383.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#39044#20132#25910#25454#36215#27490#21495#65306
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel33: TQRLabel
        Left = 23
        Top = 275
        Width = 113
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          60.854166666666700000
          727.604166666667000000
          298.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36864#39044#20132#25910#25454#21495#65306
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel34: TQRLabel
        Left = 267
        Top = 8
        Width = 221
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          706.437500000000000000
          21.166666666666670000
          584.729166666666700000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #20303#38498#25910#36153#25805#20316#21592#32564#27454#34920
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
      object sfrq: TQRLabel
        Left = 55
        Top = 53
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          145.520833333333000000
          140.229166666667000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'sfrq'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object sfczy: TQRLabel
        Left = 520
        Top = 53
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1375.833333333330000000
          140.229166666667000000
          108.479166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'sfczy'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel35: TQRLabel
        Left = 5
        Top = 845
        Width = 52
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          13.229166666666700000
          2235.729166666670000000
          137.583333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22823#20889':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object dxje: TQRLabel
        Left = 69
        Top = 845
        Width = 45
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          182.562500000000000000
          2235.729166666670000000
          119.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'dxje'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRShape6: TQRShape
        Left = 2
        Top = 78
        Width = 754
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          5.291666666666670000
          206.375000000000000000
          1994.958333333330000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel41: TQRLabel
        Left = 39
        Top = 501
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          103.187500000000000000
          1325.562500000000000000
          171.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20986#38498#25910#27454
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel42: TQRLabel
        Left = 207
        Top = 513
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          547.687500000000000000
          1357.312500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#39069
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape9: TQRShape
        Left = 160
        Top = 509
        Width = 151
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          423.333333333333000000
          1346.729166666670000000
          399.520833333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel43: TQRLabel
        Left = 222
        Top = 488
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          587.375000000000000000
          1291.166666666670000000
          171.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20914#36716#39044#25910
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel44: TQRLabel
        Left = 274
        Top = 513
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          724.958333333333000000
          1357.312500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31508#25968
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape10: TQRShape
        Left = 2
        Top = 866
        Width = 754
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          5.291666666666670000
          2291.291666666670000000
          1994.958333333330000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel48: TQRLabel
        Left = 14
        Top = 435
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          37.041666666666700000
          1150.937500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#39069
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape12: TQRShape
        Left = -24
        Top = 429
        Width = 151
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          -63.500000000000000000
          1135.062500000000000000
          399.520833333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel49: TQRLabel
        Left = 20
        Top = 408
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          52.916666666666700000
          1079.500000000000000000
          171.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32467#31639#34917#27454
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel50: TQRLabel
        Left = 88
        Top = 435
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          232.833333333333000000
          1150.937500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31508#25968
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel51: TQRLabel
        Left = 228
        Top = 435
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          603.250000000000000000
          1150.937500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#39069
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape13: TQRShape
        Left = 178
        Top = 429
        Width = 151
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          470.958333333333000000
          1135.062500000000000000
          399.520833333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel52: TQRLabel
        Left = 229
        Top = 408
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          605.895833333333000000
          1079.500000000000000000
          171.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32467#31639#36864#27454
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel53: TQRLabel
        Left = 289
        Top = 435
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          764.645833333333000000
          1150.937500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31508#25968
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel54: TQRLabel
        Left = 466
        Top = 488
        Width = 51
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.958333333333300000
          1232.958333333330000000
          1291.166666666670000000
          134.937500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #21150#20986#38498#20154#27425
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape14: TQRShape
        Left = -14
        Top = 483
        Width = 754
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          -37.041666666666700000
          1277.937500000000000000
          1994.958333333330000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = -14
        Top = 557
        Width = 754
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          -37.041666666666700000
          1473.729166666670000000
          1994.958333333330000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object cybxje: TQRLabel
        Left = 16
        Top = 457
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          42.333333333333300000
          1209.145833333330000000
          113.770833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'cybxje'
        Color = clWhite
        OnPrint = syjzePrint
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object cybxrc: TQRLabel
        Left = 78
        Top = 457
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          206.375000000000000000
          1209.145833333330000000
          113.770833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'cybxrc'
        Color = clWhite
        OnPrint = syjzePrint
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object cytxje: TQRLabel
        Left = 230
        Top = 457
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          608.541666666667000000
          1209.145833333330000000
          113.770833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'cytxje'
        Color = clWhite
        OnPrint = syjzePrint
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object cytxrc: TQRLabel
        Left = 281
        Top = 457
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          743.479166666667000000
          1209.145833333330000000
          113.770833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'cytxrc'
        Color = clWhite
        OnPrint = syjzePrint
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ssje: TQRLabel
        Left = 671
        Top = 457
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1775.354166666670000000
          1209.145833333330000000
          76.729166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ssje'
        Color = clWhite
        OnPrint = syjzePrint
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jsbrfy: TQRLabel
        Left = 53
        Top = 534
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          140.229166666667000000
          1412.875000000000000000
          113.770833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'jsbrfy'
        Color = clWhite
        OnPrint = syjzePrint
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jsbryj: TQRLabel
        Left = 206
        Top = 534
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          545.041666666667000000
          1412.875000000000000000
          113.770833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'jsbryj'
        Color = clWhite
        OnPrint = syjzePrint
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jsyjbs: TQRLabel
        Left = 264
        Top = 534
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          698.500000000000000000
          1412.875000000000000000
          113.770833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'jsyjbs'
        Color = clWhite
        OnPrint = syjzePrint
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object bryrs: TQRLabel
        Left = 372
        Top = 534
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          984.250000000000000000
          1412.875000000000000000
          95.250000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'bryrs'
        Color = clWhite
        OnPrint = syjzePrint
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object bcyrs: TQRLabel
        Left = 477
        Top = 534
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1262.062500000000000000
          1412.875000000000000000
          95.250000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'bcyrs'
        Color = clWhite
        OnPrint = syjzePrint
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object jsqfbryj: TQRLabel
        Left = 593
        Top = 534
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1568.979166666670000000
          1412.875000000000000000
          150.812500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'jsqfbryj'
        Color = clWhite
        OnPrint = syjzePrint
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qfbrfy: TQRLabel
        Left = 685
        Top = 534
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1812.395833333330000000
          1412.875000000000000000
          113.770833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qfbrfy'
        Color = clWhite
        OnPrint = syjzePrint
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object sjqh: TQRMemo
        Left = 24
        Top = 185
        Width = 730
        Height = 89
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          235.479166666667000000
          63.500000000000000000
          489.479166666667000000
          1931.458333333330000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object zfsj: TQRMemo
        Left = 16
        Top = 298
        Width = 730
        Height = 89
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          235.479166666667000000
          42.333333333333300000
          788.458333333333000000
          1931.458333333330000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 7
        Top = 564
        Width = 129
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          18.520833333333300000
          1492.250000000000000000
          341.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32467#31639#25910#25454#36215#27490#21495#65306
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel18: TQRLabel
        Left = 7
        Top = 686
        Width = 129
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          18.520833333333300000
          1815.041666666670000000
          341.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32467#31639#36864#36153#25910#25454#21495#65306
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object JSTFSJ: TQRMemo
        Left = 24
        Top = 709
        Width = 730
        Height = 89
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          235.479166666667000000
          63.500000000000000000
          1875.895833333330000000
          1931.458333333330000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel36: TQRLabel
        Left = 398
        Top = 435
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1053.041666666670000000
          1150.937500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#39069
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape4: TQRShape
        Left = 360
        Top = 429
        Width = 128
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          952.500000000000000000
          1135.062500000000000000
          338.666666666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel45: TQRLabel
        Left = 404
        Top = 408
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1068.916666666670000000
          1079.500000000000000000
          129.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#24453#32467
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object zchzfy: TQRLabel
        Left = 407
        Top = 457
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1076.854166666670000000
          1209.145833333330000000
          95.250000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'sdjje'
        Color = clWhite
        OnPrint = syjzePrint
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel47: TQRLabel
        Left = 543
        Top = 435
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1436.687500000000000000
          1150.937500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#39069
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape7: TQRShape
        Left = 505
        Top = 429
        Width = 118
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          1336.145833333330000000
          1135.062500000000000000
          312.208333333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel68: TQRLabel
        Left = 549
        Top = 408
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1452.562500000000000000
          1079.500000000000000000
          129.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#27424#36153
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object qffy: TQRLabel
        Left = 553
        Top = 457
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1463.145833333330000000
          1209.145833333330000000
          76.729166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qffy'
        Color = clWhite
        OnPrint = syjzePrint
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape11: TQRShape
        Left = 2
        Top = 804
        Width = 754
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          5.291666666666670000
          2127.250000000000000000
          1994.958333333330000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel46: TQRLabel
        Left = 5
        Top = 813
        Width = 41
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          13.229166666666700000
          2151.062500000000000000
          108.479166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21512#35745
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object hjje: TQRLabel
        Left = 69
        Top = 813
        Width = 45
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          182.562500000000000000
          2151.062500000000000000
          119.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'hjje'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object yjyjje: TQRLabel
        Left = 575
        Top = 131
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1521.354166666670000000
          346.604166666667000000
          113.770833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'yjyjje'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        OnPrint = syjzePrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 556
        Top = 95
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1471.083333333330000000
          251.354166666667000000
          256.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39044#20132#24212#20132#37329#39069
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel38: TQRLabel
        Left = 23
        Top = 117
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          60.854166666666700000
          309.562500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#39069
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape8: TQRShape
        Left = -19
        Top = 111
        Width = 155
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          -50.270833333333300000
          293.687500000000000000
          410.104166666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel39: TQRLabel
        Left = 37
        Top = 90
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          97.895833333333300000
          238.125000000000000000
          129.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#39044#20132
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel40: TQRLabel
        Left = 94
        Top = 117
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          248.708333333333000000
          309.562500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31508#25968
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object syjze: TQRLabel
        Left = 29
        Top = 139
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          76.729166666666700000
          367.770833333333000000
          95.250000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'syjze'
        Color = clWhite
        OnPrint = syjzePrint
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object syjrc: TQRLabel
        Left = 91
        Top = 139
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          240.770833333333000000
          367.770833333333000000
          95.250000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'syjrc'
        Color = clWhite
        OnPrint = syjzePrint
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 7
        Top = 913
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          18.520833333333300000
          2415.645833333330000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35828#26126
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel10: TQRLabel
        Left = 42
        Top = 935
        Width = 233
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          111.125000000000000000
          2473.854166666670000000
          616.479166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '1.'#39044#20132#24212#32564#37329#39069'='#25910#39044#20132#8212#36864#39044#20132
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel15: TQRLabel
        Left = 43
        Top = 957
        Width = 457
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          113.770833333333000000
          2532.062500000000000000
          1209.145833333330000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '2.'#32467#31639#24212#32564#37329#39069'='#32467#31639#34917#27454#37329#39069#8212#32467#31639#36864#27454#37329#39069#65291#25910#24453#32467#65291#25910#27424#36153
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel69: TQRLabel
        Left = 154
        Top = 975
        Width = 345
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          407.458333333333000000
          2579.687500000000000000
          912.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '='#20986#38498#25910#27454#8212#20914#36716#39044#20132#8212#24453#32467#36134#65291#25910#24453#32467#65291#25910#27424#36153
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel70: TQRLabel
        Left = 44
        Top = 996
        Width = 465
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          116.416666666667000000
          2635.250000000000000000
          1230.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '3.'#25910#24453#32467#37329#39069#25351#25910#22312#26412#26376#20869#24050#32463#32467#31639#65292#21448#37325#26032#21150#29702#32467#31639#20135#29983#30340#36153#29992
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel71: TQRLabel
        Left = 45
        Top = 1015
        Width = 481
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          119.062500000000000000
          2685.520833333330000000
          1272.645833333330000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '4.'#25910#27424#36153#37329#39069#25351#25910#22312#26412#26376#20043#21069#24050#32463#32467#31639#65292#21448#37325#26032#21150#29702#32467#31639#20135#29983#30340#36153#29992
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape3: TQRShape
        Left = 2
        Top = 898
        Width = 754
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          5.291666666666670000
          2375.958333333330000000
          1994.958333333330000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object jssjqzh: TQRMemo
        Left = 16
        Top = 581
        Width = 730
        Height = 89
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          235.479166666667000000
          42.333333333333300000
          1537.229166666670000000
          1931.458333333330000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object ad_sfrba: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 
      'select b.mc xm,a.* from zysf_czyjz a,sys_czy b,sys_ksdm c  where' +
      ' a.czydm=b.dm and convert(char,jzrq,112)>=:ksrq  and convert(cha' +
      'r,jzrq,112)<=:jsrq and b.ksdm=c.dm and c.kssx='#39'06'#39'  order by b.k' +
      'sdm'
    Parameters = <
      item
        Name = 'ksrq'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'jsrq'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    Left = 247
    Top = 225
    object ad_sfrbaxm: TStringField
      FieldName = 'xm'
      Size = 10
    end
    object ad_sfrbajzdh: TStringField
      FieldName = 'jzdh'
      FixedChar = True
      Size = 16
    end
    object ad_sfrbaczydm: TStringField
      FieldName = 'czydm'
      FixedChar = True
      Size = 4
    end
    object ad_sfrbajzrq: TDateTimeField
      FieldName = 'jzrq'
    end
    object ad_sfrbasyjze: TBCDField
      FieldName = 'syjze'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ad_sfrbasyjrc: TIntegerField
      FieldName = 'syjrc'
      DisplayFormat = '0'
    end
    object ad_sfrbatyjze: TBCDField
      FieldName = 'tyjze'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ad_sfrbatyjrc: TIntegerField
      FieldName = 'tyjrc'
      DisplayFormat = '0'
    end
    object ad_sfrbacybxje: TBCDField
      FieldName = 'cybxje'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ad_sfrbacybxrc: TIntegerField
      FieldName = 'cybxrc'
      DisplayFormat = '0'
    end
    object ad_sfrbacytxje: TBCDField
      FieldName = 'cytxje'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ad_sfrbacytxrc: TIntegerField
      FieldName = 'cytxrc'
      DisplayFormat = '0'
    end
    object ad_sfrbassje: TBCDField
      FieldName = 'ssje'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ad_sfrbasjqzh: TMemoField
      FieldName = 'sjqzh'
      BlobType = ftMemo
    end
    object ad_sfrbatfsjh: TMemoField
      FieldName = 'tfsjh'
      BlobType = ftMemo
    end
    object ad_sfrbabryrs: TIntegerField
      FieldName = 'bryrs'
      DisplayFormat = '0'
    end
    object ad_sfrbabcyrs: TIntegerField
      FieldName = 'bcyrs'
      DisplayFormat = '0'
    end
    object ad_sfrbajfje: TBCDField
      FieldName = 'jfje'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ad_sfrbajfbs: TIntegerField
      FieldName = 'jfbs'
      DisplayFormat = '0'
    end
    object ad_sfrbajsbrfy: TBCDField
      FieldName = 'jsbrfy'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ad_sfrbajsbryj: TBCDField
      FieldName = 'jsbryj'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ad_sfrbajsyjbs: TIntegerField
      FieldName = 'jsyjbs'
      DisplayFormat = '0'
    end
    object ad_sfrbajsqfbrfy: TBCDField
      FieldName = 'jsqfbrfy'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ad_sfrbajsqfbryj: TBCDField
      FieldName = 'jsqfbryj'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ad_sfrbazchzfy: TBCDField
      FieldName = 'zchzfy'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object ad_sfrbaqffy: TBCDField
      FieldName = 'qffy'
      Precision = 18
      Size = 2
    end
  end
  object ds_sfyrb: TDataSource
    DataSet = ad_sfrb
    Left = 185
    Top = 225
  end
  object sp_czyyjmx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zysf_cx_czysyjmx;1'
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
        Name = '@czy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
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
        Name = '@lb'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 313
    Top = 224
    object sp_czyyjmxbrxm: TStringField
      FieldName = 'brxm'
      FixedChar = True
      Size = 12
    end
    object sp_czyyjmxsfrq: TDateTimeField
      FieldName = 'sfrq'
    end
    object sp_czyyjmxtmh: TStringField
      FieldName = 'tmh'
      FixedChar = True
      Size = 9
    end
    object sp_czyyjmxsjh: TStringField
      FieldName = 'sjh'
      FixedChar = True
      Size = 9
    end
    object sp_czyyjmxyjje: TBCDField
      FieldName = 'yjje'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object sp_czyyjmxyjxssm: TStringField
      FieldName = 'yjxssm'
      FixedChar = True
    end
    object sp_czyyjmxhzbz: TBooleanField
      FieldName = 'hzbz'
    end
    object sp_czyyjmxfyze: TBCDField
      FieldName = 'fyze'
      Precision = 9
      Size = 2
    end
    object sp_czyyjmxyjze: TBCDField
      FieldName = 'yjze'
      Precision = 9
      Size = 2
    end
  end
  object ds_sfmx: TDataSource
    DataSet = sp_czyyjmx
    Left = 431
    Top = 224
  end
  object ad_sfrb: TADOStoredProc
    Connection = DM_data.ado_mydata
    OnCalcFields = ad_sfrbCalcFields
    ProcedureName = 'ZYSF_CX_SFYBB;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@KSRQ'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = '20050501'
      end
      item
        Name = '@JSRQ'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = '20050501'
      end
      item
        Name = '@LB'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 378
    Top = 223
  end
end
