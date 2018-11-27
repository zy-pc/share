object frm_sjrk: Tfrm_sjrk
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #21457#31080#20837#24211
  ClientHeight = 562
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 784
    Height = 562
    ActivePage = cxTabSheet1
    Align = alClient
    NavigatorPosition = npLeftTop
    ParentShowHint = False
    ShowFrame = True
    ShowHint = False
    Style = 8
    TabOrder = 0
    ClientRectBottom = 561
    ClientRectLeft = 1
    ClientRectRight = 783
    ClientRectTop = 28
    object cxTabSheet1: TcxTabSheet
      Caption = #21457#31080#20837#24211
      ImageIndex = 0
      object pnl_an: TPanel
        Left = 0
        Top = 0
        Width = 782
        Height = 41
        Align = alTop
        TabOrder = 0
        object Label5: TLabel
          Left = 8
          Top = 11
          Width = 60
          Height = 15
          Caption = #20837#24211#21333#21495
        end
        object Button1: TButton
          Left = 410
          Top = 8
          Width = 75
          Height = 25
          Caption = #24320#22987#24405#20837
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 510
          Top = 8
          Width = 75
          Height = 25
          Caption = #20445#23384#20837#24211
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 610
          Top = 8
          Width = 75
          Height = 25
          Caption = #25918#24323#20837#24211
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button3Click
        end
        object edt_rkdh: TcxTextEdit
          Left = 69
          Top = 7
          Enabled = False
          Style.Shadow = False
          Style.TextStyle = [fsBold]
          TabOrder = 3
          Width = 264
        end
      end
      object pnl_lr: TPanel
        Left = 0
        Top = 41
        Width = 782
        Height = 492
        Align = alClient
        Enabled = False
        TabOrder = 1
        object Label1: TLabel
          Left = 5
          Top = 10
          Width = 60
          Height = 15
          Caption = #21457#31080#31867#22411
        end
        object Label2: TLabel
          Left = 191
          Top = 10
          Width = 30
          Height = 15
          Caption = #36215#21495
        end
        object Label3: TLabel
          Left = 325
          Top = 10
          Width = 30
          Height = 15
          Caption = #27490#21495
        end
        object cxGrid1: TcxGrid
          Left = 1
          Top = 37
          Width = 780
          Height = 454
          Align = alBottom
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ds_sjrk
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsSelection.CellSelect = False
            OptionsSelection.MultiSelect = True
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1Column1: TcxGridDBColumn
              Caption = #25910#25454#31867#22411
              DataBinding.FieldName = 'sjlxmc'
              Width = 149
            end
            object cxGrid1DBTableView1Column2: TcxGridDBColumn
              Caption = #25910#25454#36215#21495
              DataBinding.FieldName = 'sjqh'
              Width = 106
            end
            object cxGrid1DBTableView1Column3: TcxGridDBColumn
              Caption = #25910#25454#27490#21495
              DataBinding.FieldName = 'sjzh'
              Width = 96
            end
            object cxGrid1DBTableView1Column5: TcxGridDBColumn
              Caption = #20837#24211#25968#37327
              DataBinding.FieldName = 'rksl'
              Width = 82
            end
            object cxGrid1DBTableView1Column6: TcxGridDBColumn
              Caption = #21097#20313#25968#37327
              DataBinding.FieldName = 'sysl'
              Width = 81
            end
            object cxGrid1DBTableView1Column4: TcxGridDBColumn
              Caption = #20837#24211#26102#38388
              DataBinding.FieldName = 'rksj'
              Width = 174
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object cbb_sjlx: TcxComboBox
          Left = 69
          Top = 5
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #38376#35786#25910#25454
            #20303#38498#39044#20132#25910#25454
            #20303#38498#32467#31639#25910#25454
            #20303#38498#25910#36153#25910#25454)
          Style.HotTrack = True
          Style.Shadow = False
          Style.TextStyle = [fsBold]
          Style.TransparentBorder = False
          StyleFocused.BorderStyle = ebsOffice11
          StyleFocused.ButtonStyle = btsOffice11
          TabOrder = 1
          Text = #38376#35786#25910#25454
          Width = 121
        end
        object edt_qh: TcxTextEdit
          Left = 224
          Top = 5
          Style.HotTrack = True
          Style.Shadow = False
          Style.TextStyle = [fsBold]
          TabOrder = 2
          Width = 99
        end
        object edt_zh: TcxTextEdit
          Left = 361
          Top = 6
          Style.HotTrack = True
          Style.Shadow = False
          Style.TextStyle = [fsBold]
          Style.TransparentBorder = False
          TabOrder = 3
          Width = 99
        end
        object Button4: TButton
          Left = 510
          Top = 4
          Width = 75
          Height = 25
          Caption = #30830#23450#32487#32493
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = Button4Click
        end
        object Button5: TButton
          Left = 610
          Top = 5
          Width = 75
          Height = 25
          Caption = #21024#38500
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = Button5Click
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #20837#24211#26597#35810
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 782
        Height = 41
        Align = alTop
        TabOrder = 0
        object Label6: TLabel
          Left = 24
          Top = 16
          Width = 60
          Height = 15
          Caption = #24320#22987#26085#26399
        end
        object Label7: TLabel
          Left = 224
          Top = 16
          Width = 60
          Height = 15
          Caption = #32467#26463#26085#26399
        end
        object ksrq: TcxDateEdit
          Left = 90
          Top = 11
          Style.BorderStyle = ebsOffice11
          Style.Shadow = False
          Style.TextStyle = [fsBold]
          TabOrder = 0
          Width = 121
        end
        object jsrq: TcxDateEdit
          Left = 296
          Top = 11
          Style.BorderStyle = ebsOffice11
          Style.Shadow = False
          Style.TextStyle = [fsBold]
          TabOrder = 1
          Width = 121
        end
        object Button6: TButton
          Left = 568
          Top = 10
          Width = 75
          Height = 25
          Caption = #26597#35810
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button6Click
        end
        object Button7: TButton
          Left = 664
          Top = 10
          Width = 75
          Height = 25
          Caption = #20837#24211#34917#25171
          TabOrder = 3
          OnClick = Button7Click
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 41
        Width = 782
        Height = 492
        Align = alClient
        TabOrder = 1
        object cxGrid2DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_sjrkcx
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skSum
              Position = spFooter
              Column = cxGrid2DBTableView1Column5
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1Column5
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGrid2DBTableView1Column5
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsSelection.CellMultiSelect = True
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.GroupRowStyle = grsOffice11
          object cxGrid2DBTableView1Column1: TcxGridDBColumn
            Caption = #20837#24211#21333#21495
            DataBinding.FieldName = 'rkdh'
            Width = 129
          end
          object cxGrid2DBTableView1Column2: TcxGridDBColumn
            Caption = #25910#25454#31867#22411
            DataBinding.FieldName = 'sjlxmc'
            Width = 96
          end
          object cxGrid2DBTableView1Column3: TcxGridDBColumn
            Caption = #36215#21495
            DataBinding.FieldName = 'sjqh'
            Width = 86
          end
          object cxGrid2DBTableView1Column4: TcxGridDBColumn
            Caption = #27490#21495
            DataBinding.FieldName = 'sjzh'
            Width = 87
          end
          object cxGrid2DBTableView1Column5: TcxGridDBColumn
            Caption = #20837#24211#25968#37327
            DataBinding.FieldName = 'rksl'
            Width = 80
          end
          object cxGrid2DBTableView1Column6: TcxGridDBColumn
            Caption = #21097#20313#25968#37327
            DataBinding.FieldName = 'sysl'
            Width = 84
          end
          object cxGrid2DBTableView1Column7: TcxGridDBColumn
            Caption = #20837#24211#26102#38388
            DataBinding.FieldName = 'rksj'
            Width = 88
          end
          object cxGrid2DBTableView1Column8: TcxGridDBColumn
            Caption = #25805#20316#21592
            DataBinding.FieldName = 'rkczymc'
            Width = 71
          end
          object cxGrid2DBTableView1Column9: TcxGridDBColumn
            Caption = #25805#20316#21592#20195#30721
            DataBinding.FieldName = 'rkczy'
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
  end
  object qry_sjrk: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from sjgl_sjrkmx where 1 = 2')
    Left = 296
    Top = 136
    object qry_sjrksjlxmc: TStringField
      FieldKind = fkLookup
      FieldName = 'sjlxmc'
      LookupDataSet = qry_sjlb
      LookupKeyFields = 'dm'
      LookupResultField = 'mc'
      KeyFields = 'sjlx'
      Lookup = True
    end
    object qry_sjrksjlx: TStringField
      FieldName = 'sjlx'
      Size = 4
    end
    object qry_sjrksjqh: TIntegerField
      FieldName = 'sjqh'
    end
    object qry_sjrksjzh: TIntegerField
      FieldName = 'sjzh'
    end
    object qry_sjrkrksj: TDateTimeField
      FieldName = 'rksj'
    end
    object qry_sjrkrkczy: TStringField
      FieldName = 'rkczy'
      FixedChar = True
      Size = 4
    end
    object qry_sjrkrkdh: TStringField
      FieldName = 'rkdh'
    end
    object qry_sjrkrksl: TIntegerField
      FieldName = 'rksl'
    end
    object qry_sjrksysl: TIntegerField
      FieldName = 'sysl'
    end
  end
  object ds_sjrk: TDataSource
    DataSet = qry_sjrk
    Left = 264
    Top = 136
  end
  object qry_sjlb: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select * from sys_sjlb')
    Left = 296
    Top = 176
  end
  object qry_sjrkcx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ksrq'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = '1'
      end
      item
        Name = 'jsrq'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = '1'
      end>
    SQL.Strings = (
      'select a.*,b.mc sjlxmc,c.mc rkczymc '
      'from sjgl_sjrkmx a,'
      'sys_sjlb b,'
      'sys_czy c'
      'where convert(char,rksj,112) >=:ksrq'
      'and convert(char,rksj,112) <= :jsrq'
      'and a.sjlx = b.dm'
      'and a.rkczy = c.dm')
    Left = 264
    Top = 232
  end
  object ds_sjrkcx: TDataSource
    DataSet = qry_sjrkcx
    Left = 296
    Top = 240
  end
  object SP_sjlyjc: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'sys_sjlyjc;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@sjlb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
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
      end
      item
        Name = '@zt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 30
        Value = Null
      end>
    Left = 197
    Top = 322
  end
  object GridppReport1: TGridppReport
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 416
    Top = 152
  end
end
