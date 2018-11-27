object frm_yzxg: Tfrm_yzxg
  Left = 0
  Top = 0
  Width = 357
  Height = 267
  BorderIcons = [biSystemMenu]
  Caption = #21307#22065#20462#25913#31383#21475
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 349
    Height = 201
    Align = alTop
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 2
      Top = -4
      Width = 345
      Height = 202
      TabOrder = 1
      object Label8: TLabel
        Left = 8
        Top = 20
        Width = 68
        Height = 15
        Caption = #39033#30446#21517#31216':'
      end
      object Label9: TLabel
        Left = 8
        Top = 50
        Width = 38
        Height = 15
        Caption = #25968#37327':'
      end
      object Label10: TLabel
        Left = 93
        Top = 50
        Width = 38
        Height = 15
        Caption = #21333#20301':'
      end
      object Label11: TLabel
        Left = 192
        Top = 50
        Width = 68
        Height = 15
        Caption = #22788#32622#31185#23460':'
      end
      object Label12: TLabel
        Left = 8
        Top = 108
        Width = 38
        Height = 15
        Caption = #37096#20301':'
      end
      object Label13: TLabel
        Left = 166
        Top = 108
        Width = 38
        Height = 15
        Caption = #35828#26126':'
      end
      object Label14: TLabel
        Left = 8
        Top = 78
        Width = 68
        Height = 15
        Caption = #25191#34892#26085#26399':'
      end
      object DBEdit3: TDBEdit
        Left = 80
        Top = 16
        Width = 261
        Height = 23
        DataField = 'xmmc'
        DataSource = ds_yz
        Enabled = False
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 48
        Top = 45
        Width = 41
        Height = 23
        DataField = 'sl'
        DataSource = ds_yz
        Enabled = False
        TabOrder = 1
      end
      object DBMemo1: TDBMemo
        Left = 50
        Top = 100
        Width = 115
        Height = 96
        DataField = 'jcbw'
        DataSource = ds_yz
        TabOrder = 2
      end
      object DBMemo2: TDBMemo
        Left = 213
        Top = 100
        Width = 121
        Height = 97
        DataField = 'jcmd'
        DataSource = ds_yz
        TabOrder = 3
      end
      object DBLookupComboBox6: TDBLookupComboBox
        Left = 260
        Top = 45
        Width = 82
        Height = 23
        DataField = 'czks'
        DataSource = ds_yz
        KeyField = 'mc'
        ListField = 'mc'
        ListSource = ds_ks
        TabOrder = 4
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 131
        Top = 45
        Width = 57
        Height = 23
        DataField = 'dw'
        DataSource = ds_yz
        Enabled = False
        KeyField = 'yldw'
        ListField = 'yldw'
        ListSource = ds_yldw
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 80
        Top = 73
        Width = 257
        Height = 23
        DataField = 'zxrq'
        DataSource = ds_yz
        TabOrder = 6
      end
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = -4
      Width = 345
      Height = 202
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 26
        Width = 68
        Height = 15
        Caption = #33647#21697#21517#31216':'
      end
      object Label2: TLabel
        Left = 173
        Top = 144
        Width = 68
        Height = 15
        Caption = #33647#21697#29992#27861':'
      end
      object Label3: TLabel
        Left = 8
        Top = 64
        Width = 68
        Height = 15
        Caption = #33647#21697#25968#37327':'
      end
      object Label4: TLabel
        Left = 175
        Top = 64
        Width = 70
        Height = 15
        Caption = #21333'    '#20301':'
      end
      object Label5: TLabel
        Left = 8
        Top = 104
        Width = 68
        Height = 15
        Caption = #33647#21697#29992#37327':'
      end
      object Label6: TLabel
        Left = 175
        Top = 104
        Width = 68
        Height = 15
        Caption = #29992#37327#21333#20301':'
      end
      object Label7: TLabel
        Left = 7
        Top = 144
        Width = 68
        Height = 15
        Caption = #29992#33647#36884#24452':'
      end
      object Label15: TLabel
        Left = 7
        Top = 176
        Width = 68
        Height = 15
        Caption = #24320#21333#26085#26399':'
      end
      object DBEdit1: TDBEdit
        Left = 80
        Top = 20
        Width = 257
        Height = 23
        DataField = 'xmmc'
        DataSource = ds_yz
        Enabled = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 79
        Top = 59
        Width = 74
        Height = 23
        DataField = 'sl'
        DataSource = ds_yz
        Enabled = False
        TabOrder = 1
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 247
        Top = 59
        Width = 90
        Height = 23
        DataField = 'dw'
        DataSource = ds_yz
        Enabled = False
        KeyField = 'yldw'
        ListField = 'yldw'
        ListSource = ds_yldw
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 79
        Top = 99
        Width = 74
        Height = 23
        DataField = 'ypyl'
        DataSource = ds_yz
        TabOrder = 3
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 247
        Top = 99
        Width = 90
        Height = 23
        DataField = 'yldw'
        DataSource = ds_yz
        KeyField = 'yldw'
        ListField = 'yldw'
        ListSource = ds_yldw
        TabOrder = 4
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 79
        Top = 139
        Width = 74
        Height = 23
        DataField = 'yytj'
        DataSource = ds_yz
        KeyField = 'mc'
        ListField = 'mc'
        ListSource = ds_gytj
        TabOrder = 5
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 247
        Top = 139
        Width = 90
        Height = 23
        DataField = 'ypyf'
        DataSource = ds_yz
        KeyField = 'mc'
        ListField = 'mc'
        ListSource = ds_ypyf
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 79
        Top = 171
        Width = 258
        Height = 23
        DataField = 'kdrq'
        DataSource = ds_yz
        TabOrder = 7
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 201
    Width = 349
    Height = 39
    Align = alClient
    TabOrder = 1
    object bt_tz: TButton
      Left = 26
      Top = 8
      Width = 75
      Height = 25
      Caption = #20572#27490'(&T)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = bt_tzClick
    end
    object bt_zf: TButton
      Left = 100
      Top = 8
      Width = 75
      Height = 25
      Caption = #20316#24223'(&F)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = bt_zfClick
    end
    object cb_save: TButton
      Left = 174
      Top = 8
      Width = 75
      Height = 25
      Caption = #20445#23384'(&S)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = cb_saveClick
    end
    object cb_cancel: TButton
      Left = 248
      Top = 8
      Width = 75
      Height = 25
      Caption = #20851#38381'(&C)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = cb_cancelClick
    end
  end
  object ds_ypyf: TDataSource
    DataSet = qry_ypyf
    Left = 24
  end
  object qry_ypyf: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from sys_ypyf')
    Left = 56
  end
  object ds_gytj: TDataSource
    DataSet = qry_gytj
    Left = 88
  end
  object qry_gytj: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from sys_gytj')
    Left = 120
  end
  object qry_yldw: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select distinct yldw from sys_ypdm where yldw is not null and yl' +
        'dw<>'#39#39' order by yldw')
    Left = 152
  end
  object ds_yldw: TDataSource
    DataSet = qry_yldw
    Left = 184
  end
  object ds_yz: TDataSource
    DataSet = qry_yz
    Left = 216
  end
  object qry_yz: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'cxid'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from zybl_zyyz where id=:cxid')
    Left = 248
  end
  object ds_ks: TDataSource
    DataSet = qry_ks
    Left = 280
  end
  object qry_ks: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select dm,mc from sys_ksdm where sybz=1')
    Left = 312
  end
  object qry_pub: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 152
    Top = 120
  end
  object qry_in_zyyz: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 200
    Top = 120
  end
  object qry_czjl: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 208
    Top = 160
  end
end
