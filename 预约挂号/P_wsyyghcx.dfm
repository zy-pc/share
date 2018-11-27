object frm_wsyyghcx: Tfrm_wsyyghcx
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #39044#32422#25346#21495#26597#35810
  ClientHeight = 527
  ClientWidth = 987
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 987
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 20
      Top = 14
      Width = 15
      Height = 15
      Caption = #25353
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 124
      Top = 14
      Width = 30
      Height = 15
      Caption = #26597#35810
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 505
      Top = 10
      Width = 15
      Height = 15
      Caption = #33267
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object RadioButton1: TRadioButton
      Left = 47
      Top = 1
      Width = 76
      Height = 17
      Caption = #25490#29677#21307#29983
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnExit = RadioButton1Exit
    end
    object RadioButton2: TRadioButton
      Left = 46
      Top = 22
      Width = 73
      Height = 17
      Caption = #39044#32422#19987#19994
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnExit = RadioButton1Exit
    end
    object DateTimePicker1: TDateTimePicker
      Left = 375
      Top = 8
      Width = 108
      Height = 26
      Date = 40899.430632094910000000
      Time = 40899.430632094910000000
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 4
    end
    object DateTimePicker2: TDateTimePicker
      Left = 539
      Top = 8
      Width = 116
      Height = 26
      Date = 40899.430632094910000000
      Time = 40899.430632094910000000
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 5
    end
    object Button1: TButton
      Left = 672
      Top = 7
      Width = 61
      Height = 25
      Caption = #26597#35810
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object cxname: TEdit
      Left = 169
      Top = 8
      Width = 104
      Height = 26
      Hint = #36755#20837#21307#29983#25110#30149#20154#30340#20195#30721#25110#21517#23383
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 3
    end
    object CheckBox1: TCheckBox
      Left = 286
      Top = 9
      Width = 84
      Height = 17
      Caption = #36873#25321#26085#26399
      TabOrder = 6
    end
    object Button2: TButton
      Left = 746
      Top = 7
      Width = 61
      Height = 25
      Caption = #36864#20986
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 987
    Height = 486
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 985
      Height = 484
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
        DataController.DataSource = ds_cx_ghxx
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = cxGrid1DBTableView1Column1
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        Styles.StyleSheet = GridTableViewStyleSheetUserFormat2
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = #38376#35786#21495
          DataBinding.FieldName = 'tmh'
          Width = 76
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = #22995#21517
          DataBinding.FieldName = 'brxm'
          Width = 57
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = #24615#21035
          DataBinding.FieldName = 'brxb'
          Width = 43
        end
        object cxGrid1DBTableView1Column4: TcxGridDBColumn
          Caption = #25346#21495#19987#19994
          DataBinding.FieldName = 'mc'
          Width = 75
        end
        object cxGrid1DBTableView1Column5: TcxGridDBColumn
          Caption = #39044#32422#21307#29983
          DataBinding.FieldName = 'ysmc'
          Width = 78
        end
        object cxGrid1DBTableView1Column6: TcxGridDBColumn
          Caption = #25346#21495#36153#37329#39069
          DataBinding.FieldName = 'yyghfje'
          PropertiesClassName = 'TcxTextEditProperties'
          OnGetDataText = cxGrid1DBTableView1Column6GetDataText
          Width = 53
        end
        object cxGrid1DBTableView1Column7: TcxGridDBColumn
          Caption = #35786#26597#36153#37329#39069
          DataBinding.FieldName = 'sfbz'
          PropertiesClassName = 'TcxTextEditProperties'
          OnGetDataText = cxGrid1DBTableView1Column7GetDataText
          Width = 57
        end
        object cxGrid1DBTableView1Column8: TcxGridDBColumn
          Caption = #39044#32422#24418#24335
          DataBinding.FieldName = 'yylb'
          Width = 67
        end
        object cxGrid1DBTableView1Column10: TcxGridDBColumn
          Caption = #39044#32422#26102#38388
          DataBinding.FieldName = 'yyrq'
          Width = 119
        end
        object cxGrid1DBTableView1Column11: TcxGridDBColumn
          Caption = #30331#35760#26102#38388
          DataBinding.FieldName = 'djrq'
          Width = 111
        end
        object cxGrid1DBTableView1Column9: TcxGridDBColumn
          Caption = #26159#21542#25910#36153
          DataBinding.FieldName = 'sfsf'
          Width = 70
        end
        object cxGrid1DBTableView1Column12: TcxGridDBColumn
          Caption = #25163#26426#21495#30721
          DataBinding.FieldName = 'lxdh'
          Width = 82
        end
        object cxgrdbclmnGrid1DBTableView1Column13: TcxGridDBColumn
          Caption = #39044#32422#25805#20316#21592
          DataBinding.FieldName = 'czymc'
          Width = 83
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object sp_cx_ghxx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'yygh_cx_ghxx'
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
        Size = 50
        Value = '111'
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end
      item
        Name = '@tjfs'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@cksj'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 296
    Top = 376
  end
  object ds_cx_ghxx: TDataSource
    DataSet = sp_cx_ghxx
    Left = 248
    Top = 408
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
