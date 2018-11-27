object frm_hint: Tfrm_hint
  Left = 691
  Top = 204
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frm_hint'
  ClientHeight = 195
  ClientWidth = 162
  Color = clInfoBk
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  OnDblClick = FormDblClick
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 162
    Height = 25
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = #33647#21517
    Color = clMaroon
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 25
    Width = 162
    Height = 170
    Align = alClient
    BorderStyle = cxcbsNone
    TabOrder = 1
    TabStop = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_yppg
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.FocusRect = False
      OptionsView.ScrollBars = ssNone
      OptionsView.DataRowHeight = 25
      OptionsView.ExpandButtonsForEmptyDetails = False
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 25
      Styles.StyleSheet = GridTableViewStyleSheetUserFormat1
      object cxGrid1DBTableView1pgbs: TcxGridDBColumn
        Caption = #26631#35782
        DataBinding.FieldName = 'pgbs'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Options.Focusing = False
        Options.IncSearch = False
        Options.Grouping = False
        Width = 80
      end
      object cxGrid1DBTableView1yppg: TcxGridDBColumn
        Caption = #21697#35268
        DataBinding.FieldName = 'yppg'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Options.Focusing = False
        Options.IncSearch = False
        Options.Grouping = False
        Width = 68
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 16
    Top = 48
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15136253
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7346457
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = 7346457
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16436871
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8036607
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8894686
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12180223
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 1262987
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8894686
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8894686
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoBk
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object GridTableViewStyleSheetUserFormat1: TcxGridTableViewStyleSheet
      Caption = 'UserFormat1'
      Styles.Content = cxStyle1
      Styles.ContentEven = cxStyle2
      Styles.ContentOdd = cxStyle3
      Styles.Inactive = cxStyle8
      Styles.Selection = cxStyle11
      Styles.Footer = cxStyle4
      Styles.Group = cxStyle5
      Styles.GroupByBox = cxStyle6
      Styles.Header = cxStyle7
      Styles.Indicator = cxStyle9
      Styles.Preview = cxStyle10
      BuiltIn = True
    end
  end
  object ds_yppg: TDataSource
    DataSet = sp_cx_yppg
    Left = 96
    Top = 48
  end
  object sp_cx_yppg: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'xyf_cx_yppg;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@yfdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ypdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 14
        Value = Null
      end>
    Left = 56
    Top = 48
  end
  object sp_yz_yppg: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'xyf_yz_yppgsz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@yfdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ypdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 14
        Value = Null
      end
      item
        Name = '@ypsl'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@bs_str'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 10
        Value = Null
      end>
    Left = 13
    Top = 101
  end
  object sp_cx_pgbs: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'xyf_cx_yppgsz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@yfdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ypdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 14
        Value = Null
      end>
    Left = 53
    Top = 101
  end
  object ds_cx_pgbs: TDataSource
    DataSet = sp_cx_yppg
    Left = 96
    Top = 104
  end
end
