object frm_cydj: Tfrm_cydj
  Left = 299
  Top = 213
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #20986#38498#30331#35760#65306
  ClientHeight = 307
  ClientWidth = 489
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Bevel2: TBevel
    Left = 0
    Top = 32
    Width = 489
    Height = 221
    Align = alTop
    Shape = bsFrame
    Style = bsRaised
  end
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 489
    Height = 32
    Align = alTop
    Shape = bsFrame
    Style = bsRaised
  end
  object Label1: TLabel
    Left = 7
    Top = 10
    Width = 80
    Height = 16
    Caption = #21345'    '#21495#65306
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 13
    Top = 45
    Width = 80
    Height = 16
    Caption = #22995'    '#21517#65306
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 13
    Top = 75
    Width = 80
    Height = 16
    Caption = #31185'    '#23460#65306
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 13
    Top = 103
    Width = 80
    Height = 16
    Caption = #20837#38498#26085#26399#65306
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 13
    Top = 135
    Width = 80
    Height = 16
    Caption = #20986#38498#26085#26399#65306
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 13
    Top = 166
    Width = 80
    Height = 16
    Caption = #20303#38498#22825#25968#65306
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object tmh: TEdit
    Left = 88
    Top = 5
    Width = 135
    Height = 24
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    MaxLength = 9
    ParentFont = False
    TabOrder = 0
    OnEnter = tmhEnter
    OnKeyPress = tmhKeyPress
  end
  object brxm: TEdit
    Left = 121
    Top = 39
    Width = 247
    Height = 24
    Enabled = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object ryrq: TDateTimePicker
    Left = 121
    Top = 98
    Width = 249
    Height = 24
    Date = 36755.569246111100000000
    Time = 36755.569246111100000000
    DateFormat = dfLong
    Enabled = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object cyrq: TDateTimePicker
    Left = 121
    Top = 129
    Width = 249
    Height = 24
    Date = 36755.569352858800000000
    Time = 36755.569352858800000000
    DateFormat = dfLong
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnExit = cyrqExit
    OnKeyPress = cyrqKeyPress
  end
  object b_save: TBitBtn
    Left = 87
    Top = 271
    Width = 88
    Height = 25
    Caption = #21150#20986#38498#30331#35760
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = b_saveClick
    NumGlyphs = 2
  end
  object ok2: TBitBtn
    Left = 311
    Top = 272
    Width = 88
    Height = 25
    Caption = #36864#20986'(&X)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = ok2Click
    NumGlyphs = 2
  end
  object ksmc: TEdit
    Left = 121
    Top = 69
    Width = 247
    Height = 24
    Enabled = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object zyts: TEdit
    Left = 121
    Top = 160
    Width = 247
    Height = 24
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object DBGrid2: TDBGrid
    Left = 6
    Top = 36
    Width = 479
    Height = 184
    Color = clInfoBk
    DataSource = DM_data.DS_pub
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = DBGrid2Exit
    OnKeyPress = DBGrid2KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'tmh'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #26465#30721#21495
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brxm'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #30149#20154#22995#21517
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brxb'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #24615#21035
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brnl'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #24180#40836
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mc'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #25152#22312#31185#23460
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brdz'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #22320#22336
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 160
        Visible = True
      end>
  end
  object sp_up_cydj: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_up_cydj;1'
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
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
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
        Name = '@cyrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 1
        Value = Null
      end>
    Left = 366
    Top = 106
  end
end
