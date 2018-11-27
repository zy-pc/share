object frm_jypqdy: Tfrm_jypqdy
  Left = 0
  Top = 0
  Caption = #26816#39564#26631#31614#21333#25171#21360
  ClientHeight = 464
  ClientWidth = 980
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 980
    Height = 41
    Align = alTop
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 30
      Height = 18
      Caption = #29942#31614
    end
    object Label2: TLabel
      Left = 218
      Top = 11
      Width = 90
      Height = 18
      Caption = #25191#34892#21307#22065#26085#26399
    end
    object pq: TEdit
      Left = 44
      Top = 11
      Width = 169
      Height = 24
      TabOrder = 0
      OnExit = pqExit
      OnKeyPress = pqKeyPress
    end
    object BitBtn1: TBitBtn
      Left = 662
      Top = 10
      Width = 70
      Height = 25
      Caption = #25171#21360
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 816
      Top = 10
      Width = 70
      Height = 25
      Caption = #25918#24323
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 894
      Top = 10
      Width = 70
      Height = 25
      Caption = #32467#26463
      TabOrder = 3
      OnClick = BitBtn3Click
    end
    object dt_zxsj: TDateTimePicker
      Left = 314
      Top = 11
      Width = 109
      Height = 24
      Date = 40401.666157951390000000
      Time = 40401.666157951390000000
      TabOrder = 4
      OnChange = dt_zxsjChange
    end
    object abq: TRadioButton
      Left = 446
      Top = 12
      Width = 66
      Height = 17
      Caption = #25353#29942#31614
      Checked = True
      TabOrder = 5
      TabStop = True
      OnClick = abqClick
    end
    object abr: TRadioButton
      Left = 518
      Top = 11
      Width = 66
      Height = 17
      Caption = #25353#30149#20154
      TabOrder = 6
      OnClick = abrClick
    end
    object qbq: TRadioButton
      Left = 590
      Top = 11
      Width = 66
      Height = 17
      Caption = #20840#30149#21306
      TabOrder = 7
      OnClick = qbqClick
    end
    object BitBtn4: TBitBtn
      Left = 740
      Top = 10
      Width = 70
      Height = 25
      Caption = #37325#25171
      TabOrder = 8
      OnClick = BitBtn4Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 980
    Height = 423
    Align = alClient
    DataSource = ds_jyxm
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'tmh'
        Footers = <>
        Title.Caption = #20303#38498#21495
        Width = 111
      end
      item
        EditButtons = <>
        FieldName = 'brxm'
        Footers = <>
        Title.Caption = #22995#21517
        Width = 111
      end
      item
        EditButtons = <>
        FieldName = 'brxb'
        Footers = <>
        Title.Caption = #24615#21035
        Width = 28
      end
      item
        EditButtons = <>
        FieldName = 'bch'
        Footers = <>
        Title.Caption = #30149#24202#21495
      end
      item
        EditButtons = <>
        FieldName = 'brnl'
        Footers = <>
        Title.Caption = #24180#40836
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'ksmc'
        Footers = <>
        Title.Caption = #31185#23460
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'xmmc'
        Footers = <>
        Title.Caption = #39033#30446
        Width = 350
      end
      item
        EditButtons = <>
        FieldName = 'jyfzbh'
        Footers = <>
        Title.Caption = #26816#39564#26631#31614
        Width = 107
      end
      item
        EditButtons = <>
        FieldName = 'ryzd'
        Footers = <>
        Title.Caption = #20837#38498#35786#26029
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'bqdy'
        Footers = <>
        Title.Caption = #26159#21542#25171#21360
        Width = 39
      end>
  end
  object sp_jyxm: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_zyyz_cx_jysqd_print;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = #39#39
      end
      item
        Name = '@zxsj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '20101208'
      end
      item
        Name = '@jyfzbh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = #39#39
      end
      item
        Name = '@bqdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '0018'
      end>
    Left = 568
    Top = 184
  end
  object ds_jyxm: TDataSource
    DataSet = sp_jyxm
    Left = 552
    Top = 120
  end
  object sp_yzsj: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zyyz_yzsj;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@scyzsj'
        Attributes = [paNullable]
        DataType = ftDateTime
        Direction = pdInputOutput
        Value = Null
      end>
    Left = 672
    Top = 208
  end
  object ad_zyh: TADODataSet
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 672
    Top = 128
  end
  object sp_up_jysqd: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_zyyz_up_jysqd_bq'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@zxsj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@jyfzbh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@bqdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@fs'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 568
    Top = 240
  end
end
