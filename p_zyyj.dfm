object frm_zyyj: Tfrm_zyyj
  Left = 248
  Top = 155
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #25910#39044#20132#27454
  ClientHeight = 514
  ClientWidth = 657
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  Menu = mmzyyj
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  ShowHint = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 657
    Height = 34
    Align = alTop
    Shape = bsFrame
    Style = bsRaised
  end
  object Label1: TLabel
    Left = 7
    Top = 9
    Width = 64
    Height = 16
    Caption = #21345'    '#21495
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 463
    Top = 9
    Width = 64
    Height = 16
    Caption = #25910' '#25454' '#21495
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 194
    Top = 8
    Width = 40
    Height = 16
    Caption = #31185' '#23460
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 34
    Width = 657
    Height = 209
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object Bevel4: TBevel
      Left = 211
      Top = 0
      Width = 446
      Height = 173
      Align = alRight
      Shape = bsFrame
      Style = bsRaised
      ExplicitTop = 17
      ExplicitHeight = 156
    end
    object Bevel3: TBevel
      Left = 0
      Top = 173
      Width = 657
      Height = 36
      Align = alBottom
      Shape = bsFrame
      Style = bsRaised
      ExplicitTop = 151
    end
    object Bevel2: TBevel
      Left = 0
      Top = 0
      Width = 211
      Height = 173
      Align = alClient
      Shape = bsFrame
      Style = bsRaised
      ExplicitWidth = 215
      ExplicitHeight = 150
    end
    object Label2: TLabel
      Left = 224
      Top = 9
      Width = 64
      Height = 16
      Caption = #22995'    '#21517
    end
    object Label3: TLabel
      Left = 8
      Top = 17
      Width = 64
      Height = 16
      Caption = #31185'    '#23460
    end
    object Label4: TLabel
      Left = 454
      Top = 9
      Width = 64
      Height = 16
      Caption = #24202'    '#21495
    end
    object Label6: TLabel
      Left = 8
      Top = 84
      Width = 64
      Height = 16
      Caption = #39044' '#20132' '#27454
    end
    object Label8: TLabel
      Left = 454
      Top = 93
      Width = 64
      Height = 16
      Caption = #24635' '#39044' '#20132
    end
    object Label9: TLabel
      Left = 224
      Top = 93
      Width = 64
      Height = 16
      Caption = #24635' '#36153' '#29992
    end
    object Label16: TLabel
      Left = 224
      Top = 37
      Width = 64
      Height = 16
      Caption = #20837#38498#26085#26399
    end
    object Label19: TLabel
      Left = 454
      Top = 37
      Width = 64
      Height = 16
      Caption = #26368#22823#27424#36153
    end
    object Label10: TLabel
      Left = 224
      Top = 65
      Width = 64
      Height = 16
      Caption = #36153#29992#31867#21035
    end
    object Label13: TLabel
      Left = 8
      Top = 119
      Width = 64
      Height = 16
      Caption = #30149#20154#20132#27454
    end
    object Label14: TLabel
      Left = 454
      Top = 65
      Width = 64
      Height = 16
      Caption = #21097#20313#25276#37329
    end
    object Label5: TLabel
      Left = 8
      Top = 51
      Width = 64
      Height = 16
      Caption = #20184#27454#26041#24335
    end
    object Label11: TLabel
      Left = 224
      Top = 122
      Width = 64
      Height = 16
      Caption = #31649#29702#21333#20301
    end
    object Label12: TLabel
      Left = 454
      Top = 122
      Width = 64
      Height = 16
      Caption = #22791'    '#27880
    end
    object lblRate: TLabel
      Left = 222
      Top = 149
      Width = 102
      Height = 16
      Caption = #25285#20445#29983#25104#27604#20363
      Font.Charset = GB2312_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblrate2: TLabel
      Left = 395
      Top = 148
      Width = 68
      Height = 16
      Caption = #29983#25104#25285#20445
      Font.Charset = GB2312_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_yjk: TLabel
      Left = 8
      Top = 151
      Width = 9
      Height = 16
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object brxm: TEdit
      Left = 292
      Top = 5
      Width = 147
      Height = 24
      Color = clInfoBk
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object bch: TEdit
      Left = 520
      Top = 5
      Width = 123
      Height = 24
      Color = clInfoBk
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object yjsm: TEdit
      Left = 80
      Top = 81
      Width = 123
      Height = 24
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 7
      Text = '0.00'
      OnEnter = yjsmEnter
      OnExit = yjsmExit
      OnKeyPress = yjsmKeyPress
    end
    object zyj: TEdit
      Left = 520
      Top = 89
      Width = 123
      Height = 24
      Color = clInfoBk
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object zfy: TEdit
      Left = 292
      Top = 89
      Width = 147
      Height = 24
      Color = clInfoBk
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object zdjf: TEdit
      Left = 520
      Top = 33
      Width = 123
      Height = 24
      Color = clInfoBk
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object ryrq: TDateTimePicker
      Left = 292
      Top = 33
      Width = 147
      Height = 24
      Date = 36748.712903275490000000
      Time = 36748.712903275490000000
      Color = clInfoBk
      DateFormat = dfLong
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 3
    end
    object ksmc: TEdit
      Left = 80
      Top = 14
      Width = 123
      Height = 24
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 2
    end
    object lbmc: TEdit
      Left = 292
      Top = 61
      Width = 147
      Height = 24
      Color = clInfoBk
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object ts: TEdit
      Left = 80
      Top = 114
      Width = 123
      Height = 24
      BorderStyle = bsNone
      Color = clCaptionText
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object syyj: TEdit
      Left = 520
      Top = 61
      Width = 123
      Height = 24
      Color = clInfoBk
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object sbdw: TEdit
      Left = 292
      Top = 117
      Width = 147
      Height = 24
      Color = clInfoBk
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object bz: TEdit
      Left = 520
      Top = 118
      Width = 123
      Height = 24
      Color = clInfoBk
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 179
      Width = 89
      Height = 25
      Hint = #24403#21069#25968#25454#19981#20445#23384#23384#30424#65281#65281
      Caption = #23548#20837#38376#35786#36153#29992
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
      OnClick = BitBtn1Click
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 206
      Top = 179
      Width = 93
      Height = 25
      Hint = #24403#21069#25968#25454#19981#20445#23384#23384#30424#65281#65281
      Caption = #34917#25171#39044#20132#25910#25454
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 18
      OnClick = BitBtn2Click
      NumGlyphs = 2
    end
    object edtRate: TEdit
      Left = 326
      Top = 145
      Width = 67
      Height = 24
      Color = clInfoBk
      Font.Charset = GB2312_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 13
    end
    object edtcsdbje: TEdit
      Left = 465
      Top = 145
      Width = 100
      Height = 24
      Color = clInfoBk
      Font.Charset = GB2312_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 14
    end
    object ckbxAutoGen: TRzCheckBox
      Left = 96
      Top = 149
      Width = 104
      Height = 18
      Caption = #19981#29983#25104#25285#20445
      Font.Charset = GB2312_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      State = cbUnchecked
      TabOrder = 15
      OnClick = ckbxAutoGenClick
    end
    object btnAga: TBitBtn
      Left = 112
      Top = 179
      Width = 75
      Height = 25
      Hint = #37325#25171#25910#25454#21495#19981#26356#26032
      Caption = #37325#26032#25171#21360
      Enabled = False
      TabOrder = 17
      OnClick = btnAgaClick
    end
    object db_fkfs: TDBLookupComboBox
      Left = 80
      Top = 46
      Width = 123
      Height = 24
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      KeyField = 'dm'
      ListField = 'dm;mc'
      ListFieldIndex = 1
      ListSource = ds_fkfs
      ParentFont = False
      TabOrder = 19
      OnEnter = db_fkfsEnter
      OnExit = db_fkfsExit
      OnKeyDown = db_fkfsKeyDown
    end
    object cbb_fkfs: TComboBox
      Left = 571
      Top = 143
      Width = 125
      Height = 24
      ItemHeight = 16
      TabOrder = 20
      Visible = False
    end
  end
  object tmh: TEdit
    Left = 80
    Top = 5
    Width = 107
    Height = 24
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    MaxLength = 9
    TabOrder = 2
    OnDblClick = tmhDblClick
    OnEnter = tmhEnter
    OnExit = tmhExit
    OnKeyPress = tmhKeyPress
  end
  object sjbh: TEdit
    Left = 530
    Top = 5
    Width = 123
    Height = 24
    Enabled = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = [fsBold]
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 243
    Width = 657
    Height = 271
    TabStop = False
    Align = alClient
    DataSource = ds_yjmxcx
    DefaultDrawing = False
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ReadOnly = True
    TabOrder = 9
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'yjje'
        Title.Alignment = taCenter
        Title.Caption = #39044#20132#37329#39069
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fkfsmc'
        Title.Alignment = taCenter
        Title.Caption = #20184#27454#26041#24335
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'czymc'
        Title.Alignment = taCenter
        Title.Caption = #25910#36153#21592
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sjh'
        Title.Alignment = taCenter
        Title.Caption = #25910#25454#32534#21495
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sfrq'
        Title.Alignment = taCenter
        Title.Caption = #25910#36153#26085#26399
        Width = 158
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bz'
        Title.Alignment = taCenter
        Title.Caption = #22791#27880
        Width = 102
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 55
    Top = 263
    Width = 554
    Height = 149
    DataSource = DM_data.DS_pub
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 10
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDblClick = DBGrid2DblClick
    OnExit = DBGrid2Exit
    OnKeyPress = DBGrid2KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'tmh'
        Title.Alignment = taCenter
        Title.Caption = #26465#30721#21495
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brxm'
        Title.Alignment = taCenter
        Title.Caption = #30149#21592#22995#21517
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brxb'
        Title.Alignment = taCenter
        Title.Caption = #24615#21035
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brnl'
        Title.Alignment = taCenter
        Title.Caption = #24180#40836
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mc'
        Title.Alignment = taCenter
        Title.Caption = #20303#38498#31185#23460
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brdz'
        Title.Alignment = taCenter
        Title.Caption = #30149#20154#22320#22336
        Width = 150
        Visible = True
      end>
  end
  object ok2: TBitBtn
    Left = 577
    Top = 213
    Width = 72
    Height = 25
    Hint = #24403#21069#25968#25454#19981#20445#23384#23384#30424#65281#65281
    Caption = #36864#20986'(&X)'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = ok2Click
    NumGlyphs = 2
  end
  object b_yjmx: TBitBtn
    Left = 475
    Top = 213
    Width = 96
    Height = 25
    Caption = #25171#21360#39044#20132#26126#32454'(&P)'
    Enabled = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = b_yjmxClick
    NumGlyphs = 2
  end
  object b_cancel: TBitBtn
    Left = 397
    Top = 213
    Width = 72
    Height = 25
    Cancel = True
    Caption = #25918#24323'(&C)'
    Enabled = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = b_cancelClick
    NumGlyphs = 2
  end
  object b_save: TBitBtn
    Left = 305
    Top = 213
    Width = 76
    Height = 25
    Caption = #23384#30424'(&S)'
    Enabled = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = b_saveClick
    NumGlyphs = 2
  end
  object SXComboBox1: TSXComboBox
    Left = 236
    Top = 4
    Width = 82
    Height = 24
    Style = csDropDownList
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ItemHeight = 16
    ParentFont = False
    TabOrder = 0
    OnClick = SXComboBox1Click
    Value = '-1'
    UsesQry = True
    TableName = 'sys_ksdm'
    Condition = 'kssx='#39'09'#39' AND sybz = '#39'1'#39
    Connection = DM_data.ado_mydata
    ShowField = 'mc'
    ValueField = 'dm'
    ShowAll = False
    ShowAllValue = #20840#37096
  end
  object cb_brxx: TComboBox
    Left = 324
    Top = 4
    Width = 111
    Height = 24
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ItemHeight = 16
    TabOrder = 1
    OnClick = cb_brxxClick
  end
  object ds_yjmxcx: TDataSource
    DataSet = sp_yjmxcx
    Left = 248
    Top = 398
  end
  object sp_yjmxcx: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_cx_yjmx;1'
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
        Size = 16
        Value = Null
      end>
    Left = 132
    Top = 398
  end
  object sp_sebrqk: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_cx_zybrdj;1'
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
        Size = 16
        Value = Null
      end>
    Left = 74
    Top = 398
  end
  object qry_fkfs: TADOQuery
    AutoCalcFields = False
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from sys_fkfs')
    Left = 16
    Top = 398
  end
  object ds_fkfs: TDataSource
    DataSet = qry_fkfs
    Left = 190
    Top = 398
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 16
    Top = 436
  end
  object sp_bdpj_zyyj: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_bdpj_zyyj'
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
        Size = -1
        Value = Null
      end
      item
        Name = '@old_sjh'
        Size = -1
        Value = Null
      end
      item
        Name = '@sjh'
        Size = -1
        Value = Null
      end
      item
        Name = '@czydm'
        Size = -1
        Value = Null
      end
      item
        Name = '@sjlb'
        Size = -1
        Value = Null
      end
      item
        Name = '@sczt'
        DataType = ftString
        Size = 1
        Value = '1'
      end>
    Left = 290
    Top = 400
  end
  object mmzyyj: TMainMenu
    Left = 576
    Top = 336
    object mniDBBL: TMenuItem
      Caption = #37197#32622#25285#20445#27604#20363
      Visible = False
      OnClick = mniDBBLClick
    end
  end
  object qry_brxx: TADOQuery
    AutoCalcFields = False
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ksdm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT (rtrim(b.yybch)+'#39' '#39'+a.brxm)as brxx,a.tmh  FROM zysf_zydj ' +
        'a,sys_kscwsz b'
      
        'where  cybz = 0 AND a.bch = b.bcbh AND b.zyh=a.zyh and a.ksdm=:k' +
        'sdm'
      'ORDER BY bch')
    Left = 384
    Top = 456
    object qry_brxxbrxx: TStringField
      FieldName = 'brxx'
    end
    object qry_brxxtmh: TStringField
      FieldName = 'tmh'
      Size = 9
    end
  end
  object ds_brxx: TDataSource
    DataSet = qry_brxx
    Left = 472
    Top = 456
  end
end
