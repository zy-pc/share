object frm_sjsyqk: Tfrm_sjsyqk
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #25910#25454#20351#29992#24773#20917
  ClientHeight = 562
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pageControl: TcxPageControl
    Left = 0
    Top = 0
    Width = 784
    Height = 562
    ActivePage = cxTabSheet1
    Align = alClient
    LookAndFeel.Kind = lfOffice11
    TabOrder = 0
    ClientRectBottom = 562
    ClientRectRight = 784
    ClientRectTop = 26
    object cxTabSheet1: TcxTabSheet
      Caption = #26126#32454#26597#35810
      ImageIndex = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 185
        Height = 536
        Align = alLeft
        TabOrder = 0
        object Label1: TLabel
          Left = 1
          Top = 1
          Width = 183
          Height = 15
          Align = alTop
          Alignment = taCenter
          Caption = #25910#25454#39046#29992#20154
          ExplicitWidth = 75
        end
        object cxGrid1: TcxGrid
          Left = 1
          Top = 16
          Width = 183
          Height = 519
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ds_sjlyr
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            Styles.ContentOdd = cxStyle1
            Styles.StyleSheet = GridTableViewStyleSheetDevExpress
            object cxGrid1DBTableView1Column2: TcxGridDBColumn
              Caption = #31185#23460
              DataBinding.FieldName = 'ksmc'
              HeaderAlignmentHorz = taCenter
              Width = 94
            end
            object cxGrid1DBTableView1Column1: TcxGridDBColumn
              Caption = #39046#29992#20154
              DataBinding.FieldName = 'lyrxm'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object Panel2: TPanel
        Left = 185
        Top = 0
        Width = 599
        Height = 536
        Align = alClient
        TabOrder = 1
        object Label2: TLabel
          Left = 1
          Top = 1
          Width = 597
          Height = 15
          Align = alTop
          Alignment = taCenter
          Caption = #25910#25454#39046#29992#35760#24405
          ExplicitWidth = 90
        end
        object Label3: TLabel
          Left = 1
          Top = 216
          Width = 597
          Height = 15
          Align = alTop
          Alignment = taCenter
          Caption = #25910#25454#20351#29992#26126#32454
          ExplicitWidth = 90
        end
        object cxGrid2: TcxGrid
          Left = 1
          Top = 16
          Width = 597
          Height = 200
          Align = alTop
          TabOrder = 0
          object cxGrid2DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ds_lymx
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            Styles.StyleSheet = GridTableViewStyleSheetUserFormat2
            object cxGrid2DBTableView1Column1: TcxGridDBColumn
              Caption = #39046#29992#21333#21495
              DataBinding.FieldName = 'djh'
              HeaderAlignmentHorz = taCenter
              Width = 107
            end
            object cxGrid2DBTableView1Column2: TcxGridDBColumn
              Caption = #31867#21035
              DataBinding.FieldName = 'mc'
              HeaderAlignmentHorz = taCenter
              Width = 71
            end
            object cxGrid2DBTableView1Column3: TcxGridDBColumn
              Caption = #36215#21495
              DataBinding.FieldName = 'sjqh'
              HeaderAlignmentHorz = taCenter
              Width = 94
            end
            object cxGrid2DBTableView1Column4: TcxGridDBColumn
              Caption = #27490#21495
              DataBinding.FieldName = 'sjzh'
              HeaderAlignmentHorz = taCenter
              Width = 96
            end
            object cxGrid2DBTableView1Column5: TcxGridDBColumn
              Caption = #25968#37327
              DataBinding.FieldName = 'sjsl'
              HeaderAlignmentHorz = taCenter
              Width = 70
            end
            object cxGrid2DBTableView1Column6: TcxGridDBColumn
              Caption = #39046#29992#26102#38388
              DataBinding.FieldName = 'lysj'
              HeaderAlignmentHorz = taCenter
              Width = 143
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
        object cxGrid3: TcxGrid
          Left = 1
          Top = 231
          Width = 597
          Height = 304
          Align = alClient
          TabOrder = 1
          object cxGrid3DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ds_sjsyqk
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            Styles.StyleSheet = GridTableViewStyleSheetUserFormat2
            object cxGrid3DBTableView1Column2: TcxGridDBColumn
              Caption = #32534#21495
              DataBinding.FieldName = 'sjbh'
              HeaderAlignmentHorz = taCenter
              Width = 89
            end
            object cxGrid3DBTableView1Column5: TcxGridDBColumn
              Caption = #31867#21035
              DataBinding.FieldName = 'sjlbmc'
              HeaderAlignmentHorz = taCenter
              Width = 69
            end
            object cxGrid3DBTableView1Column3: TcxGridDBColumn
              Caption = #29366#24577
              DataBinding.FieldName = 'sjzt'
              HeaderAlignmentHorz = taCenter
              Width = 53
            end
            object cxGrid3DBTableView1Column1: TcxGridDBColumn
              Caption = #20351#29992#20154
              DataBinding.FieldName = 'syczymc'
              HeaderAlignmentHorz = taCenter
              Width = 72
            end
            object cxGrid3DBTableView1Column4: TcxGridDBColumn
              Caption = #20351#29992#26102#38388
              DataBinding.FieldName = 'sysj'
              HeaderAlignmentHorz = taCenter
              Width = 116
            end
            object cxGrid3DBTableView1Column6: TcxGridDBColumn
              Caption = #20316#24223#20154
              DataBinding.FieldName = 'zfczymc'
              HeaderAlignmentHorz = taCenter
              Width = 71
            end
            object cxGrid3DBTableView1Column7: TcxGridDBColumn
              Caption = #20316#24223#26102#38388
              DataBinding.FieldName = 'zfsj'
              HeaderAlignmentHorz = taCenter
              Width = 112
            end
          end
          object cxGrid3Level1: TcxGridLevel
            GridView = cxGrid3DBTableView1
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #26102#38388#27573#26126#32454#26597#35810
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 784
        Height = 41
        Align = alTop
        TabOrder = 0
        object Button1: TButton
          Left = 495
          Top = 8
          Width = 75
          Height = 25
          Caption = #26597#35810
          TabOrder = 0
          OnClick = Button1Click
        end
        object cxLabel1: TcxLabel
          Left = 12
          Top = 11
          Caption = #24320#22987#26085#26399#65306
        end
        object cxLabel2: TcxLabel
          Left = 240
          Top = 11
          Caption = #32467#26463#26085#26399#65306
        end
        object edt_ksrq: TcxDateEdit
          Left = 82
          Top = 9
          TabOrder = 2
          Width = 121
        end
        object edt_jsrq: TcxDateEdit
          Left = 313
          Top = 9
          TabOrder = 1
          Width = 120
        end
        object Button2: TButton
          Left = 608
          Top = 8
          Width = 75
          Height = 25
          Caption = #25171#21360
          TabOrder = 5
          OnClick = Button2Click
        end
      end
      object cxGrid4: TcxGrid
        Left = 0
        Top = 41
        Width = 784
        Height = 495
        Align = alClient
        TabOrder = 1
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_sjsqqk_all
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Styles.StyleSheet = GridTableViewStyleSheetUserFormat2
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = #32534#21495
            DataBinding.FieldName = 'sjbh'
            Width = 133
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = #31867#21035
            DataBinding.FieldName = 'sjlbmc'
            Width = 125
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = #29366#24577
            DataBinding.FieldName = 'sjzt'
            Width = 66
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = #20351#29992#20154
            DataBinding.FieldName = 'syczymc'
            Width = 72
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = #20351#29992#26102#38388
            DataBinding.FieldName = 'sysj'
            Width = 177
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = #20316#24223#20154
            DataBinding.FieldName = 'zfczymc'
            Width = 71
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = #20316#24223#26102#38388
            DataBinding.FieldName = 'zfsj'
            Width = 112
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = #27719#24635#32479#35745
      ImageIndex = 2
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 784
        Height = 41
        Align = alTop
        TabOrder = 0
        object Label4: TLabel
          Left = 8
          Top = 13
          Width = 80
          Height = 16
          Caption = #25910#25454#31867#21035#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Fixedsys'
          Font.Style = []
          ParentFont = False
        end
        object Button3: TButton
          Left = 597
          Top = 8
          Width = 75
          Height = 25
          Caption = #32479#35745
          TabOrder = 0
          OnClick = Button3Click
        end
        object cxLabel3: TcxLabel
          Left = 246
          Top = 13
          Caption = #25910#25454#21495
        end
        object cxLabel4: TcxLabel
          Left = 421
          Top = 13
          Caption = #21040
        end
        object sj_qs: TcxTextEdit
          Left = 294
          Top = 9
          TabOrder = 3
          Width = 121
        end
        object sj_js: TcxTextEdit
          Left = 446
          Top = 9
          TabOrder = 4
          Width = 121
        end
        object cb_sjlb: TcxComboBox
          Left = 80
          Top = 12
          Properties.Items.Strings = (
            #38376#35786
            #20303#38498)
          TabOrder = 5
          Width = 121
        end
      end
      object cxGrid5: TcxGrid
        Left = 0
        Top = 41
        Width = 784
        Height = 495
        Align = alClient
        TabOrder = 1
        object cxGridDBTableView2: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_tj
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #36153#29992#31181#31867':0'
              Kind = skCount
              FieldName = 'fymc'
              Column = cxGridDBTableView2fymc
            end
            item
              Format = #36153#29992#25968#37327':0'
              Kind = skSum
              FieldName = 'fysl'
              Column = cxGridDBTableView2fysl
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellMultiSelect = True
          OptionsView.Footer = True
          Styles.StyleSheet = GridTableViewStyleSheetUserFormat2
          object cxGridDBTableView2fymc: TcxGridDBColumn
            Caption = #36153#29992#21517#31216
            DataBinding.FieldName = 'fymc'
            HeaderAlignmentHorz = taCenter
            MinWidth = 400
            Options.Filtering = False
            Options.FilteringMRUItemsList = False
            Options.Focusing = False
            Options.IncSearch = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 400
          end
          object cxGridDBTableView2fysl: TcxGridDBColumn
            Caption = #36153#29992#25968#37327
            DataBinding.FieldName = 'fysl'
            HeaderAlignmentHorz = taCenter
            MinWidth = 300
            Options.Filtering = False
            Options.FilteringMRUItemsList = False
            Options.Focusing = False
            Options.IncSearch = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 300
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
  end
  object qry_sjlyr: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qry_sjlyrAfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'SELECT distinct a.lyr,b.mc lyrxm,c.mc ksmc FROM sjgl_sjffmx a,sy' +
        's_czy b,sys_ksdm c'
      'where a.lyr = b.dm'
      'and b.ksdm = c.dm')
    Left = 56
    Top = 128
  end
  object ds_sjlyr: TDataSource
    DataSet = qry_sjlyr
    Left = 32
    Top = 128
  end
  object qry_lymx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qry_lymxAfterScroll
    Parameters = <
      item
        Name = 'lyr'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT a.*,b.mc FROM sjgl_sjffmx a,sys_sjlb b'
      'where a.sjlb = b.dm'
      'and a.lyr =:lyr'
      'order by lysj')
    Left = 64
    Top = 200
  end
  object ds_lymx: TDataSource
    DataSet = qry_lymx
    Left = 32
    Top = 200
  end
  object sp_up_sjsyqk: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'sjgl_up_sjsypk'
    Parameters = <
      item
        Name = '@zybz'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 168
    Top = 136
  end
  object qry_sjsyqk: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'sjlx'
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = 'sjqh'
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = 'sjzh'
        DataType = ftString
        Size = 9
        Value = '111111111'
      end>
    SQL.Strings = (
      'declare @sjlx varchar(2),@sjqh int,@sjzh int'
      'set @sjlx =:sjlx'
      'set @sjqh =:sjqh'
      'set @sjzh =:sjzh'
      'select a.*,sjlb.mc sjlbmc,syczy.mc syczymc,zfczy.mc zfczymc'
      'from sjgl_sjsyqk a,sys_sjlb sjlb,sys_czy syczy,sys_czy zfczy'
      'where a.sjlx = sjlb.dm'
      'and a.syczy=syczy.dm'
      'and a.zfczy *= zfczy.dm'
      'and a.sjlx = @sjlx'
      'and a.sjbh between @sjqh and @sjzh')
    Left = 56
    Top = 280
  end
  object ds_sjsyqk: TDataSource
    DataSet = qry_sjsyqk
    Left = 24
    Top = 280
  end
  object qry_sjsyqk_all: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ksrq'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'jsrq'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'select a.* ,b.mc sjlbmc,c.mc syczymc,d.mc zfczymc'
      'from sjgl_sjsyqk a ,sys_sjlb b ,sys_czy c,sys_czy d'
      'where a.sjlx=b.dm and '
      '    a.syczy = c.dm and a.zfczy *= d.dm and'
      '   Convert(char(8),sysj,112)>=:ksrq and '
      '   Convert(char(8),sysj,112)<=:jsrq')
    Left = 56
    Top = 384
  end
  object ds_sjsqqk_all: TDataSource
    DataSet = qry_sjsyqk_all
    Left = 24
    Top = 384
  end
  object GridppReport1: TGridppReport
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 712
    Top = 72
  end
  object cxStyleRepository1: TcxStyleRepository
    object cxStyle1: TcxStyle
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 9234160
      TextColor = clBlack
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 11788021
      TextColor = clBlack
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11193702
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5737262
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5736750
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle26: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4615972
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle2
      Styles.Content = cxStyle3
      Styles.ContentEven = cxStyle4
      Styles.ContentOdd = cxStyle5
      Styles.FilterBox = cxStyle6
      Styles.Inactive = cxStyle11
      Styles.IncSearch = cxStyle12
      Styles.Selection = cxStyle15
      Styles.Footer = cxStyle7
      Styles.Group = cxStyle8
      Styles.GroupByBox = cxStyle9
      Styles.Header = cxStyle10
      Styles.Indicator = cxStyle13
      Styles.Preview = cxStyle14
      BuiltIn = True
    end
    object GridTableViewStyleSheetUserFormat2: TcxGridTableViewStyleSheet
      Caption = 'UserFormat2'
      Styles.Content = cxStyle16
      Styles.ContentEven = cxStyle17
      Styles.ContentOdd = cxStyle18
      Styles.Inactive = cxStyle23
      Styles.Selection = cxStyle26
      Styles.Footer = cxStyle19
      Styles.Group = cxStyle20
      Styles.GroupByBox = cxStyle21
      Styles.Header = cxStyle22
      Styles.Indicator = cxStyle24
      Styles.Preview = cxStyle25
      BuiltIn = True
    end
  end
  object sp_tj: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'sjgl_tj_sjhz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@sjlb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@sjqh'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@sjzh'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 168
    Top = 216
    object sp_tjksrq: TStringField
      FieldName = 'ksrq'
    end
    object sp_tjjsrq: TStringField
      FieldName = 'jsrq'
    end
    object sp_tjfymc: TStringField
      FieldName = 'fymc'
      Size = 100
    end
    object sp_tjfysl: TIntegerField
      FieldName = 'fysl'
    end
  end
  object ds_tj: TDataSource
    DataSet = sp_tj
    Left = 200
    Top = 216
  end
end
