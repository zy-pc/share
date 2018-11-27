object frm_dxwj: Tfrm_dxwj
  Left = 0
  Top = 0
  Width = 654
  Height = 436
  Caption = #35835#20889#25991#20214
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 136
    Top = 64
    Width = 105
    Height = 33
    Caption = #25968#25454#24211#35835#25968#25454'...'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 272
    Top = 64
    Width = 105
    Height = 33
    Caption = #25968#25454#20889#20837#25991#20214'...'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 136
    Top = 120
    Width = 105
    Height = 33
    Caption = #30828#30424#35835#21462#25968#25454'...'
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 272
    Top = 120
    Width = 105
    Height = 33
    Caption = #25968#25454#20889#25968#25454#24211
    TabOrder = 3
    OnClick = BitBtn4Click
  end
  object DBMemo1: TDBMemo
    Left = 208
    Top = 208
    Width = 121
    Height = 97
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 144
    Top = 8
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 5
  end
  object qry_source: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from sys_dzbl_mbmx')
    Left = 232
    Top = 168
    object qry_sourcedm: TStringField
      FieldName = 'dm'
      FixedChar = True
      Size = 10
    end
    object qry_sourcembdm: TAutoIncField
      FieldName = 'mbdm'
      ReadOnly = True
    end
    object qry_sourcembmc: TStringField
      FieldName = 'mbmc'
      Size = 50
    end
    object qry_sourcembsx: TStringField
      FieldName = 'mbsx'
      Size = 30
    end
    object qry_sourcemzksgs: TStringField
      FieldName = 'mzksgs'
      FixedChar = True
      Size = 4
    end
    object qry_sourcezyksgs: TStringField
      FieldName = 'zyksgs'
      FixedChar = True
      Size = 4
    end
    object qry_sourcembczy: TStringField
      FieldName = 'mbczy'
    end
    object qry_sourcewjmc: TStringField
      FieldName = 'wjmc'
      Size = 30
    end
    object qry_sourcembwj: TBlobField
      FieldName = 'mbwj'
    end
  end
  object DataSource1: TDataSource
    DataSet = qry_source
    Left = 304
    Top = 168
  end
end
