object frm_czyjz: Tfrm_czyjz
  Left = 252
  Top = 152
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #20303#38498#25910#36153#25805#20316#21592#32467#24080
  ClientHeight = 328
  ClientWidth = 549
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Bevel2: TBevel
    Left = 0
    Top = 38
    Width = 549
    Height = 289
    Align = alTop
    Shape = bsFrame
    Style = bsRaised
  end
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 549
    Height = 38
    Align = alTop
    Shape = bsFrame
    Style = bsRaised
    ExplicitTop = -1
  end
  object Label9: TLabel
    Left = 7
    Top = 54
    Width = 83
    Height = 15
    Caption = #25910#39044#20132#24635#39069':'
  end
  object Label10: TLabel
    Left = 7
    Top = 85
    Width = 83
    Height = 15
    Caption = #25910#39044#20132#20154#27425':'
  end
  object Label13: TLabel
    Left = 7
    Top = 147
    Width = 83
    Height = 15
    Caption = #36864#39044#20132#20154#27425':'
  end
  object Label14: TLabel
    Left = 7
    Top = 301
    Width = 68
    Height = 15
    Caption = #23454#25910#37329#39069':'
  end
  object Label1: TLabel
    Left = 211
    Top = 46
    Width = 90
    Height = 15
    Caption = #25910#25454#36215#27490#21495#65306
  end
  object Label2: TLabel
    Left = 214
    Top = 188
    Width = 90
    Height = 15
    Caption = #36864#36153#25910#25454#21495#65306
  end
  object Label3: TLabel
    Left = 7
    Top = 116
    Width = 83
    Height = 15
    Caption = #36864#39044#20132#37329#39069':'
  end
  object Label4: TLabel
    Left = 7
    Top = 178
    Width = 83
    Height = 15
    Caption = #32467#31639#36864#29616#37329':'
  end
  object Label6: TLabel
    Left = 7
    Top = 239
    Width = 83
    Height = 15
    Caption = #32467#31639#34917#29616#37329':'
  end
  object Label7: TLabel
    Left = 7
    Top = 208
    Width = 83
    Height = 15
    Caption = #32467#31639#36864#20154#27425':'
  end
  object Label5: TLabel
    Left = 7
    Top = 270
    Width = 75
    Height = 15
    Caption = #32467#31639#34917#20154#27425
  end
  object BitBtn1: TBitBtn
    Left = 96
    Top = 5
    Width = 89
    Height = 30
    Caption = #25805#20316#21592#32467#24080'(&J)'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 5
    Top = 5
    Width = 89
    Height = 30
    Caption = #32479#35745'(&T)'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn2Click
  end
  object BitBtn4: TBitBtn
    Left = 458
    Top = 7
    Width = 86
    Height = 28
    Caption = #36864#20986'(&X)'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn4Click
    NumGlyphs = 2
  end
  object Memo1: TMemo
    Left = 211
    Top = 67
    Width = 333
    Height = 109
    Lines.Strings = (
      '')
    ReadOnly = True
    TabOrder = 3
  end
  object Memo2: TMemo
    Left = 212
    Top = 209
    Width = 332
    Height = 112
    ReadOnly = True
    TabOrder = 4
  end
  object DBEdit1: TDBEdit
    Left = 96
    Top = 52
    Width = 111
    Height = 23
    DataField = 'syjze'
    DataSource = ds_sfzk
    TabOrder = 5
  end
  object DBEdit2: TDBEdit
    Left = 96
    Top = 82
    Width = 111
    Height = 23
    DataField = 'syjrc'
    DataSource = ds_sfzk
    TabOrder = 6
  end
  object DBEdit3: TDBEdit
    Left = 96
    Top = 113
    Width = 111
    Height = 23
    DataField = 'tyjze'
    DataSource = ds_sfzk
    TabOrder = 7
  end
  object DBEdit4: TDBEdit
    Left = 96
    Top = 143
    Width = 111
    Height = 23
    DataField = 'tyjrc'
    DataSource = ds_sfzk
    TabOrder = 8
  end
  object DBEdit5: TDBEdit
    Left = 96
    Top = 174
    Width = 111
    Height = 23
    DataField = 'cytxje'
    DataSource = ds_sfzk
    TabOrder = 9
  end
  object DBEdit6: TDBEdit
    Left = 96
    Top = 234
    Width = 111
    Height = 23
    DataField = 'cybxje'
    DataSource = ds_sfzk
    TabOrder = 10
  end
  object DBEdit7: TDBEdit
    Left = 96
    Top = 204
    Width = 111
    Height = 23
    DataField = 'cytxrc'
    DataSource = ds_sfzk
    TabOrder = 11
  end
  object DBEdit8: TDBEdit
    Left = 96
    Top = 265
    Width = 111
    Height = 23
    DataField = 'cybxrc'
    DataSource = ds_sfzk
    TabOrder = 12
  end
  object DBEdit9: TDBEdit
    Left = 96
    Top = 295
    Width = 111
    Height = 23
    DataField = 'ssje'
    DataSource = ds_sfzk
    TabOrder = 13
  end
  object BitBtn3: TBitBtn
    Left = 189
    Top = 5
    Width = 89
    Height = 30
    Caption = #25805#20316#21592#26085#25253'(&R)'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = BitBtn3Click
  end
  object ds_sfzk: TDataSource
    DataSet = sp_srzk
    Left = 450
    Top = 79
  end
  object ds_sjh: TDataSource
    DataSet = sp_cxsjh
    Left = 350
    Top = 77
  end
  object sp_czyjz: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_in_czyjz;1'
    Parameters = <
      item
        Name = '@jzdh'
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
        Name = '@sjqzh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@tfsjh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@jzrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@syjze'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@syjrc'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@tyjze'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@tyjrc'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@cybxje'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@cytxje'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@cytxrc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@cybxrc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ssje'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
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
    Left = 252
    Top = 78
  end
  object sp_cxsjh: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_cx_sjbh;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 305
    Top = 79
  end
  object sp_srzk: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zysf_cx_sfzk;1'
    Parameters = <
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 394
    Top = 77
  end
end
