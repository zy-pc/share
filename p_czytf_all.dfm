object frm_czytf_all: Tfrm_czytf_all
  Left = 211
  Top = 153
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #20840#20307#25910#36153#21592#36864#39044#20132#26126#32454
  ClientHeight = 460
  ClientWidth = 685
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
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 685
    Height = 33
    Align = alTop
    Shape = bsFrame
    Style = bsRaised
  end
  object Label1: TLabel
    Left = 8
    Top = 9
    Width = 56
    Height = 16
    Caption = #36215#26085#26399':'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 184
    Top = 9
    Width = 56
    Height = 16
    Caption = #27490#26085#26399':'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object ok2: TBitBtn
    Left = 609
    Top = 4
    Width = 71
    Height = 25
    Caption = #36864#20986'(&X)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = ok2Click
    NumGlyphs = 2
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 33
    Width = 685
    Height = 427
    Align = alClient
    DataSource = ds_gzl_all
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'tmh'
        Title.Alignment = taCenter
        Title.Caption = #30913#21345#21495
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brxm'
        Title.Caption = #30149#20154#22995#21517
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sjbh'
        Title.Alignment = taCenter
        Title.Caption = #25910#25454#32534#21495
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mc'
        Title.Alignment = taCenter
        Title.Caption = #25805#20316#21592
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'yjje'
        Title.Alignment = taCenter
        Title.Caption = #36864#36153#37329#39069
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jzrq'
        Title.Alignment = taCenter
        Title.Caption = #36864#36153#26085#26399
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bz'
        Title.Alignment = taCenter
        Title.Caption = #22791#27880
        Width = 119
        Visible = True
      end>
  end
  object sdate: TDateTimePicker
    Left = 67
    Top = 4
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
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 534
    Top = 4
    Width = 71
    Height = 25
    Caption = #32479#35745'(&T)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn1Click
    NumGlyphs = 2
  end
  object edate: TDateTimePicker
    Left = 241
    Top = 4
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
    TabOrder = 1
  end
  object ds_gzl_all: TDataSource
    DataSet = sp_gzl_all
    Left = 176
    Top = 84
  end
  object sp_gzl_all: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_cx_czytf;1'
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
      end>
    Left = 222
    Top = 84
  end
end
