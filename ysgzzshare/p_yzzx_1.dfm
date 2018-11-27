object frm_yzzx: Tfrm_yzzx
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #21307#22065#25191#34892
  ClientHeight = 716
  ClientWidth = 1113
  Color = clWindow
  Ctl3D = False
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  ShowHint = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 57
    Width = 1113
    Height = 659
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = #21307#22065#25191#34892
      object groupbox8: TPanel
        Left = 0
        Top = 0
        Width = 167
        Height = 608
        Align = alLeft
        BevelInner = bvLowered
        TabOrder = 0
        object DBGridEh1: TDBGridEh
          Left = 2
          Top = 2
          Width = 163
          Height = 604
          Align = alClient
          DataSource = ds_brxx
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = ANSI_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          OnCellClick = DBGridEh1CellClick
          OnDblClick = DBGridEh1DblClick
          OnDrawColumnCell = DBGridEh1DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'bch'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #24202#21495
              Width = 35
            end
            item
              EditButtons = <>
              FieldName = 'brxm'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #22995#21517
              Width = 57
            end
            item
              EditButtons = <>
              FieldName = 'ksmc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #31185#23460
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'xkyz'
              Footers = <>
              Visible = False
            end>
        end
      end
      object groupbox2: TPanel
        Left = 167
        Top = 0
        Width = 938
        Height = 608
        Align = alClient
        TabOrder = 1
        object Panel6: TPanel
          Left = 1
          Top = 573
          Width = 936
          Height = 34
          Align = alBottom
          BevelInner = bvLowered
          TabOrder = 0
          object zxyz: TSpeedButton
            Left = 281
            Top = 7
            Width = 91
            Height = 22
            Caption = #25191#34892#21307#22065
            OnClick = zxyzClick
          end
          object SpeedButton1: TSpeedButton
            Left = 232
            Top = 7
            Width = 43
            Height = 22
            Caption = #21047#26032
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton1Click
          end
          object cxButton1: TcxButton
            Left = 810
            Top = 8
            Width = 82
            Height = 23
            Caption = #26816#26597#30003#35831#21333'(&P)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = cxButton1Click
          end
          object cxButton6: TcxButton
            Left = 896
            Top = 8
            Width = 60
            Height = 23
            Caption = #36820#22238'(&B)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = cxButton6Click
          end
          object cxButton2: TcxButton
            Left = 730
            Top = 8
            Width = 75
            Height = 23
            Caption = #26816#39564#26465#30721'(&L)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = cxButton2Click
          end
          object xzzx: TcxCheckBox
            Left = 86
            Top = 3000
            Caption = #36873#25321#21363#25191#34892
            TabOrder = 3
            Width = 121
          end
          object srsj: TcxCheckBox
            Left = 11
            Top = 8
            Caption = #36755#20837#25191#34892#26102#38388
            TabOrder = 4
            Width = 121
          end
          object xzzxr: TcxCheckBox
            Left = 134
            Top = 8
            Caption = #36873#25321#25191#34892#20154
            TabOrder = 5
            Width = 96
          end
          object cxButton7: TcxButton
            Left = 436
            Top = 7
            Width = 46
            Height = 23
            Caption = #20840#19981#36873
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnClick = cxButton7Click
          end
          object cxButton8: TcxButton
            Left = 490
            Top = 7
            Width = 59
            Height = 23
            Caption = #20840#37096#36755#28082
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnClick = cxButton8Click
          end
          object cxButton9: TcxButton
            Left = 384
            Top = 7
            Width = 44
            Height = 23
            Caption = #20840#36873
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnClick = cxButton9Click
          end
          object cxBtn_kfbq: TcxButton
            Left = 559
            Top = 8
            Width = 67
            Height = 23
            Caption = #21475#26381#33647#26631#31614
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            OnClick = cxBtn_kfbqClick
          end
          object cxBtn_qbkfbq: TcxButton
            Left = 632
            Top = 8
            Width = 92
            Height = 23
            Caption = #20840#37096#21475#26381#33647#26631#31614
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            OnClick = cxBtn_qbkfbqClick
          end
        end
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 936
          Height = 35
          Align = alTop
          TabOrder = 1
          object Label2: TLabel
            Left = 129
            Top = 10
            Width = 90
            Height = 15
            Caption = #25191#34892#21307#22065#26085#26399
          end
          object dt_zxsj: TDateTimePicker
            Left = 228
            Top = 5
            Width = 186
            Height = 23
            Date = 40401.666157951390000000
            Time = 40401.666157951390000000
            TabOrder = 0
            OnChange = dt_zxsjChange
          end
          object Edit1: TEdit
            Left = 672
            Top = 5
            Width = 161
            Height = 21
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
          end
          object CheckBox1: TCheckBox
            Left = 456
            Top = 8
            Width = 97
            Height = 17
            Caption = #21482#26174#31034#24403#22825
            TabOrder = 2
            OnClick = CheckBox1Click
          end
        end
        object Panel4: TPanel
          Left = 1
          Top = 36
          Width = 936
          Height = 537
          Align = alClient
          Caption = 'Panel4'
          TabOrder = 2
          ExplicitLeft = 160
          ExplicitTop = 376
          ExplicitWidth = 185
          ExplicitHeight = 41
          object DBGridEh4: TDBGridEh
            Left = 1
            Top = 1
            Width = 934
            Height = 535
            Align = alClient
            DataSource = ds_dryz
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = ANSI_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -15
            FooterFont.Name = #23435#20307
            FooterFont.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = #23435#20307
            TitleFont.Style = []
            UseMultiTitle = True
            OnCellClick = DBGridEh4CellClick
            OnColWidthsChanged = DBGridEh4ColWidthsChanged
            OnDrawColumnCell = DBGridEh4DrawColumnCell
            Columns = <
              item
                EditButtons = <>
                FieldName = 'xz'
                Footers = <>
                ReadOnly = False
                Title.Caption = #36873#23450
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'kdrq'
                Footers = <>
                Title.Caption = #24320#22987'|'#24320#22987#26102#38388
                Width = 156
              end
              item
                EditButtons = <>
                FieldName = 'syczxrxm'
                Footers = <>
                Title.Caption = #24320#22987'|'#25191#34892#32773
                Width = 48
              end
              item
                EditButtons = <>
                FieldName = 'syczxsj'
                Footers = <>
                Title.Caption = #24320#22987'|'#25191#34892#26102#38388
                Width = 168
              end
              item
                EditButtons = <>
                FieldName = 'lb'
                Footers = <>
                Title.Caption = #31867#21035
              end
              item
                EditButtons = <>
                FieldName = 'yzsx'
                Footers = <>
                Title.Caption = #23646#24615
              end
              item
                EditButtons = <>
                FieldName = 'kdrq'
                Footers = <>
                Title.Caption = #24320#22987#26102#38388
                Visible = False
                Width = 79
              end
              item
                EditButtons = <>
                FieldName = 'ph'
                Footers = <>
                Title.Caption = #25209#21495
                Visible = False
                Width = 95
              end
              item
                EditButtons = <>
                FieldName = 'xmmc'
                Footers = <>
                Title.Caption = #39033#30446#21517#31216
                Width = 206
              end
              item
                EditButtons = <>
                FieldName = 'ypyl'
                Footers = <>
                Title.Caption = #29992#37327
                Width = 41
              end
              item
                EditButtons = <>
                FieldName = 'yldw'
                Footers = <>
                Title.Caption = '  '
                Width = 17
              end
              item
                EditButtons = <>
                FieldName = 'ypyf'
                Footers = <>
                Title.Caption = #29992#27861
                Width = 38
              end
              item
                EditButtons = <>
                FieldName = 'yytj'
                Footers = <>
                Title.Caption = #29992#33647#36884#24452
                Width = 40
              end
              item
                EditButtons = <>
                FieldName = 'bz'
                Footers = <>
                Title.Caption = #35828#26126
                Width = 46
              end
              item
                EditButtons = <>
                FieldName = 'tzrq'
                Footers = <>
                Title.Caption = #20572#27490'|'#21307#22065#20572#27490#26102#38388
                Width = 176
              end
              item
                EditButtons = <>
                FieldName = 'zxtzry'
                Footers = <>
                Title.Caption = #20572#27490'|'#25191#34892#20572#27490#32773
              end
              item
                EditButtons = <>
                FieldName = 'tzzxsj'
                Footers = <>
                Title.Caption = #20572#27490'|'#25191#34892#20572#27490#26102#38388
              end
              item
                EditButtons = <>
                FieldName = 'sftz'
                Footers = <>
                Title.Caption = #20572#27490'|'#20572#27490#65311
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'tzrymc'
                Footers = <>
                Title.Caption = #20572#27490'|'#21307#22065#20572#27490#32773
              end
              item
                EditButtons = <>
                FieldName = 'yjzxcs'
                Footers = <>
                Title.Caption = #38656#25191#34892#27425#25968
                Visible = False
                Width = 41
              end
              item
                EditButtons = <>
                FieldName = 'zxcs'
                Footers = <>
                Title.Caption = #24050#32463#25191#34892#27425#25968
                Visible = False
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'jyyb'
                Footers = <>
                Title.Caption = #26816#39564#26679#26412
                Width = 38
              end
              item
                EditButtons = <>
                FieldName = 'gg'
                Footers = <>
                Title.Caption = #35268#26684
                Width = 78
              end
              item
                EditButtons = <>
                FieldName = 'sl'
                Footers = <>
                Title.Caption = #25968#37327
                Width = 45
              end
              item
                EditButtons = <>
                FieldName = 'dw'
                Footers = <>
                Title.Caption = #21333#20301
                Width = 35
              end
              item
                EditButtons = <>
                FieldName = 'yplsj'
                Footers = <>
                Title.Caption = #21333#20215
                Width = 52
              end
              item
                EditButtons = <>
                FieldName = 'xgrq'
                Footers = <>
                Title.Caption = #25552#20132#26085#26399
                Width = 114
              end>
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 608
        Width = 1105
        Height = 21
        Align = alBottom
        BevelInner = bvLowered
        TabOrder = 2
        object Label5: TLabel
          Left = 41
          Top = 4
          Width = 105
          Height = 15
          Caption = #24403#22825#24050#25191#34892#21307#22065
        end
        object Label1: TLabel
          Left = 10
          Top = 6
          Width = 25
          Height = 9
          AutoSize = False
          Color = 14859421
          ParentColor = False
        end
        object ProgressBar1: TProgressBar
          Left = 424
          Top = 2
          Width = 679
          Height = 17
          Align = alRight
          Step = 1
          TabOrder = 0
        end
        object cxLabel1: TcxLabel
          Left = 398
          Top = 3
          Caption = #25968#25454#20934#22791#36827#24230'(0%)'
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clLime
          Style.Font.Height = -15
          Style.Font.Name = #23435#20307
          Style.Font.Style = []
          Style.TextColor = clFuchsia
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          StyleHot.BorderStyle = ebsNone
          Transparent = True
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #36153#29992#26126#32454
      ImageIndex = 1
      OnShow = TabSheet2Show
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1105
        Height = 588
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfStandard
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
          DataController.DataSource = ds_fymx
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnMoving = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1tfbz: TcxGridDBColumn
            Caption = #36873#25321
            DataBinding.FieldName = 'tfbz'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Width = 63
          end
          object cxGrid1DBTableView1sfrq: TcxGridDBColumn
            Caption = #25910#36153#26085#26399
            DataBinding.FieldName = 'sfrq'
            Options.Editing = False
            Options.Grouping = False
            Width = 152
          end
          object cxGrid1DBTableView1fymc: TcxGridDBColumn
            Caption = #36153#29992#21517#31216
            DataBinding.FieldName = 'fymc'
            Options.Editing = False
            Options.Grouping = False
            Width = 191
          end
          object cxGrid1DBTableView1dw: TcxGridDBColumn
            Caption = #21333#20301
            DataBinding.FieldName = 'dw'
            Options.Editing = False
            Width = 61
          end
          object cxGrid1DBTableView1fyje: TcxGridDBColumn
            Caption = #36153#29992#37329#39069
            DataBinding.FieldName = 'fyje'
            Options.Editing = False
            Options.Grouping = False
            Width = 81
          end
          object cxGrid1DBTableView1zfje: TcxGridDBColumn
            Caption = #24320#21333#21307#29983
            DataBinding.FieldName = 'kdys'
            Options.Editing = False
            Options.Grouping = False
            Width = 90
          end
          object cxGrid1DBTableView1czks: TcxGridDBColumn
            Caption = #22788#29702#31185#23460
            DataBinding.FieldName = 'czks'
            Options.Editing = False
            Width = 97
          end
          object cxGrid1DBTableView1mc: TcxGridDBColumn
            Caption = #25805#20316#21592
            DataBinding.FieldName = 'sfczy'
            Options.Editing = False
            Options.Grouping = False
            Width = 80
          end
          object cxGrid1DBTableView1yjqrbz: TcxGridDBColumn
            Caption = #21307#25216#30830#35748
            DataBinding.FieldName = 'yjqrbz'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 60
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 588
        Width = 1105
        Height = 41
        Align = alBottom
        TabOrder = 1
        object cxButton4: TcxButton
          Left = 607
          Top = 11
          Width = 139
          Height = 23
          Caption = #21307#25216#30830#35748#21333#25171#21360
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = cxButton4Click
        end
      end
      object QuickRep1: TQuickRep
        Left = 266
        Top = 128
        Width = 816
        Height = 336
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = qry_yjddy
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
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = Custom
        Page.Values = (
          100.000000000000000000
          888.000000000000000000
          100.000000000000000000
          2159.000000000000000000
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
        PrevInitialZoom = qrZoomToFit
        object QRBand4: TQRBand
          Left = 38
          Top = 165
          Width = 740
          Height = 32
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
            84.666666666666670000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbGroupFooter
        end
        object DetailBand1: TQRBand
          Left = 38
          Top = 144
          Width = 740
          Height = 21
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
            55.562500000000000000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText1: TQRDBText
            Left = 298
            Top = 2
            Width = 225
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              788.458333333333400000
              5.291666666666667000
              595.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qry_yjddy
            DataField = 'fymc'
            Font.Charset = ANSI_CHARSET
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
            Left = 534
            Top = 1
            Width = 100
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1412.875000000000000000
              2.645833333333333000
              264.583333333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qry_yjddy
            DataField = 'dw'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText4: TQRDBText
            Left = 643
            Top = 3
            Width = 92
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1701.270833333333000000
              7.937500000000000000
              243.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qry_yjddy
            DataField = 'fyje'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText5: TQRDBText
            Left = 123
            Top = 0
            Width = 162
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              325.437500000000000000
              0.000000000000000000
              428.625000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qry_yjddy
            DataField = 'sfrq'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText6: TQRDBText
            Left = 5
            Top = 1
            Width = 116
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              13.229166666666670000
              2.645833333333333000
              306.916666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qry_yjddy
            DataField = 'id'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object ColumnHeaderBand1: TQRBand
          Left = 38
          Top = 121
          Width = 740
          Height = 23
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
            60.854166666666670000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbColumnHeader
          object QRLabel19: TQRLabel
            Left = 364
            Top = 2
            Width = 61
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              963.083333333333300000
              5.291666666666667000
              161.395833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #30003#35831#39033#30446
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 11
          end
          object QRLabel20: TQRLabel
            Left = 562
            Top = 2
            Width = 31
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              1486.958333333333000000
              5.291666666666667000
              82.020833333333330000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #21333#20301
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 11
          end
          object QRLabel23: TQRLabel
            Left = 667
            Top = 4
            Width = 31
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              1764.770833333333000000
              10.583333333333330000
              82.020833333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #37329#39069
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 11
          end
          object QRLabel2: TQRLabel
            Left = 169
            Top = 2
            Width = 61
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              447.145833333333300000
              5.291666666666667000
              161.395833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #35760#36153#26102#38388
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 11
          end
          object QRLabel3: TQRLabel
            Left = 17
            Top = 2
            Width = 46
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              44.979166666666670000
              5.291666666666667000
              121.708333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #27969#27700#21495
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 11
          end
        end
        object PageHeaderBand1: TQRBand
          Left = 38
          Top = 38
          Width = 740
          Height = 83
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
            219.604166666666700000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRLabel22: TQRLabel
            Left = 22
            Top = 4
            Width = 683
            Height = 27
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              71.437500000000000000
              58.208333333333320000
              10.583333333333330000
              1807.104166666667000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #21307#25216#30830#35748#21333
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = #23435#20307
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 16
          end
          object QRLabel18: TQRLabel
            Left = 20
            Top = 40
            Width = 69
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              52.916666666666670000
              105.833333333333300000
              182.562500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #22788#32622#31185#23460':'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 11
          end
          object QRLabel17: TQRLabel
            Left = 223
            Top = 40
            Width = 69
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              590.020833333333300000
              105.833333333333300000
              182.562500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #25171#21360#26085#26399':'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 11
          end
          object QRLabel24: TQRLabel
            Left = 500
            Top = 40
            Width = 54
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              1322.916666666667000000
              105.833333333333300000
              142.875000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #25805#20316#21592':'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 11
          end
          object QRDBText14: TQRDBText
            Left = 576
            Top = 40
            Width = 123
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1524.000000000000000000
              105.833333333333300000
              325.437500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qry_fymx
            DataField = 'sfczy'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel13: TQRLabel
            Left = 22
            Top = 61
            Width = 54
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              58.208333333333330000
              161.395833333333300000
              142.875000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #20303#38498#21495':'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 11
          end
          object QRDBText12: TQRDBText
            Left = 95
            Top = 61
            Width = 100
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              251.354166666666700000
              161.395833333333300000
              264.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = sp_brxx
            DataField = 'tmh'
            Font.Charset = ANSI_CHARSET
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
            Left = 220
            Top = 61
            Width = 39
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              582.083333333333300000
              161.395833333333300000
              103.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #22995#21517':'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 11
          end
          object QRDBText13: TQRDBText
            Left = 265
            Top = 61
            Width = 102
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              701.145833333333200000
              161.395833333333300000
              269.875000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = sp_brxx
            DataField = 'brxm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel14: TQRLabel
            Left = 373
            Top = 61
            Width = 54
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              986.895833333333300000
              161.395833333333300000
              142.875000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #24202#20301#21495':'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 11
          end
          object QRDBText3: TQRDBText
            Left = 433
            Top = 61
            Width = 51
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              1145.645833333333000000
              161.395833333333300000
              134.937500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = sp_brxx
            DataField = 'bch'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel16: TQRLabel
            Left = 501
            Top = 62
            Width = 39
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              1325.562500000000000000
              164.041666666666700000
              103.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #30149#21306':'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 11
          end
          object qrl_bqmc: TQRLabel
            Left = 573
            Top = 61
            Width = 39
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              1516.062500000000000000
              161.395833333333300000
              103.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #30149#21306':'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 11
          end
          object rtl_czks: TQRLabel
            Left = 95
            Top = 41
            Width = 41
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              251.354166666666700000
              108.479166666666700000
              108.479166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'czks:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 11
          end
          object rtl_sfrq: TQRLabel
            Left = 306
            Top = 38
            Width = 33
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              809.625000000000000000
              100.541666666666700000
              87.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'sfrq'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 11
          end
        end
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 1113
    Height = 57
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label39: TLabel
      Left = 4
      Top = 8
      Width = 69
      Height = 15
      Caption = #20303' '#38498' '#21495':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label40: TLabel
      Left = 371
      Top = 8
      Width = 46
      Height = 15
      Caption = #24615' '#21035':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label41: TLabel
      Left = 456
      Top = 8
      Width = 46
      Height = 15
      Caption = #24180' '#40836':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label42: TLabel
      Left = 4
      Top = 31
      Width = 68
      Height = 15
      Caption = #20837#38498#26085#26399':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label43: TLabel
      Left = 190
      Top = 31
      Width = 68
      Height = 15
      Caption = #20837#38498#35786#26029':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label45: TLabel
      Left = 371
      Top = 31
      Width = 68
      Height = 15
      Caption = #39044#20132#37329#39069':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label46: TLabel
      Left = 552
      Top = 31
      Width = 68
      Height = 15
      Caption = #36153#29992#37329#39069':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label47: TLabel
      Left = 724
      Top = 31
      Width = 38
      Height = 15
      Caption = #31867#21035':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label48: TLabel
      Left = 552
      Top = 8
      Width = 68
      Height = 15
      Caption = #20027#31649#21307#29983':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label49: TLabel
      Left = 724
      Top = 8
      Width = 38
      Height = 15
      Caption = #22791#27880':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label50: TLabel
      Left = 190
      Top = 8
      Width = 68
      Height = 15
      Caption = #30149#20154#22995#21517':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object DBEdit9: TDBEdit
      Left = 73
      Top = 29
      Width = 110
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'ryrq'
      DataSource = ds_brxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit10: TDBEdit
      Left = 257
      Top = 29
      Width = 95
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'ryzd'
      DataSource = ds_brxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit11: TDBEdit
      Left = 619
      Top = 5
      Width = 88
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'zgys'
      DataSource = ds_brxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit12: TDBEdit
      Left = 440
      Top = 29
      Width = 91
      Height = 21
      TabStop = False
      Color = clMoneyGreen
      Ctl3D = False
      DataField = 'yjze'
      DataSource = ds_brxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit13: TDBEdit
      Left = 620
      Top = 29
      Width = 88
      Height = 21
      Color = clMoneyGreen
      Ctl3D = False
      DataField = 'zfy'
      DataSource = ds_brxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit14: TDBEdit
      Left = 257
      Top = 5
      Width = 95
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'brxm'
      DataSource = ds_brxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit15: TDBEdit
      Left = 504
      Top = 5
      Width = 28
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'brnl'
      DataSource = ds_brxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit16: TDBEdit
      Left = 419
      Top = 5
      Width = 23
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'brxb'
      DataSource = ds_brxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit17: TDBEdit
      Left = 764
      Top = 29
      Width = 104
      Height = 21
      Color = clMoneyGreen
      Ctl3D = False
      DataField = 'lbmc'
      DataSource = ds_brxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit18: TDBEdit
      Left = 764
      Top = 5
      Width = 104
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'bz'
      DataSource = ds_brxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object DBEdit19: TDBEdit
      Left = 73
      Top = 4
      Width = 110
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'tmh'
      DataSource = ds_brxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
  end
  object QuickRep2: TQuickRep
    Left = 409
    Top = 3000
    Width = 688
    Height = 971
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    Page.PaperSize = B5
    Page.Values = (
      100.000000000000000000
      2570.000000000000000000
      100.000000000000000000
      1820.000000000000000000
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
    ShowProgress = False
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    object PageFooterBand1: TQRBand
      Left = 19
      Top = 876
      Width = 650
      Height = 31
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
        82.020833333333330000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object ys: TQRLabel
        Left = 235
        Top = 6
        Width = 97
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          621.770833333333300000
          15.875000000000000000
          256.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32418#33394#34920#31034#20572#27490#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand1: TQRBand
      Left = 19
      Top = 38
      Width = 650
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
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape1: TQRShape
        Left = 0
        Top = 44
        Width = 650
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333330000
          0.000000000000000000
          116.416666666666700000
          1719.791666666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRL_yymc_cq: TQRLabel
        Left = 257
        Top = 2
        Width = 136
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          679.979166666666700000
          5.291666666666667000
          359.833333333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_yymc_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRL_brxm_cq: TQRLabel
        Left = 314
        Top = 30
        Width = 101
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          830.791666666666700000
          79.375000000000000000
          267.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_brxm_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object sj1: TQRLabel
        Left = 19
        Top = 80
        Width = 60
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          50.270833333333330000
          211.666666666666700000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #26102#38388#31614#21517
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 143
        Top = 66
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          378.354166666666700000
          174.625000000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#22065#20869#23481
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 18
        Top = 53
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          47.625000000000000000
          140.229166666666700000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24320#22987#26085#26399
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape3: TQRShape
        Left = -4
        Top = 49
        Width = 5
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          -10.583333333333330000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 337
        Top = 49
        Width = 3
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          891.645833333333300000
          129.645833333333300000
          7.937500000000000000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 86
        Top = 48
        Width = 5
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          227.541666666666700000
          127.000000000000000000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 646
        Top = 49
        Width = 5
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          1709.208333333333000000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRL_bch_cq: TQRLabel
        Left = 159
        Top = 30
        Width = 92
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          420.687500000000000000
          79.375000000000000000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_bch_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel6: TQRLabel
        Left = 441
        Top = 60
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1166.812500000000000000
          158.750000000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25191#34892#21307#22065
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 455
        Top = 79
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1203.854166666667000000
          209.020833333333300000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26102#38388#12289
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 499
        Top = 79
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1320.270833333333000000
          209.020833333333300000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31614#21517
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape19: TQRShape
        Left = -5
        Top = 49
        Width = 5
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          -13.229166666666670000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape46: TQRShape
        Left = -4
        Top = 48
        Width = 5
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          -10.583333333333330000
          127.000000000000000000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel10: TQRLabel
        Left = 408
        Top = 79
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1079.500000000000000000
          209.020833333333300000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26085#26399#12289
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape45: TQRShape
        Left = 288
        Top = 49
        Width = 3
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          762.000000000000000000
          129.645833333333300000
          7.937500000000000000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel11: TQRLabel
        Left = 301
        Top = 51
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          796.395833333333300000
          134.937500000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20572#27490
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 301
        Top = 68
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          796.395833333333300000
          179.916666666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26102#38388
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 301
        Top = 83
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          796.395833333333300000
          219.604166666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31614#21517
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrlbl_nfQRL_bq_cq: TQRLabel
        Left = 5
        Top = 30
        Width = 84
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          13.229166666666670000
          79.375000000000000000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_bq_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object qrlbl_nf_tmh: TQRLabel
        Left = 480
        Top = 30
        Width = 101
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1270.000000000000000000
          79.375000000000000000
          267.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_brxm_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
    end
    object QRBand2: TQRBand
      Left = 19
      Top = 140
      Width = 650
      Height = 736
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
        1947.333333333333000000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRShape4: TQRShape
        Left = 0
        Top = -1
        Width = 649
        Height = 76
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          201.083333333333300000
          0.000000000000000000
          -2.645833333333333000
          1717.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = -4
        Top = -1
        Width = 100
        Height = 76
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          201.083333333333300000
          -10.583333333333330000
          -2.645833333333333000
          264.583333333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 88
        Top = -1
        Width = 202
        Height = 76
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          201.083333333333300000
          232.833333333333300000
          -2.645833333333333000
          534.458333333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = -4
        Top = 74
        Width = 93
        Height = 77
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          203.729166666666700000
          -10.583333333333330000
          195.791666666666700000
          246.062500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 88
        Top = 74
        Width = 281
        Height = 77
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          203.729166666666700000
          232.833333333333300000
          195.791666666666700000
          743.479166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 289
        Top = 74
        Width = 360
        Height = 77
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          203.729166666666700000
          764.645833333333300000
          195.791666666666700000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = -4
        Top = 150
        Width = 93
        Height = 75
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          198.437500000000000000
          -10.583333333333330000
          396.875000000000000000
          246.062500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = -4
        Top = 224
        Width = 93
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          -10.583333333333330000
          592.666666666666700000
          246.062500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 88
        Top = 150
        Width = 203
        Height = 75
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          198.437500000000000000
          232.833333333333300000
          396.875000000000000000
          537.104166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 289
        Top = 150
        Width = 360
        Height = 75
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          198.437500000000000000
          764.645833333333300000
          396.875000000000000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 88
        Top = 224
        Width = 202
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          232.833333333333300000
          592.666666666666700000
          534.458333333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 289
        Top = 224
        Width = 360
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          764.645833333333300000
          592.666666666666700000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = -4
        Top = 297
        Width = 100
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          -10.583333333333330000
          785.812500000000000000
          264.583333333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 88
        Top = 297
        Width = 207
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          232.833333333333300000
          785.812500000000000000
          547.687500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 289
        Top = 297
        Width = 360
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          764.645833333333300000
          785.812500000000000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = -4
        Top = 370
        Width = 95
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          -10.583333333333330000
          978.958333333333300000
          251.354166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 88
        Top = 370
        Width = 207
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          232.833333333333300000
          978.958333333333300000
          547.687500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape26: TQRShape
        Left = 289
        Top = 370
        Width = 360
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          764.645833333333300000
          978.958333333333300000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Left = -4
        Top = 443
        Width = 95
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          -10.583333333333330000
          1172.104166666667000000
          251.354166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Left = 88
        Top = 443
        Width = 203
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          232.833333333333300000
          1172.104166666667000000
          537.104166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 289
        Top = 443
        Width = 360
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          764.645833333333300000
          1172.104166666667000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape30: TQRShape
        Left = -4
        Top = 516
        Width = 117
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          -10.583333333333330000
          1365.250000000000000000
          309.562500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape31: TQRShape
        Left = 88
        Top = 516
        Width = 205
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          232.833333333333300000
          1365.250000000000000000
          542.395833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape32: TQRShape
        Left = 289
        Top = 516
        Width = 360
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          764.645833333333300000
          1365.250000000000000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape33: TQRShape
        Left = -4
        Top = 589
        Width = 99
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          -10.583333333333330000
          1558.395833333333000000
          261.937500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Left = 88
        Top = 589
        Width = 205
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          232.833333333333300000
          1558.395833333333000000
          542.395833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape35: TQRShape
        Left = 289
        Top = 589
        Width = 360
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          764.645833333333300000
          1558.395833333333000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape36: TQRShape
        Left = -6
        Top = 74
        Width = 655
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -15.875000000000000000
          195.791666666666700000
          1733.020833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape37: TQRShape
        Left = -4
        Top = 112
        Width = 653
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -10.583333333333330000
          296.333333333333300000
          1727.729166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape39: TQRShape
        Left = -4
        Top = 260
        Width = 653
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -10.583333333333330000
          687.916666666666700000
          1727.729166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape40: TQRShape
        Left = -4
        Top = 334
        Width = 653
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -10.583333333333330000
          883.708333333333300000
          1727.729166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape41: TQRShape
        Left = -4
        Top = 408
        Width = 653
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -10.583333333333330000
          1079.500000000000000000
          1727.729166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape42: TQRShape
        Left = -4
        Top = 480
        Width = 653
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -10.583333333333330000
          1270.000000000000000000
          1727.729166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape43: TQRShape
        Left = -4
        Top = 553
        Width = 653
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -10.583333333333330000
          1463.145833333333000000
          1727.729166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape44: TQRShape
        Left = -4
        Top = 626
        Width = 653
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -10.583333333333330000
          1656.291666666667000000
          1727.729166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape48: TQRShape
        Left = 338
        Top = -2
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          894.291666666666700000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape49: TQRShape
        Left = 389
        Top = -2
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          1029.229166666667000000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape50: TQRShape
        Left = 440
        Top = -2
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          1164.166666666667000000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape51: TQRShape
        Left = 492
        Top = -2
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          1301.750000000000000000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape52: TQRShape
        Left = 543
        Top = -3
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          1436.687500000000000000
          -7.937500000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object kdysmc1: TQRLabel
        Left = 2
        Top = 57
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          150.812500000000000000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc1: TQRLabel
        Left = 92
        Top = 38
        Width = 195
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          243.416666666666700000
          100.541666666666700000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq2: TQRLabel
        Left = -2
        Top = 79
        Width = 90
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          209.020833333333300000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc2: TQRLabel
        Left = 2
        Top = 95
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          251.354166666666700000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc2: TQRLabel
        Left = 92
        Top = 76
        Width = 195
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          243.416666666666700000
          201.083333333333300000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq3: TQRLabel
        Left = -2
        Top = 116
        Width = 90
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          306.916666666666700000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc3: TQRLabel
        Left = 2
        Top = 133
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          351.895833333333300000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc3: TQRLabel
        Left = 92
        Top = 114
        Width = 195
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          243.416666666666700000
          301.625000000000000000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq4: TQRLabel
        Left = -2
        Top = 154
        Width = 90
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          407.458333333333300000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc4: TQRLabel
        Left = 2
        Top = 170
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          449.791666666666700000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc4: TQRLabel
        Left = 92
        Top = 152
        Width = 195
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          243.416666666666700000
          402.166666666666700000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq5: TQRLabel
        Left = -2
        Top = 190
        Width = 90
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          502.708333333333300000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc5: TQRLabel
        Left = 2
        Top = 206
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          545.041666666666700000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc5: TQRLabel
        Left = 92
        Top = 188
        Width = 195
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          243.416666666666700000
          497.416666666666700000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq6: TQRLabel
        Left = -2
        Top = 227
        Width = 90
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          600.604166666666700000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc6: TQRLabel
        Left = 2
        Top = 243
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          642.937500000000000000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc6: TQRLabel
        Left = 92
        Top = 226
        Width = 195
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          243.416666666666700000
          597.958333333333300000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq7: TQRLabel
        Left = -2
        Top = 264
        Width = 88
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          698.500000000000000000
          232.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc7: TQRLabel
        Left = 2
        Top = 280
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          740.833333333333300000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc7: TQRLabel
        Left = 92
        Top = 262
        Width = 195
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          243.416666666666700000
          693.208333333333300000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq8: TQRLabel
        Left = -2
        Top = 301
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          796.395833333333300000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc8: TQRLabel
        Left = 3
        Top = 317
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          838.729166666666700000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc8: TQRLabel
        Left = 92
        Top = 299
        Width = 195
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          243.416666666666700000
          791.104166666666700000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc0: TQRLabel
        Left = 2
        Top = 20
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          52.916666666666670000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc0'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq0: TQRLabel
        Left = -2
        Top = 3
        Width = 90
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          7.937500000000000000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'ksrq0'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc0: TQRLabel
        Left = 92
        Top = 0
        Width = 195
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          243.416666666666700000
          0.000000000000000000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc0'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq1: TQRLabel
        Left = -2
        Top = 40
        Width = 90
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          105.833333333333300000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape7: TQRShape
        Left = -4
        Top = 37
        Width = 653
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -10.583333333333330000
          97.895833333333330000
          1727.729166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape47: TQRShape
        Left = -4
        Top = 186
        Width = 653
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -10.583333333333330000
          492.125000000000000000
          1727.729166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape53: TQRShape
        Left = -4
        Top = 662
        Width = 99
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          -10.583333333333330000
          1751.541666666667000000
          261.937500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape54: TQRShape
        Left = 88
        Top = 662
        Width = 205
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          232.833333333333300000
          1751.541666666667000000
          542.395833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape55: TQRShape
        Left = 289
        Top = 662
        Width = 360
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          764.645833333333300000
          1751.541666666667000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape56: TQRShape
        Left = -6
        Top = 700
        Width = 345
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -15.875000000000000000
          1852.083333333333000000
          912.812500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape57: TQRShape
        Left = 289
        Top = 662
        Width = 50
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          764.645833333333300000
          1751.541666666667000000
          132.291666666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape58: TQRShape
        Left = 338
        Top = 662
        Width = 103
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          894.291666666666700000
          1751.541666666667000000
          272.520833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape59: TQRShape
        Left = 389
        Top = 662
        Width = 52
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          1029.229166666667000000
          1751.541666666667000000
          137.583333333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape60: TQRShape
        Left = 544
        Top = 662
        Width = 105
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          1439.333333333333000000
          1751.541666666667000000
          277.812500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape61: TQRShape
        Left = 440
        Top = 662
        Width = 53
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          1164.166666666667000000
          1751.541666666667000000
          140.229166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape62: TQRShape
        Left = 543
        Top = 662
        Width = 55
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          1436.687500000000000000
          1751.541666666667000000
          145.520833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape63: TQRShape
        Left = -4
        Top = 700
        Width = 653
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -10.583333333333330000
          1852.083333333333000000
          1727.729166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object ksrq9: TQRLabel
        Left = -2
        Top = 337
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          891.645833333333300000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc9: TQRLabel
        Left = 3
        Top = 353
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          933.979166666666700000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc9: TQRLabel
        Left = 92
        Top = 336
        Width = 195
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          243.416666666666700000
          889.000000000000000000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq10: TQRLabel
        Left = -2
        Top = 374
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          989.541666666666700000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq10'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc10: TQRLabel
        Left = 3
        Top = 390
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          1031.875000000000000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc10: TQRLabel
        Left = 92
        Top = 372
        Width = 195
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          243.416666666666700000
          984.250000000000000000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq11: TQRLabel
        Left = -2
        Top = 411
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          1087.437500000000000000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc11: TQRLabel
        Left = 3
        Top = 427
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          1129.770833333333000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc11: TQRLabel
        Left = 92
        Top = 410
        Width = 195
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          243.416666666666700000
          1084.791666666667000000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq12: TQRLabel
        Left = -2
        Top = 447
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          1182.687500000000000000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc12: TQRLabel
        Left = 3
        Top = 463
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          1225.020833333333000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc12: TQRLabel
        Left = 92
        Top = 446
        Width = 195
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          243.416666666666700000
          1180.041666666667000000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq13: TQRLabel
        Left = -2
        Top = 483
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          1277.937500000000000000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc13: TQRLabel
        Left = 3
        Top = 499
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          1320.270833333333000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc13: TQRLabel
        Left = 92
        Top = 482
        Width = 195
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          243.416666666666700000
          1275.291666666667000000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq14: TQRLabel
        Left = -2
        Top = 520
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          1375.833333333333000000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc14: TQRLabel
        Left = 3
        Top = 536
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          1418.166666666667000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc14: TQRLabel
        Left = 92
        Top = 519
        Width = 195
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          243.416666666666700000
          1373.187500000000000000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq15: TQRLabel
        Left = -2
        Top = 557
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          1473.729166666667000000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc15: TQRLabel
        Left = 3
        Top = 573
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          1516.062500000000000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc15: TQRLabel
        Left = 92
        Top = 556
        Width = 195
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          243.416666666666700000
          1471.083333333333000000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq16: TQRLabel
        Left = -2
        Top = 592
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          1566.333333333333000000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc16: TQRLabel
        Left = 3
        Top = 608
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          1608.666666666667000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc16: TQRLabel
        Left = 92
        Top = 591
        Width = 195
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          243.416666666666700000
          1563.687500000000000000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq17: TQRLabel
        Left = -2
        Top = 629
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          1664.229166666667000000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc17: TQRLabel
        Left = 3
        Top = 645
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          1706.562500000000000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc17: TQRLabel
        Left = 92
        Top = 628
        Width = 195
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          243.416666666666700000
          1661.583333333333000000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq18: TQRLabel
        Left = -2
        Top = 666
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          1762.125000000000000000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc18: TQRLabel
        Left = 3
        Top = 682
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          1804.458333333333000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc18: TQRLabel
        Left = 92
        Top = 665
        Width = 195
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          243.416666666666700000
          1759.479166666667000000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq19: TQRLabel
        Left = -2
        Top = 703
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          1860.020833333333000000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc19: TQRLabel
        Left = 3
        Top = 719
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          1902.354166666667000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc19: TQRLabel
        Left = 92
        Top = 702
        Width = 195
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          243.416666666666700000
          1857.375000000000000000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape2: TQRShape
        Left = 597
        Top = -2
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          1579.562500000000000000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
  end
  object QuickRep3: TQuickRep
    Left = 500
    Top = 3000
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
      Height = 111
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
        293.687500000000000000
        399.520833333333300000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object qrl_ks: TQRLabel
        Left = 6
        Top = 15
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          39.687500000000000000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrl_ks'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qrl_brxm: TQRLabel
        Left = 6
        Top = 80
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          211.666666666666700000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrl_brxm'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qrl_ch: TQRLabel
        Left = 6
        Top = 49
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          129.645833333333300000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrl_ch'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qrl_ks1: TQRLabel
        Left = 78
        Top = 15
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          206.375000000000000000
          39.687500000000000000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrl_ks'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qrl_ch1: TQRLabel
        Left = 78
        Top = 49
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          206.375000000000000000
          129.645833333333300000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrl_ch'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qrl_brxm1: TQRLabel
        Left = 78
        Top = 80
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          206.375000000000000000
          211.666666666666700000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrl_brxm'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
  end
  object ds_brxx: TDataSource
    DataSet = sp_brxx
    Left = 40
    Top = 128
  end
  object sp_brxx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = sp_brxxAfterOpen
    AfterScroll = sp_brxxAfterScroll
    ProcedureName = 'zybl_cx_yzyjfbr;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@sr_bqdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@yzzxsj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 48
    Top = 168
  end
  object ds_fymx: TDataSource
    DataSet = qry_fymx
    Left = 632
    Top = 486
  end
  object qry_fymx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'zyh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = #8216#8217
      end>
    SQL.Strings = (
      
        'select fymx.id,fymx.tmh,fymx.zyh,fymx.fyje,czks.mc czks,kdks.mc ' +
        'kdks,'
      '       fymx.sfrq,czy.mc sfczy,fymx.sjbh,fymx.jsdh,'
      '       fymx.jsbz tfbz,fymx.tfrq,fymx.tfczy,zydj.brxm,'
      '       kdys.mc kdys,czys.mc czys,sfxm.fymc,sfxm.dw,'
      
        '       case when substring(fymx.bz,1,1)='#39'C'#39' then '#39#26159#39' else '#39#21542#39' en' +
        'd yjqrbz'
      
        '   from zysf_zyfymx fymx ,sys_czy czy,sys_czy kdys ,sys_czy czys' +
        ','
      
        '        sys_ksdm  czks, sys_ksdm kdks,zysf_zydj zydj,sys_kjsfxm ' +
        'sfxm'
      '   where fymx.sfczy=czy.dm   and'
      '         fymx.czks=czks.dm   and'
      '         fymx.kdks=kdks.dm   and'
      '         fymx.kdys*=kdys.dm  and'
      '         fymx.czys*=czys.dm  and'
      '         fymx.fydm=sfxm.fydm and'
      '         fymx.zyh=zydj.zyh      and'
      '         fymx.zyh = :zyh'
      '  order by sfrq desc')
    Left = 603
    Top = 486
  end
  object sp_dryz: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = sp_dryzAfterOpen
    ProcedureName = 'zybl_zyyz_cx_zxqd;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '1'
      end
      item
        Name = '@zxsj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '20100811'
      end
      item
        Name = '@ksdm'
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 736
    Top = 480
  end
  object ds_dryz: TDataSource
    DataSet = sp_dryz
    Left = 680
    Top = 480
  end
  object sp_yzsj: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = sp_dryzAfterOpen
    ProcedureName = 'zyyz_yzsj;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@scyzsj'
        Attributes = [paNullable]
        DataType = ftDateTime
        Direction = pdInputOutput
        Value = Null
      end>
    Left = 712
    Top = 408
  end
  object ad_yzzx: TADOCommand
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 248
    Top = 192
  end
  object sp_in_yzqd: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = sp_dryzAfterOpen
    ProcedureName = 'zybl_zyyz_in_yzzxqd;1'
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
        Name = '@yzid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@zxsj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@yzsj'
        Attributes = [paNullable]
        DataType = ftDateTime
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
        Name = '@jyfzbh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end>
    Left = 608
    Top = 432
  end
  object qry_yjddy: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      
        'select  fymc id, fymc ,  dw , sfbz fyje,  dymc sfrq  from sys_kj' +
        'sfxm where 1=2')
    Left = 363
    Top = 230
  end
  object sp_zxjl_cq_dy: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_cx_yzzxjl_print;1'
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
        Size = 20
        Value = Null
      end
      item
        Name = '@fs'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 384
    Top = 384
  end
  object SP_SE_BCZY: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'bqgl_se_bczy;1'
    Parameters = <
      item
        Name = '@sr_ksdm'
        Size = -1
        Value = Null
      end>
    Left = 362
    Top = 288
  end
end
