object frm_ICU_sjtj: Tfrm_ICU_sjtj
  Left = 99
  Top = 76
  Caption = 'ICU'#30149#24202#36716#31185#25968#25454
  ClientHeight = 568
  ClientWidth = 876
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 88
    Width = 876
    Height = 480
    ActivePage = TabSheet5
    Align = alClient
    TabHeight = 30
    TabOrder = 1
    OnChange = PageControl1Change
    ExplicitWidth = 884
    ExplicitHeight = 484
    object TabSheet5: TTabSheet
      Caption = #22312#24202#30149#20154
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 876
        Height = 444
        Align = alClient
        AllowedOperations = []
        DataSource = ds_ksbr
        EditActions = [geaCopyEh, geaSelectAllEh]
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 2
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ReadOnly = True
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'tmh'
            Footer.Alignment = taCenter
            Footer.Color = clYellow
            Footer.Value = #21512#35745
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = #26465#30721#21495
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'brxm'
            Footer.Color = clYellow
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #30149#20154#22995#21517
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'brxb'
            Footer.Color = clYellow
            Footers = <>
            Title.Caption = #24615#21035
            Width = 21
          end
          item
            EditButtons = <>
            FieldName = 'brzy'
            Footer.Color = clYellow
            Footers = <>
            Title.Caption = #32844#19994
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'brnl'
            Footer.Color = clYellow
            Footers = <>
            Title.Caption = #24180#40836
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'yjze'
            Footer.Color = clYellow
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #39044#20132#24635#39069
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'zfy'
            Footer.Color = clYellow
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #24635#36153#29992
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'lbmc'
            Footer.Color = clYellow
            Footers = <>
            Title.Caption = #36153#29992#31867#21035
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'ryksmc'
            Footer.Color = clYellow
            Footers = <>
            Title.Caption = #20837#38498#31185#23460
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'ysxm'
            Footer.Color = clYellow
            Footers = <>
            Title.Caption = #20027#31649#21307#29983
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'ryrq'
            Footer.Color = clYellow
            Footers = <>
            Title.Caption = #20837#38498#26085#26399
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'rybq'
            Footer.Color = clYellow
            Footers = <>
            Title.Caption = #30149#24773
            Width = 21
          end
          item
            EditButtons = <>
            FieldName = 'sfzhm'
            Footer.Color = clYellow
            Footers = <>
            Title.Caption = #36523#20221#35777
            Width = 94
          end
          item
            EditButtons = <>
            FieldName = 'tjmc'
            Footer.Color = clYellow
            Footers = <>
            Title.Caption = #20837#38498#26041#24335
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'dbr'
            Footer.Color = clYellow
            Footers = <>
            Title.Caption = #25285#20445#20154
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'dbrdz'
            Footer.Color = clYellow
            Footers = <>
            Title.Caption = #25285#20445#20154#22320#22336
            Width = 160
          end
          item
            EditButtons = <>
            FieldName = 'czyxm'
            Footer.Color = clYellow
            Footers = <>
            Title.Caption = #25805#20316#21592
            Width = 50
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = #36716#31185#35760#24405
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 25
        Width = 876
        Height = 419
        Align = alClient
        AllowedOperations = []
        DataSource = ds_zkzcjl
        EditActions = [geaCopyEh, geaSelectAllEh]
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        UseMultiTitle = True
        OnDblClick = DBGridEh2DblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'tmh'
            Footers = <>
            Title.Caption = #26465#30721#21495
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'brxm'
            Footers = <>
            Title.Caption = #30149#20154#22995#21517
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'xkmc'
            Footers = <>
            Title.Caption = #36716#20837#31185#23460
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'xbch'
            Footers = <>
            Title.Caption = #36716#20837#24202#21495
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'ykmc'
            Footers = <>
            Title.Caption = #21407#26377#31185#23460
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'ybch'
            Footers = <>
            Title.Caption = #21407#26377#24202#21495
          end
          item
            EditButtons = <>
            FieldName = 'czymc'
            Footers = <>
            Title.Caption = #25805#20316#21592
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'czrq'
            Footers = <>
            Title.Caption = #36716#31185#26085#26399
          end
          item
            EditButtons = <>
            FieldName = 'jsbz'
            Footers = <>
            Title.Caption = #32467#31639#26631#24535
            Width = 54
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 876
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        Caption = #40736#26631#21452#20987#26174#31034#35813#30149#20154#36153#29992#26126#32454
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = #30149#21592#36153#29992#26126#32454
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 876
        Height = 444
        Align = alClient
        AllowedOperations = []
        DataSource = ds_fymx
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'sfrq'
            Footers = <>
            Title.Caption = #36153#29992#26085#26399
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'fymc'
            Footers = <>
            Title.Caption = #36153#29992#21517#31216
            Width = 167
          end
          item
            EditButtons = <>
            FieldName = 'fysl'
            Footers = <>
            Title.Caption = #25968#37327
            Width = 37
          end
          item
            EditButtons = <>
            FieldName = 'sfbz'
            Footers = <>
            Title.Caption = #21333#20215
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'fyje'
            Footers = <>
            Title.Caption = #36153#29992#37329#39069
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'tfbz'
            Footers = <>
            Title.Caption = #36864#36153#26631#24535
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'mc'
            Footers = <>
            Title.Caption = #25805#20316#21592
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'czys'
            Footers = <>
            Title.Caption = #22788#32622#20154#21592
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'kdysxm'
            Footers = <>
            Title.Caption = #24320#21333#20154#21592
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'czksmc'
            Footers = <>
            Title.Caption = #22788#32622#31185#23460
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'kdksmc'
            Footers = <>
            Title.Caption = #24320#21333#31185#23460
            Width = 66
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = '('#22788#32622')'#36153#29992#32479#35745
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Splitter2: TSplitter
        Left = 657
        Top = 0
        Width = 5
        Height = 440
        Align = alRight
        Beveled = True
        ExplicitLeft = 665
        ExplicitHeight = 444
      end
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 0
        Width = 657
        Height = 440
        Align = alClient
        AllowedOperations = []
        DataSource = ds_fydl
        EditActions = [geaCopyEh, geaSelectAllEh]
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        UseMultiTitle = True
      end
      object CLB1: TcxCheckListBox
        Left = 662
        Top = 0
        Width = 206
        Height = 440
        Align = alRight
        Items = <>
        TabOrder = 1
        OnClick = CLB1Click
        OnClickCheck = CLB1ClickCheck
        ExplicitLeft = 670
        ExplicitHeight = 444
      end
    end
    object TabSheet4: TTabSheet
      Caption = #21452#21521'('#22788#32622')'#36153#29992#32479#35745
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Splitter3: TSplitter
        Left = 657
        Top = 0
        Width = 5
        Height = 440
        Align = alRight
        Beveled = True
        ExplicitLeft = 665
        ExplicitHeight = 444
      end
      object DBGridEh5: TDBGridEh
        Left = 0
        Top = 0
        Width = 657
        Height = 440
        Align = alClient
        AllowedOperations = []
        DataSource = ds_fydl_fk
        EditActions = [geaCopyEh, geaSelectAllEh]
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        UseMultiTitle = True
      end
      object CLB2: TcxCheckListBox
        Left = 662
        Top = 0
        Width = 206
        Height = 440
        Align = alRight
        Items = <>
        TabOrder = 1
        OnClick = CLB2Click
        OnClickCheck = CLB2ClickCheck
        ExplicitLeft = 670
        ExplicitHeight = 444
      end
    end
    object TabSheet6: TTabSheet
      Caption = '('#24320#21333')'#36153#29992#32479#35745
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Splitter4: TSplitter
        Left = 657
        Top = 0
        Width = 5
        Height = 440
        Align = alRight
        Beveled = True
        ExplicitLeft = 665
        ExplicitHeight = 444
      end
      object DBGridEh6: TDBGridEh
        Left = 0
        Top = 0
        Width = 657
        Height = 440
        Align = alClient
        AllowedOperations = []
        DataSource = ds_fydl_kd
        EditActions = [geaCopyEh, geaSelectAllEh]
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        UseMultiTitle = True
      end
      object CLB3: TcxCheckListBox
        Left = 662
        Top = 0
        Width = 206
        Height = 440
        Align = alRight
        Items = <>
        TabOrder = 1
        OnClick = CLB3Click
        OnClickCheck = CLB3ClickCheck
        ExplicitLeft = 670
        ExplicitHeight = 444
      end
    end
    object TabSheet7: TTabSheet
      Caption = #21452#21521'('#24320#21333')'#36153#29992#32479#35745
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Splitter1: TSplitter
        Left = 657
        Top = 0
        Width = 5
        Height = 440
        Align = alRight
        Beveled = True
        ExplicitLeft = 665
        ExplicitHeight = 444
      end
      object DBGridEh7: TDBGridEh
        Left = 0
        Top = 0
        Width = 657
        Height = 440
        Align = alClient
        AllowedOperations = []
        DataSource = ds_fydl_fk_kd
        EditActions = [geaCopyEh, geaSelectAllEh]
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        UseMultiTitle = True
      end
      object CLB4: TcxCheckListBox
        Left = 662
        Top = 0
        Width = 206
        Height = 440
        Align = alRight
        Items = <>
        TabOrder = 1
        OnClick = CLB4Click
        OnClickCheck = CLB4ClickCheck
        ExplicitLeft = 670
        ExplicitHeight = 444
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 876
    Height = 57
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 884
    object Label1: TLabel
      Left = 8
      Top = 22
      Width = 75
      Height = 15
      Caption = #36716#31185#26085#26399#20174
      Transparent = True
    end
    object Label2: TLabel
      Left = 197
      Top = 22
      Width = 15
      Height = 15
      Caption = #21040
      Transparent = True
    end
    object Label3: TLabel
      Left = 328
      Top = 21
      Width = 38
      Height = 15
      Caption = #31185#23460':'
    end
    object BitBtn1: TBitBtn
      Left = 670
      Top = 16
      Width = 65
      Height = 25
      Caption = #20851#38381'(&X)'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object DTP1: TDateTimePicker
      Left = 87
      Top = 18
      Width = 106
      Height = 23
      Date = 39538.639641041700000000
      Time = 39538.639641041700000000
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 216
      Top = 17
      Width = 106
      Height = 23
      Date = 39538.639641041700000000
      Time = 39538.639641041700000000
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      Left = 485
      Top = 16
      Width = 65
      Height = 25
      Caption = #32479#35745'(&T)'
      TabOrder = 3
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 567
      Top = 16
      Width = 65
      Height = 25
      Caption = #25171#21360'(&P)'
      TabOrder = 4
      OnClick = BitBtn3Click
    end
    object DBLB_ksdm: TDBLookupComboBox
      Left = 368
      Top = 17
      Width = 111
      Height = 23
      KeyField = 'dm'
      ListField = 'mc'
      ListSource = ds_ksdm
      TabOrder = 5
      OnCloseUp = DBLB_ksdmCloseUp
    end
    object QuickRep1: TQuickRep
      Left = 45
      Top = 1000
      Width = 794
      Height = 1123
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
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
        50.000000000000000000
        2970.000000000000000000
        100.000000000000000000
        2100.000000000000000000
        100.000000000000000000
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
      object QRBand1: TQRBand
        Left = 38
        Top = 38
        Width = 737
        Height = 71
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
          187.854166666666700000
          1949.979166666667000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbPageHeader
        object QRLabel1: TQRLabel
          Left = 321
          Top = 8
          Width = 45
          Height = 25
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            66.145833333333300000
            849.312500000000000000
            21.166666666666700000
            119.062500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = True
          Caption = 'Tile'
          Color = clWhite
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = #40657#20307
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 16
        end
        object QRLabel8: TQRLabel
          Left = 24
          Top = 48
          Width = 81
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333300000
            63.500000000000000000
            127.000000000000000000
            214.312500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #32479#35745#26102#38388#65306
          Color = clWhite
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
      end
      object QRBand2: TQRBand
        Left = 38
        Top = 159
        Width = 737
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
          1949.979166666667000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbPageFooter
        object QRLabel9: TQRLabel
          Left = 62
          Top = 5
          Width = 65
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333300000
            164.041666666667000000
            13.229166666666700000
            171.979166666667000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #21046#34920#20154#65306
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 11
        end
        object QRLabel10: TQRLabel
          Left = 447
          Top = 5
          Width = 81
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333300000
            1182.687500000000000000
            13.229166666666700000
            214.312500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #25171#21360#26102#38388#65306
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 11
        end
      end
      object ColumnHeaderBand1: TQRBand
        Left = 38
        Top = 109
        Width = 737
        Height = 25
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
          66.145833333333330000
          1949.979166666667000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbColumnHeader
        object QRShape10: TQRShape
          Left = 625
          Top = 0
          Width = 99
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            68.791666666666700000
            1653.645833333330000000
            0.000000000000000000
            261.937500000000000000)
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape11: TQRShape
          Left = 499
          Top = 0
          Width = 127
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            68.791666666666700000
            1320.270833333330000000
            0.000000000000000000
            336.020833333333000000)
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape12: TQRShape
          Left = 367
          Top = 0
          Width = 133
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            68.791666666666700000
            971.020833333333000000
            0.000000000000000000
            351.895833333333000000)
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRLabel2: TQRLabel
          Left = 366
          Top = 5
          Width = 132
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333300000
            968.375000000000000000
            13.229166666666700000
            349.250000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #31185#23460#21517#31216
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRShape3: TQRShape
          Left = 269
          Top = 0
          Width = 99
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            68.791666666666700000
            711.729166666667000000
            0.000000000000000000
            261.937500000000000000)
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape2: TQRShape
          Left = 143
          Top = 0
          Width = 127
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            68.791666666666700000
            378.354166666667000000
            0.000000000000000000
            336.020833333333000000)
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape1: TQRShape
          Left = 11
          Top = 0
          Width = 133
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            68.791666666666700000
            29.104166666666700000
            0.000000000000000000
            351.895833333333000000)
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRLabel5: TQRLabel
          Left = 10
          Top = 5
          Width = 132
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333300000
            26.458333333333300000
            13.229166666666700000
            349.250000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #31185#23460#21517#31216
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRLabel6: TQRLabel
          Left = 140
          Top = 5
          Width = 132
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333300000
            370.416666666667000000
            13.229166666666700000
            349.250000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #36153#29992#22823#31867
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRLabel7: TQRLabel
          Left = 268
          Top = 5
          Width = 98
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333300000
            709.083333333333000000
            13.229166666666700000
            259.291666666667000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #36153#29992#37329#39069
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRLabel3: TQRLabel
          Left = 496
          Top = 5
          Width = 132
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333300000
            1312.333333333330000000
            13.229166666666700000
            349.250000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #36153#29992#22823#31867
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRLabel4: TQRLabel
          Left = 624
          Top = 5
          Width = 98
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333300000
            1651.000000000000000000
            13.229166666666700000
            259.291666666667000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #36153#29992#37329#39069
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
      end
      object QRSubDetail1: TQRSubDetail
        Left = 38
        Top = 134
        Width = 737
        Height = 25
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
          66.145833333333330000
          1949.979166666667000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        Master = QuickRep1
        OnNeedData = QRSubDetail1NeedData
        PrintBefore = False
        PrintIfEmpty = True
        object QRShape4: TQRShape
          Left = 11
          Top = 0
          Width = 133
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            68.791666666666700000
            29.104166666666700000
            0.000000000000000000
            351.895833333333000000)
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape5: TQRShape
          Left = 143
          Top = 0
          Width = 127
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            68.791666666666700000
            378.354166666667000000
            0.000000000000000000
            336.020833333333000000)
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape6: TQRShape
          Left = 269
          Top = 0
          Width = 99
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            68.791666666666700000
            711.729166666667000000
            0.000000000000000000
            261.937500000000000000)
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape9: TQRShape
          Left = 367
          Top = 0
          Width = 133
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            68.791666666666700000
            971.020833333333000000
            0.000000000000000000
            351.895833333333000000)
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape13: TQRShape
          Left = 499
          Top = 0
          Width = 127
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            68.791666666666700000
            1320.270833333330000000
            0.000000000000000000
            336.020833333333000000)
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object QRShape14: TQRShape
          Left = 625
          Top = 0
          Width = 99
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            68.791666666666700000
            1653.645833333330000000
            0.000000000000000000
            261.937500000000000000)
          Shape = qrsRectangle
          VertAdjust = 0
        end
        object FL01: TQRLabel
          Left = 14
          Top = 4
          Width = 38
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333300000
            37.041666666666700000
            10.583333333333300000
            100.541666666667000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'FL01'
          Color = clWhite
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object FL02: TQRLabel
          Left = 148
          Top = 4
          Width = 38
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333300000
            391.583333333333000000
            10.583333333333300000
            100.541666666667000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'FL02'
          Color = clWhite
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object FL03: TQRLabel
          Left = 327
          Top = 4
          Width = 38
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333300000
            865.187500000000000000
            10.583333333333300000
            100.541666666667000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = True
          Caption = 'FL03'
          Color = clWhite
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object FL04: TQRLabel
          Left = 372
          Top = 4
          Width = 38
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333300000
            984.250000000000000000
            10.583333333333300000
            100.541666666667000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'FL04'
          Color = clWhite
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object FL05: TQRLabel
          Left = 503
          Top = 4
          Width = 38
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333300000
            1330.854166666670000000
            10.583333333333300000
            100.541666666667000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'FL05'
          Color = clWhite
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object FL06: TQRLabel
          Left = 683
          Top = 4
          Width = 38
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333300000
            1807.104166666670000000
            10.583333333333300000
            100.541666666667000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = True
          Caption = 'FL06'
          Color = clWhite
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 57
    Width = 876
    Height = 31
    Align = alTop
    BevelOuter = bvSpace
    Caption = #35831#36873#25321#31185#23460
    Font.Charset = GB2312_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = #40657#20307
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    ExplicitWidth = 884
  end
  object ds_zkzcjl: TDataSource
    DataSet = sp_zkzcjl
    Left = 200
    Top = 168
  end
  object sp_fydl_tj: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'cwk_tj_ICUsrhz;1'
    Parameters = <
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
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@kmdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end>
    Left = 236
    Top = 167
  end
  object ds_fydl: TDataSource
    DataSet = sp_fydl_tj
    Left = 272
    Top = 168
  end
  object sp_fymx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'CWK_tj_ICUfymx;1'
    Parameters = <
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 9
        Value = Null
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 312
    Top = 170
  end
  object ds_fymx: TDataSource
    DataSet = sp_fymx
    Left = 350
    Top = 170
  end
  object sp_zkzcjl: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'CWK_tj_ICUZKJL;1'
    Parameters = <
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 17
        Value = Null
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 17
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 160
    Top = 168
  end
  object sp_fydl_tj_fk: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'cwk_tj_ICUfksrhz;1'
    Parameters = <
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
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@kmdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end>
    Prepared = True
    Left = 388
    Top = 167
  end
  object ds_fydl_fk: TDataSource
    DataSet = sp_fydl_tj_fk
    Left = 424
    Top = 168
  end
  object ds_ksbr: TDataSource
    DataSet = qry_ksbr
    Left = 72
    Top = 168
  end
  object ds_ksdm: TDataSource
    DataSet = qry_ksdm
    Left = 496
    Top = 168
  end
  object qry_ksdm: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      'select * from sys_ksdm')
    Left = 464
    Top = 168
  end
  object qry_ksbr: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select a.tmh,a.zyh,a.brxm,a.brnl,a.sbkh,a.csrq,a.brzy,a.brxb,a.b' +
        'rsf,b.mc sfmc,a.brjg,c.mc jgmc,'
      
        '        a.brmz,d.mc mzmc, a.dwdh,a.brdz,a.dwyb,a.zkze,a.zfze,a.y' +
        'jze-a.zfze syyj,a.dbr,'
      
        '        a.dbrdz,a.nxrdh,a.hkyb,a.bch,a.ryzd,a.ksdm,f.mc ksmc,a.z' +
        'gys,h.mc ysxm,a.zycs,'
      
        '        a.fylb,e.mc lbmc,a.ryks,g.mc ryksmc,a.sfzhm,a.rybq,a.ryt' +
        'j,i.sm tjmc,a.ryrq,'
      
        '        a.zdjf,a.yjze,a.zfy,a.ybndzje,a.ryczy,j.mc czyxm,a.bz,e.' +
        'zfzdmc,e.yjbz,e.jzxe ,'
      '        a.cyrq'
      'from zysf_zydj a,'
      '     sys_sf b ,'
      '     sys_jg c ,'
      '     sys_mz d,'
      '     sys_fylb e,'
      '     sys_ksdm f,'
      '     sys_ksdm g,'
      '     sys_czy h,'
      '     zysf_rytj i,'
      '     sys_czy j '
      'where a.brsf*=b.dm and '
      '      a.brjg*=c.dm and'
      '      a.brmz*=d.dm and'
      '      a.ksdm*=f.dm and'
      '      a.fylb*=e.dm and '
      '      a.ryks*=g.dm and '
      '      a.zgys*=h.dm and'
      '      a.rytj*=i.dm and '
      '      a.ryczy*=j.dm and '
      '      a.ksdm='#39'0362'#39' and'
      '     a.cybz=0'
      'order by djrq,brxm')
    Left = 108
    Top = 165
  end
  object sp_fydl_tj_kd: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'cwk_tj_ICUsrhz_kd;1'
    Parameters = <
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
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@kmdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end>
    Left = 236
    Top = 199
  end
  object ds_fydl_kd: TDataSource
    DataSet = sp_fydl_tj_kd
    Left = 272
    Top = 200
  end
  object sp_fydl_tj_fk_kd: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'cwk_tj_ICUfksrhz_kd;1'
    Parameters = <
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
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@kmdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = Null
      end>
    Prepared = True
    Left = 388
    Top = 207
  end
  object ds_fydl_fk_kd: TDataSource
    DataSet = sp_fydl_tj_fk_kd
    Left = 424
    Top = 208
  end
  object qry_kmmx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    AfterOpen = qry_kmmxAfterOpen
    Parameters = <>
    SQL.Strings = (
      'select kmdm,kmmc from zysf_kjkmzb'
      ' where substring(kmdm,1,2)='#39'03'#39)
    Left = 556
    Top = 164
  end
  object ds_kmmx: TDataSource
    DataSet = qry_kmmx
    Left = 588
    Top = 164
  end
end
