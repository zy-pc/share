object frm_zyzc_cybrzhcx: Tfrm_zyzc_cybrzhcx
  Left = 122
  Top = 139
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #20986#38498#30149#20154#32508#21512#26597#35810'-'#21382#21490#25968#25454
  ClientHeight = 563
  ClientWidth = 746
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 746
    Height = 33
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    DesignSize = (
      746
      33)
    object Label14: TLabel
      Left = 8
      Top = 10
      Width = 61
      Height = 14
      Anchors = [akLeft, akTop, akRight, akBottom]
      BiDiMode = bdRightToLeft
      Caption = #30913' '#21345' '#21495
      FocusControl = tmh
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object tmh: TEdit
      Left = 73
      Top = 3
      Width = 159
      Height = 24
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnExit = tmhExit
      OnKeyPress = tmhKeyPress
    end
    object b_close: TBitBtn
      Left = 660
      Top = 4
      Width = 78
      Height = 25
      Caption = #36864#20986'(&Q)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = b_closeClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
        BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
        BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
        BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
        BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
        EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
        EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
        EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
        EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
      NumGlyphs = 2
    end
    object b_jsqd: TBitBtn
      Left = 439
      Top = 4
      Width = 88
      Height = 25
      Caption = #36153#29992#28165#21333'(&D)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = b_jsqdClick
    end
    object BitBtn1: TBitBtn
      Left = 549
      Top = 4
      Width = 88
      Height = 25
      Caption = #36716#20837#20986#38498#24211'(&Z)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 746
    Height = 103
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object Label4: TLabel
      Left = 8
      Top = 11
      Width = 64
      Height = 16
      Caption = #22995'    '#21517
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 388
      Top = 11
      Width = 64
      Height = 16
      Caption = #36153#29992#31867#21035
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 191
      Top = 11
      Width = 64
      Height = 16
      Caption = #24615'    '#21035
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 7
      Top = 44
      Width = 64
      Height = 16
      Caption = #20837#38498#26085#26399
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 191
      Top = 44
      Width = 64
      Height = 16
      Caption = #20986#38498#26085#26399
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 388
      Top = 44
      Width = 64
      Height = 16
      Caption = #24212' '#25910' '#29616
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 570
      Top = 44
      Width = 64
      Height = 16
      Caption = #24212' '#36864' '#29616
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 388
      Top = 77
      Width = 64
      Height = 16
      Caption = #33258#36153#24635#39069
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 570
      Top = 77
      Width = 64
      Height = 16
      Caption = #32479#31609#37329#39069
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 7
      Top = 77
      Width = 61
      Height = 14
      Caption = #24635' '#39044' '#20132
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 191
      Top = 77
      Width = 61
      Height = 14
      Caption = #24635' '#36153' '#29992
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 570
      Top = 11
      Width = 64
      Height = 16
      Caption = #31185'    '#23460
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 72
      Top = 6
      Width = 99
      Height = 24
      DataField = 'brxm'
      DataSource = ds_sebrqk
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 256
      Top = 6
      Width = 110
      Height = 24
      DataField = 'brxb'
      DataSource = ds_sebrqk
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 454
      Top = 6
      Width = 99
      Height = 24
      DataField = 'lbmc'
      DataSource = ds_sebrqk
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object ysxje: TEdit
      Left = 454
      Top = 39
      Width = 99
      Height = 24
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object ytxje: TEdit
      Left = 637
      Top = 39
      Width = 99
      Height = 24
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 72
      Top = 39
      Width = 99
      Height = 24
      DataField = 'ryrq'
      DataSource = ds_sebrqk
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object cyrq: TDateTimePicker
      Left = 256
      Top = 39
      Width = 110
      Height = 24
      Date = 37022.998435243100000000
      Time = 37022.998435243100000000
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object sbzfze: TEdit
      Left = 454
      Top = 72
      Width = 99
      Height = 24
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object sbtcze: TEdit
      Left = 637
      Top = 72
      Width = 99
      Height = 24
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object yjze: TEdit
      Left = 72
      Top = 72
      Width = 99
      Height = 23
      Enabled = False
      TabOrder = 9
    end
    object zfy: TEdit
      Left = 256
      Top = 72
      Width = 110
      Height = 23
      Enabled = False
      TabOrder = 10
    end
    object DBEdit7: TDBEdit
      Left = 637
      Top = 6
      Width = 99
      Height = 24
      DataField = 'ksmc'
      DataSource = ds_sebrqk
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 136
    Width = 746
    Height = 427
    Align = alClient
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 744
      Height = 425
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = ' &1.'#36153#29992#22823#31867' '
        object g_tj: TDBGrid
          Left = 0
          Top = 0
          Width = 736
          Height = 394
          Align = alClient
          DataSource = ds_tj_fydl
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'kmmc'
              Title.Alignment = taCenter
              Title.Caption = #36153#29992#22823#31867#21517#31216
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fyje'
              Title.Alignment = taCenter
              Title.Caption = #36153#29992#37329#39069
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'zkje'
              Title.Alignment = taCenter
              Title.Caption = #25240#25187#37329#39069
              Width = 114
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'zfje'
              Title.Alignment = taCenter
              Title.Caption = #33258#20184#37329#39069
              Width = 128
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ssje'
              Title.Alignment = taCenter
              Title.Caption = #23454#25910#37329#39069
              Width = 115
              Visible = True
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = ' &2.'#36153#29992#26126#32454' '
        ImageIndex = 1
        object g_fy: TDBGrid
          Left = 0
          Top = 0
          Width = 736
          Height = 394
          Align = alClient
          DataSource = ds_fymx
          DefaultDrawing = False
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          OnDrawColumnCell = g_fyDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'sfrq'
              Title.Alignment = taCenter
              Title.Caption = #26102#38388
              Width = 129
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fymc'
              Title.Alignment = taCenter
              Title.Caption = #36153#29992#21517#31216
              Width = 127
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fyje'
              Title.Alignment = taCenter
              Title.Caption = #36153#29992#37329#39069
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'zfje'
              Title.Alignment = taCenter
              Title.Caption = #33258#20184#37329#39069
              Width = 93
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mc'
              Title.Alignment = taCenter
              Title.Caption = #25805#20316#21592
              Width = 99
              Visible = True
            end>
        end
      end
      object TabSheet3: TTabSheet
        Caption = ' &3.'#29992#33647#26126#32454' '
        ImageIndex = 2
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 736
          Height = 394
          Align = alClient
          DataSource = DS_yymx
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ypmc'
              Title.Alignment = taCenter
              Title.Caption = #33647#21697#21517#31216
              Width = 206
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ypgg'
              Title.Alignment = taCenter
              Title.Caption = #33647#21697#35268#26684
              Width = 97
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ypdw'
              Title.Alignment = taCenter
              Title.Caption = #33647#21697#21333#20301
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ypsl'
              Title.Alignment = taCenter
              Title.Caption = #29992#33647#25968#37327
              Width = 93
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cfje'
              Title.Alignment = taCenter
              Title.Caption = #33647#21697#37329#39069
              Width = 134
              Visible = True
            end>
        end
      end
      object TabSheet4: TTabSheet
        Caption = ' &4.'#39044#20132#24773#20917' '
        ImageIndex = 3
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 736
          Height = 394
          Align = alClient
          DataSource = ds_yjmxcx
          DefaultDrawing = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'bz'
              Title.Alignment = taCenter
              Title.Caption = #22791#27880
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'yjje'
              Title.Alignment = taCenter
              Title.Caption = #25276#37329#37329#39069
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sfrq'
              Title.Alignment = taCenter
              Title.Caption = #25910#36153#26085#26399
              Width = 111
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sjh'
              Title.Alignment = taCenter
              Title.Caption = #25910#25454#32534#21495
              Width = 124
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fkfsmc'
              Title.Alignment = taCenter
              Title.Caption = #20184#27454
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'czymc'
              Title.Alignment = taCenter
              Title.Caption = #25805#20316#21592
              Width = 112
              Visible = True
            end>
        end
      end
    end
  end
  object DBGrid3: TDBGrid
    Left = 152
    Top = 216
    Width = 320
    Height = 145
    DataSource = DM_data.DS_pub
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = DBGrid3Exit
    OnKeyPress = DBGrid3KeyPress
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
  object QuickRep1: TQuickRep
    Left = 48
    Top = 1000
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = SP_yymx
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
    object DetailBand1: TQRBand
      Left = 38
      Top = 220
      Width = 740
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
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 160
        Top = 2
        Width = 241
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          423.333333333333000000
          5.291666666666670000
          637.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = SP_yymx
        DataField = 'ypmc'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 676
        Top = 2
        Width = 21
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1788.583333333330000000
          5.291666666666670000
          55.562500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = SP_yymx
        DataField = 'cfje'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 624
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
          1651.000000000000000000
          5.291666666666670000
          66.145833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = SP_yymx
        DataField = 'ypsl'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 568
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
          1502.833333333330000000
          5.291666666666670000
          66.145833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = SP_yymx
        DataField = 'ypdj'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 520
        Top = 2
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1375.833333333330000000
          5.291666666666670000
          82.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = SP_yymx
        DataField = 'ypdw'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 449
        Top = 2
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1187.979166666670000000
          5.291666666666670000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = SP_yymx
        DataField = 'ypgg'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 400
        Top = 2
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1058.333333333330000000
          5.291666666666670000
          108.479166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = SP_yymx
        DataField = 'jylyp'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 4
        Top = 2
        Width = 155
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          10.583333333333300000
          5.291666666666670000
          410.104166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = SP_yymx
        DataField = 'hjrq'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 38
      Top = 193
      Width = 740
      Height = 24
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
        63.500000000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel1: TQRLabel
        Left = 160
        Top = 3
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          423.333333333333000000
          7.937500000000000000
          171.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #33647#21697#21517#31216
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 459
        Top = 4
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1214.437500000000000000
          10.583333333333300000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35268#26684
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 515
        Top = 4
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1362.604166666670000000
          10.583333333333300000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21333#20301
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 563
        Top = 4
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1489.604166666670000000
          10.583333333333300000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21333#20215
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 618
        Top = 3
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1635.125000000000000000
          7.937500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25968#37327
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 661
        Top = 4
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1748.895833333330000000
          10.583333333333300000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#39069
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 403
        Top = 4
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1066.270833333330000000
          10.583333333333300000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31181#31867
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 8
        Top = 2
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          21.166666666666700000
          5.291666666666670000
          171.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22788#26041#26085#26399
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 115
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
        304.270833333333300000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape1: TQRShape
        Left = 7
        Top = 44
        Width = 688
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666667000000
          18.520833333333300000
          116.416666666667000000
          1820.333333333330000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel7: TQRLabel
        Left = 248
        Top = 14
        Width = 177
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          656.166666666667000000
          37.041666666666700000
          468.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20303#38498#30149#20154#29992#33647#26126#32454
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRLabel8: TQRLabel
        Left = 13
        Top = 51
        Width = 81
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          34.395833333333300000
          134.937500000000000000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#38498#21517#31216#65306
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
      object yymc: TQRLabel
        Left = 106
        Top = 50
        Width = 36
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          280.458333333333000000
          132.291666666667000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'yymc'
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
      object QRSysData1: TQRSysData
        Left = 537
        Top = 50
        Width = 79
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1420.812500000000000000
          132.291666666667000000
          209.020833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 11
      end
      object QRLabel13: TQRLabel
        Left = 450
        Top = 51
        Width = 81
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1190.625000000000000000
          134.937500000000000000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25171#21360#26085#26399#65306
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
      object QRLabel9: TQRLabel
        Left = 477
        Top = 76
        Width = 49
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1262.062500000000000000
          201.083333333333000000
          129.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31185#23460#65306
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
      object ksmc: TQRLabel
        Left = 537
        Top = 76
        Width = 37
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1420.812500000000000000
          201.083333333333000000
          97.895833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ksmc'
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
      object tmh1: TQRLabel
        Left = 326
        Top = 76
        Width = 26
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          862.541666666667000000
          201.083333333333000000
          68.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'tmh'
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
      object QRLabel11: TQRLabel
        Left = 258
        Top = 76
        Width = 57
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          682.625000000000000000
          201.083333333333000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21345'  '#21495#65306
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
      object brxm: TQRLabel
        Left = 79
        Top = 76
        Width = 34
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          209.020833333333000000
          201.083333333333000000
          89.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'brxm'
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
      object QRLabel12: TQRLabel
        Left = 18
        Top = 76
        Width = 57
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          47.625000000000000000
          201.083333333333000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995'  '#21517#65306
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
      object qzsj: TQRLabel
        Left = 259
        Top = 50
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          685.270833333333000000
          132.291666666667000000
          66.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qzsj'
        Color = clWhite
        OnPrint = qzsjPrint
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 266
      Width = 740
      Height = 40
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
        105.833333333333300000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel14: TQRLabel
        Left = 16
        Top = 8
        Width = 353
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          42.333333333333300000
          21.166666666666700000
          933.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22791#27880#65306#27492#28165#21333#19981#20316#25253#38144#20351#29992#65292#20197#32467#24080#25968#25454#20026#20934#65281#65281
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel18: TQRLabel
        Left = 448
        Top = 8
        Width = 81
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1185.333333333330000000
          21.166666666666700000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30149#21592#31614#23383#65306
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
    object QRGroup1: TQRGroup
      Left = 38
      Top = 217
      Width = 740
      Height = 3
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
        7.937500000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'SP_yymx.cfbh'
      FooterBand = QRBand1
      Master = QuickRep1
      ReprintOnNewPage = False
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 242
      Width = 740
      Height = 24
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
        63.500000000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 306
      Width = 740
      Height = 55
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
        145.520833333333300000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 153
      Width = 740
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
        105.833333333333300000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel10: TQRLabel
        Left = 18
        Top = 11
        Width = 57
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          47.625000000000000000
          29.104166666666700000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995'  '#21517#65306
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
      object brxm1: TQRLabel
        Left = 79
        Top = 11
        Width = 34
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          209.020833333333000000
          29.104166666666700000
          89.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'brxm'
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
      object QRLabel19: TQRLabel
        Left = 258
        Top = 11
        Width = 57
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          682.625000000000000000
          29.104166666666700000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21345'  '#21495#65306
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
      object tmh2: TQRLabel
        Left = 326
        Top = 11
        Width = 26
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          862.541666666667000000
          29.104166666666700000
          68.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'tmh'
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
      object QRSysData2: TQRSysData
        Left = 568
        Top = 11
        Width = 78
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1502.833333333330000000
          29.104166666666700000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Text = #32493#31532
        Transparent = False
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 656
        Top = 11
        Width = 17
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1735.666666666670000000
          29.104166666666700000
          44.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39029
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object DBGrid4: TDBGrid
    Left = 74
    Top = 30
    Width = 626
    Height = 141
    DataSource = ds_jsxx
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = DBGrid4Exit
    OnKeyPress = DBGrid4KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'jsdh'
        Title.Alignment = taCenter
        Title.Caption = #32467#31639#21333#21495
        Width = 151
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sjbh'
        Title.Alignment = taCenter
        Title.Caption = #25910#25454#32534#21495
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jsrq'
        Title.Alignment = taCenter
        Title.Caption = #32467#31639#26085#26399
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jsczy'
        Title.Alignment = taCenter
        Title.Caption = #32467#31639#25805#20316#21592
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'yxbz'
        Title.Alignment = taCenter
        Title.Caption = #26377#25928#26631#24535
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sqfbz'
        Title.Alignment = taCenter
        Title.Caption = #25910#27424#36153#26631#24535
        Visible = True
      end>
  end
  object qry_bafy: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'zy_zyh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'sjbh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 9
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from zysf_dljsz where zyh=:zy_zyh and sjbh=:sjbh order ' +
        'by kmdm')
    Left = 432
    Top = 206
  end
  object sp_sebrqk: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zyzc_zysf_cx_cybrdj;1'
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
      end>
    Left = 129
    Top = 205
  end
  object ds_sebrqk: TDataSource
    DataSet = sp_sebrqk
    Left = 99
    Top = 205
  end
  object ds_yjmxcx: TDataSource
    DataSet = sp_yjmxcx
    Left = 190
    Top = 205
  end
  object sp_yjmxcx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zyzc_zysf_cx_cyyjmx;1'
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
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 244
    Top = 205
  end
  object sp_fymx: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zyzc_zysf_cx_cyfymx;1'
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
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 298
    Top = 205
  end
  object ds_fymx: TDataSource
    DataSet = sp_fymx
    Left = 356
    Top = 205
  end
  object ds_tj_fydl: TDataSource
    DataSet = sp_cx_fydl
    Left = 625
    Top = 206
  end
  object SP_yymx: TADOStoredProc
    Connection = DM_data.ado_mydata
    OnCalcFields = SP_yymxCalcFields
    ProcedureName = 'zyzc_zysf_cx_cybryymx;1'
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
        Name = '@jsdh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@lb'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@SFSB'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 527
    Top = 206
    object SP_yymxcfbh: TStringField
      FieldName = 'cfbh'
      FixedChar = True
      Size = 12
    end
    object SP_yymxypdm: TStringField
      FieldName = 'ypdm'
      FixedChar = True
      Size = 14
    end
    object SP_yymxypmc: TStringField
      FieldName = 'ypmc'
      FixedChar = True
      Size = 30
    end
    object SP_yymxypgg: TStringField
      FieldName = 'ypgg'
      FixedChar = True
    end
    object SP_yymxypdw: TStringField
      FieldName = 'ypdw'
      FixedChar = True
      Size = 10
    end
    object SP_yymxypsl: TBCDField
      FieldName = 'ypsl'
      Precision = 9
      Size = 2
    end
    object SP_yymxypdj: TBCDField
      FieldName = 'ypdj'
      Precision = 9
      Size = 2
    end
    object SP_yymxcfje: TBCDField
      FieldName = 'cfje'
      Precision = 9
      Size = 2
    end
    object SP_yymxsfjlyp: TBooleanField
      FieldName = 'sfjlyp'
    end
    object SP_yymxsfylyp: TBooleanField
      FieldName = 'sfylyp'
    end
    object SP_yymxhjrq: TDateTimeField
      FieldName = 'hjrq'
    end
    object SP_yymxjylyp: TStringField
      FieldKind = fkCalculated
      FieldName = 'jylyp'
      Calculated = True
    end
  end
  object DS_yymx: TDataSource
    DataSet = SP_yymx
    Left = 575
    Top = 206
  end
  object sp_cx_fydl: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zyzc_zysf_cx_cybafy;1'
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
        Name = '@sjbh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 9
        Value = Null
      end>
    Left = 485
    Top = 212
  end
  object sp_lssjzh: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zysf_lssj_zh;1'
    Parameters = <
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@res'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 2
        Value = Null
      end>
    Left = 524
    Top = 293
  end
  object qry_jsxx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'tmh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 9
        Value = #39#39
      end
      item
        Name = 'tmh1'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select jsdh, sjbh, jsrq, b.mc jsczy, zfje, ytje, ybje, case yxbz' +
        ' when 1 then '#39#8730#39' else '#39#39' end yxbz, case sqfbz when 1 then '#39#8730#39' el' +
        'se '#39#39' end sqfbz'
      
        'from zysf_cyjs a join sys_czy b on a.jsczy=b.dm where tmh=:tmh a' +
        'nd zfbz=0'
      'union all'
      
        'select jsdh, sjbh, jsrq, b.mc jsczy, zfje, ytje, ybje, case yxbz' +
        ' when 1 then '#39#8730#39' else '#39#39' end yxbz, case sqfbz when 1 then '#39#8730#39' el' +
        'se '#39#39' end sqfbz'
      
        'from zyzc_zysf_cyjs a join sys_czy b on a.jsczy=b.dm where tmh=:' +
        'tmh1 and zfbz=0')
    Left = 192
    Top = 352
    object qry_jsxxjsdh: TStringField
      FieldName = 'jsdh'
      FixedChar = True
      Size = 16
    end
    object qry_jsxxsjbh: TStringField
      FieldName = 'sjbh'
      FixedChar = True
      Size = 9
    end
    object qry_jsxxjsrq: TDateTimeField
      FieldName = 'jsrq'
    end
    object qry_jsxxjsczy: TStringField
      FieldName = 'jsczy'
      FixedChar = True
      Size = 4
    end
    object qry_jsxxzfje: TBCDField
      FieldName = 'zfje'
      Precision = 18
      Size = 2
    end
    object qry_jsxxytje: TBCDField
      FieldName = 'ytje'
      Precision = 18
      Size = 2
    end
    object qry_jsxxybje: TBCDField
      FieldName = 'ybje'
      Precision = 18
      Size = 2
    end
    object qry_jsxxyxbz: TStringField
      FieldName = 'yxbz'
      ReadOnly = True
      Size = 2
    end
    object qry_jsxxsqfbz: TStringField
      FieldName = 'sqfbz'
      ReadOnly = True
      Size = 2
    end
  end
  object ds_jsxx: TDataSource
    DataSet = qry_jsxx
    Left = 232
    Top = 352
  end
end
