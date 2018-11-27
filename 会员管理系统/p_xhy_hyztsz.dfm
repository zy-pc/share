object frm_xhy_hyztsz: Tfrm_xhy_hyztsz
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #20250#21592#20572'/'#21551#29992#29366#24577#35774#32622
  ClientHeight = 623
  ClientWidth = 853
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 120
  TextHeight = 18
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 853
    Height = 89
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 810
      Height = 54
      Caption = 
        #20250#21592#20572'/'#21551#29992#29366#24577#35774#32622':'#35813#21151#33021#29992#20110#24050#32463#27880#20876#30340#20250#21592#20449#24687#30340#21551#29992#21450#20572#29992#25805#20316#12290#19979#26041#36755#20837#20250#21592#21345#21495#21518#13#10#33719#21462#20250#21592#22522#26412#20449#24687#12290#36873#20013#20250#21592#36827#34892#35774#32622#21551#29992 +
        #25110#20572#29992#12290#20572#29992#21518#30340#20250#21592#19981#33021#22312#36827#34892#35813#20250#21592#30340#28040#36153#21450#26597#35810#25805#20316#13#10#26816#32034#26465#20214#21487#20197#20026#20250#21592#21517#23383'/'#20250#21592#21345#21495'/'#36523#20221#35777#21495#12304#20572#27490#30340#29992#25143#21015#34920#20026#32418#33394#12305
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 89
    Width = 853
    Height = 534
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object pnl3: TPanel
      Left = 2
      Top = 2
      Width = 849
      Height = 55
      Align = alTop
      TabOrder = 0
      object Label2: TLabel
        Left = 14
        Top = 16
        Width = 72
        Height = 18
        Caption = #26816#32034#26465#20214
      end
      object e_jstj: TEdit
        Left = 92
        Top = 13
        Width = 181
        Height = 26
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 0
        OnKeyPress = e_jstjKeyPress
      end
    end
    object cxbut_cx: TcxButton
      Left = 288
      Top = 16
      Width = 97
      Height = 25
      Caption = #26597#35810
      TabOrder = 1
      OnClick = cxbut_cxClick
    end
    object cxbut_qy: TcxButton
      Left = 518
      Top = 16
      Width = 97
      Height = 25
      Caption = #21551#29992
      TabOrder = 2
      OnClick = cxbut_qyClick
    end
    object cxbut_ty: TcxButton
      Left = 632
      Top = 16
      Width = 97
      Height = 25
      Caption = #20572#29992
      TabOrder = 3
      OnClick = cxbut_tyClick
    end
    object cxbut_qkmm: TcxButton
      Left = 400
      Top = 16
      Width = 97
      Height = 25
      Caption = #28165#31354#23494#30721
      TabOrder = 4
      OnClick = cxbut_qkmmClick
    end
    object cxbut_close: TcxButton
      Left = 744
      Top = 16
      Width = 97
      Height = 25
      Caption = #36864#20986
      TabOrder = 5
      OnClick = cxbut_closeClick
    end
    object cxGrid1: TcxGrid
      Left = 2
      Top = 57
      Width = 849
      Height = 475
      Align = alClient
      PopupMenu = pm_gn
      TabOrder = 6
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
        DataController.DataSource = ds_cx_hyxx
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnMoving = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        Styles.Header = cxStyle21
        object cxgrdbclmnGrid1DBTableView1Column12: TcxGridDBColumn
          Caption = #29366#24577
          DataBinding.FieldName = 'tybz'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 45
        end
        object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = #26465#30721#21495
          DataBinding.FieldName = 'tmh'
          Options.Editing = False
          Width = 101
        end
        object cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = #20250#21592#22995#21517
          DataBinding.FieldName = 'brxm'
          Options.Editing = False
          Width = 93
        end
        object cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = #24615#21035
          DataBinding.FieldName = 'brxb'
          Options.Editing = False
          Width = 48
        end
        object cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn
          Caption = #36523#20221#35777#21495
          DataBinding.FieldName = 'sfzhm'
          Options.Editing = False
          Width = 166
        end
        object cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn
          Caption = #24180#40836
          DataBinding.FieldName = 'brnl'
          Options.Editing = False
          Width = 48
        end
        object cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn
          Caption = #24314#21345#26085#26399
          DataBinding.FieldName = 'jkrq'
          Options.Editing = False
          Width = 103
        end
        object cxgrdbclmnGrid1DBTableView1Column11: TcxGridDBColumn
          Caption = #20250#21592#31867#21035
          DataBinding.FieldName = 'fylb'
          Options.Editing = False
          Width = 88
        end
        object cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn
          Caption = #31821#36143
          DataBinding.FieldName = 'brjg'
          Options.Editing = False
          Width = 70
        end
        object cxgrdbclmnGrid1DBTableView1Column8: TcxGridDBColumn
          Caption = #30005#35805
          DataBinding.FieldName = 'brdh'
          Options.Editing = False
          Width = 134
        end
        object cxgrdbclmnGrid1DBTableView1Column9: TcxGridDBColumn
          Caption = #20250#21592#22320#22336
          DataBinding.FieldName = 'brdz'
          Options.Editing = False
          Width = 232
        end
        object cxgrdbclmnGrid1DBTableView1Column10: TcxGridDBColumn
          Caption = #27665#26063
          DataBinding.FieldName = 'brmz'
          Options.Editing = False
          Width = 56
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object sp_cx_hyxx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'hy_cx_kyh'
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
        Size = 9
        Value = Null
      end>
    Left = 352
    Top = 296
  end
  object ds_cx_hyxx: TDataSource
    DataSet = sp_cx_hyxx
    Left = 392
    Top = 296
  end
  object cxStyleRepository1: TcxStyleRepository
    object cxStyle1: TcxStyle
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14213320
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12107912
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14213320
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12107912
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8949832
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4673068
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12107912
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6053956
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12107912
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14213320
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clNavy
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6053956
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16775416
      TextColor = clBlack
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16443110
      TextColor = clBlack
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13749760
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14599344
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8519755
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 14481663
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13749760
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 191
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13749760
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 166
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object GridTableViewStyleSheetUserFormat3: TcxGridTableViewStyleSheet
      Caption = 'UserFormat3'
      Styles.Content = cxStyle13
      Styles.ContentEven = cxStyle14
      Styles.ContentOdd = cxStyle15
      Styles.Inactive = cxStyle20
      Styles.Selection = cxStyle23
      Styles.Footer = cxStyle16
      Styles.Group = cxStyle17
      Styles.GroupByBox = cxStyle18
      Styles.Header = cxStyle19
      Styles.Indicator = cxStyle21
      Styles.Preview = cxStyle22
      BuiltIn = True
    end
  end
  object sp_up_tykyh: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'hy_in_tykyh'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 9
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
        Name = '@czlb'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@tyyy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
        Value = Null
      end
      item
        Name = '@zt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 50
        Value = Null
      end>
    Left = 552
    Top = 176
  end
  object pm_gn: TPopupMenu
    Left = 352
    Top = 232
    object mniN1: TMenuItem
      Caption = #28165#31354#23494#30721
      OnClick = mniN1Click
    end
    object mniN2: TMenuItem
      Caption = #21551#29992
      OnClick = mniN2Click
    end
    object mniN3: TMenuItem
      Caption = #20572#29992
      OnClick = mniN3Click
    end
  end
end
