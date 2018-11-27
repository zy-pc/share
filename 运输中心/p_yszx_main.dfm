object Frm_yszx_main: TFrm_yszx_main
  Left = 0
  Top = 0
  Align = alCustom
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #36816#36755#20013#24515
  ClientHeight = 720
  ClientWidth = 1154
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object rzsprtrLeft: TRzSeparator
    Left = 0
    Top = 15
    Width = 15
    Height = 690
    Orientation = orVertical
    ShowGradient = True
    Align = alLeft
    Color = clBtnFace
    ExplicitLeft = 665
    ExplicitTop = 0
    ExplicitHeight = 715
  end
  object rzsprtr1: TRzSeparator
    Left = 230
    Top = 15
    Width = 15
    Height = 690
    Orientation = orVertical
    ShowGradient = True
    Align = alLeft
    Color = clBtnFace
    ExplicitLeft = 220
    ExplicitTop = 0
    ExplicitHeight = 715
  end
  object rzsprtrButtom: TRzSeparator
    Left = 0
    Top = 705
    Width = 1154
    Height = 15
    ShowGradient = True
    Align = alBottom
    Color = clBtnFace
    ExplicitTop = 702
    ExplicitWidth = 1380
  end
  object rzsprtrRight: TRzSeparator
    Left = 1139
    Top = 15
    Width = 15
    Height = 690
    Orientation = orVertical
    ShowGradient = True
    Align = alRight
    Color = clBtnFace
    ExplicitLeft = 1212
    ExplicitTop = 8
    ExplicitHeight = 715
  end
  object rzsprtrTop: TRzSeparator
    Left = 0
    Top = 0
    Width = 1154
    Height = 15
    ShowGradient = True
    Align = alTop
    Color = clBtnFace
    ExplicitLeft = -1
    ExplicitWidth = 1170
  end
  object pnlPatientsInfo: TPanel
    Left = 15
    Top = 15
    Width = 215
    Height = 690
    Align = alLeft
    Color = clGray
    ParentBackground = False
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 1
      Top = 36
      Width = 213
      Height = 653
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnMouseDown = cxGrid1DBTableView1MouseDown
        NavigatorButtons.ConfirmDelete = False
        OnCellClick = cxGrid1DBTableView1CellClick
        DataController.DataSource = dsPatsInfo
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
          end
          item
            Format = #24635#20154#25968
            Kind = skCount
          end
          item
            Format = '###0'#20154
            Kind = skCount
            Column = cxGrid1DBTableView1brxm
          end
          item
            Format = #20849#35745#65306
            Kind = skCount
            Column = cxGrid1DBTableView1yybch
          end
          item
            Format = #20154
            Kind = skCount
            Column = cxGrid1DBTableView1ysfs
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnMoving = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.DataRowHeight = 24
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 40
        Styles.Background = background
        Styles.ContentEven = EvenLine
        Styles.ContentOdd = OddLine
        Styles.Footer = footer
        object cxGrid1DBTableView1yybch: TcxGridDBColumn
          Caption = #24202#21495
          DataBinding.FieldName = 'bch'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Styles.Header = HeaderColor
          Width = 60
        end
        object cxGrid1DBTableView1tmh: TcxGridDBColumn
          DataBinding.FieldName = 'tmh'
          Visible = False
        end
        object cxGrid1DBTableView1zyh: TcxGridDBColumn
          DataBinding.FieldName = 'zyh'
          Visible = False
        end
        object cxGrid1DBTableView1brxm: TcxGridDBColumn
          Caption = #22995#21517
          DataBinding.FieldName = 'brxm'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Styles.Header = HeaderColor
          Width = 150
        end
        object cxGrid1DBTableView1ysfs: TcxGridDBColumn
          Caption = #36816#36755' '#26041#24335
          DataBinding.FieldName = 'ysfs'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Styles.Footer = footer
          Styles.Header = HeaderColor
          Width = 50
        end
        object cxGrid1DBTableView1ysbm: TcxGridDBColumn
          DataBinding.FieldName = 'ysbm'
          Visible = False
        end
        object cxGrid1DBTableView1qxbz: TcxGridDBColumn
          DataBinding.FieldName = 'qxbz'
          Visible = False
        end
        object cxGrid1DBTableView1yysj: TcxGridDBColumn
          DataBinding.FieldName = 'yysj'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object pnl1: TPanel
      Left = 1
      Top = 1
      Width = 213
      Height = 35
      Align = alTop
      Caption = #20840#37096
      Color = clHighlight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 1
      OnMouseDown = pnl1MouseDown
    end
  end
  object pnlMainInfo: TPanel
    Left = 245
    Top = 15
    Width = 894
    Height = 690
    Align = alClient
    TabOrder = 1
    object GroupBox: TGroupBox
      Left = 1
      Top = 1
      Width = 892
      Height = 638
      Align = alClient
      Color = clWhite
      Ctl3D = True
      ParentBackground = False
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 0
      object pnlPersonalInfo: TPanel
        Left = 2
        Top = 17
        Width = 888
        Height = 150
        Align = alTop
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object lblTableName: TLabel
          Left = 384
          Top = 43
          Width = 140
          Height = 19
          Caption = #24179#35786#36816#36865#30003#35831#21333
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblryzd: TLabel
          Left = 26
          Top = 105
          Width = 75
          Height = 15
          Alignment = taCenter
          Caption = #20837#38498#35786#26029#65306
        end
        object lblysfs: TLabel
          Left = 425
          Top = 105
          Width = 75
          Height = 15
          Caption = #36816#36755#26041#24335#65306
        end
        object lblYzrq: TLabel
          Left = 606
          Top = 105
          Width = 75
          Height = 15
          Caption = #21307#22065#26085#26399#65306
        end
        object cbbYsfs: TcxComboBox
          Left = 513
          Top = 98
          AutoSize = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ItemHeight = 20
          Properties.Items.Strings = (
            ''
            #24179#36710
            #36718#26885)
          Properties.ReadOnly = False
          Properties.UseLeftAlignmentOnEditing = False
          TabOrder = 0
          Height = 28
          Width = 81
        end
        object redtRyzd: TRichEdit
          Left = 113
          Top = 92
          Width = 300
          Height = 41
          Ctl3D = True
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          HideScrollBars = False
          Lines.Strings = (
            'redtRyzd')
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ScrollBars = ssVertical
          ShowHint = False
          TabOrder = 1
          WantReturns = False
        end
        object pnlState: TRzPanel
          Left = 693
          Top = 0
          Width = 150
          Height = 35
          Caption = #26174#31034#29366#24577
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
      end
      object pnlTransInfo: TPanel
        Left = 2
        Top = 167
        Width = 888
        Height = 469
        Align = alClient
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 1
        object cxGrid2: TcxGrid
          Left = 1
          Top = 1
          Width = 886
          Height = 426
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsTransDetials
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.ColumnSorting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.DataRowHeight = 40
            OptionsView.GroupByBox = False
            OptionsView.GroupFooters = gfAlwaysVisible
            OptionsView.HeaderHeight = 40
            Styles.Background = background
            Styles.ContentEven = EvenLine
            Styles.ContentOdd = OddLine
            Styles.Header = headerColor2
            object cxGridDBTableView1tmh: TcxGridDBColumn
              Caption = #20303#38498#21495
              DataBinding.FieldName = 'tmh'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.AutoSelect = False
              Properties.ReadOnly = True
              Properties.UseLeftAlignmentOnEditing = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 84
            end
            object cxGridDBTableView1ksmc: TcxGridDBColumn
              Caption = #31185#23460#21517#31216
              DataBinding.FieldName = 'ksmc'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.AutoSelect = False
              Properties.ReadOnly = True
              Properties.UseLeftAlignmentOnEditing = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGridDBTableView1brxm: TcxGridDBColumn
              Caption = #30149#20154#22995#21517
              DataBinding.FieldName = 'brxm'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 112
            end
            object cxGridDBTableView1brxb: TcxGridDBColumn
              Caption = #24615#21035
              DataBinding.FieldName = 'brxb'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 25
            end
            object cxGridDBTableView1brnl: TcxGridDBColumn
              Caption = #24180#40836
              DataBinding.FieldName = 'brnl'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 52
            end
            object cxGridDBTableView1yysj: TcxGridDBColumn
              Caption = #26816#26597#26085#26399
              DataBinding.FieldName = 'yysj'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGridDBTableView1jcxm: TcxGridDBColumn
              Caption = #26816#26597#39033#30446
              DataBinding.FieldName = 'jcxm'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 300
            end
            object cxGridDBTableView1bz: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'bz'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 60
            end
            object cxGridDBTableView1bch: TcxGridDBColumn
              Caption = #30149#24202#21495
              DataBinding.FieldName = 'bch'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 60
            end
            object cxGridDBTableView1yzsj: TcxGridDBColumn
              DataBinding.FieldName = 'yzsj'
              Visible = False
            end
            object cxGridDBTableView1ryzd: TcxGridDBColumn
              DataBinding.FieldName = 'ryzd'
              Visible = False
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object pnlysqm: TPanel
          Left = 1
          Top = 427
          Width = 886
          Height = 41
          Align = alBottom
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object lblYsqm: TLabel
            Left = 601
            Top = 12
            Width = 75
            Height = 15
            Caption = #21307#29983#31614#21517#65306
          end
          object edtKdys: TEdit
            Left = 682
            Top = 7
            Width = 121
            Height = 23
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 639
      Width = 892
      Height = 50
      Align = alBottom
      TabOrder = 1
      object rzbtbtnClose: TRzBitBtn
        Left = 700
        Top = 3
        Width = 80
        Height = 40
        Caption = #20851#38381
        Color = clHighlight
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        HotTrack = True
        ParentFont = False
        TabOrder = 0
        OnClick = rzbtbtnCloseClick
        ImageIndex = 0
      end
      object rzbtbtnPrint: TRzBitBtn
        Left = 591
        Top = 3
        Width = 80
        Height = 40
        Caption = #25171#21360
        Color = clHighlight
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        HotTrack = True
        ParentFont = False
        TabOrder = 1
        OnClick = rzbtbtnPrintClick
        ImageIndex = 0
      end
      object rzbtbtnCommit: TRzBitBtn
        Left = 481
        Top = 3
        Width = 80
        Height = 40
        Caption = #25552#20132#30003#35831
        Color = clHighlight
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        HotTrack = True
        ParentFont = False
        TabOrder = 2
        OnClick = rzbtbtnCommitClick
        ImageIndex = 0
      end
      object rzbtbtnGiveup: TRzBitBtn
        Left = 372
        Top = 3
        Width = 80
        Height = 40
        Caption = #21462#28040#36816#36755
        Color = clHighlight
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        HotTrack = True
        ParentFont = False
        TabOrder = 3
        OnClick = rzbtbtnGiveupClick
        ImageIndex = 0
      end
      object rzbtbtnTime: TRzBitBtn
        Left = 155
        Top = 3
        Width = 78
        Height = 40
        Caption = #26174#31034#26102#38388
        Color = clHighlight
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        HotTrack = True
        ParentFont = False
        TabOrder = 4
        OnClick = rzbtbtnTimeClick
        ImageIndex = 0
      end
      object rzbtbtnChangeYssj: TRzBitBtn
        Left = 262
        Top = 3
        Width = 80
        Height = 40
        Caption = #25913#26816#26597#26085#26399
        Color = clHighlight
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        HotTrack = True
        ParentFont = False
        TabOrder = 5
        Visible = False
        ImageIndex = 0
      end
    end
    object edtYzrq: TEdit
      Left = 690
      Top = 110
      Width = 150
      Height = 28
      AutoSize = False
      TabOrder = 2
    end
    object pnlTmPk: TPanel
      Left = 4
      Top = 595
      Width = 528
      Height = 40
      Color = clHighlight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      object lbl2: TLabel
        Left = 4
        Top = 13
        Width = 68
        Height = 15
        Caption = #26102#38388#33539#22260':'
      end
      object lbl1: TLabel
        Left = 292
        Top = 13
        Width = 15
        Height = 15
        Caption = #21040
      end
      object dtp1YMD: TRzDateTimePicker
        Left = 75
        Top = 9
        Width = 105
        Height = 23
        Date = 41943.669030694440000000
        Time = 41943.669030694440000000
        TabOrder = 0
        OnChange = dtp1YMDChange
      end
      object dtp1HMS: TRzDateTimePicker
        Left = 183
        Top = 9
        Width = 105
        Height = 23
        Date = 41943.669030694440000000
        Time = 41943.669030694440000000
        Kind = dtkTime
        TabOrder = 1
        OnChange = dtp1HMSChange
      end
      object dtp2YMD: TRzDateTimePicker
        Left = 310
        Top = 9
        Width = 105
        Height = 23
        Date = 41943.669030694440000000
        Time = 41943.669030694440000000
        TabOrder = 2
        OnChange = dtp2YMDChange
      end
      object dtp2HMS: TRzDateTimePicker
        Left = 418
        Top = 9
        Width = 105
        Height = 23
        Date = 41943.669030694440000000
        Time = 41943.669030694440000000
        Kind = dtkTime
        TabOrder = 3
        OnChange = dtp2HMSChange
      end
    end
  end
  object edtysry3: TEdit
    Left = 426
    Top = 21
    Width = 81
    Height = 23
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = #36865#22238#30149#21306
  end
  object edtysry1: TEdit
    Left = 249
    Top = 21
    Width = 81
    Height = 23
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = #36865#21435#26816#26597
  end
  object edtysry2: TEdit
    Left = 338
    Top = 21
    Width = 81
    Height = 23
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = #38506#20276#26816#26597
  end
  object qryPatsInfo: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    AfterOpen = qryPatsInfoAfterOpen
    Parameters = <
      item
        Name = 'ksdm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  a.*'
      'FROM    yszx_brys_zb a'
      'WHERE    brszks=:ksdm')
    Left = 80
    Top = 496
  end
  object dsPatsInfo: TDataSource
    DataSet = qryPatsInfo
    Left = 120
    Top = 496
  end
  object cxstylrpstry1: TcxStyleRepository
    object HeaderColor: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clHighlight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object OddLine: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clMoneyGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
    end
    object background: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
    end
    object EvenLine: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
    end
    object footer: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clYellow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      TextColor = clMaroon
    end
    object headerColor2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMoneyGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      TextColor = clWhite
    end
  end
  object qryTransDetials: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'zyh'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'ysbm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT a.tmh,RTRIM(d.mc) ksmc,RTRIM(a.brxm) brxm,c.brxb,c.brnl,I' +
        'SNULL(a.ggyssj,a.yysj) yysj,b.jcxm,b.bz, c.bch ,RTRIM(c.ryzd) ry' +
        'zd,CONVERT(VARCHAR(10),yzsj,120) yzsj'
      'FROM yszx_brys_zb a ,yszx_brys_mx b ,zysf_zydj c, sys_ksdm d'
      
        'WHERE a.ysbm=b.ysbm AND a.zyh=c.zyh AND a.brszks=d.dm and a.zyh=' +
        ':zyh AND a.ysbm=:ysbm')
    Left = 928
    Top = 512
  end
  object dsTransDetials: TDataSource
    DataSet = qryTransDetials
    Left = 968
    Top = 512
  end
  object PopupMenu1: TPopupMenu
    Left = 40
    Top = 496
    object N1: TMenuItem
      Caption = #26174#31034#20840#37096
      OnClick = N1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Caption = #26174#31034#26410#30003#35831#36816#36755
      Visible = False
      OnClick = N4Click
    end
    object N13: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Caption = #26174#31034#24050#21462#28040#36816#36755
      OnClick = N2Click
    end
    object N5: TMenuItem
      Caption = #26174#31034#36816#36755#20013#21462#28040#36816#36755
      OnClick = N5Click
    end
    object N11: TMenuItem
      Caption = #26174#31034#26410#36816#36755#21462#28040#36816#36755
      OnClick = N11Click
    end
    object N12: TMenuItem
      Caption = '-'
    end
    object N3: TMenuItem
      Caption = #26174#31034#24050#30003#35831#36816#36755
      OnClick = N3Click
    end
    object N9: TMenuItem
      Caption = #26174#31034#26410#24320#22987#36816#36755
      OnClick = N9Click
    end
    object N: TMenuItem
      Caption = #26174#31034#27491#22312#36816#36755#20013
      OnClick = NClick
    end
    object N8: TMenuItem
      Caption = #26174#31034#36816#36755#23436#25104
      OnClick = N8Click
    end
  end
end
