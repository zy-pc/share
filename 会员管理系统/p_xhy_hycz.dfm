object frm_xhy_hycz: Tfrm_xhy_hycz
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #20250#21592#20805#20540#30028#38754
  ClientHeight = 610
  ClientWidth = 904
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 18
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 904
    Height = 75
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 10
      Width = 792
      Height = 54
      Caption = 
        #20250#21592#20805#20540#30028#38754':'#35813#21151#33021#29992#20110#23545#24050#32463#23384#22312#30340#21487#20197#20805#20540#30340#20250#21592#29992#25143#21345#36827#34892#20805#20540#25805#20316#12290#13#10#36755#20837#20250#21592#21345#21495#21518#35835#21462#20986#20250#21592#35814#32454#20449#24687#12290#21442#29031#26080#35823#21518#36827#34892#20805#20540#12290 +
        #19979#26041#31080#25454#31867#21035#20013#22914#26524#20026#30333#31080#21017#25171#21360#31243#24207#13#10#20869#37096#20973#35777#12290#22914#26524#20026#27491#24335#31080#21017#38656#35201#35774#32622#21457#31080#25910#25454#32534#21495#12290#36827#34892#25910#25454#21495#29983#25104
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 75
    Width = 904
    Height = 56
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 16
      Width = 81
      Height = 18
      Caption = #20250#21592#21345#21495':'
    end
    object e_tmh: TEdit
      Left = 103
      Top = 13
      Width = 130
      Height = 26
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 0
      OnEnter = e_tmhEnter
      OnKeyDown = e_tmhKeyDown
    end
    object cxbut_tc: TcxButton
      Left = 745
      Top = 15
      Width = 137
      Height = 25
      Caption = #36864#20986
      TabOrder = 1
      OnClick = cxbut_tcClick
    end
    object cxbut_save: TcxButton
      Left = 243
      Top = 15
      Width = 150
      Height = 25
      Caption = #20445#23384'(&S)'
      TabOrder = 2
      OnClick = cxbut_saveClick
    end
    object cxbut_close: TcxButton
      Left = 411
      Top = 15
      Width = 150
      Height = 25
      Caption = #25918#24323'(&C)'
      TabOrder = 3
      OnClick = cxbut_closeClick
    end
    object cxbut_dy: TcxButton
      Left = 575
      Top = 15
      Width = 150
      Height = 25
      Caption = #25171#21360#39044#20132#26126#32454'(&P)'
      TabOrder = 4
      OnClick = cxbut_dyClick
    end
  end
  object pnl3: TPanel
    Left = 0
    Top = 131
    Width = 904
    Height = 479
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 2
    object grp1: TGroupBox
      Left = 2
      Top = 2
      Width = 900
      Height = 207
      Align = alTop
      Caption = #20250#21592#22522#26412#20449#24687
      Enabled = False
      TabOrder = 0
      object Label3: TLabel
        Left = 16
        Top = 24
        Width = 81
        Height = 18
        Caption = #20250#21592#22995#21517':'
      end
      object Label4: TLabel
        Left = 256
        Top = 24
        Width = 81
        Height = 18
        Caption = #20250#21592#24615#21035':'
      end
      object Label6: TLabel
        Left = 489
        Top = 24
        Width = 45
        Height = 18
        Caption = #24180#40836':'
      end
      object Label7: TLabel
        Left = 275
        Top = 72
        Width = 81
        Height = 18
        Caption = #20986#29983#26085#26399':'
      end
      object Label5: TLabel
        Left = 641
        Top = 24
        Width = 81
        Height = 18
        Caption = #20250#21592#31867#21035':'
      end
      object Label8: TLabel
        Left = 16
        Top = 72
        Width = 81
        Height = 18
        Caption = #20250#21592#30005#35805':'
      end
      object Label13: TLabel
        Left = 523
        Top = 72
        Width = 99
        Height = 18
        Caption = #36523#20221#35777#21495#30721':'
      end
      object Label9: TLabel
        Left = 16
        Top = 121
        Width = 81
        Height = 18
        Caption = #20250#21592#22320#22336':'
      end
      object Label10: TLabel
        Left = 32
        Top = 169
        Width = 63
        Height = 18
        Caption = #24635#36153#29992':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -18
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 206
        Top = 169
        Width = 81
        Height = 18
        Caption = #39044#20132#24635#39069':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -18
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 390
        Top = 169
        Width = 81
        Height = 18
        Caption = #21097#20313#20313#39069':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -18
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
      end
      object e_brxm: TEdit
        Left = 103
        Top = 21
        Width = 128
        Height = 26
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 0
      end
      object e_fylb: TEdit
        Left = 728
        Top = 21
        Width = 128
        Height = 26
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 1
      end
      object e_brdh: TEdit
        Left = 103
        Top = 69
        Width = 147
        Height = 26
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 2
      end
      object e_brxb: TEdit
        Left = 338
        Top = 21
        Width = 128
        Height = 26
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 3
      end
      object e_sfzhm: TEdit
        Left = 628
        Top = 69
        Width = 216
        Height = 26
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 4
      end
      object e_brnl: TEdit
        Left = 540
        Top = 21
        Width = 86
        Height = 26
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 5
      end
      object e_brdz: TEdit
        Left = 101
        Top = 118
        Width = 772
        Height = 26
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 6
      end
      object e_zfy: TEdit
        Left = 101
        Top = 166
        Width = 87
        Height = 26
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 7
        Text = '0.00'
      end
      object e_zyj: TEdit
        Left = 291
        Top = 166
        Width = 87
        Height = 26
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 8
        Text = '0.00'
      end
      object e_ye: TEdit
        Left = 477
        Top = 166
        Width = 87
        Height = 26
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 9
        Text = '0.00'
      end
      object dtp_csrq: TDateTimePicker
        Left = 362
        Top = 69
        Width = 131
        Height = 26
        Date = 40890.461932581020000000
        Time = 40890.461932581020000000
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 10
      end
    end
    object grp2: TGroupBox
      Left = 2
      Top = 209
      Width = 900
      Height = 72
      Align = alTop
      Caption = #20132#26131#36873#39033
      TabOrder = 1
      object Label14: TLabel
        Left = 18
        Top = 32
        Width = 81
        Height = 18
        Caption = #20184#27454#26041#24335':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -18
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 212
        Top = 32
        Width = 81
        Height = 18
        Caption = #20184#27454#37329#39069':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -18
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 399
        Top = 32
        Width = 72
        Height = 18
        Caption = #31080#25454#31867#21035
      end
      object cbb_fkfs: TComboBox
        Left = 105
        Top = 28
        Width = 101
        Height = 26
        Style = csDropDownList
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ItemHeight = 18
        TabOrder = 0
        OnKeyDown = cbb_fkfsKeyDown
      end
      object e_fkje: TEdit
        Left = 299
        Top = 28
        Width = 90
        Height = 26
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 1
        Text = '0.00'
        OnExit = e_fkjeExit
        OnKeyDown = e_fkjeKeyDown
      end
      object chk_sjbl: TCheckBox
        Left = 597
        Top = 32
        Width = 220
        Height = 17
        Caption = #31080#25454#34917#24405'('#38750#30333#31080#20351#29992')'
        TabOrder = 3
      end
      object e_pjlb: TEdit
        Left = 477
        Top = 28
        Width = 100
        Height = 26
        Enabled = False
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 2
      end
    end
    object cxGrid_yjmx: TcxGrid
      Left = 2
      Top = 281
      Width = 900
      Height = 196
      Align = alClient
      TabOrder = 2
      object cxGrid_yjmxDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds_yjmxcx
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnMoving = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = #25805#20316#26041#24335
          DataBinding.FieldName = 'bz'
          Width = 131
        end
        object cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = #25910#39044#20132#26085#26399
          DataBinding.FieldName = 'sfrq'
          Width = 191
        end
        object cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = #39044#20132#37329#39069
          DataBinding.FieldName = 'yjje'
          Width = 87
        end
        object cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn
          Caption = #20184#27454#26041#24335
          DataBinding.FieldName = 'fkfsmc'
          Width = 86
        end
        object cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn
          Caption = #25910#36153#21592#20195#30721
          DataBinding.FieldName = 'sfczy'
          Width = 96
        end
        object cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn
          Caption = #25910#36153#20154#21592
          DataBinding.FieldName = 'czymc'
          Width = 83
        end
        object cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn
          Caption = #26159#21542#20316#24223
          DataBinding.FieldName = 'tfbz'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Width = 82
        end
      end
      object cxGrid_yjmxLevel1: TcxGridLevel
        GridView = cxGrid_yjmxDBTableView1
      end
    end
  end
  object cxgrid_xzlb: TcxGrid
    Left = 105
    Top = 115
    Width = 458
    Height = 137
    TabOrder = 3
    Visible = False
    OnExit = cxgrid_xzlbExit
    object cxgrid_xzlbDBTableView1: TcxGridDBTableView
      OnDblClick = cxgrid_xzlbDBTableView1DblClick
      OnKeyDown = cxgrid_xzlbDBTableView1KeyDown
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_jbxx
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnMoving = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cxgrdbclmnGrid2DBTableView1Column1: TcxGridDBColumn
        Caption = #20250#21592#21345#21495
        DataBinding.FieldName = 'tmh'
        Width = 113
      end
      object cxgrdbclmnGrid2DBTableView1Column2: TcxGridDBColumn
        Caption = #20250#21592#22995#21517
        DataBinding.FieldName = 'brxm'
        Width = 84
      end
      object cxgrdbclmnGrid2DBTableView1Column3: TcxGridDBColumn
        Caption = #24615#21035
        DataBinding.FieldName = 'brxb'
        Width = 53
      end
      object cxgrdbclmnGrid2DBTableView1Column4: TcxGridDBColumn
        Caption = #36523#20221#35777#21495
        DataBinding.FieldName = 'sfzhm'
        Width = 159
      end
    end
    object cxgrid_xzlbLevel1: TcxGridLevel
      GridView = cxgrid_xzlbDBTableView1
    end
  end
  object repo_hyyj: TQuickRep
    Left = 301
    Top = 1000
    Width = 425
    Height = 439
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
      100.000000000000000000
      930.000000000000000000
      100.000000000000000000
      900.000000000000000000
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
    object DetailBand1: TQRBand
      Left = 47
      Top = 47
      Width = 331
      Height = 344
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
        728.133333333333300000
        700.616666666666700000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRLabel1: TQRLabel
        Left = 59
        Top = 8
        Width = 190
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          65.616666666666670000
          124.883333333333300000
          16.933333333333330000
          402.166666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20250#21592#39044#25910#27454#20973#35777
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRLabel2: TQRLabel
        Left = 29
        Top = 86
        Width = 82
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.450000000000000000
          61.383333333333330000
          182.033333333333300000
          173.566666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995'    '#21517':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object brxm: TQRLabel
        Left = 123
        Top = 84
        Width = 37
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.450000000000000000
          260.350000000000000000
          177.800000000000000000
          78.316666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'brxm'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel3: TQRLabel
        Left = 29
        Top = 271
        Width = 82
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.450000000000000000
          61.383333333333330000
          573.616666666666700000
          173.566666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21097#20313#37329#39069':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object zye: TQRLabel
        Left = 123
        Top = 269
        Width = 37
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.450000000000000000
          260.350000000000000000
          569.383333333333300000
          78.316666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'yjsm'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel5: TQRLabel
        Left = 29
        Top = 110
        Width = 82
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.450000000000000000
          61.383333333333330000
          232.833333333333300000
          173.566666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26412#27425#39044#20132':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel8: TQRLabel
        Left = 29
        Top = 203
        Width = 82
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.450000000000000000
          61.383333333333330000
          429.683333333333300000
          173.566666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910#27454#26085#26399':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object bcyj: TQRLabel
        Left = 123
        Top = 108
        Width = 37
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.450000000000000000
          260.350000000000000000
          228.600000000000000000
          78.316666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'bcyj'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object dwmc: TQRLabel
        Left = 30
        Top = 54
        Width = 47
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          48.683333333333330000
          63.500000000000000000
          114.300000000000000000
          99.483333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'dwmc'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object sfrq: TQRLabel
        Left = 123
        Top = 200
        Width = 37
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.450000000000000000
          260.350000000000000000
          423.333333333333300000
          78.316666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'sfrq'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel9: TQRLabel
        Left = 29
        Top = 225
        Width = 82
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.450000000000000000
          61.383333333333330000
          476.250000000000000000
          173.566666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24635' '#39044' '#20132':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel10: TQRLabel
        Left = 29
        Top = 249
        Width = 82
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.450000000000000000
          61.383333333333330000
          527.050000000000000000
          173.566666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24635' '#36153' '#29992':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object zyj: TQRLabel
        Left = 123
        Top = 222
        Width = 28
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.450000000000000000
          260.350000000000000000
          469.900000000000000000
          59.266666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'zyj'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object zfy: TQRLabel
        Left = 123
        Top = 246
        Width = 28
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.450000000000000000
          260.350000000000000000
          520.700000000000000000
          59.266666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'zfy'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape1: TQRShape
        Left = 18
        Top = 81
        Width = 297
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          37.041666666666700000
          171.979166666667000000
          629.708333333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel11: TQRLabel
        Left = 29
        Top = 132
        Width = 82
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.450000000000000000
          61.383333333333330000
          279.400000000000000000
          173.566666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22823'    '#20889':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object dx: TQRLabel
        Left = 123
        Top = 130
        Width = 19
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.450000000000000000
          260.350000000000000000
          275.166666666666700000
          40.216666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'dx'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel14: TQRLabel
        Left = 29
        Top = 179
        Width = 82
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.450000000000000000
          61.383333333333330000
          378.883333333333300000
          173.566666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25910' '#27454' '#20154':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape2: TQRShape
        Left = 18
        Top = 299
        Width = 295
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          37.041666666666700000
          632.354166666667000000
          624.416666666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel15: TQRLabel
        Left = 31
        Top = 309
        Width = 229
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.450000000000000000
          65.616666666666670000
          654.050000000000000000
          484.716666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27880':'#27492#31995#20020#26102#20973#35777#65292#19981#20316#25253#38144#20351#29992
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object czy: TQRLabel
        Left = 123
        Top = 176
        Width = 28
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.450000000000000000
          260.350000000000000000
          372.533333333333300000
          59.266666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'czy'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel12: TQRLabel
        Left = 29
        Top = 156
        Width = 82
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.450000000000000000
          61.383333333333330000
          330.200000000000000000
          173.566666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20184#27454#26041#24335':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object yjxs: TQRLabel
        Left = 123
        Top = 154
        Width = 37
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.450000000000000000
          260.350000000000000000
          325.966666666666700000
          78.316666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'yjxs'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
    end
  end
  object qry_fkfs: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      'select dm,mc from sys_fkfs')
    Left = 40
    Top = 456
  end
  object ds_fkfs: TDataSource
    DataSet = qry_fkfs
    Left = 72
    Top = 456
  end
  object sp_yjmxcx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'hy_cx_yjmx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 9
        Value = Null
      end>
    Left = 216
    Top = 499
  end
  object ds_yjmxcx: TDataSource
    DataSet = sp_yjmxcx
    Left = 247
    Top = 499
  end
  object ds_jbxx: TDataSource
    DataSet = DM_data.hy_jbxx
    Left = 472
    Top = 472
  end
  object sp_in_yj: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'hy_in_yj'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 9
        Value = Null
      end
      item
        Name = '@yjfsdm'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@sjbh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@yjje'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@yjxs'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@sfczy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 50
        Value = Null
      end>
    Left = 288
    Top = 448
  end
end
