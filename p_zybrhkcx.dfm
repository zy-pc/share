object frm_zybrhkcx: Tfrm_zybrhkcx
  Left = 176
  Top = 137
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #22312#38498#30149#20154#20998#31185#26597#35810
  ClientHeight = 463
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 682
    Height = 31
    Align = alTop
    Shape = bsFrame
    Style = bsRaised
  end
  object Label1: TLabel
    Left = 15
    Top = 8
    Width = 64
    Height = 16
    Caption = #31185#23460#21517#31216
  end
  object b_close: TBitBtn
    Left = 599
    Top = 3
    Width = 75
    Height = 25
    Caption = #36864#20986'(&X)'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Kind = bkClose
  end
  object B_cx: TBitBtn
    Left = 523
    Top = 3
    Width = 75
    Height = 25
    Cancel = True
    Caption = #26597#35810'(&Q)'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = B_cxClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
      0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
      00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
      00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
      F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
      F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
      FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
      0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
      00337777FFFF77FF7733EEEE0000000003337777777777777333}
    NumGlyphs = 2
  end
  object dbbox: TDBLookupComboBox
    Left = 83
    Top = 3
    Width = 145
    Height = 24
    KeyField = 'dm'
    ListField = 'mc'
    ListSource = ds_ksdm
    TabOrder = 2
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 31
    Width = 682
    Height = 432
    Align = alClient
    DataSource = ds_ksbr
    EditActions = [geaCopyEh]
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = GB2312_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -16
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 4
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ReadOnly = True
    SumList.Active = True
    TabOrder = 3
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'tmh'
        Footer.Alignment = taCenter
        Footer.Color = clYellow
        Footer.Value = #21512#35745
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #26465#30721#21495
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'brxm'
        Footer.Color = clYellow
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #30149#20154#22995#21517
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'brxb'
        Footer.Color = clYellow
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #24615#21035
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'bch'
        Footer.Color = clYellow
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #24202#21495
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'yjze'
        Footer.Color = clYellow
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #39044#20132#24635#39069
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'zfy'
        Footer.Color = clYellow
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #24635#36153#29992
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'syyj'
        Footer.Color = clYellow
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #20313#39069
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'lbmc'
        Footer.Color = clYellow
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #36153#29992#31867#21035
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'ksmc'
        Footer.Color = clYellow
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #20837#38498#31185#23460
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'ryrq'
        Footer.Color = clYellow
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #20837#38498#26085#26399
        Width = 130
      end
      item
        EditButtons = <>
        FieldName = 'rybq'
        Footer.Color = clYellow
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #30149#24773
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'czyxm'
        Footer.Color = clYellow
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #25805#20316#21592
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'sfzhm'
        Footer.Color = clYellow
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #36523#20221#35777
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'tjmc'
        Footer.Color = clYellow
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #20837#38498#26041#24335
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'dbr'
        Footer.Color = clYellow
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #25285#20445#20154
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'dbrdz'
        Footer.Color = clYellow
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #25285#20445#20154#22320#22336
        Width = 180
      end
      item
        EditButtons = <>
        FieldName = 'ysxm'
        Footer.Color = clYellow
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #20027#31649#21307#29983
        Width = 70
      end>
  end
  object ds_ksdm: TDataSource
    DataSet = qry_ksdm
    Left = 80
    Top = 64
  end
  object ds_ksbr: TDataSource
    DataSet = sp_ksbr
    Left = 168
    Top = 64
  end
  object sp_ksbr: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zysf_cx_zybrhkqk;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 198
    Top = 64
  end
  object qry_ksdm: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select dm,mc from sys_ksdm')
    Left = 110
    Top = 64
  end
end
