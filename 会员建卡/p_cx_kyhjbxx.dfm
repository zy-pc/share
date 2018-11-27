object frm_cx_kyhjbxx: Tfrm_cx_kyhjbxx
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #22522#26412#20449#24687#26597#35810
  ClientHeight = 572
  ClientWidth = 1051
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1051
    Height = 572
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 1051
      Height = 64
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 44
        Top = 21
        Width = 216
        Height = 16
        Caption = #21345#21495','#22995#21517','#20303#22336#25110#32773#36523#20221#35777#21495':'
      end
      object edit_str: TcxTextEdit
        Left = 264
        Top = 18
        Hint = #21345#21495','#22995#21517','#20303#22336','#36523#20221#35777#21495
        TabOrder = 0
        OnKeyPress = edit_strKeyPress
        Width = 456
      end
      object cxButton1: TcxButton
        Left = 768
        Top = 18
        Width = 75
        Height = 25
        Caption = #26597#35810#12304'&F'#12305
        TabOrder = 1
        OnClick = cxButton1Click
      end
      object cxButton2: TcxButton
        Left = 912
        Top = 18
        Width = 75
        Height = 25
        Caption = #36864#20986#12304'&C'#12305
        TabOrder = 2
        OnClick = cxButton2Click
      end
    end
    object cxGrid2: TcxGrid
      Left = 0
      Top = 64
      Width = 1051
      Height = 508
      Align = alClient
      TabOrder = 1
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds_kyh
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = #24635#20849':0'
            Kind = skCount
            FieldName = 'tmh'
            Column = cxGridDBTableView1tmh
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellMultiSelect = True
        OptionsView.Footer = True
        Styles.StyleSheet = cxGridTableViewStyleSheet1
        object cxGridDBTableView1lb: TcxGridDBColumn
          Caption = #21345#31867#21035
          DataBinding.FieldName = 'lb'
          Visible = False
          GroupIndex = 0
        end
        object cxGridDBTableView1brxm: TcxGridDBColumn
          Caption = #22995#21517
          DataBinding.FieldName = 'brxm'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxGridDBTableView1tmh: TcxGridDBColumn
          Caption = #21345#21495
          DataBinding.FieldName = 'tmh'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 100
        end
        object cxGridDBTableView1brxb: TcxGridDBColumn
          Caption = #24615#21035
          DataBinding.FieldName = 'brxb'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 50
        end
        object cxGridDBTableView1brxx: TcxGridDBColumn
          Caption = #34880#22411
          DataBinding.FieldName = 'brxx'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 50
        end
        object cxGridDBTableView1csrq: TcxGridDBColumn
          Caption = #20986#29983#26085#26399
          DataBinding.FieldName = 'csrq'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 100
        end
        object cxGridDBTableView1brnl: TcxGridDBColumn
          Caption = #24180#40836
          DataBinding.FieldName = 'brnl'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 60
        end
        object cxGridDBTableView1brsf: TcxGridDBColumn
          Caption = #30465#20221
          DataBinding.FieldName = 'brsf'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 60
        end
        object cxGridDBTableView1brjg: TcxGridDBColumn
          Caption = #31821#36143
          DataBinding.FieldName = 'brjg'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 60
        end
        object cxGridDBTableView1brmz: TcxGridDBColumn
          Caption = #27665#26063
          DataBinding.FieldName = 'brmz'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 60
        end
        object cxGridDBTableView1brdz: TcxGridDBColumn
          Caption = #22320#22336
          DataBinding.FieldName = 'brdz'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 60
        end
        object cxGridDBTableView1brzy: TcxGridDBColumn
          Caption = #32844#19994
          DataBinding.FieldName = 'brzy'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 60
        end
        object cxGridDBTableView1fylb: TcxGridDBColumn
          Caption = #31867#21035
          DataBinding.FieldName = 'fylb'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 60
        end
        object cxGridDBTableView1dbr: TcxGridDBColumn
          Caption = #25285#20445#20154
          DataBinding.FieldName = 'dbr'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 60
        end
        object cxGridDBTableView1dbrdz: TcxGridDBColumn
          Caption = #25285#20445#20154#22320#22336
          DataBinding.FieldName = 'dbrdz'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 100
        end
        object cxGridDBTableView1brdh: TcxGridDBColumn
          Caption = #30149#20154#30005#35805
          DataBinding.FieldName = 'brdh'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBTableView1sfzhm: TcxGridDBColumn
          Caption = #36523#20221#35777#21495#30721
          DataBinding.FieldName = 'sfzhm'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxGridDBTableView1yjze: TcxGridDBColumn
          Caption = #39044#20132#24635#39069
          DataBinding.FieldName = 'yjze'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 70
        end
        object cxGridDBTableView1zfy: TcxGridDBColumn
          Caption = #24635#36153#29992
          DataBinding.FieldName = 'zfy'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 70
        end
        object cxGridDBTableView1syje: TcxGridDBColumn
          Caption = #20351#29992#37329#39069
          DataBinding.FieldName = 'syje'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 70
        end
        object cxGridDBTableView1yhbl: TcxGridDBColumn
          Caption = #20248#24800#27604#20363
          DataBinding.FieldName = 'yhbl'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 70
        end
        object cxGridDBTableView1brgmyw: TcxGridDBColumn
          Caption = #36807#25935#33647#29289
          DataBinding.FieldName = 'brgmyw'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 100
        end
        object cxGridDBTableView1brjwbs: TcxGridDBColumn
          Caption = #26082#24448#30149#21490
          DataBinding.FieldName = 'brjwbs'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 100
        end
        object cxGridDBTableView1brjzs: TcxGridDBColumn
          Caption = #23478#26063#21490
          DataBinding.FieldName = 'brjzs'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 100
        end
        object cxGridDBTableView1bz: TcxGridDBColumn
          Caption = #22791#27880
          DataBinding.FieldName = 'bz'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    object cxStyle1: TcxStyle
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 9234160
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 11788021
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11193702
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5737262
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5736750
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4615972
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 9234160
      TextColor = clBlack
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 11788021
      TextColor = clBlack
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11193702
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5737262
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5736750
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4615972
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle26: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 9234160
      TextColor = clBlack
    end
    object cxStyle27: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 11788021
      TextColor = clBlack
    end
    object cxStyle28: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle29: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11193702
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle30: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5737262
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle31: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle32: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5736750
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle33: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle34: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle35: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4615972
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet
      Caption = 'UserFormat2'
      Styles.Content = cxStyle25
      Styles.ContentEven = cxStyle26
      Styles.ContentOdd = cxStyle27
      Styles.Inactive = cxStyle32
      Styles.Selection = cxStyle35
      Styles.Footer = cxStyle28
      Styles.Group = cxStyle29
      Styles.GroupByBox = cxStyle30
      Styles.Header = cxStyle31
      Styles.Indicator = cxStyle33
      Styles.Preview = cxStyle34
      BuiltIn = True
    end
  end
  object ds_kyh: TDataSource
    DataSet = sp_cx_kyhjbxx
    Left = 280
    Top = 264
  end
  object sp_cx_kyhjbxx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    AfterScroll = sp_cx_kyhjbxxAfterScroll
    ProcedureName = 'mzsf_cx_kyhjbxx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@str'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 240
    Top = 264
  end
end
