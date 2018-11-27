object frm_zcfy: Tfrm_zcfy
  Left = 269
  Top = 102
  BorderIcons = [biSystemMenu, biHelp]
  Caption = #21307#29983#32844#31216#19982#35786#26597#36153#20851#31995#32500#25252
  ClientHeight = 465
  ClientWidth = 1128
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 1128
    Height = 465
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 984
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_ghzl
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsView.GroupByBox = False
      Styles.Background = cxStyle1
      Styles.StyleSheet = GridTableViewStyleSheetSlate
      object cxGrid1DBTableView1dm: TcxGridDBColumn
        Caption = #32844#31216#20195#30721
        DataBinding.FieldName = 'dm'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Width = 70
      end
      object cxGrid1DBTableView1mc: TcxGridDBColumn
        Caption = #32844#31216#21517#31216
        DataBinding.FieldName = 'mc'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Width = 150
      end
      object cxGrid1DBTableView1ghfdm: TcxGridDBColumn
        Caption = #35786#26597#36153#20195#30721'('#26222#36890')'
        DataBinding.FieldName = 'ghfdm'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Width = 128
      end
      object cxGrid1DBTableView1fymc: TcxGridDBColumn
        Caption = #36153#29992#21517#31216'('#26222#36890')'
        DataBinding.FieldName = 'fymc'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Hidden = True
        Options.Filtering = False
        Options.Moving = False
        Styles.Content = cxStyle51
        Width = 129
      end
      object cxGrid1DBTableView1sfbz: TcxGridDBColumn
        Caption = #25910#36153#26631#20934'('#26222#36890')'
        DataBinding.FieldName = 'sfbz'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Width = 113
      end
      object cxGrid1DBTableView1jzghf: TcxGridDBColumn
        Caption = #35786#26597#36153#20195#30721'('#24613#35786')'
        DataBinding.FieldName = 'jzghfdm'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Width = 130
      end
      object cxGrid1DBTableView1jzfymc: TcxGridDBColumn
        Caption = #36153#29992#21517#31216'('#24613#35786')'
        DataBinding.FieldName = 'jzfymc'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Moving = False
        Styles.Content = cxStyle51
        Width = 131
      end
      object cxGrid1DBTableView1jzsfbz: TcxGridDBColumn
        Caption = #25910#36153#26631#20934'('#24613#35786')'
        DataBinding.FieldName = 'jzsfbz'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Width = 112
      end
      object cxGrid1DBTableView1fjfydm: TcxGridDBColumn
        Caption = #38468#21152#36153#29992#20195#30721
        DataBinding.FieldName = 'fjfydm'
        HeaderAlignmentHorz = taCenter
        MinWidth = 40
        Width = 150
      end
      object cxGrid1DBTableView1fjfymc: TcxGridDBColumn
        Caption = #38468#21152#36153#29992#21517#31216
        DataBinding.FieldName = 'fjfymc'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 115
      end
      object cxGrid1DBTableView1fjfysfbz: TcxGridDBColumn
        Caption = #38468#21152#36153#29992#25910#36153#26631#20934
        DataBinding.FieldName = 'fjsfbz'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object ds_ghzl: TDataSource
    DataSet = qry_ghzl
    Left = 400
    Top = 128
  end
  object qry_ghzl: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select dm,mc,ghfdm,jzghfdm,fjfydm from sys_zcdm'
      'order by dm')
    Left = 368
    Top = 128
    object qry_ghzldm: TStringField
      FieldName = 'dm'
      FixedChar = True
      Size = 2
    end
    object qry_ghzlmc: TStringField
      FieldName = 'mc'
      FixedChar = True
      Size = 12
    end
    object qry_ghzlghfdm: TStringField
      FieldName = 'ghfdm'
      FixedChar = True
      Size = 4
    end
    object qry_ghzljzghfdm: TStringField
      FieldName = 'jzghfdm'
      FixedChar = True
      Size = 4
    end
    object qry_ghzlfymc: TStringField
      FieldKind = fkLookup
      FieldName = 'fymc'
      LookupDataSet = qry_sfbz
      LookupKeyFields = 'fydm'
      LookupResultField = 'fymc'
      KeyFields = 'ghfdm'
      Lookup = True
    end
    object qry_ghzljzfymc: TStringField
      FieldKind = fkLookup
      FieldName = 'jzfymc'
      LookupDataSet = qry_sfbz
      LookupKeyFields = 'fydm'
      LookupResultField = 'fymc'
      KeyFields = 'jzghfdm'
      Lookup = True
    end
    object qry_ghzlsfbz: TFloatField
      FieldKind = fkLookup
      FieldName = 'sfbz'
      LookupDataSet = qry_sfbz
      LookupKeyFields = 'fydm'
      LookupResultField = 'sfbz'
      KeyFields = 'ghfdm'
      Lookup = True
    end
    object qry_ghzljzsfbz: TFloatField
      FieldKind = fkLookup
      FieldName = 'jzsfbz'
      LookupDataSet = qry_sfbz
      LookupKeyFields = 'fydm'
      LookupResultField = 'sfbz'
      KeyFields = 'jzghfdm'
      Lookup = True
    end
    object qry_ghzlfjfydm: TStringField
      FieldName = 'fjfydm'
    end
    object qry_ghzlfjfymc: TStringField
      FieldKind = fkLookup
      FieldName = 'fjfymc'
      LookupDataSet = qry_sfbz
      LookupKeyFields = 'fydm'
      LookupResultField = 'fymc'
      KeyFields = 'fjfydm'
      Lookup = True
    end
    object qry_ghzlfjsfbz: TFloatField
      FieldKind = fkLookup
      FieldName = 'fjsfbz'
      LookupDataSet = qry_sfbz
      LookupKeyFields = 'fydm'
      LookupResultField = 'sfbz'
      KeyFields = 'fjfydm'
      Lookup = True
    end
  end
  object qry_sfbz: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select fydm,fymc,sfbz from sys_kjsfxm where dldm in ('#39'1101'#39','#39'110' +
        '2'#39')'
      'order by fydm')
    Left = 488
    Top = 136
  end
  object ds_sfbz: TDataSource
    DataSet = qry_sfbz
    Left = 520
    Top = 136
  end
  object cxStyleRepository1: TcxStyleRepository
    Top = 24
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
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clSilver
      TextColor = clBlack
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15658734
      TextColor = clBlack
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clSilver
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle26: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 13886416
      TextColor = clBlack
    end
    object cxStyle27: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle28: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6592345
      Font.Charset = ANSI_CHARSET
      Font.Color = 13886416
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = [fsBold]
      TextColor = 13886416
    end
    object cxStyle29: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 2178849
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = #24494#36719#38597#40657
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle30: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16701634
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle31: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6592345
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle32: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = #24494#36719#38597#40657
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle33: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = 6592345
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      TextColor = 6592345
    end
    object cxStyle34: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6592345
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle35: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle36: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16775416
      TextColor = clBlack
    end
    object cxStyle37: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16443110
      TextColor = clBlack
    end
    object cxStyle38: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13749760
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle39: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14599344
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle40: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8519755
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 14481663
    end
    object cxStyle41: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13749760
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle42: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 191
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle43: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13749760
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle44: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle45: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 166
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle46: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle47: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clSilver
      TextColor = clBlack
    end
    object cxStyle48: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15461355
      TextColor = clBlack
    end
    object cxStyle49: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6908265
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle50: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle51: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle52: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6908265
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle53: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 85
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle54: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6908265
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle55: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle56: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 85
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle57: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle58: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle59: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle60: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle61: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle62: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle63: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle64: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle65: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle66: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle67: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle68: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle69: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle70: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle71: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15136253
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7346457
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = 7346457
    end
    object cxStyle72: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16436871
      TextColor = clBlack
    end
    object cxStyle73: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 8036607
      TextColor = clBlack
    end
    object cxStyle74: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8894686
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle75: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12180223
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle76: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 1262987
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle77: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8894686
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle78: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle79: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8894686
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle80: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle81: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle82: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle83: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 9234160
      TextColor = clBlack
    end
    object cxStyle84: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 11788021
      TextColor = clBlack
    end
    object cxStyle85: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle86: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11193702
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle87: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5737262
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle88: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle89: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5736750
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle90: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle91: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle92: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4615972
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle93: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle94: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16775416
      TextColor = clBlack
    end
    object cxStyle95: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16443110
      TextColor = clBlack
    end
    object cxStyle96: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13749760
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle97: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14599344
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle98: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8519755
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 14481663
    end
    object cxStyle99: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13749760
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle100: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 191
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle101: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13749760
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle102: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle103: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 166
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle104: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle105: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 11126946
      TextColor = clBlack
    end
    object cxStyle106: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 13886416
      TextColor = clBlack
    end
    object cxStyle107: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle108: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6592345
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 13886416
    end
    object cxStyle109: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 2178849
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle110: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle111: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6592345
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle112: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle113: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 6592345
    end
    object cxStyle114: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6592345
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle115: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle116: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 13154717
      TextColor = clBlack
    end
    object cxStyle117: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14933198
      TextColor = clBlack
    end
    object cxStyle118: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13154717
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle119: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9928789
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle120: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4276545
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle121: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13154717
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle122: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9928789
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle123: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13154717
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle124: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 9928789
    end
    object cxStyle125: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9928789
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object GridTableViewStyleSheetUserFormat1: TcxGridTableViewStyleSheet
      Caption = 'UserFormat1'
      Styles.Content = cxStyle71
      Styles.ContentEven = cxStyle72
      Styles.ContentOdd = cxStyle73
      Styles.Inactive = cxStyle78
      Styles.Selection = cxStyle81
      Styles.Footer = cxStyle74
      Styles.Group = cxStyle75
      Styles.GroupByBox = cxStyle76
      Styles.Header = cxStyle77
      Styles.Indicator = cxStyle79
      Styles.Preview = cxStyle80
      BuiltIn = True
    end
    object GridTableViewStyleSheetUserFormat2: TcxGridTableViewStyleSheet
      Caption = 'UserFormat2'
      Styles.Content = cxStyle82
      Styles.ContentEven = cxStyle83
      Styles.ContentOdd = cxStyle84
      Styles.Inactive = cxStyle89
      Styles.Selection = cxStyle92
      Styles.Footer = cxStyle85
      Styles.Group = cxStyle86
      Styles.GroupByBox = cxStyle87
      Styles.Header = cxStyle88
      Styles.Indicator = cxStyle90
      Styles.Preview = cxStyle91
      BuiltIn = True
    end
    object GridTableViewStyleSheetUserFormat3: TcxGridTableViewStyleSheet
      Caption = 'UserFormat3'
      Styles.Content = cxStyle93
      Styles.ContentEven = cxStyle94
      Styles.ContentOdd = cxStyle95
      Styles.Inactive = cxStyle100
      Styles.Selection = cxStyle103
      Styles.Footer = cxStyle96
      Styles.Group = cxStyle97
      Styles.GroupByBox = cxStyle98
      Styles.Header = cxStyle99
      Styles.Indicator = cxStyle101
      Styles.Preview = cxStyle102
      BuiltIn = True
    end
    object GridTableViewStyleSheetSpruce: TcxGridTableViewStyleSheet
      Caption = 'Spruce'
      Styles.Content = cxStyle104
      Styles.ContentEven = cxStyle105
      Styles.ContentOdd = cxStyle106
      Styles.Inactive = cxStyle111
      Styles.Selection = cxStyle114
      Styles.Footer = cxStyle107
      Styles.Group = cxStyle108
      Styles.GroupByBox = cxStyle109
      Styles.Header = cxStyle110
      Styles.Indicator = cxStyle112
      Styles.Preview = cxStyle113
      BuiltIn = True
    end
    object GridTableViewStyleSheetSlate: TcxGridTableViewStyleSheet
      Caption = 'Slate'
      Styles.Content = cxStyle115
      Styles.ContentEven = cxStyle116
      Styles.ContentOdd = cxStyle117
      Styles.Inactive = cxStyle122
      Styles.Selection = cxStyle125
      Styles.Footer = cxStyle118
      Styles.Group = cxStyle119
      Styles.GroupByBox = cxStyle120
      Styles.Header = cxStyle121
      Styles.Indicator = cxStyle123
      Styles.Preview = cxStyle124
      BuiltIn = True
    end
  end
end
