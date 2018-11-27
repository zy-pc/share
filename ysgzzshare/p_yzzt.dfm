object Frm_yzzt: TFrm_yzzt
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #35843#29992#21307#22065#27169#26495
  ClientHeight = 610
  ClientWidth = 1018
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 0
    Top = 275
    Width = 1018
    Height = 9
    Cursor = crVSplit
    Align = alTop
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1018
    Height = 35
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object lbl1: TLabel
      Left = 13
      Top = 8
      Width = 60
      Height = 15
      Caption = #27169#26495#21517#31216
    end
    object btChange: TcxButton
      Left = 506
      Top = 4
      Width = 100
      Height = 25
      Caption = #20462#25913#27169#26495'(&C)'
      TabOrder = 0
      OnClick = btChangeClick
      LookAndFeel.NativeStyle = True
    end
    object btDelete: TcxButton
      Left = 605
      Top = 4
      Width = 100
      Height = 25
      Caption = #21024#38500#27169#26495'(&D)'
      TabOrder = 1
      OnClick = btDeleteClick
      LookAndFeel.NativeStyle = True
    end
    object btDetailDel: TcxButton
      Left = 704
      Top = 4
      Width = 100
      Height = 25
      Caption = #21024#38500#26126#32454'(&M)'
      TabOrder = 2
      OnClick = btDetailDelClick
      LookAndFeel.NativeStyle = True
    end
    object bt_zt: TcxButton
      Left = 803
      Top = 5
      Width = 100
      Height = 25
      Caption = #36873#25321#27169#26495'(&Z)'
      TabOrder = 3
      OnClick = bt_ztClick
      LookAndFeel.NativeStyle = True
    end
    object btExit: TcxButton
      Left = 902
      Top = 4
      Width = 100
      Height = 25
      Cancel = True
      Caption = #36864#20986'[&X]'
      TabOrder = 4
      OnClick = btExitClick
      LookAndFeel.NativeStyle = True
    end
    object edt1: TEdit
      Left = 77
      Top = 6
      Width = 134
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 5
      OnChange = edt1Change
    end
    object btn_NotSelectALL: TButton
      Left = 238
      Top = 4
      Width = 75
      Height = 25
      Caption = #21453#36873
      TabOrder = 6
      OnClick = btn_NotSelectALLClick
    end
    object btn_SelectALL: TButton
      Left = 319
      Top = 4
      Width = 75
      Height = 25
      Caption = #20840#36873
      TabOrder = 7
      OnClick = btn_SelectALLClick
    end
  end
  object gcyzlist: TcxGrid
    Left = 0
    Top = 35
    Width = 1018
    Height = 240
    Align = alTop
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    object gvyzlist: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnCellClick = gvyzlistCellClick
      DataController.DataSource = DS_zt
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.DataRowHeight = 24
      OptionsView.GroupByBox = False
      Styles.StyleSheet = GridTableViewStyleSheetMarinehighcolor
      object gvyzlistztid: TcxGridDBColumn
        Caption = #27169#26495#21495
        DataBinding.FieldName = 'ztid'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Width = 61
      end
      object gvyzlistztmc: TcxGridDBColumn
        Caption = #27169#26495#21517#31216
        DataBinding.FieldName = 'ztmc'
        HeaderAlignmentHorz = taCenter
        Width = 200
      end
      object gvyzlistksdm: TcxGridDBColumn
        Caption = #31185#23460
        DataBinding.FieldName = 'ksdm'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
      end
      object gvyzlistColumn5: TcxGridDBColumn
        Caption = #31185#23460#21517#31216
        DataBinding.FieldName = 'ksmc'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 120
      end
      object gvyzlistbqdm: TcxGridDBColumn
        Caption = #30149#21306
        DataBinding.FieldName = 'bqdm'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
      end
      object gvyzlistColumn4: TcxGridDBColumn
        Caption = #30149#21306#21517#31216
        DataBinding.FieldName = 'bqmc'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 120
      end
      object gvyzlistysdm: TcxGridDBColumn
        Caption = #21307#29983
        DataBinding.FieldName = 'ysdm'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 110
      end
      object gvyzlistColumn1: TcxGridDBColumn
        Caption = #31867#21035
        DataBinding.FieldName = 'mblb'
        GroupIndex = 0
        HeaderAlignmentHorz = taCenter
        Width = 98
      end
      object gvyzlistColumn2: TcxGridDBColumn
        Caption = #38376#35786
        DataBinding.FieldName = 'mzbz'
        PropertiesClassName = 'TcxCheckBoxProperties'
        HeaderAlignmentHorz = taCenter
        Width = 69
      end
      object gvyzlistColumn3: TcxGridDBColumn
        Caption = #20303#38498
        DataBinding.FieldName = 'zybz'
        PropertiesClassName = 'TcxCheckBoxProperties'
        HeaderAlignmentHorz = taCenter
        Width = 71
      end
    end
    object gcyzlistLevel1: TcxGridLevel
      GridView = gvyzlist
    end
  end
  object gcdetail: TcxGrid
    Left = 0
    Top = 284
    Width = 1018
    Height = 326
    Align = alClient
    TabOrder = 2
    LookAndFeel.Kind = lfFlat
    ExplicitLeft = 24
    ExplicitTop = 290
    object gvdetail: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnCellClick = gvdetailCellClick
      DataController.DataSource = ds_ztmx
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.DataRowHeight = 24
      OptionsView.GroupByBox = False
      Styles.StyleSheet = StylesDetail
      object cxgrdbclmngxbz: TcxGridDBColumn
        Caption = #21246#36873
        DataBinding.FieldName = 'gxbz'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Options.Filtering = False
        Options.IncSearch = False
      end
      object cxGridDBColumn1: TcxGridDBColumn
        Caption = #23646#24615
        DataBinding.FieldName = 'yzsx'
        Visible = False
        GroupIndex = 0
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 61
      end
      object cxGridDBColumn2: TcxGridDBColumn
        Caption = #31867#21035
        DataBinding.FieldName = 'lb'
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object cxGridDBColumn3: TcxGridDBColumn
        Caption = #20195#30721
        DataBinding.FieldName = 'xmdm'
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGridDBColumn4: TcxGridDBColumn
        Caption = #39033#30446#21517#31216
        DataBinding.FieldName = 'xmmc'
        HeaderAlignmentHorz = taCenter
        Width = 220
      end
      object cxGridDBColumn5: TcxGridDBColumn
        Caption = #25968#37327
        DataBinding.FieldName = 'sl'
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object cxGridDBColumn6: TcxGridDBColumn
        Caption = #21333#20301
        DataBinding.FieldName = 'dw'
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object gvdetailColumn1: TcxGridDBColumn
        Caption = #29992#37327#21333#20301
        DataBinding.FieldName = 'yldw'
        HeaderAlignmentHorz = taCenter
        Width = 90
      end
      object gvdetailColumn2: TcxGridDBColumn
        Caption = #29992#27861
        DataBinding.FieldName = 'ypyf'
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object gvdetailColumn3: TcxGridDBColumn
        Caption = #29992#33647#36884#24452
        DataBinding.FieldName = 'yytj'
        HeaderAlignmentHorz = taCenter
        Width = 90
      end
      object gvdetailColumn4: TcxGridDBColumn
        Caption = #35268#26684
        DataBinding.FieldName = 'gg'
        HeaderAlignmentHorz = taCenter
        Width = 150
      end
      object gvdetailColumn5: TcxGridDBColumn
        Caption = #26816#26597#26679#26412
        DataBinding.FieldName = 'jyyb'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 100
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = gvdetail
    end
  end
  object Qry_zt: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from zybl_ztdm')
    Left = 215
    Top = 113
  end
  object DS_zt: TDataSource
    DataSet = Qry_zt
    OnDataChange = DS_ztDataChange
    Left = 183
    Top = 112
  end
  object Qry_ztmx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'ztid'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from zybl_ztmx where ztid=:ztid')
    Left = 191
    Top = 314
  end
  object ds_ztmx: TDataSource
    DataSet = Qry_ztmx
    Left = 228
    Top = 315
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 464
    Top = 384
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 13160660
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWhite
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 13160660
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10841658
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6956042
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 6956042
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6956042
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 11126946
      TextColor = clBlack
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 13886416
      TextColor = clBlack
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6592345
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 13886416
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 2178849
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6592345
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 6592345
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6592345
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14213320
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12107912
      TextColor = clBlack
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14213320
      TextColor = clBlack
    end
    object cxStyle26: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12107912
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle27: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8949832
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      TextColor = clSilver
    end
    object cxStyle28: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4673068
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle29: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12107912
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle30: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6053956
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle31: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12107912
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle32: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14213320
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clNavy
    end
    object cxStyle33: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6053956
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object StylesDetail: TcxGridTableViewStyleSheet
      Caption = 'Spruce'
      Styles.Content = cxStyle12
      Styles.ContentEven = cxStyle13
      Styles.ContentOdd = cxStyle14
      Styles.Inactive = cxStyle19
      Styles.Selection = cxStyle22
      Styles.Footer = cxStyle15
      Styles.Group = cxStyle16
      Styles.GroupByBox = cxStyle17
      Styles.Indicator = cxStyle20
      Styles.Preview = cxStyle21
      BuiltIn = True
    end
    object GridTableViewStyleSheetMarinehighcolor: TcxGridTableViewStyleSheet
      Caption = 'Marine (high color)'
      Styles.Content = cxStyle23
      Styles.ContentEven = cxStyle24
      Styles.ContentOdd = cxStyle25
      Styles.Inactive = cxStyle30
      Styles.Selection = cxStyle33
      Styles.Footer = cxStyle26
      Styles.Group = cxStyle27
      Styles.GroupByBox = cxStyle28
      Styles.Indicator = cxStyle31
      Styles.Preview = cxStyle32
      BuiltIn = True
    end
  end
  object cmdpub: TADOCommand
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 264
    Top = 112
  end
  object sp_yzmbdr: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'mzdzbl_yzmbdr;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@mbh'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end
      item
        Name = '@xyfksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@zyfksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@cyfksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@kdys'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@kdrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 240
    Top = 192
  end
  object qry_t: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 744
    Top = 352
  end
end
