object frm_mzsf_dzd: Tfrm_mzsf_dzd
  Left = 0
  Top = 0
  Caption = #38376#35786#21307#29983#24037#20316#31449'-'#23548#35786#21333
  ClientHeight = 388
  ClientWidth = 746
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #26032#23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 746
    Height = 388
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnl2: TPanel
      Left = 0
      Top = 0
      Width = 746
      Height = 57
      Align = alTop
      TabOrder = 0
      object cxButton1: TcxButton
        Left = 533
        Top = 3
        Width = 90
        Height = 25
        Caption = #25171#21360'(&P)'
        TabOrder = 0
        OnClick = cxButton1Click
      end
      object cxButton2: TcxButton
        Left = 642
        Top = 3
        Width = 90
        Height = 25
        Caption = #36864#20986'(&C)'
        TabOrder = 1
        OnClick = cxButton2Click
      end
      object lab_xx: TcxLabel
        Left = 0
        Top = 34
        AutoSize = False
        Caption = #26465#30721#21495
        Height = 20
        Width = 746
      end
      object cb_dyyl: TcxCheckBox
        Left = 438
        Top = 4
        Caption = #25171#21360#39044#35272
        TabOrder = 3
        Visible = False
        Width = 89
      end
      object but_yncf: TcxButton
        Left = 17
        Top = 3
        Width = 192
        Height = 25
        Caption = #38498#20869#22788#26041#31867#21035#20462#25913
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = #26032#23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = but_yncfClick
      end
      object cb_fs: TcxCheckBox
        Left = 327
        Top = 4
        Caption = #24050#25910#36153#25171#21360
        TabOrder = 5
        OnClick = cb_fsClick
        Width = 105
      end
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 57
      Width = 746
      Height = 331
      Align = alClient
      TabOrder = 1
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds_cx_dzd
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.CellMultiSelect = True
        OptionsView.GroupByBox = False
        Styles.StyleSheet = GridTableViewStyleSheetUserFormat2
        object cxGrid1DBTableView1cfbh: TcxGridDBColumn
          Caption = #22788#26041#32534#21495
          DataBinding.FieldName = 'cfbh1'
          Visible = False
          GroupIndex = 0
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 200
        end
        object cxGrid1DBTableView1dybz: TcxGridDBColumn
          Caption = #26159#21542#25171#21360
          DataBinding.FieldName = 'dybz'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.OnChange = cxGrid1DBTableView1dybzPropertiesChange
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 50
        end
        object cxGrid1DBTableView1xmmc: TcxGridDBColumn
          Caption = #21517#31216
          DataBinding.FieldName = 'xmmc'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 150
        end
        object cxGrid1DBTableView1gg: TcxGridDBColumn
          Caption = #35268#26684
          DataBinding.FieldName = 'gg'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 80
        end
        object cxGrid1DBTableView1yplsj: TcxGridDBColumn
          Caption = #21333#20215
          DataBinding.FieldName = 'yplsj'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 40
        end
        object cxGrid1DBTableView1sl: TcxGridDBColumn
          Caption = #25968#37327
          DataBinding.FieldName = 'sl'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 60
        end
        object cxGrid1DBTableView1ypyf: TcxGridDBColumn
          Caption = #29992#27861
          DataBinding.FieldName = 'ypyf'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 40
        end
        object cxGrid1DBTableView1ypyl: TcxGridDBColumn
          Caption = #29992#37327
          DataBinding.FieldName = 'ypyl'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 50
        end
        object cxGrid1DBTableView1yytj: TcxGridDBColumn
          Caption = #29992#33647#36884#24452
          DataBinding.FieldName = 'yytj'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 60
        end
        object cxGrid1DBTableView1yplb: TcxGridDBColumn
          Caption = #31867#21035
          DataBinding.FieldName = 'yplb'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 60
        end
        object cxGrid1DBTableView1msbz: TcxGridDBColumn
          Caption = #25935#35797
          DataBinding.FieldName = 'msbz'
          PropertiesClassName = 'TcxCheckBoxProperties'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 40
        end
        object cxGrid1DBTableView1czks: TcxGridDBColumn
          Caption = #22788#32622#31185#23460
          DataBinding.FieldName = 'czks'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 80
        end
        object cxGrid1DBTableView1bz: TcxGridDBColumn
          Caption = #22791#27880
          DataBinding.FieldName = 'bz'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 150
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object ds_cx_dzd: TDataSource
    DataSet = sp_cx_dzd
    Left = 272
    Top = 37
  end
  object sp_cx_dzd: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    AfterScroll = sp_cx_dzdAfterScroll
    ProcedureName = 'mzdzbl_cx_mzdzd;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@cxfs'
        Attributes = [paNullable]
        DataType = ftInteger
        Size = 1
        Value = Null
      end
      item
        Name = '@cxlb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
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
        Name = '@kdys'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ghrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 240
    Top = 40
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 208
    Top = 40
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
  object sp_cx_mzyszcfdy: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'mzdzbl_cx_mzcfdy;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
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
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ghrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@cfbh'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 12
        Value = Null
      end
      item
        Name = '@xh'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 12
        Value = Null
      end
      item
        Name = '@brxm'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 20
        Value = Null
      end
      item
        Name = '@brxb'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 20
        Value = Null
      end
      item
        Name = '@brnl'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 20
        Value = Null
      end
      item
        Name = '@brdz'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 200
        Value = Null
      end
      item
        Name = '@cfzje'
        Attributes = [paNullable]
        DataType = ftBCD
        Direction = pdInputOutput
        NumericScale = 4
        Precision = 18
        Value = Null
      end
      item
        Name = '@sszje'
        Attributes = [paNullable]
        DataType = ftBCD
        Direction = pdInputOutput
        NumericScale = 4
        Precision = 18
        Value = Null
      end
      item
        Name = '@ksmc'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 50
        Value = Null
      end
      item
        Name = '@ysmc'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 50
        Value = Null
      end
      item
        Name = '@yszd'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 200
        Value = Null
      end
      item
        Name = '@cflx'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 20
        Value = Null
      end
      item
        Name = '@cflb'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 20
        Value = Null
      end
      item
        Name = '@bz'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 200
        Value = Null
      end
      item
        Name = '@cfjl'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end
      item
        Name = '@hjrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Direction = pdInputOutput
        Value = Null
      end>
    Left = 328
    Top = 40
  end
end
