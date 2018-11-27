object frm_brrsqd: Tfrm_brrsqd
  Left = 199
  Top = 122
  BorderIcons = [biSystemMenu]
  Caption = #30149#20154#19968#26085#28165#21333
  ClientHeight = 546
  ClientWidth = 911
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 911
    Height = 69
    Align = alTop
    Shape = bsFrame
    Style = bsRaised
    ExplicitTop = -5
    ExplicitWidth = 795
  end
  object Label1: TLabel
    Left = 149
    Top = 15
    Width = 38
    Height = 15
    Caption = #26085#26399' '
  end
  object Label2: TLabel
    Left = 2
    Top = 15
    Width = 30
    Height = 15
    Caption = #21345#21495
  end
  object Label5: TLabel
    Left = 3
    Top = 43
    Width = 30
    Height = 15
    Caption = #30149#21306
  end
  object BitBtn1: TBitBtn
    Left = 846
    Top = 12
    Width = 60
    Height = 40
    Caption = #36864#20986'(&X)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object qdrq: TDateTimePicker
    Left = 182
    Top = 7
    Width = 107
    Height = 23
    Date = 37700.835772604200000000
    Time = 37700.835772604200000000
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    TabOrder = 1
    OnKeyPress = qdrqKeyPress
  end
  object BitBtn2: TBitBtn
    Left = 448
    Top = 12
    Width = 42
    Height = 40
    Caption = #26597#35810
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 495
    Top = 12
    Width = 57
    Height = 40
    Caption = #25171#21360#36153#29992
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object tmh: TEdit
    Left = 33
    Top = 7
    Width = 115
    Height = 23
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    TabOrder = 0
    OnKeyPress = tmhKeyPress
  end
  object BitBtn5: TBitBtn
    Left = 557
    Top = 12
    Width = 57
    Height = 40
    Caption = #25171#21360#33647#21697
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn5Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 69
    Width = 228
    Height = 443
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 7
    object DBGridEh4: TDBGridEh
      Left = 1
      Top = 1
      Width = 226
      Height = 441
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = ds_zyby
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = GB2312_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ReadOnly = True
      RowDetailPanel.Color = clBtnFace
      TabOrder = 0
      TitleFont.Charset = GB2312_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      OnCellClick = DBGridEh4CellClick
      OnDblClick = DBGridEh4DblClick
      OnMouseUp = DBGridEh4MouseUp
      OnTitleClick = DBGridEh4TitleClick
      Columns = <
        item
          Checkboxes = True
          EditButtons = <>
          FieldName = 'yrqddybz'
          Footers = <>
          ReadOnly = False
          Title.Caption = #36873#25321
          Width = 36
        end
        item
          EditButtons = <>
          FieldName = 'tmh'
          Footers = <>
          Title.Caption = #20303#38498#21495
        end
        item
          EditButtons = <>
          FieldName = 'brxm'
          Footers = <>
          Title.Caption = #22995#21517
          Width = 57
        end
        item
          EditButtons = <>
          FieldName = 'bch'
          Footers = <>
          Title.Caption = #24202#21495
          Width = 42
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Panel2: TPanel
    Left = 228
    Top = 69
    Width = 683
    Height = 443
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 8
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 681
      Height = 152
      Align = alTop
      DataGrouping.GroupLevels = <>
      DataSource = ds_yrqd
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = GB2312_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      FooterRowCount = 1
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ReadOnly = True
      RowDetailPanel.Color = clBtnFace
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = GB2312_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'fymc'
          Footer.Value = #21512#35745
          Footer.ValueType = fvtStaticText
          Footers = <>
          Title.Caption = #36153#29992#21517#31216
          Width = 234
        end
        item
          EditButtons = <>
          FieldName = 'fysl'
          Footers = <>
          Title.Caption = #25968#37327
          Width = 61
        end
        item
          EditButtons = <>
          FieldName = 'fyje'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #37329#39069
          Width = 83
        end
        item
          EditButtons = <>
          FieldName = 'mc'
          Footers = <>
          Title.Caption = #25805#20316#21592
          Width = 59
        end
        item
          EditButtons = <>
          FieldName = 'ksmc'
          Footers = <>
          Title.Caption = #22788#32622#31185#23460
          Width = 105
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'tfbz'
          Footers = <>
          Title.Caption = #36864#36153
          Width = 55
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 153
      Width = 681
      Height = 154
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = ds_yymx
      Flat = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = ANSI_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -16
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      FooterRowCount = 1
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      ReadOnly = True
      RowDetailPanel.Color = clBtnFace
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ypmc'
          Footer.Value = #21512#35745
          Footer.ValueType = fvtStaticText
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #33647#21697#21517#31216
          Width = 206
        end
        item
          EditButtons = <>
          FieldName = 'ypgg'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #35268#26684
          Width = 99
        end
        item
          EditButtons = <>
          FieldName = 'ypdw'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #21333#20301
          Width = 94
        end
        item
          EditButtons = <>
          FieldName = 'ypsl'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #25968#37327
          Width = 90
        end
        item
          EditButtons = <>
          FieldName = 'ypje'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #37329#39069
          Width = 59
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object DBGridEh5: TDBGridEh
      Left = 1
      Top = 307
      Width = 681
      Height = 135
      Align = alBottom
      DataGrouping.GroupLevels = <>
      DataSource = ds_clmx
      Flat = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = ANSI_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -16
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      FooterRowCount = 1
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      ReadOnly = True
      RowDetailPanel.Color = clBtnFace
      SumList.Active = True
      TabOrder = 2
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ypmc'
          Footer.Value = #21512#35745
          Footer.ValueType = fvtStaticText
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #26448#26009#21517#31216
          Width = 206
        end
        item
          EditButtons = <>
          FieldName = 'ypgg'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #35268#26684
          Width = 99
        end
        item
          EditButtons = <>
          FieldName = 'ypdw'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #21333#20301
          Width = 72
        end
        item
          EditButtons = <>
          FieldName = 'ypsl'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #25968#37327
          Width = 68
        end
        item
          EditButtons = <>
          FieldName = 'ypje'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #37329#39069
          Width = 59
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object pldy: TCheckBox
    Left = 296
    Top = 11
    Width = 54
    Height = 17
    Caption = #25209#37327
    Checked = True
    Color = clTeal
    ParentColor = False
    State = cbChecked
    TabOrder = 10
    OnClick = pldyClick
  end
  object QuickRep1: TQuickRep
    Left = 800
    Top = 800
    Width = 794
    Height = 352
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep1BeforePrint
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
    Options = [FirstPageHeader]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      100.000000000000000000
      931.000000000000000000
      100.000000000000000000
      2100.000000000000000000
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
    ShowProgress = False
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
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
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object bt: TQRLabel
        Left = 349
        Top = 4
        Width = 19
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          923.395833333333300000
          10.583333333333330000
          50.270833333333330000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'bt'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 13
      end
      object QRSysData1: TQRSysData
        Left = 624
        Top = 15
        Width = 63
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1651.000000000000000000
          39.687500000000000000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Text = #31532
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 688
        Top = 15
        Width = 14
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1820.333333333333000000
          39.687500000000000000
          37.041666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39029
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
      object dysj: TQRLabel
        Left = 0
        Top = 17
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          0.000000000000000000
          44.979166666666670000
          58.208333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'gg1'
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
      object QRLabel2: TQRLabel
        Left = 2
        Top = 35
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          5.291666666666667000
          92.604166666666670000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995#21517
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
      object QRLabel3: TQRLabel
        Left = 93
        Top = 35
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          246.062500000000000000
          92.604166666666670000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24202#21495
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
      object QRLabel9: TQRLabel
        Left = 155
        Top = 35
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          410.104166666666700000
          92.604166666666670000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26085#26399
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
      object xm: TQRLabel
        Left = 30
        Top = 35
        Width = 62
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          79.375000000000000000
          92.604166666666680000
          164.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'yp1'
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
      object ch: TQRLabel
        Left = 121
        Top = 35
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          320.145833333333400000
          92.604166666666680000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'gg1'
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
      object rq: TQRLabel
        Left = 182
        Top = 36
        Width = 190
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          481.541666666666700000
          95.250000000000000000
          502.708333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'dw1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
      object QRLabel29: TQRLabel
        Left = 536
        Top = 35
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1418.166666666667000000
          92.604166666666670000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39044#20132
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
      object QRLabel31: TQRLabel
        Left = 373
        Top = 35
        Width = 105
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          986.895833333333300000
          92.604166666666670000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #28165#21333#25130#27490#26102#24635#36153#29992
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
      object QRLabel33: TQRLabel
        Left = 624
        Top = 35
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1651.000000000000000000
          92.604166666666670000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20313#39069
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
      object QRShape6: TQRShape
        Left = 0
        Top = 32
        Width = 740
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          0.000000000000000000
          84.666666666666700000
          1957.916666666670000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qrdbtxtzfy: TQRDBText
        Left = 480
        Top = 35
        Width = 22
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1270.000000000000000000
          92.604166666666670000
          58.208333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_qdxx
        DataField = 'zfy'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Mask = '#0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrdbtxtzfy1: TQRDBText
        Left = 565
        Top = 34
        Width = 22
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1494.895833333333000000
          89.958333333333330000
          58.208333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_qdxx
        DataField = 'zyj'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Mask = '#0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrxpr1: TQRExpr
        Left = 651
        Top = 33
        Width = 59
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1722.437500000000000000
          87.312500000000000000
          156.104166666666700000)
        Alignment = taLeftJustify
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
        Expression = 'sp_qdxx.zyj - sp_qdxx.zfy'
        Mask = '#0.00'
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 88
      Width = 718
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
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupHeader
      object QRLabel1: TQRLabel
        Left = 5
        Top = 2
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
          5.291666666666667000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36153#29992#21517#31216
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
      object QRLabel5: TQRLabel
        Left = 115
        Top = 2
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          304.270833333333300000
          5.291666666666667000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25968#37327
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
      object QRLabel4: TQRLabel
        Left = 158
        Top = 2
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          418.041666666666700000
          5.291666666666667000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#39069
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
      object QRLabel12: TQRLabel
        Left = 200
        Top = 2
        Width = 40
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          529.166666666666700000
          5.291666666666667000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#21592
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
      object QRLabel6: TQRLabel
        Left = 253
        Top = 2
        Width = 53
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          669.395833333333300000
          5.291666666666667000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36153#29992#21517#31216
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
      object QRLabel7: TQRLabel
        Left = 351
        Top = 2
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          928.687500000000000000
          5.291666666666667000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25968#37327
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
      object QRLabel8: TQRLabel
        Left = 406
        Top = 2
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1074.208333333333000000
          5.291666666666667000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#39069
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
      object QRLabel13: TQRLabel
        Left = 440
        Top = 2
        Width = 40
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1164.166666666667000000
          5.291666666666667000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#21592
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
      object QRLabel14: TQRLabel
        Left = 489
        Top = 2
        Width = 53
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1293.812500000000000000
          5.291666666666667000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36153#29992#21517#31216
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
      object QRLabel15: TQRLabel
        Left = 584
        Top = 2
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1545.166666666667000000
          5.291666666666667000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25968#37327
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
      object QRLabel16: TQRLabel
        Left = 634
        Top = 2
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1677.458333333333000000
          5.291666666666667000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#39069
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
      object QRLabel17: TQRLabel
        Left = 670
        Top = 2
        Width = 40
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1772.708333333333000000
          5.291666666666667000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#36153#21592
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
      Top = 218
      Width = 718
      Height = 17
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
        44.979166666666670000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel19: TQRLabel
        Left = 8
        Top = 1
        Width = 66
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          21.166666666666670000
          2.645833333333333000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30149#21592#31614#23383#65306
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
    object QRBand5: TQRBand
      Left = 38
      Top = 202
      Width = 718
      Height = 16
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
        42.333333333333330000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel18: TQRLabel
        Left = 8
        Top = 1
        Width = 66
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          21.166666666666670000
          2.645833333333333000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30149#21592#31614#23383#65306
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
      object hjyp: TQRLabel
        Left = 440
        Top = 1
        Width = 53
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1164.166666666667000000
          2.645833333333333000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21512#35745#36153#29992
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
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 108
      Width = 718
      Height = 14
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
        37.041666666666670000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      FooterBand = QRBand3
      HeaderBand = QRBand2
      OnNeedData = QRSubDetail1NeedData
      PrintBefore = False
      PrintIfEmpty = True
      object fy1: TQRLabel
        Left = 7
        Top = 0
        Width = 105
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          18.520833333333300000
          0.000000000000000000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'fy1'
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
      object sl1: TQRLabel
        Left = 115
        Top = 0
        Width = 24
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          304.270833333333000000
          0.000000000000000000
          63.500000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'sl1'
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
      object je1: TQRLabel
        Left = 143
        Top = 0
        Width = 57
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          378.354166666667000000
          0.000000000000000000
          150.812500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'ys1'
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
      object sfy1: TQRLabel
        Left = 202
        Top = 0
        Width = 38
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          534.458333333333000000
          0.000000000000000000
          100.541666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'sl1'
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
      object fy2: TQRLabel
        Left = 246
        Top = 0
        Width = 104
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          650.875000000000000000
          0.000000000000000000
          275.166666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ys1'
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
      object sl2: TQRLabel
        Left = 353
        Top = 0
        Width = 24
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          933.979166666667000000
          0.000000000000000000
          63.500000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'sl1'
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
      object je2: TQRLabel
        Left = 380
        Top = 0
        Width = 57
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1005.416666666670000000
          0.000000000000000000
          150.812500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'ys1'
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
      object sfy2: TQRLabel
        Left = 440
        Top = 0
        Width = 38
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1164.166666666670000000
          0.000000000000000000
          100.541666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'sl1'
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
      object fy3: TQRLabel
        Left = 484
        Top = 0
        Width = 98
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1280.583333333330000000
          0.000000000000000000
          259.291666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ys1'
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
      object sl3: TQRLabel
        Left = 584
        Top = 0
        Width = 24
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1545.166666666670000000
          0.000000000000000000
          63.500000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'sl1'
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
      object je3: TQRLabel
        Left = 612
        Top = 0
        Width = 57
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1619.250000000000000000
          0.000000000000000000
          150.812500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'ys1'
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
      object sfy3: TQRLabel
        Left = 672
        Top = 0
        Width = 38
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1778.000000000000000000
          0.000000000000000000
          100.541666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'sl1'
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
    end
    object QRBand6: TQRBand
      Left = 38
      Top = 140
      Width = 718
      Height = 47
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
        124.354166666666700000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupHeader
      object QRLabel20: TQRLabel
        Left = 5
        Top = 29
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
          76.729166666666670000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #33647#21697#21517#31216
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
      object QRLabel21: TQRLabel
        Left = 191
        Top = 29
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          505.354166666666700000
          76.729166666666670000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35268#26684
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
      object QRLabel22: TQRLabel
        Left = 238
        Top = 29
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          629.708333333333300000
          76.729166666666670000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21333#20301
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
      object QRLabel23: TQRLabel
        Left = 276
        Top = 29
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          730.250000000000000000
          76.729166666666670000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25968#37327
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
      object QRLabel24: TQRLabel
        Left = 317
        Top = 29
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          838.729166666666700000
          76.729166666666670000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#39069
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
      object QRLabel25: TQRLabel
        Left = 384
        Top = 29
        Width = 53
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1016.000000000000000000
          76.729166666666670000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #33647#21697#21517#31216
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
      object QRLabel26: TQRLabel
        Left = 550
        Top = 29
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1455.208333333333000000
          76.729166666666670000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35268#26684
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
      object QRLabel27: TQRLabel
        Left = 599
        Top = 29
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1584.854166666667000000
          76.729166666666670000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21333#20301
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
      object QRLabel11: TQRLabel
        Left = 681
        Top = 29
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1801.812500000000000000
          76.729166666666670000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#39069
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
      object QRLabel28: TQRLabel
        Left = 633
        Top = 29
        Width = 27
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1674.812500000000000000
          76.729166666666670000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25968#37327
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
      object bt1: TQRLabel
        Left = 349
        Top = 4
        Width = 19
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          923.395833333333300000
          10.583333333333330000
          50.270833333333330000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'bt'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 13
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 26
        Width = 718
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          0.000000000000000000
          68.791666666666700000
          1899.708333333330000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
    object QRSubDetail2: TQRSubDetail
      Left = 38
      Top = 187
      Width = 718
      Height = 15
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
      LinkBand = QRSubDetail1
      Size.Values = (
        39.687500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      FooterBand = QRBand5
      HeaderBand = QRBand6
      OnNeedData = QRSubDetail2NeedData
      PrintBefore = False
      PrintIfEmpty = True
      object ypmc1: TQRLabel
        Left = 5
        Top = 0
        Width = 174
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          13.229166666666700000
          0.000000000000000000
          460.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypmc1'
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
      object gg1: TQRLabel
        Left = 181
        Top = 0
        Width = 63
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          478.895833333333000000
          0.000000000000000000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'gg1'
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
      object dw1: TQRLabel
        Left = 246
        Top = 0
        Width = 32
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          650.875000000000000000
          0.000000000000000000
          84.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'dw1'
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
      object ypsl1: TQRLabel
        Left = 280
        Top = 0
        Width = 21
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          740.833333333333000000
          0.000000000000000000
          55.562500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'sl1'
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
      object ypdj1: TQRLabel
        Left = 304
        Top = 0
        Width = 50
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          804.333333333333000000
          0.000000000000000000
          132.291666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'ypdj1'
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
      object ypmc2: TQRLabel
        Left = 360
        Top = 0
        Width = 179
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          952.500000000000000000
          0.000000000000000000
          473.604166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypmc1'
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
      object gg2: TQRLabel
        Left = 540
        Top = 0
        Width = 59
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1428.750000000000000000
          0.000000000000000000
          156.104166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'gg1'
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
      object dw2: TQRLabel
        Left = 601
        Top = 0
        Width = 32
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1590.145833333330000000
          0.000000000000000000
          84.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'dw1'
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
      object ypdj2: TQRLabel
        Left = 662
        Top = 0
        Width = 50
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1751.541666666670000000
          0.000000000000000000
          132.291666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'ypdj1'
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
      object QRShape2: TQRShape
        Left = 355
        Top = 0
        Width = 2
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          939.270833333333000000
          0.000000000000000000
          5.291666666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object ypsl2: TQRLabel
        Left = 636
        Top = 0
        Width = 24
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1682.750000000000000000
          0.000000000000000000
          63.500000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'sl2'
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
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 122
      Width = 718
      Height = 18
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
        47.625000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object HJFY: TQRLabel
        Left = 416
        Top = 1
        Width = 53
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1100.666666666667000000
          2.645833333333333000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21512#35745#36153#29992
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
  end
  object Panel3: TPanel
    Left = 0
    Top = 512
    Width = 911
    Height = 34
    Align = alBottom
    TabOrder = 11
    object Label4: TLabel
      Left = 16
      Top = 8
      Width = 190
      Height = 20
      Caption = #20013#26029#25171#21360#20351#29992'ALT+F12'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -20
      Font.Name = #40657#20307
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 657
      Top = 8
      Width = 10
      Height = 19
      Caption = ' '
      Color = clWhite
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = #40657#20307
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
  object cxButton1: TcxButton
    Left = 621
    Top = 12
    Width = 74
    Height = 40
    Caption = #21512#24182#26684#24335#19968
    Enabled = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = cxButton1Click
    DropDownMenu = PopupMenu1
    Kind = cxbkDropDownButton
    LookAndFeel.Kind = lfStandard
  end
  object chk_cybd: TCheckBox
    Left = 184
    Top = 43
    Width = 81
    Height = 17
    Caption = #20986#38498#34917#25171
    TabOrder = 13
    OnClick = chk_cybdClick
  end
  object dblcombobq: TDBLookupComboBox
    Left = 34
    Top = 41
    Width = 141
    Height = 23
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    KeyField = 'BQDM'
    ListField = 'BQMC'
    ListSource = ds_bq
    TabOrder = 14
  end
  object CheckBox1: TCheckBox
    Left = 292
    Top = 46
    Width = 54
    Height = 17
    Hint = #22312#28165#21333#20013#21152#20837#23567#35745
    Caption = #23567#35745
    Checked = True
    ParentShowHint = False
    ShowHint = True
    State = cbChecked
    TabOrder = 15
  end
  object rep_qd: TQuickRep
    Left = -23
    Top = 251
    Width = 907
    Height = 1058
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = rep_qdBeforePrint
    DataSet = sp_brqd
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
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
    Options = [Compression]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      0.000000000000000000
      2800.000000000000000000
      30.000000000000000000
      2400.000000000000000000
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
    PrevFormStyle = fsStayOnTop
    PreviewInitialState = wsMaximized
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoomOther
    PreviewDefaultSaveType = stQRP
    object QRGroup2: TQRGroup
      Left = 38
      Top = 11
      Width = 831
      Height = 113
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRGroup2BeforePrint
      Color = clWhite
      TransparentBand = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        298.979166666666700000
        2198.687500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'sp_brqd.zyh'
      FooterBand = QRBand8
      Master = rep_qd
      ReprintOnNewPage = False
      object QRLabel80: TQRLabel
        Left = 51
        Top = 90
        Width = 27
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          134.937500000000000000
          238.125000000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24207#21495
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel81: TQRLabel
        Left = 174
        Top = 90
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          460.375000000000000000
          238.125000000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36153#29992#39033#30446
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel82: TQRLabel
        Left = 94
        Top = 90
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          248.708333333333300000
          238.125000000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39033#30446#20195#30721
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel83: TQRLabel
        Left = 294
        Top = 90
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          777.875000000000000000
          238.125000000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39033#30446#21517#31216
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel84: TQRLabel
        Left = 429
        Top = 90
        Width = 27
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1135.062500000000000000
          238.125000000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21333#20215
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel85: TQRLabel
        Left = 482
        Top = 90
        Width = 27
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1275.291666666667000000
          238.125000000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25968#37327
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel86: TQRLabel
        Left = 534
        Top = 90
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1412.875000000000000000
          238.125000000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24212#35760#37329#39069
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel87: TQRLabel
        Left = 609
        Top = 90
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1611.312500000000000000
          238.125000000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23454#35760#37329#39069
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel88: TQRLabel
        Left = 702
        Top = 90
        Width = 40
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1857.375000000000000000
          238.125000000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25805#20316#21592
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_yymc: TQRLabel
        Left = 101
        Top = 5
        Width = 657
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          59.266666666666670000
          266.700000000000000000
          12.700000000000000000
          1737.783333333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #28165#21333
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel66: TQRLabel
        Left = 193
        Top = 60
        Width = 42
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          510.645833333333300000
          158.750000000000000000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30149#21306':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRDBText29: TQRDBText
        Left = 237
        Top = 60
        Width = 19
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          627.062500000000000000
          158.750000000000000000
          50.270833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ad_zybr
        DataField = 'mc'
        Font.Charset = ANSI_CHARSET
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
      object QRLabel67: TQRLabel
        Left = 397
        Top = 37
        Width = 58
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1050.395833333333000000
          97.895833333333330000
          153.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30149#24202#21495':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRDBText30: TQRDBText
        Left = 458
        Top = 37
        Width = 28
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1211.791666666667000000
          97.895833333333330000
          74.083333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ad_zybr
        DataField = 'bch'
        Font.Charset = ANSI_CHARSET
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
      object QRLabel71: TQRLabel
        Left = 49
        Top = 60
        Width = 58
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          129.645833333333300000
          158.750000000000000000
          153.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20303#38498#21495':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel72: TQRLabel
        Left = 49
        Top = 37
        Width = 42
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          129.645833333333300000
          97.895833333333330000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995#21517':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRDBText32: TQRDBText
        Left = 97
        Top = 37
        Width = 37
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          256.645833333333300000
          97.895833333333330000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ad_zybr
        DataField = 'brxm'
        Font.Charset = ANSI_CHARSET
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
      object QRLabel73: TQRLabel
        Left = 166
        Top = 37
        Width = 42
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          439.208333333333300000
          97.895833333333330000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24615#21035':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRDBText33: TQRDBText
        Left = 208
        Top = 37
        Width = 26
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          550.333333333333300000
          97.895833333333320000
          68.791666666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ad_zybr
        DataField = 'brxb'
        Font.Charset = ANSI_CHARSET
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
      object QRLabel74: TQRLabel
        Left = 275
        Top = 37
        Width = 42
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          727.604166666666700000
          97.895833333333330000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24180#40836':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRDBText37: TQRDBText
        Left = 319
        Top = 37
        Width = 41
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          844.020833333333200000
          97.895833333333320000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ad_zybr
        DataField = 'brnl'
        Font.Charset = ANSI_CHARSET
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
      object QRLabel76: TQRLabel
        Left = 574
        Top = 38
        Width = 74
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1518.708333333333000000
          100.541666666666700000
          195.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20837#38498#26102#38388':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRDBText39: TQRDBText
        Left = 652
        Top = 38
        Width = 110
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1725.083333333333000000
          100.541666666666700000
          291.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ad_zybr
        DataField = 'ryrq'
        Font.Charset = ANSI_CHARSET
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
      object QRLabel77: TQRLabel
        Left = 328
        Top = 60
        Width = 42
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          867.833333333333300000
          158.750000000000000000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39044#20132':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRDBText31: TQRDBText
        Left = 110
        Top = 59
        Width = 28
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          291.041666666666700000
          156.104166666666700000
          74.083333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ad_zybr
        DataField = 'tmh'
        Font.Charset = ANSI_CHARSET
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
      object QRLabel79: TQRLabel
        Left = 583
        Top = 61
        Width = 74
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1542.520833333333000000
          161.395833333333300000
          195.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24080#25143#20313#39069':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel78: TQRLabel
        Left = 455
        Top = 61
        Width = 42
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1203.854166666667000000
          161.395833333333300000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36153#29992':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape5: TQRShape
        Left = 1
        Top = 87
        Width = 829
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          2.645833333333333000
          230.187500000000000000
          2193.395833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrlbl_ye: TQRLabel
        Left = 658
        Top = 61
        Width = 74
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1740.958333333333000000
          161.395833333333300000
          195.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24080#25143#20313#39069':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrlbl_zfy: TQRLabel
        Left = 503
        Top = 61
        Width = 42
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1330.854166666667000000
          161.395833333333300000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36153#29992':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrlbl_zyj: TQRLabel
        Left = 376
        Top = 60
        Width = 42
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          994.833333333333300000
          158.750000000000000000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39044#20132':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
    end
    object QRBand8: TQRBand
      Left = 38
      Top = 141
      Width = 831
      Height = 46
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
        121.708333333333300000
        2198.687500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object qrl_dyry: TQRLabel
        Left = 46
        Top = 6
        Width = 125
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          121.708333333333300000
          15.875000000000000000
          330.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #24207#21495
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_qdrq: TQRLabel
        Left = 258
        Top = 7
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          682.625000000000000000
          18.520833333333330000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #28165#21333#26085#26399
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_dyrq: TQRLabel
        Left = 610
        Top = 7
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1613.958333333333000000
          18.520833333333330000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25171#21360#26085#26399
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
    object QRBand7: TQRBand
      Left = 38
      Top = 124
      Width = 831
      Height = 17
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
        44.979166666666670000
        2198.687500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText21: TQRDBText
        Left = 167
        Top = 1
        Width = 70
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          441.854166666666700000
          2.645833333333333000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_brqd
        DataField = 'fyxm'
        Font.Charset = ANSI_CHARSET
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
      object QRDBText22: TQRDBText
        Left = 82
        Top = 1
        Width = 83
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          216.958333333333300000
          2.645833333333333000
          219.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_brqd
        DataField = 'szdm'
        Font.Charset = ANSI_CHARSET
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
      object QRDBText23: TQRDBText
        Left = 239
        Top = 1
        Width = 171
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          632.354166666666800000
          2.645833333333333000
          452.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_brqd
        DataField = 'xmmc'
        Font.Charset = ANSI_CHARSET
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
      object QRDBText24: TQRDBText
        Left = 403
        Top = 1
        Width = 60
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1066.270833333333000000
          2.645833333333333000
          158.750000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_brqd
        DataField = 'dj'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Mask = '#0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText25: TQRDBText
        Left = 464
        Top = 1
        Width = 50
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1227.666666666667000000
          2.645833333333333000
          132.291666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_brqd
        DataField = 'sl'
        Font.Charset = ANSI_CHARSET
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
      object QRDBText26: TQRDBText
        Left = 515
        Top = 1
        Width = 80
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1362.604166666667000000
          2.645833333333333000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_brqd
        DataField = 'fyje'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Mask = '#0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText27: TQRDBText
        Left = 604
        Top = 1
        Width = 75
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1598.083333333333000000
          2.645833333333333000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_brqd
        DataField = 'fyje'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Mask = '#0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText28: TQRDBText
        Left = 680
        Top = 1
        Width = 77
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1799.166666666667000000
          2.645833333333333000
          203.729166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_brqd
        DataField = 'czy'
        Font.Charset = ANSI_CHARSET
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
  end
  object BitBtn4: TBitBtn
    Left = 701
    Top = 12
    Width = 73
    Height = 40
    Caption = #21512#24182#26684#24335#20108
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    OnClick = BitBtn4Click
  end
  object DBGrid2: TDBGrid
    Left = 234
    Top = 132
    Width = 345
    Height = 161
    DataSource = DM_data.DS_pub
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDblClick = DBGrid2DblClick
    OnExit = DBGrid2Exit
    OnKeyPress = DBGrid2KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'tmh'
        Title.Alignment = taCenter
        Title.Caption = #26465#30721#21495
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brxm'
        Title.Alignment = taCenter
        Title.Caption = #30149#21592#22995#21517
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mc'
        Title.Alignment = taCenter
        Title.Caption = #20303#38498#31185#23460
        Width = 93
        Visible = True
      end>
  end
  object BitBtn6: TBitBtn
    Left = 776
    Top = 11
    Width = 67
    Height = 40
    Caption = #25171#21360#22823#39033
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    OnClick = BitBtn6Click
  end
  object btn_dyxz: TButton
    Left = 354
    Top = 12
    Width = 88
    Height = 40
    Caption = #20840#36873
    TabOrder = 19
    OnClick = btn_dyxzClick
  end
  object ds_yrqd: TDataSource
    DataSet = sp_yrqd
    Left = 276
    Top = 78
  end
  object sp_yrqd: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zysf_cx_brrsqd;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
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
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@brzt'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 467
    Top = 88
  end
  object PrintDBGridEh1: TPrintDBGridEh
    Options = [pghFitGridToPageWidth]
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.CenterText.Strings = (
      #30149#20154#19968#26085#28165#21333#25171#21360)
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -32
    PageHeader.Font.Name = #23435#20307
    PageHeader.Font.Style = [fsBold]
    Units = MM
    Left = 320
    Top = 80
  end
  object sp_cx_yymx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zysf_cx_brrsqd_yymx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
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
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@brzt'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 312
    Top = 121
  end
  object ds_yymx: TDataSource
    DataSet = sp_cx_yymx
    Left = 168
    Top = 80
  end
  object PrintDBGridEh2: TPrintDBGridEh
    Options = []
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 384
    Top = 80
  end
  object ad_bqdm: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    AfterScroll = ad_bqdmAfterScroll
    CommandText = 'select * from sys_bqdm  order by bqdm'
    Parameters = <>
    Left = 104
    Top = 80
  end
  object ds_bq: TDataSource
    DataSet = ad_bqdm
    Left = 137
    Top = 80
  end
  object ad_zybr: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    AfterScroll = ad_zybrAfterScroll
    CommandText = ' exec zysf_cx_yrqd_bydm :bqdm, :brzt'
    Parameters = <
      item
        Name = 'bqdm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = '0001'
      end
      item
        Name = 'brzt'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    Left = 224
    Top = 80
  end
  object ds_zyby: TDataSource
    DataSet = ad_zybr
    Left = 72
    Top = 80
  end
  object ds_clmx: TDataSource
    DataSet = sp_cx_clmx
    Left = 280
    Top = 120
  end
  object sp_cx_clmx: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_cx_brrsqd_clmx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
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
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@brzt'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 216
    Top = 123
  end
  object PopupMenu1: TPopupMenu
    Left = 600
    Top = 88
    object N3: TMenuItem
      Caption = #28165#21333#26684#24335#19968
      OnClick = N3Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object N1: TMenuItem
      Caption = #28165#21333#26684#24335#20108
      OnClick = N1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object N5: TMenuItem
      Caption = #27719#24635#25171#21360
      Enabled = False
      OnClick = N5Click
    end
  end
  object sp_brqd: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'bqgl_cx_bryrqd;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@bqdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@dyrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@isxj'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@brzt'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 536
    Top = 88
  end
  object sp_qdxx: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_in_bryrqd;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
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
        Name = '@dyrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@brzt'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 656
    Top = 88
  end
  object qry_yrqdpub: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 56
    Top = 160
  end
  object ds_yrqdpub: TDataSource
    DataSet = qry_yrqdpub
    Left = 88
    Top = 160
  end
  object sp_yrqd_dx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zysf_cx_brrsqd_dx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
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
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@brzt'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 459
    Top = 192
  end
  object qry_dyxx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 104
    Top = 120
  end
  object sp_yrqd_PrintData: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zysf_cx_brrsqdcs'
    Parameters = <
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 3000
        Value = Null
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@brzt'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 395
    Top = 200
  end
end
