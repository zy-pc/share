object FRM_YSPB: TFRM_YSPB
  Left = 193
  Top = 127
  Caption = #38376#35786#21307#29983#25490#29677#31995#32479
  ClientHeight = 379
  ClientWidth = 840
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 840
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 64
      Height = 16
      Caption = #21307#29983#22995#21517
    end
    object Label2: TLabel
      Left = 342
      Top = 16
      Width = 64
      Height = 16
      Caption = #25152#23646#31185#23460
    end
    object Label3: TLabel
      Left = 16
      Top = 48
      Width = 64
      Height = 16
      Caption = #24212#35786#19987#19994
    end
    object Label4: TLabel
      Left = 571
      Top = 16
      Width = 64
      Height = 16
      Caption = #32844#31216#32844#21035
    end
    object Label7: TLabel
      Left = 231
      Top = 48
      Width = 64
      Height = 16
      Caption = #38480#21046#20154#25968
    end
    object Label5: TLabel
      Left = 342
      Top = 48
      Width = 64
      Height = 16
      Caption = #25346#21495#32423#21035
    end
    object ysxm: TEdit
      Left = 84
      Top = 11
      Width = 252
      Height = 24
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 0
      OnEnter = ysxmEnter
      OnExit = ysxmExit
      OnKeyPress = ysxmKeyPress
    end
    object ksmc: TEdit
      Left = 416
      Top = 13
      Width = 130
      Height = 24
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 1
    end
    object zcmc: TEdit
      Left = 643
      Top = 11
      Width = 130
      Height = 24
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 2
    end
    object yzks: TEdit
      Left = 84
      Top = 43
      Width = 130
      Height = 24
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 3
    end
    object RS: TEdit
      Left = 296
      Top = 43
      Width = 40
      Height = 24
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 4
    end
    object ghfdm: TEdit
      Left = 412
      Top = 43
      Width = 233
      Height = 24
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 840
    Height = 261
    Align = alClient
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 53
      Top = 18
      Width = 102
      Height = 92
      Caption = #26143#26399#19968
      TabOrder = 0
      object Bevel1: TBevel
        Left = 2
        Top = 56
        Width = 98
        Height = 34
        Align = alBottom
        Shape = bsFrame
      end
      object Bevel2: TBevel
        Left = 2
        Top = 18
        Width = 98
        Height = 34
        Align = alTop
        Shape = bsFrame
      end
      object CB12: TCheckBox
        Left = 16
        Top = 64
        Width = 50
        Height = 17
        Caption = #19979#21320
        TabOrder = 1
        OnClick = CB11Click
      end
      object CB11: TCheckBox
        Left = 16
        Top = 24
        Width = 50
        Height = 17
        Caption = #19978#21320
        TabOrder = 0
        OnClick = CB11Click
      end
    end
    object GroupBox2: TGroupBox
      Left = 216
      Top = 18
      Width = 102
      Height = 92
      Caption = #26143#26399#20108
      TabOrder = 1
      object Bevel3: TBevel
        Left = 2
        Top = 56
        Width = 98
        Height = 34
        Align = alBottom
        Shape = bsFrame
      end
      object Bevel4: TBevel
        Left = 2
        Top = 18
        Width = 98
        Height = 34
        Align = alTop
        Shape = bsFrame
      end
      object CB22: TCheckBox
        Left = 16
        Top = 64
        Width = 50
        Height = 17
        Caption = #19979#21320
        TabOrder = 1
        OnClick = CB11Click
      end
      object CB21: TCheckBox
        Left = 16
        Top = 24
        Width = 50
        Height = 17
        Caption = #19978#21320
        TabOrder = 0
        OnClick = CB11Click
      end
    end
    object GroupBox3: TGroupBox
      Left = 378
      Top = 18
      Width = 102
      Height = 92
      Caption = #26143#26399#19977
      TabOrder = 2
      object Bevel5: TBevel
        Left = 2
        Top = 56
        Width = 98
        Height = 34
        Align = alBottom
        Shape = bsFrame
      end
      object Bevel6: TBevel
        Left = 2
        Top = 18
        Width = 98
        Height = 34
        Align = alTop
        Shape = bsFrame
      end
      object CB31: TCheckBox
        Left = 16
        Top = 24
        Width = 50
        Height = 17
        Caption = #19978#21320
        TabOrder = 0
        OnClick = CB11Click
      end
      object CB32: TCheckBox
        Left = 16
        Top = 64
        Width = 50
        Height = 17
        Caption = #19979#21320
        TabOrder = 1
        OnClick = CB11Click
      end
    end
    object GroupBox4: TGroupBox
      Left = 541
      Top = 18
      Width = 102
      Height = 92
      Caption = #26143#26399#22235
      TabOrder = 3
      object Bevel7: TBevel
        Left = 2
        Top = 56
        Width = 98
        Height = 34
        Align = alBottom
        Shape = bsFrame
      end
      object Bevel8: TBevel
        Left = 2
        Top = 18
        Width = 98
        Height = 34
        Align = alTop
        Shape = bsFrame
      end
      object CB41: TCheckBox
        Left = 16
        Top = 24
        Width = 50
        Height = 17
        Caption = #19978#21320
        TabOrder = 0
        OnClick = CB11Click
      end
      object CB42: TCheckBox
        Left = 16
        Top = 64
        Width = 50
        Height = 17
        Caption = #19979#21320
        TabOrder = 1
        OnClick = CB11Click
      end
    end
    object GroupBox5: TGroupBox
      Left = 53
      Top = 132
      Width = 102
      Height = 92
      Caption = #26143#26399#20116
      TabOrder = 4
      object Bevel9: TBevel
        Left = 2
        Top = 56
        Width = 98
        Height = 34
        Align = alBottom
        Shape = bsFrame
      end
      object Bevel10: TBevel
        Left = 2
        Top = 18
        Width = 98
        Height = 34
        Align = alTop
        Shape = bsFrame
      end
      object CB51: TCheckBox
        Left = 16
        Top = 24
        Width = 50
        Height = 17
        Caption = #19978#21320
        TabOrder = 0
        OnClick = CB11Click
      end
      object CB52: TCheckBox
        Left = 16
        Top = 64
        Width = 50
        Height = 17
        Caption = #19979#21320
        TabOrder = 1
        OnClick = CB11Click
      end
    end
    object GroupBox6: TGroupBox
      Left = 221
      Top = 140
      Width = 102
      Height = 92
      Caption = #26143#26399#20845
      TabOrder = 5
      object Bevel11: TBevel
        Left = 2
        Top = 56
        Width = 98
        Height = 34
        Align = alBottom
        Shape = bsFrame
      end
      object Bevel12: TBevel
        Left = 2
        Top = 18
        Width = 98
        Height = 34
        Align = alTop
        Shape = bsFrame
      end
      object CB61: TCheckBox
        Left = 16
        Top = 24
        Width = 50
        Height = 17
        Caption = #19978#21320
        TabOrder = 0
        OnClick = CB11Click
      end
      object CB62: TCheckBox
        Left = 16
        Top = 64
        Width = 50
        Height = 17
        Caption = #19979#21320
        TabOrder = 1
        OnClick = CB11Click
      end
    end
    object GroupBox7: TGroupBox
      Left = 381
      Top = 132
      Width = 102
      Height = 92
      Caption = #26143#26399#26085
      TabOrder = 6
      object Bevel13: TBevel
        Left = 2
        Top = 56
        Width = 98
        Height = 34
        Align = alBottom
        Shape = bsFrame
      end
      object Bevel14: TBevel
        Left = 2
        Top = 18
        Width = 98
        Height = 34
        Align = alTop
        Shape = bsFrame
      end
      object cb71: TCheckBox
        Left = 16
        Top = 24
        Width = 50
        Height = 17
        Caption = #19978#21320
        TabOrder = 0
        OnClick = CB11Click
      end
      object cb72: TCheckBox
        Left = 16
        Top = 64
        Width = 50
        Height = 17
        Caption = #19979#21320
        TabOrder = 1
        OnClick = CB11Click
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 334
    Width = 840
    Height = 45
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 416
      Top = 10
      Width = 75
      Height = 25
      Caption = #20445#23384'(F11)'
      Enabled = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 600
      Top = 10
      Width = 75
      Height = 25
      Caption = #32467#26463
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 16
      Top = 10
      Width = 279
      Height = 25
      Caption = #28165#38500#24403#21069#21307#29983#25490#29677#24773#20917
      Enabled = False
      TabOrder = 2
      OnClick = BitBtn3Click
    end
  end
  object tempdbgrid1: TDBGrid
    Left = 86
    Top = 38
    Width = 302
    Height = 120
    DataSource = ds_czyks
    ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnExit = tempdbgrid1Exit
    OnKeyPress = tempdbgrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'ysdm'
        Title.Caption = #20154#21592#20195#30721
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ysmc'
        Title.Caption = #22995#21517
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ksmc'
        Title.Caption = #31185#23460#21517#31216
        Width = 143
        Visible = True
      end>
  end
  object sp_cx_ysbb: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'mzgh_cx_yspb;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@srm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 168
    Top = 64
  end
  object sp_cx_ys: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'mzgh_cx_mzysyks;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@srm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@czfs'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@kssx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end>
    Left = 96
    Top = 64
  end
  object sp_up_yspb: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'mzgh_up_yspb;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ysdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@yzrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@ghfdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@zcdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@QTBZ'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@rs'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 5
        Value = Null
      end
      item
        Name = '@ksmc'
        DataType = ftString
        Size = 20
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
    Left = 384
    Top = 344
  end
  object ds_czyks: TDataSource
    DataSet = sp_cx_ys
    Left = 128
    Top = 64
  end
end
