object frm_zysftjrpt: Tfrm_zysftjrpt
  Left = 71
  Top = 128
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #20303#38498#25910#36153#32479#35745#25253#34920
  ClientHeight = 521
  ClientWidth = 781
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 781
    Height = 35
    Align = alTop
    Shape = bsFrame
    Style = bsRaised
  end
  object Label1: TLabel
    Left = 8
    Top = 9
    Width = 112
    Height = 16
    Caption = #32479#35745#26085#26399'  '#20174#65306
  end
  object Label2: TLabel
    Left = 240
    Top = 11
    Width = 32
    Height = 16
    Caption = #33267#65306
  end
  object DBGrid1: TDBGridEh
    Left = 1
    Top = 116
    Width = 779
    Height = 404
    AllowedOperations = []
    DataSource = ds_tjdl
    EditActions = [geaCopyEh, geaSelectAllEh]
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = GB2312_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -16
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 10
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ksmc'
        Footers = <>
        Title.Caption = #31185#23460#21517#31216
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'mc1'
        Footers = <>
        Title.Caption = #36153#29992#21517#31216
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'je1'
        Footers = <>
        Title.Caption = #36153#29992#37329#39069
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'mc2'
        Footers = <>
        Title.Caption = #36153#29992#21517#31216
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'je2'
        Footers = <>
        Title.Caption = #36153#29992#37329#39069
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'mc3'
        Footers = <>
        Title.Caption = #36153#29992#21517#31216
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'je3'
        Footers = <>
        Title.Caption = #36153#29992#37329#39069
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'mc4'
        Footers = <>
        Title.Caption = #36153#29992#21517#31216
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'je4'
        Footers = <>
        Title.Caption = #36153#29992#37329#39069
        Width = 78
      end>
  end
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 115
    Width = 781
    Height = 406
    Align = alClient
    AllowedOperations = []
    DataSource = ds_tjdl
    EditActions = [geaCopyEh, geaSelectAllEh]
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = GB2312_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -16
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    PopupMenu = PopupMenu1
    TabOrder = 9
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
  end
  object star_date: TDateTimePicker
    Left = 114
    Top = 6
    Width = 113
    Height = 24
    Date = 37048.968005694400000000
    Time = 37048.968005694400000000
    TabOrder = 0
  end
  object end_date: TDateTimePicker
    Left = 280
    Top = 7
    Width = 108
    Height = 24
    Date = 37048.968221400500000000
    Time = 37048.968221400500000000
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 35
    Width = 781
    Height = 47
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object GroupBox3: TGroupBox
      Left = 563
      Top = 2
      Width = 210
      Height = 38
      TabOrder = 0
      object rbfymx: TRadioButton
        Left = 18
        Top = 17
        Width = 87
        Height = 17
        Caption = #26126#32454#39033#30446
        TabOrder = 0
      end
      object rbfydl: TRadioButton
        Left = 114
        Top = 16
        Width = 93
        Height = 17
        Caption = #36153#29992#22823#31867
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object GroupBox2: TGroupBox
      Left = 209
      Top = 2
      Width = 351
      Height = 38
      TabOrder = 1
      object rbkdks: TRadioButton
        Left = 2
        Top = 16
        Width = 85
        Height = 17
        Caption = #22788#26041#31185#23460
        TabOrder = 0
      end
      object rbczks: TRadioButton
        Left = 90
        Top = 16
        Width = 86
        Height = 17
        Caption = #22788#32622#31185#23460
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object rbkdys: TRadioButton
        Left = 178
        Top = 16
        Width = 86
        Height = 17
        Caption = #22788#26041#21307#29983
        TabOrder = 2
      end
      object rbczys: TRadioButton
        Left = 264
        Top = 16
        Width = 86
        Height = 17
        Caption = #22788#32622#21307#29983
        TabOrder = 3
      end
    end
    object GroupBox1: TGroupBox
      Left = 4
      Top = 2
      Width = 203
      Height = 38
      TabOrder = 2
      object rbjzsj: TRadioButton
        Left = 109
        Top = 16
        Width = 89
        Height = 17
        Caption = #32467#24080#25968#25454
        TabOrder = 0
      end
      object rbqbsj: TRadioButton
        Left = 15
        Top = 17
        Width = 90
        Height = 17
        Caption = #20840#37096#25968#25454
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 82
    Width = 781
    Height = 33
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 3
    object Label3: TLabel
      Left = 7
      Top = 8
      Width = 144
      Height = 16
      Caption = #36873#25321#36153#29992#22823#31867#21475#24452#65306
    end
    object Label4: TLabel
      Left = 464
      Top = 10
      Width = 160
      Height = 16
      Caption = #24038#19978#35282#21333#20987#21487#36873#25321#34920#26684
    end
    object dbBoxfydl: TDBLookupComboBox
      Left = 191
      Top = 4
      Width = 242
      Height = 24
      DropDownRows = 8
      KeyField = 'kmdm'
      ListField = 'kmmc'
      ListSource = ds_fydl
      TabOrder = 0
    end
  end
  object b_dy: TBitBtn
    Left = 613
    Top = 7
    Width = 80
    Height = 25
    Caption = #25171#21360
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = b_dyClick
    NumGlyphs = 2
  end
  object b_tj: TBitBtn
    Left = 531
    Top = 7
    Width = 80
    Height = 25
    Caption = #32479#35745
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = b_tjClick
    NumGlyphs = 2
  end
  object b_tc: TBitBtn
    Left = 694
    Top = 7
    Width = 80
    Height = 25
    Caption = #36864#20986
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = b_tcClick
    NumGlyphs = 2
  end
  object BitBtn1: TBitBtn
    Left = 450
    Top = 7
    Width = 80
    Height = 25
    Caption = #36873#21015
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = BitBtn1Click
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 693
    Top = 84
    Width = 80
    Height = 26
    Caption = #26126#32454#26597#35810'(&M)'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = BitBtn2Click
    NumGlyphs = 2
  end
  object ds_fydl: TDataSource
    DataSet = qry_fydl
    Left = 179
    Top = 169
  end
  object ds_tjdl: TDataSource
    DataSet = sp_czksdl
    Left = 278
    Top = 166
  end
  object qry_fydl: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'select * from zysf_kjkmzb where datalength(rtrim(kmdm))=2 order ' +
        'by kmdm')
    Left = 224
    Top = 171
  end
  object sp_czksdl: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'cwk_czkshz_zy;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@s_date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@e_date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@fylb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@fydl'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@sjlb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end>
    Left = 338
    Top = 170
  end
  object sp_ksfydm: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'cwk_cx_ksfydm;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@sr_fymc'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@sr_ksmc'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 395
    Top = 172
  end
  object sp_kdksdl: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'cwk_kdkshz_zy;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@s_date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@e_date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@fylb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@fydl'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@sjlb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end>
    Left = 456
    Top = 170
  end
  object sp_kdysdl: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'cwk_kdyshz_zy;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@s_date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@e_date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@fylb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@fydl'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@sjlb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end>
    Left = 523
    Top = 171
  end
  object sp_czysdl: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'cwk_czyshz_zy;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@s_date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@e_date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@fylb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@fydl'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@sjlb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end>
    Left = 590
    Top = 173
  end
  object ad_cxks: TADODataSet
    Connection = DM_data.ado_mydata
    CommandText = 'select * from sys_ksdm where mc=:mc and sybz=1'
    Parameters = <
      item
        Name = 'mc'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    Left = 136
    Top = 168
  end
  object PopupMenu1: TPopupMenu
    Left = 632
    Top = 176
    object N1: TMenuItem
      Caption = #31185#23460#36153#29992#26469#28304#65288#31185#23460#65289
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #31185#23460#36153#29992#26469#28304#65288#30149#20154#65289
      OnClick = N2Click
    end
  end
end
