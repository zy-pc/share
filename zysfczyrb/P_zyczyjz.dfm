object frm_zyczyjz: Tfrm_zyczyjz
  Left = 196
  Top = 150
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #20303#38498#25910#36153#25805#20316#21592#32467#24080
  ClientHeight = 457
  ClientWidth = 834
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Bevel2: TBevel
    Left = 0
    Top = 38
    Width = 834
    Height = 419
    Align = alClient
    Shape = bsFrame
    Style = bsRaised
    ExplicitWidth = 830
    ExplicitHeight = 394
  end
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 834
    Height = 38
    Align = alTop
    Shape = bsFrame
    Style = bsRaised
    ExplicitWidth = 614
  end
  object Label1: TLabel
    Left = 432
    Top = 48
    Width = 96
    Height = 16
    Caption = #25910#25454#36215#27490#21495#65306
  end
  object Label2: TLabel
    Left = 432
    Top = 234
    Width = 96
    Height = 16
    Caption = #36864#36153#25910#25454#21495#65306
  end
  object Label8: TLabel
    Left = 290
    Top = 12
    Width = 48
    Height = 16
    Caption = #25805#20316#21592
  end
  object grp2: TGroupBox
    Left = 4
    Top = 44
    Width = 210
    Height = 405
    Caption = #24635#36153#29992#39069
    TabOrder = 20
    object Label10: TLabel
      Left = 3
      Top = 54
      Width = 88
      Height = 16
      Caption = #25910#25276#37329#20154#27425':'
    end
    object Label9: TLabel
      Left = 3
      Top = 25
      Width = 88
      Height = 16
      Caption = #25910#25276#37329#24635#39069':'
    end
    object Label11: TLabel
      Left = 3
      Top = 270
      Width = 88
      Height = 16
      Caption = #38750#29616#37329#37329#39069':'
    end
    object Label13: TLabel
      Left = 3
      Top = 115
      Width = 88
      Height = 16
      Caption = #36864#25276#37329#20154#27425':'
    end
    object Label14: TLabel
      Left = 7
      Top = 298
      Width = 72
      Height = 16
      Caption = #23454#25910#37329#39069':'
    end
    object Label3: TLabel
      Left = 3
      Top = 86
      Width = 88
      Height = 16
      Caption = #36864#25276#37329#37329#39069':'
    end
    object Label4: TLabel
      Left = 3
      Top = 147
      Width = 88
      Height = 16
      Caption = #32467#31639#36864#29616#37329':'
    end
    object Label5: TLabel
      Left = 5
      Top = 236
      Width = 80
      Height = 16
      Caption = #32467#31639#34917#20154#27425
    end
    object Label6: TLabel
      Left = 3
      Top = 205
      Width = 88
      Height = 16
      Caption = #32467#31639#34917#29616#37329':'
    end
    object Label7: TLabel
      Left = 3
      Top = 175
      Width = 88
      Height = 16
      Caption = #32467#31639#36864#20154#27425':'
    end
    object lbl1: TLabel
      Left = 3
      Top = 326
      Width = 104
      Height = 16
      Caption = #22312#38498#32467#31639#20154#27425':'
    end
    object lbl2: TLabel
      Left = 6
      Top = 355
      Width = 104
      Height = 16
      Caption = #22312#38498#32467#31639#37329#39069':'
    end
    object lbl_yhje: TLabel
      Left = 41
      Top = 377
      Width = 68
      Height = 15
      Caption = #20248#24800#37329#39069':'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object dbedt_yhje: TDBEdit
      Left = 111
      Top = 378
      Width = 92
      Height = 24
      DataField = 'yhje'
      DataSource = ds_sfzk
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 0
    end
  end
  object BitBtn1: TcxButton
    Left = 90
    Top = 2
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
  object BitBtn2: TcxButton
    Left = 0
    Top = 2
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
  object BitBtn4: TcxButton
    Left = 522
    Top = 5
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
    Left = 432
    Top = 69
    Width = 398
    Height = 159
    Ctl3D = False
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Lines.Strings = (
      '')
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
  end
  object Memo2: TMemo
    Left = 432
    Top = 256
    Width = 397
    Height = 193
    Ctl3D = False
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 4
  end
  object DBEdit1: TDBEdit
    Left = 96
    Top = 67
    Width = 111
    Height = 22
    Ctl3D = False
    DataField = 'syjze'
    DataSource = ds_sfzk
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentCtl3D = False
    TabOrder = 5
  end
  object DBEdit2: TDBEdit
    Left = 96
    Top = 96
    Width = 111
    Height = 22
    Ctl3D = False
    DataField = 'syjrc'
    DataSource = ds_sfzk
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentCtl3D = False
    TabOrder = 6
  end
  object DBEdit3: TDBEdit
    Left = 96
    Top = 128
    Width = 111
    Height = 22
    Ctl3D = False
    DataField = 'tyjze'
    DataSource = ds_sfzk
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentCtl3D = False
    TabOrder = 7
  end
  object DBEdit4: TDBEdit
    Left = 96
    Top = 157
    Width = 111
    Height = 22
    Ctl3D = False
    DataField = 'tyjrc'
    DataSource = ds_sfzk
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentCtl3D = False
    TabOrder = 8
  end
  object DBEdit5: TDBEdit
    Left = 96
    Top = 189
    Width = 111
    Height = 22
    Ctl3D = False
    DataField = 'cytxje'
    DataSource = ds_sfzk
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentCtl3D = False
    TabOrder = 9
  end
  object DBEdit6: TDBEdit
    Left = 96
    Top = 247
    Width = 111
    Height = 22
    Ctl3D = False
    DataField = 'cybxje'
    DataSource = ds_sfzk
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentCtl3D = False
    TabOrder = 10
  end
  object DBEdit7: TDBEdit
    Left = 96
    Top = 217
    Width = 111
    Height = 22
    Ctl3D = False
    DataField = 'cytxrc'
    DataSource = ds_sfzk
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentCtl3D = False
    TabOrder = 11
  end
  object DBEdit8: TDBEdit
    Left = 96
    Top = 278
    Width = 111
    Height = 22
    Ctl3D = False
    DataField = 'cybxrc'
    DataSource = ds_sfzk
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentCtl3D = False
    TabOrder = 12
  end
  object DBEdit9: TDBEdit
    Left = 96
    Top = 340
    Width = 111
    Height = 22
    Ctl3D = False
    DataField = 'ssje'
    DataSource = ds_sfzk
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentCtl3D = False
    TabOrder = 13
  end
  object BitBtn3: TcxButton
    Left = 185
    Top = 2
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
  object czybox: TDBLookupComboBox
    Left = 344
    Top = 8
    Width = 121
    Height = 24
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    KeyField = 'dm'
    ListField = 'mc'
    ListSource = ds_cxczy
    TabOrder = 15
    OnCloseUp = czyboxCloseUp
  end
  object DBEdit10: TDBEdit
    Left = 96
    Top = 312
    Width = 111
    Height = 22
    Ctl3D = False
    DataField = 'fxjje'
    DataSource = ds_sfzk
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentCtl3D = False
    TabOrder = 16
  end
  object dbedtzyjrc: TDBEdit
    Left = 117
    Top = 368
    Width = 90
    Height = 22
    Ctl3D = False
    DataField = 'zyjrc'
    DataSource = ds_sfzk
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentCtl3D = False
    TabOrder = 17
  end
  object dbedtzyjze: TDBEdit
    Left = 115
    Top = 397
    Width = 93
    Height = 22
    Ctl3D = False
    DataField = 'zyjze'
    DataSource = ds_sfzk
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentCtl3D = False
    TabOrder = 18
  end
  object grp_jzfp: TGroupBox
    Left = 220
    Top = 44
    Width = 212
    Height = 405
    Caption = #20854#20013#65306#31934#20934#25206#36139
    TabOrder = 19
    object lbl_1: TLabel
      Left = 3
      Top = 25
      Width = 88
      Height = 16
      Caption = #25910#25276#37329#24635#39069':'
    end
    object lbl_2: TLabel
      Left = 3
      Top = 54
      Width = 88
      Height = 16
      Caption = #25910#25276#37329#20154#27425':'
    end
    object lbl_3: TLabel
      Left = 3
      Top = 128
      Width = 88
      Height = 16
      Caption = #36864#25276#37329#20154#27425':'
    end
    object lbl_4: TLabel
      Left = 3
      Top = 97
      Width = 88
      Height = 16
      Caption = #36864#25276#37329#24635#39069':'
    end
    object lbl_5: TLabel
      Left = 7
      Top = 172
      Width = 88
      Height = 16
      Caption = #32467#31639#36864#29616#37329':'
    end
    object lbl_6: TLabel
      Left = 7
      Top = 242
      Width = 88
      Height = 16
      Caption = #32467#31639#34917#29616#37329':'
    end
    object lbl_7: TLabel
      Left = 7
      Top = 202
      Width = 88
      Height = 16
      Caption = #32467#31639#36864#20154#27425':'
    end
    object lbl_8: TLabel
      Left = 7
      Top = 273
      Width = 80
      Height = 16
      Caption = #32467#31639#34917#20154#27425
    end
    object yfzje: TLabel
      Left = 3
      Top = 311
      Width = 96
      Height = 16
      Caption = #20248#25242#24635#37329#39069#65306
    end
    object Label12: TLabel
      Left = 0
      Top = 342
      Width = 90
      Height = 15
      Caption = #27665#25919#34917#21161#37329#39069
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object edt_syjze: TDBEdit
      Left = 96
      Top = 23
      Width = 113
      Height = 22
      Ctl3D = False
      DataField = 'jzfp_syjze'
      DataSource = ds_sfzk
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentCtl3D = False
      TabOrder = 0
    end
    object edt_syjrc: TDBEdit
      Left = 96
      Top = 52
      Width = 113
      Height = 22
      Ctl3D = False
      DataField = 'jzfp_syjrc'
      DataSource = ds_sfzk
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentCtl3D = False
      TabOrder = 1
    end
    object edt_tyjze: TDBEdit
      Left = 96
      Top = 86
      Width = 113
      Height = 22
      Ctl3D = False
      DataField = 'jzfp_tyjze'
      DataSource = ds_sfzk
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentCtl3D = False
      TabOrder = 2
    end
    object edt_tyjrc: TDBEdit
      Left = 96
      Top = 117
      Width = 113
      Height = 22
      Ctl3D = False
      DataField = 'jzfp_tyjrc'
      DataSource = ds_sfzk
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentCtl3D = False
      TabOrder = 3
    end
    object edt_cytxje: TDBEdit
      Left = 96
      Top = 165
      Width = 113
      Height = 22
      Ctl3D = False
      DataField = 'jzfp_cytxje'
      DataSource = ds_sfzk
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentCtl3D = False
      TabOrder = 4
    end
    object edt_cybxje: TDBEdit
      Left = 96
      Top = 231
      Width = 113
      Height = 22
      Ctl3D = False
      DataField = 'jzfp_cybxje'
      DataSource = ds_sfzk
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentCtl3D = False
      TabOrder = 5
    end
    object edt_cytxrc: TDBEdit
      Left = 96
      Top = 191
      Width = 113
      Height = 22
      Ctl3D = False
      DataField = 'jzfp_cytxrc'
      DataSource = ds_sfzk
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentCtl3D = False
      TabOrder = 6
    end
    object edt_cybxrc: TDBEdit
      Left = 96
      Top = 262
      Width = 113
      Height = 22
      Ctl3D = False
      DataField = 'jzfp_cybxrc'
      DataSource = ds_sfzk
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentCtl3D = False
      TabOrder = 7
    end
    object yf_zje: TDBEdit
      Left = 96
      Top = 303
      Width = 113
      Height = 24
      DataField = 'ts_yfzje'
      DataSource = ds_sfzk
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 8
    end
    object mzbz_je: TDBEdit
      Left = 96
      Top = 333
      Width = 113
      Height = 24
      DataField = 'TS_MZBZJE'
      DataSource = ds_sfzk
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 9
    end
  end
  object ds_sfzk: TDataSource
    DataSet = sp_srzk
    Left = 638
    Top = 77
  end
  object ds_sjh: TDataSource
    DataSet = sp_cxsjh
    Left = 539
    Top = 73
  end
  object sp_czyjz: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_in_czyjz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
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
        DataType = ftFloat
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
        DataType = ftFloat
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
        DataType = ftFloat
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@cytxje'
        Attributes = [paNullable]
        DataType = ftFloat
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
        DataType = ftFloat
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@tsyfzje'
        Attributes = [paNullable]
        DataType = ftFloat
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@tsmzbzje'
        Attributes = [paNullable]
        DataType = ftFloat
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
    Left = 471
    Top = 82
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
    Left = 507
    Top = 74
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
    Left = 596
    Top = 78
  end
  object ds_cxczy: TDataSource
    DataSet = qry_cxczy
    Left = 677
    Top = 78
  end
  object qry_cxczy: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT czy.dm, czy.mc,czy.sybz'
      ' FROM sys_czy czy,sys_ksdm ks,sys_kssxdm kssx'
      ' where czy.ksdm=ks.dm and'
      '       ks.kssx=kssx.dm and'
      '       kssx.dm='#39'06'#39' '
      ' order by czy.dm')
    Left = 435
    Top = 75
  end
  object qry_jzfp: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 224
    Top = 256
  end
end
