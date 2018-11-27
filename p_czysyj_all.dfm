object frm_czysyj_all: Tfrm_czysyj_all
  Left = 175
  Top = 158
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #20840#20307#25910#36153#21592#32564#27454#34920#65306
  ClientHeight = 541
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 792
    Height = 32
    Align = alTop
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 72
    Height = 16
    Caption = #24320#22987#26085#26399':'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 212
    Top = 8
    Width = 72
    Height = 16
    Caption = #32467#26463#26085#26399':'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object ok1: TBitBtn
    Left = 643
    Top = 5
    Width = 71
    Height = 25
    Caption = #25171#21360'(&P)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = ok1Click
    NumGlyphs = 2
  end
  object ok2: TBitBtn
    Left = 716
    Top = 5
    Width = 71
    Height = 25
    Caption = #36864#20986'(&X)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = ok2Click
    NumGlyphs = 2
  end
  object sdate: TDateTimePicker
    Left = 87
    Top = 3
    Width = 111
    Height = 24
    Date = 37028.604380682900000000
    Time = 37028.604380682900000000
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 569
    Top = 5
    Width = 71
    Height = 25
    Caption = #32479#35745'(&T)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
    NumGlyphs = 2
  end
  object edate: TDateTimePicker
    Left = 291
    Top = 3
    Width = 111
    Height = 24
    Date = 37028.604380682900000000
    Time = 37028.604380682900000000
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object CheckBox1: TCheckBox
    Left = 431
    Top = 7
    Width = 74
    Height = 17
    Caption = #27719#24635#34920
    Checked = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 5
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 32
    Width = 792
    Height = 509
    Align = alClient
    DataSource = ds_gzl_all
    EditActions = [geaCopyEh, geaSelectAllEh]
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghMultiSortMarking]
    ParentFont = False
    ReadOnly = True
    SumList.Active = True
    TabOrder = 6
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'jzrq'
        Footers = <>
        Title.Caption = #26085#26399
      end
      item
        EditButtons = <>
        FieldName = 'mc'
        Footer.Value = #21512#35745
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = #22995#21517
      end
      item
        EditButtons = <>
        FieldName = 'syjze'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #39044#20132#24635#39069
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'syjrc'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #39044#20132#20154#27425
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'tyjze'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #36864#39044#20132#37329#39069
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'tyjrc'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #36864#39044#20132#20154#27425
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'cybxje'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #32467#31639#34917#27454#37329#39069
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'cybxrc'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #32467#31639#34917#27454#20154#27425
        Width = 111
      end
      item
        EditButtons = <>
        FieldName = 'cytxje'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #32467#31639#36864#27454#37329#39069
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'zchzfy'
        Footers = <>
        Title.Caption = #20986#38498#25910#24453#32467
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'qffy'
        Footers = <>
        Title.Caption = #20986#38498#25910#27424#36153
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'cytxrc'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #32467#31639#36864#27454#20154#27425
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'yhhkfxj'
        Footers = <>
        Title.Caption = #37504#34892#21047#21345
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'ssje'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #24212#20132#37329#39069
        Width = 81
      end
      item
        DisplayFormat = '#0.00'
        EditButtons = <>
        FieldName = 'jsqfbrfy'
        Footer.DisplayFormat = '#0.00'
        Footer.FieldName = 'jsqfbrfy'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #24453#32467#36134
        Width = 80
      end>
  end
  object ds_gzl_all: TDataSource
    DataSet = sp_gzl_all
    Left = 222
    Top = 134
  end
  object sp_gzl_all: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zysf_cx_czyjz_all;1'
    Parameters = <
      item
        Name = '@s_date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 38353d
      end
      item
        Name = '@e_date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 38604d
      end
      item
        Name = '@tjfs'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    Left = 281
    Top = 135
  end
end
