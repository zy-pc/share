object frm_fpdy_tj: Tfrm_fpdy_tj
  Left = 0
  Top = 0
  Caption = #38376#35786#25910#36153'-'#27491#24335#21457#31080'-'#32479#35745
  ClientHeight = 274
  ClientWidth = 790
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 65
    Align = alTop
    TabOrder = 0
    object cx: TcxButton
      Left = 487
      Top = 21
      Width = 75
      Height = 25
      Caption = #26597#35810
      TabOrder = 0
      OnClick = cxClick
    end
    object cxLabel1: TcxLabel
      Left = 235
      Top = 24
      Caption = #32467#26463#26085#26399':'
    end
    object tc: TcxButton
      Left = 680
      Top = 21
      Width = 75
      Height = 25
      Caption = #36864#20986
      TabOrder = 2
      OnClick = tcClick
    end
    object cxLabel2: TcxLabel
      Left = 1
      Top = 24
      Caption = #24320#22987#26085#26399':'
    end
    object date_ks: TDateTimePicker
      Left = 76
      Top = 22
      Width = 132
      Height = 24
      Date = 37048.968005694400000000
      Time = 37048.968005694400000000
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 4
    end
    object date_js: TDateTimePicker
      Left = 310
      Top = 22
      Width = 131
      Height = 24
      Date = 37048.968005694400000000
      Time = 37048.968005694400000000
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 790
    Height = 209
    Align = alClient
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 788
      Height = 207
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds_tj
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsSelection.InvertSelect = False
        OptionsView.GroupByBox = False
        Styles.StyleSheet = GridTableViewStyleSheetUserFormat2
        object cxGrid1DBTableView1lydh: TcxGridDBColumn
          Caption = #39046#29992#21333#21495
          DataBinding.FieldName = 'lydh'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          Width = 224
        end
        object cxGrid1DBTableView1minsjh: TcxGridDBColumn
          Caption = #25910#25454#36215#21495
          DataBinding.FieldName = 'minsjh'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 238
        end
        object cxGrid1DBTableView1maxsjh: TcxGridDBColumn
          Caption = #25910#25454#27490#21495
          DataBinding.FieldName = 'maxsjh'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 224
        end
        object cxGrid1DBTableView1zfh: TcxGridDBColumn
          Caption = #20316#24223#21495
          DataBinding.FieldName = 'zfh'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 173
        end
        object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = #24050#25171#21360#21457#31080#25968#37327
          DataBinding.FieldName = 'sl'
          Width = 144
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object QuickRep1: TQuickRep
    Left = 8
    Top = 241
    Width = 794
    Height = 287
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = DM_data.qry_cxjz_mx
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
      759.354166666666800000
      50.000000000000000000
      2100.791666666667000000
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
    object TitleBand1: TQRBand
      Left = 19
      Top = 19
      Width = 756
      Height = 211
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
        558.270833333333300000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object bt: TQRLabel
        Left = 274
        Top = 42
        Width = 199
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          724.958333333333300000
          111.125000000000000000
          526.520833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27491#24335#25910#25454#20351#29992#32479#35745#34920
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
      object QRShape17: TQRShape
        Left = 10
        Top = 72
        Width = 732
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          26.458333333333330000
          190.500000000000000000
          1936.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Left = 10
        Top = 189
        Width = 732
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          26.458333333333330000
          500.062500000000100000
          1936.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 10
        Top = 130
        Width = 732
        Height = 60
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          26.458333333333330000
          343.958333333333400000
          1936.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 10
        Top = 101
        Width = 732
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          26.458333333333330000
          267.229166666666700000
          1936.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel10: TQRLabel
        Left = 42
        Top = 79
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          111.125000000000000000
          209.020833333333300000
          256.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20351#29992#36215#27490#26085#26399
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
      object QRLabel11: TQRLabel
        Left = 42
        Top = 108
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          111.125000000000000000
          285.750000000000000000
          256.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#25454#36215#27490#21495#30721
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
      object QRShape27: TQRShape
        Left = 170
        Top = 72
        Width = 1
        Height = 118
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          312.208333333333400000
          449.791666666666700000
          190.500000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object dxje: TQRLabel
        Left = 260
        Top = 192
        Width = 216
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          687.916666666666700000
          508.000000000000000000
          571.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27880':'#39035#38468#19978#27491#24335#25910#25454#21644#30456#24212#30340#30333#31080#25910#25454
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 42
        Top = 151
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          111.125000000000000000
          399.520833333333300000
          256.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#25454#20316#24223#21495#30721
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
      object QRShape1: TQRShape
        Left = 519
        Top = 101
        Width = 1
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1373.187500000000000000
          267.229166666666700000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRL_ts: TQRLabel
        Left = 524
        Top = 108
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1386.416666666667000000
          285.750000000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22871#25968
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
      object qrl_yymc: TQRLabel
        Left = 343
        Top = 14
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          907.520833333333300000
          37.041666666666670000
          161.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#38498#21517#31216
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRL_qzrq: TQRLabel
        Left = 176
        Top = 79
        Width = 561
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          465.666666666666800000
          209.020833333333300000
          1484.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_qzrq'
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
      object QRL_qzhm: TQRLabel
        Left = 176
        Top = 108
        Width = 337
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          465.666666666666800000
          285.750000000000000000
          891.645833333333200000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_qzhm'
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
      object QRL_zfhm: TQRLabel
        Left = 176
        Top = 137
        Width = 561
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          465.666666666666800000
          362.479166666666700000
          1484.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_zfhm'
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
    end
    object SummaryBand1: TQRBand
      Left = 19
      Top = 230
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
      object qrl_qbrq: TQRLabel
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
        FontSize = 11
      end
      object qrl_lyr: TQRLabel
        Left = 97
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
          256.645833333333300000
          7.937500000000000000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#25454#39046#29992#20154':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
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
  end
  object dy: TcxButton
    Left = 583
    Top = 21
    Width = 75
    Height = 25
    Caption = #25171#21360
    TabOrder = 3
    OnClick = dyClick
  end
  object qry_tj: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      
        'select '#39#39' lydh,min(sjbhNew) minsjh,max(sjbhNew) maxsjh,'#39#39' zfh fr' +
        'om mzsf_fpdy_mx'
      
        'where sjbhNew>=17882199 and sjbhNew<=17885000 and convert(char(1' +
        '0),dyrq,120)>='#39'2010-10-01'#39' '
      'and convert(char(10),dyrq,120)>='#39'2010-12-01'#39)
    Left = 539
    Top = 76
    object qry_tjlydh: TStringField
      FieldName = 'lydh'
      ReadOnly = True
      Size = 0
    end
    object qry_tjminsjh: TIntegerField
      FieldName = 'minsjh'
      ReadOnly = True
    end
    object qry_tjmaxsjh: TIntegerField
      FieldName = 'maxsjh'
      ReadOnly = True
    end
    object qry_tjzfh: TStringField
      FieldName = 'zfh'
      ReadOnly = True
      Size = 0
    end
    object qry_tjsl: TIntegerField
      FieldName = 'sl'
    end
  end
  object ds_tj: TDataSource
    DataSet = qry_tj
    Left = 505
    Top = 73
  end
  object ds_zf: TDataSource
    DataSet = qry_zf
    Left = 625
    Top = 73
  end
  object qry_zf: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 659
    Top = 76
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
end
