object frm_cx_hztj: Tfrm_cx_hztj
  Left = 0
  Top = 0
  Align = alCustom
  Anchors = [akLeft, akTop, akRight, akBottom]
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #20250#35786#25968#25454#26597#35810
  ClientHeight = 661
  ClientWidth = 1226
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnResize = FormResize
  OnShow = FormShow
  DesignSize = (
    1226
    661)
  PixelsPerInch = 96
  TextHeight = 15
  object rzsprtrButtom: TRzSeparator
    Left = 0
    Top = 646
    Width = 1226
    Height = 15
    ShowGradient = True
    Align = alBottom
    Color = clBtnFace
    ExplicitLeft = -289
    ExplicitTop = 546
    ExplicitWidth = 1170
  end
  object rzsprtrLeft: TRzSeparator
    Left = 0
    Top = 15
    Width = 15
    Height = 631
    Orientation = orVertical
    ShowGradient = True
    Align = alLeft
    Color = clBtnFace
    ExplicitTop = -168
    ExplicitHeight = 729
  end
  object rzsprtrRight: TRzSeparator
    Left = 1211
    Top = 15
    Width = 15
    Height = 631
    Orientation = orVertical
    ShowGradient = True
    Align = alRight
    Color = clBtnFace
    ExplicitLeft = 866
    ExplicitTop = -168
    ExplicitHeight = 729
  end
  object rzsprtrTop: TRzSeparator
    Left = 0
    Top = 0
    Width = 1226
    Height = 15
    ShowGradient = True
    Align = alTop
    Color = clBtnFace
    ExplicitLeft = -289
    ExplicitWidth = 1170
  end
  object Panel1: TPanel
    Left = 20
    Top = 20
    Width = 948
    Height = 561
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    Visible = False
    DesignSize = (
      948
      561)
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 946
      Height = 41
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 60
        Height = 15
        Caption = #24320#22987#26085#26399
      end
      object Label2: TLabel
        Left = 264
        Top = 16
        Width = 60
        Height = 15
        Caption = #32467#26463#26085#26399
      end
      object DateTimePicker1: TDateTimePicker
        Left = 88
        Top = 8
        Width = 161
        Height = 23
        Date = 41465.609846805560000000
        Time = 41465.609846805560000000
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 0
      end
      object DateTimePicker2: TDateTimePicker
        Left = 336
        Top = 8
        Width = 169
        Height = 23
        Date = 41465.609846805560000000
        Time = 41465.609846805560000000
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 1
      end
      object Button1: TButton
        Left = 513
        Top = 7
        Width = 68
        Height = 25
        Caption = #26597#35810
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 815
        Top = 7
        Width = 60
        Height = 25
        Caption = #36864#20986
        TabOrder = 3
        OnClick = Button2Click
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 289
      Width = 946
      Height = 271
      Align = alClient
      Caption = #25353#21307#29983#32479#35745
      TabOrder = 1
      object cxGrid2: TcxGrid
        Left = 2
        Top = 17
        Width = 942
        Height = 252
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_cx_yshz
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = #21307#29983#25152#22312#31185#23460
            DataBinding.FieldName = 'ksmc'
            Width = 137
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = #21307#29983#20195#30721
            DataBinding.FieldName = 'dm'
            Width = 172
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = #21307#29983#22995#21517
            DataBinding.FieldName = 'mc'
            Width = 152
          end
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = #20250#35786#20154#27425
            DataBinding.FieldName = 'hzrc'
            Width = 153
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 42
      Width = 946
      Height = 247
      Align = alTop
      Caption = #25353#31185#23460#32479#35745
      TabOrder = 2
      object cxGrid1: TcxGrid
        Left = 2
        Top = 17
        Width = 942
        Height = 228
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_cx_kshz
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = #30149#21306
            DataBinding.FieldName = 'bqmc'
            Width = 137
          end
          object cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn
            Caption = #31185#23460#30003#35831#20250#35786#20154#27425
            DataBinding.FieldName = 'sqrc'
            Width = 152
          end
          object cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn
            Caption = #32473#20854#20182#31185#23460#20250#35786#20154#27425
            DataBinding.FieldName = 'hzrc'
            Width = 172
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object Button3: TButton
      Left = 595
      Top = 8
      Width = 167
      Height = 25
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = #23548#20986#31185#23460#25968#25454
      TabOrder = 3
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 706
      Top = 8
      Width = 167
      Height = 25
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = #23548#20986#21307#29983#25968#25454
      TabOrder = 4
      OnClick = Button4Click
    end
  end
  object pnlConsultation: TPanel
    Left = 15
    Top = 15
    Width = 1196
    Height = 631
    Align = alClient
    TabOrder = 1
    DesignSize = (
      1196
      631)
    object pnlBtn: TRzPanel
      Left = 1
      Top = 580
      Width = 1194
      Height = 50
      Align = alBottom
      Anchors = [akLeft, akRight]
      TabOrder = 0
      object rzbtbtnClose: TRzBitBtn
        Left = 805
        Top = 5
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
        Left = 693
        Top = 5
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
        Visible = False
        OnClick = rzbtbtnPrintClick
        ImageIndex = 0
      end
      object rzbtbtnTime: TRzBitBtn
        Left = 155
        Top = 5
        Width = 78
        Height = 40
        Caption = #38544#34255#26102#38388
        Color = clHighlight
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        HotTrack = True
        ParentFont = False
        TabOrder = 2
        OnClick = rzbtbtnTimeClick
        ImageIndex = 0
      end
      object RzBitBtnSndRecv: TRzBitBtn
        Left = 580
        Top = 5
        Width = 80
        Height = 40
        Caption = #26597#30475#25910#21040#30340#30003#35831
        Color = clHighlight
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        HotTrack = True
        ParentFont = False
        TabOrder = 3
        OnClick = RzBitBtnSndRecvClick
        ImageIndex = 0
      end
      object RzBitBtn1: TRzBitBtn
        Left = 269
        Top = 5
        Width = 80
        Height = 40
        Caption = #26597#35810
        Color = clHighlight
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        HotTrack = True
        ParentFont = False
        TabOrder = 4
        OnClick = RzBitBtn1Click
        ImageIndex = 0
      end
    end
    object cxGrid3: TcxGrid
      Left = 1
      Top = 1
      Width = 1194
      Height = 579
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 41
      ExplicitTop = 6
      object cxGrid3DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsConsltDetails
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = #20849#35745#65306
            Kind = skCount
            Column = cxGrid3DBTableView1hzzymc
          end
          item
            Format = '#####0'#20154#27425
            Kind = skCount
            Column = cxGrid3DBTableView1hzysmc
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsCustomize.DataRowSizing = True
        OptionsCustomize.GroupBySorting = True
        OptionsCustomize.GroupRowSizing = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.DataRowHeight = 25
        OptionsView.Footer = True
        OptionsView.HeaderHeight = 40
        OptionsView.Indicator = True
        Styles.Background = Frm_func.background
        Styles.ContentEven = Frm_func.EvenLine
        Styles.ContentOdd = Frm_func.OddLine
        Styles.Footer = Frm_func.footer
        Styles.Header = Frm_func.HeaderColor
        object cxGrid3DBTableView1Receive_flag: TcxGridDBColumn
          Caption = #25509#21463#26631#24535
          DataBinding.FieldName = 'Receive_flag'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaBottom
          Width = 50
        end
        object cxGrid3DBTableView1sqbqdm: TcxGridDBColumn
          Caption = #30003#35831#30149#21306#20195#30721
          DataBinding.FieldName = 'sqbqdm'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 64
        end
        object cxGrid3DBTableView1sqbqmc: TcxGridDBColumn
          Caption = #30003#35831#31185#23460#21517#31216
          DataBinding.FieldName = 'sqbqmc'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 170
        end
        object cxGrid3DBTableView1sqysdm: TcxGridDBColumn
          Caption = #30003#35831#21307#29983#20195#30721
          DataBinding.FieldName = 'sqysdm'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object cxGrid3DBTableView1bch: TcxGridDBColumn
          Caption = #30149#24202#21495
          DataBinding.FieldName = 'bch'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 60
        end
        object cxGrid3DBTableView1brxm: TcxGridDBColumn
          Caption = #30149#20154#22995#21517
          DataBinding.FieldName = 'brxm'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
        end
        object cxGrid3DBTableView1sqysmc: TcxGridDBColumn
          Caption = #30003#35831#21307#29983
          DataBinding.FieldName = 'sqysmc'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
        end
        object cxGrid3DBTableView1sqsj: TcxGridDBColumn
          Caption = #30003#35831#26102#38388
          DataBinding.FieldName = 'sqsj'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 140
        end
        object cxGrid3DBTableView1hzbqdm: TcxGridDBColumn
          Caption = #20250#35786#30149#21306#20195#30721
          DataBinding.FieldName = 'hzbqdm'
          Visible = False
          Width = 64
        end
        object cxGrid3DBTableView1hzbqmc: TcxGridDBColumn
          Caption = #20250#35786#31185#23460#21517#31216
          DataBinding.FieldName = 'hzbqmc'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 170
        end
        object cxGrid3DBTableView1hzzymc: TcxGridDBColumn
          Caption = #20250#35786#19987#19994#21517#31216
          DataBinding.FieldName = 'hzzymc'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 170
        end
        object cxGrid3DBTableView1hzysdm: TcxGridDBColumn
          Caption = #20250#35786#21307#29983#20195#30721
          DataBinding.FieldName = 'hzysdm'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 60
        end
        object cxGrid3DBTableView1hzysmc: TcxGridDBColumn
          Caption = #20250#35786#21307#29983
          DataBinding.FieldName = 'hzysmc'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
        end
        object cxGrid3DBTableView1hzsj: TcxGridDBColumn
          Caption = #20250#35786#26102#38388
          DataBinding.FieldName = 'hzsj'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 141
        end
        object cxGrid3DBTableView1zyh: TcxGridDBColumn
          Caption = #20303#38498#21495
          DataBinding.FieldName = 'zyh'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
      end
      object cxGrid3Level1: TcxGridLevel
        GridView = cxGrid3DBTableView1
      end
    end
    object pnlTmPk: TPanel
      Left = 12
      Top = 538
      Width = 528
      Height = 40
      Anchors = [akLeft, akBottom]
      Color = clHighlight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      DesignSize = (
        528
        40)
      object lbl2: TLabel
        Left = 4
        Top = 13
        Width = 68
        Height = 15
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #26102#38388#33539#22260':'
      end
      object lbl1: TLabel
        Left = 292
        Top = 13
        Width = 15
        Height = 15
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #21040
      end
      object dtp1YMD: TRzDateTimePicker
        Left = 75
        Top = 9
        Width = 105
        Height = 23
        Anchors = [akLeft, akTop, akRight, akBottom]
        Date = 41943.669030694440000000
        Time = 41943.669030694440000000
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 0
      end
      object dtp1HMS: TRzDateTimePicker
        Left = 183
        Top = 9
        Width = 105
        Height = 23
        Anchors = [akLeft, akTop, akRight, akBottom]
        Date = 41943.000000000000000000
        Time = 41943.000000000000000000
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Kind = dtkTime
        TabOrder = 1
      end
      object dtp2YMD: TRzDateTimePicker
        Left = 310
        Top = 9
        Width = 105
        Height = 23
        Anchors = [akLeft, akTop, akRight, akBottom]
        Date = 41943.669030694440000000
        Time = 41943.669030694440000000
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 2
      end
      object dtp2HMS: TRzDateTimePicker
        Left = 418
        Top = 9
        Width = 105
        Height = 23
        Anchors = [akLeft, akTop, akRight, akBottom]
        Date = 41943.999988425920000000
        Time = 41943.999988425920000000
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Kind = dtkTime
        TabOrder = 3
      end
    end
  end
  object sp_cx_kshz: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 120
    ProcedureName = 'zyyz_cx_kshz'
    Parameters = <>
    Left = 816
    Top = 8
  end
  object ds_cx_kshz: TDataSource
    DataSet = sp_cx_kshz
    Left = 816
    Top = 48
  end
  object sp_cx_yshz: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 120
    ProcedureName = 'zyyz_cx_yshz'
    Parameters = <>
    Left = 784
    Top = 9
  end
  object ds_cx_yshz: TDataSource
    DataSet = sp_cx_yshz
    Left = 784
    Top = 48
  end
  object qryConsltInfo: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'StartTime1'
        Size = -1
        Value = Null
      end
      item
        Name = 'EndTime1'
        Size = -1
        Value = Null
      end
      item
        Name = 'bqdm1'
        Size = -1
        Value = Null
      end
      item
        Name = 'StartTime2'
        Size = -1
        Value = Null
      end
      item
        Name = 'EndTIme2'
        Size = -1
        Value = Null
      end
      item
        Name = 'bqdm2'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  a.sfjs Receive_flag ,'
      '        a.sqbqdm ,'
      '        c.bqmc sqbqmc ,'
      '        d.zgys sqysdm ,'
      '        e.mc sqysmc ,'
      '        CONVERT(VARCHAR(16), a.sqsj, 120) sqsj ,'
      '        a.bqdm hzbqdm ,'
      '        a.bqmc hzbqmc ,'
      '        a.zymc hzzymc ,'
      '        b.hzys hzysdm ,'
      '        f.mc hzysmc ,'
      '        CONVERT(VARCHAR(16), b.jssj, 120) hzsj ,'
      '        a.zyh ,'
      '        RTRIM(d.brxm) brxm,'
      '        d.bch'
      'FROM    zydzbl_hzts a'
      '        LEFT JOIN zyyz_hzmx b ON a.zyh = b.zyh'
      '        LEFT JOIN sys_bqdm c ON a.sqbqdm = c.bqdm'
      '        LEFT JOIN zysf_zydj d ON a.zyh = d.zyh'
      '        LEFT JOIN sys_czy e ON d.zgys = e.dm'
      '        LEFT JOIN sys_czy f ON b.hzys = f.dm'
      'WHERE   a.sqsj >= :StartTime1'
      '        AND a.sqsj <= :EndTime1'
      '        AND a.sqbqdm = :bqdm1'
      '        AND d.brxm IS NOT NULL'
      'UNION'
      'SELECT  a.sfjs Receive_flag ,'
      '        a.sqbqdm ,'
      '        c.bqmc sqbqmc ,'
      '        d.zgys sqysdm ,'
      '        e.mc sqysmc ,'
      '        CONVERT(VARCHAR(16), a.sqsj, 120) sqsj ,'
      '        a.bqdm hzbqdm ,'
      '        a.bqmc hzbqmc ,'
      '        a.zymc hzzymc ,'
      '        b.hzys hzysdm ,'
      '        f.mc hzysmc ,'
      '        CONVERT(VARCHAR(16), b.jssj, 120) hzsj ,'
      '        a.zyh ,'
      '        RTRIM(d.brxm) brxm,'
      '        d.bch'
      'FROM    zydzbl_hzts a'
      '        LEFT JOIN zyyz_hzmx b ON a.zyh = b.zyh'
      '        LEFT JOIN sys_bqdm c ON a.sqbqdm = c.bqdm'
      '        LEFT JOIN zysf_cydj d ON a.zyh = d.zyh'
      '        LEFT JOIN sys_czy e ON d.zgys = e.dm'
      '        LEFT JOIN sys_czy f ON b.hzys = f.dm'
      'WHERE   a.sqsj >= :StartTime2'
      '        AND a.sqsj <= :EndTIme2'
      '        AND a.sqbqdm = :bqdm2'
      '        AND d.brxm IS NOT NULL')
    Left = 864
    Top = 448
  end
  object dsConsltDetails: TDataSource
    DataSet = qryConsltInfo
    Left = 832
    Top = 448
  end
end
