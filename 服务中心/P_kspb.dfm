object frm_kspb: Tfrm_kspb
  Left = 179
  Top = 126
  BorderIcons = [biSystemMenu, biHelp]
  Caption = #31185#23460#25490#29677#24773#20917
  ClientHeight = 598
  ClientWidth = 1239
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 192
    Height = 598
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitHeight = 570
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 192
      Height = 598
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 570
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds_ghzy
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        Styles.StyleSheet = GridTableViewStyleSheetSpruce
        object cxGrid1DBTableView1dm: TcxGridDBColumn
          Caption = #32534#30721
          DataBinding.FieldName = 'dm'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          MinWidth = 60
          Options.Editing = False
          Options.Filtering = False
        end
        object cxGrid1DBTableView1mc: TcxGridDBColumn
          Caption = #19987#19994#21517#31216
          DataBinding.FieldName = 'mc'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          MinWidth = 60
          Options.Editing = False
          Options.Filtering = False
          Width = 123
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object Panel2: TPanel
    Left = 192
    Top = 0
    Width = 1047
    Height = 598
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 184
    object Label1: TLabel
      Left = 132
      Top = 16
      Width = 48
      Height = 16
      Caption = #26143#26399#19968
    end
    object Label2: TLabel
      Left = 393
      Top = 16
      Width = 48
      Height = 16
      Caption = #26143#26399#20108
    end
    object Label3: TLabel
      Left = 641
      Top = 16
      Width = 48
      Height = 16
      Caption = #26143#26399#19977
    end
    object Label4: TLabel
      Left = 905
      Top = 16
      Width = 48
      Height = 16
      Caption = #26143#26399#22235
    end
    object Label5: TLabel
      Left = 132
      Top = 301
      Width = 48
      Height = 16
      Caption = #26143#26399#20116
    end
    object Label6: TLabel
      Left = 393
      Top = 301
      Width = 48
      Height = 16
      Caption = #26143#26399#20845
    end
    object Label7: TLabel
      Left = 641
      Top = 301
      Width = 48
      Height = 16
      Caption = #26143#26399#26085
    end
    object Shape5: TShape
      Left = 0
      Top = 45
      Width = 1042
      Height = 3
      Brush.Color = 11106843
      Pen.Color = 12171775
    end
    object Shape1: TShape
      Left = 0
      Top = 285
      Width = 1042
      Height = 3
      Brush.Color = 11106843
      Pen.Color = 12171775
    end
    object Shape2: TShape
      Left = 0
      Top = 165
      Width = 1042
      Height = 3
      Brush.Color = 11106843
      Pen.Color = 12171775
    end
    object Shape4: TShape
      Left = 0
      Top = 330
      Width = 1042
      Height = 3
      Brush.Color = 11106843
      Pen.Color = 12171775
    end
    object Shape6: TShape
      Left = 0
      Top = 450
      Width = 1042
      Height = 3
      Brush.Color = 11106843
      Pen.Color = 12171775
    end
    object Shape7: TShape
      Left = 42
      Top = -30
      Width = 3
      Height = 600
      Brush.Color = 11106843
      Pen.Color = 16577773
    end
    object Shape8: TShape
      Left = 292
      Top = -30
      Width = 3
      Height = 600
      Brush.Color = 11106843
      Pen.Color = 16577773
    end
    object Shape9: TShape
      Left = 542
      Top = -30
      Width = 3
      Height = 600
      Brush.Color = 11106843
      Pen.Color = 16577773
    end
    object Shape10: TShape
      Left = 792
      Top = -30
      Width = 3
      Height = 600
      Brush.Color = 11106843
      Pen.Color = 16577773
    end
    object Label8: TLabel
      Left = 6
      Top = 98
      Width = 32
      Height = 16
      Caption = #19978#21320
    end
    object Label9: TLabel
      Left = 6
      Top = 219
      Width = 32
      Height = 16
      Caption = #19979#21320
    end
    object Label10: TLabel
      Left = 6
      Top = 384
      Width = 32
      Height = 16
      Caption = #19978#21320
    end
    object Label11: TLabel
      Left = 6
      Top = 508
      Width = 32
      Height = 16
      Caption = #19979#21320
    end
    object xq11: TLabel
      Left = 51
      Top = 60
      Width = 32
      Height = 16
      Caption = 'xq11'
    end
    object xq21: TLabel
      Left = 301
      Top = 60
      Width = 235
      Height = 16
      Caption = 'xq21'
    end
    object xq31: TLabel
      Left = 551
      Top = 60
      Width = 235
      Height = 16
      Caption = 'xq31'
    end
    object xq41: TLabel
      Left = 800
      Top = 60
      Width = 237
      Height = 16
      Caption = 'xq41'
    end
    object xq12: TLabel
      Left = 51
      Top = 178
      Width = 235
      Height = 16
      Caption = 'xq12'
    end
    object xq22: TLabel
      Left = 301
      Top = 178
      Width = 235
      Height = 16
      Caption = 'xq22'
    end
    object xq32: TLabel
      Left = 551
      Top = 178
      Width = 235
      Height = 16
      Caption = 'xq32'
    end
    object xq42: TLabel
      Left = 801
      Top = 178
      Width = 235
      Height = 16
      Caption = 'xq42'
    end
    object xq51: TLabel
      Left = 51
      Top = 349
      Width = 235
      Height = 16
      Caption = 'xq51'
    end
    object xq61: TLabel
      Left = 301
      Top = 349
      Width = 235
      Height = 16
      Caption = 'xq61'
    end
    object xq71: TLabel
      Left = 551
      Top = 349
      Width = 235
      Height = 16
      Caption = 'xq71'
    end
    object xq52: TLabel
      Left = 51
      Top = 468
      Width = 235
      Height = 16
      Caption = 'xq52'
    end
    object xq62: TLabel
      Left = 301
      Top = 468
      Width = 235
      Height = 16
      Caption = 'xq62'
    end
    object xq72: TLabel
      Left = 551
      Top = 468
      Width = 235
      Height = 16
      Caption = 'xq72'
    end
    object Shape3: TShape
      Left = 0
      Top = 1
      Width = 1042
      Height = 3
      Brush.Color = 11106843
      Pen.Color = 12171775
    end
    object Shape11: TShape
      Left = 0
      Top = 567
      Width = 1042
      Height = 3
      Brush.Color = 11106843
      Pen.Color = 12171775
    end
    object Shape12: TShape
      Left = 0
      Top = -30
      Width = 3
      Height = 600
      Brush.Color = 11106843
      Pen.Color = 16577773
    end
    object Shape13: TShape
      Left = 1042
      Top = -30
      Width = 3
      Height = 600
      Brush.Color = 11106843
      Pen.Color = 16577773
    end
  end
  object sp_cx_kspb: TADOStoredProc
    AutoCalcFields = False
    Connection = DM_data.ado_mydata
    ProcedureName = 'mzgh_cx_kspbqk;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 120
    Top = 88
  end
  object ds_ghzy: TDataSource
    DataSet = qry_ghzy
    Left = 152
    Top = 120
  end
  object ds_cx_kspb: TDataSource
    DataSet = sp_cx_kspb
    Left = 120
    Top = 120
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
  object qry_ghzy: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    AfterScroll = qry_ghzyAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from sys_ksdm where kssx='#39'16'#39' and sybz=1 order by dm')
    Left = 152
    Top = 88
    object qry_ghzydm: TStringField
      FieldName = 'dm'
      FixedChar = True
      Size = 4
    end
    object qry_ghzymc: TStringField
      FieldName = 'mc'
    end
  end
end
