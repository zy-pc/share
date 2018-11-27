object frm_mzyj: Tfrm_mzyj
  Left = 248
  Top = 155
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #25910#39044#20132#27454
  ClientHeight = 500
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
    ExplicitTop = -1
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
    Left = 222
    Top = 8
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
  object Panel1: TPanel
    Left = 0
    Top = 34
    Width = 657
    Height = 183
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Bevel4: TBevel
      Left = 211
      Top = 0
      Width = 446
      Height = 147
      Align = alRight
      Shape = bsFrame
      Style = bsRaised
      ExplicitHeight = 167
    end
    object Bevel3: TBevel
      Left = 0
      Top = 147
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
      Height = 147
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
      Caption = #24615'    '#21035
    end
    object Label6: TLabel
      Left = 8
      Top = 84
      Width = 64
      Height = 16
      Caption = #39044' '#20132' '#27454
    end
    object Label9: TLabel
      Left = 224
      Top = 93
      Width = 64
      Height = 16
      Caption = #23478#24237#20303#22336
    end
    object Label16: TLabel
      Left = 224
      Top = 37
      Width = 64
      Height = 16
      Caption = #20986#29983#26085#26399
    end
    object Label10: TLabel
      Left = 224
      Top = 65
      Width = 48
      Height = 16
      Caption = #36523#20221#35777
    end
    object Label13: TLabel
      Left = 8
      Top = 119
      Width = 64
      Height = 16
      Caption = #30149#20154#20132#27454
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
      Width = 48
      Height = 16
      Caption = #24635#39044#20132
    end
    object Label8: TLabel
      Left = 454
      Top = 39
      Width = 64
      Height = 16
      Caption = #32852#31995#30005#35805
    end
    object Label12: TLabel
      Left = 383
      Top = 119
      Width = 48
      Height = 16
      Caption = #24635#36153#29992
    end
    object Label14: TLabel
      Left = 500
      Top = 119
      Width = 64
      Height = 16
      Caption = #21097#20313#37329#39069
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
    object brxb: TEdit
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
    object brdz: TEdit
      Left = 292
      Top = 89
      Width = 351
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
      TabOrder = 2
    end
    object csrq: TDateTimePicker
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
      TabOrder = 4
    end
    object sfzhm: TEdit
      Left = 292
      Top = 59
      Width = 351
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
      TabOrder = 6
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
      TabOrder = 8
      OnEnter = db_fkfsEnter
      OnExit = db_fkfsExit
      OnKeyDown = db_fkfsKeyDown
    end
    object zyj: TEdit
      Left = 278
      Top = 117
      Width = 99
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
    object lxdh: TEdit
      Left = 520
      Top = 35
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
      TabOrder = 10
    end
    object zfy: TEdit
      Left = 433
      Top = 117
      Width = 61
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
    object syje: TEdit
      Left = 570
      Top = 117
      Width = 73
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
      TabOrder = 12
    end
  end
  object tmh: TEdit
    Left = 82
    Top = 4
    Width = 123
    Height = 24
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    MaxLength = 9
    TabOrder = 0
    OnEnter = tmhEnter
    OnExit = tmhExit
    OnKeyPress = tmhKeyPress
  end
  object sjbh: TEdit
    Left = 290
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
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 217
    Width = 657
    Height = 283
    TabStop = False
    Align = alClient
    DataSource = ds_yjmxcx
    DefaultDrawing = False
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
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
    Width = 439
    Height = 149
    DataSource = ds_brxx
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
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
        FieldName = 'brdz'
        Title.Alignment = taCenter
        Title.Caption = #30149#20154#22320#22336
        Width = 150
        Visible = True
      end>
  end
  object ok2: TBitBtn
    Left = 571
    Top = 187
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
    TabOrder = 5
    OnClick = ok2Click
    NumGlyphs = 2
  end
  object b_yjmx: TBitBtn
    Left = 451
    Top = 187
    Width = 105
    Height = 25
    Caption = #25171#21360#39044#20132#26126#32454'(&P)'
    Enabled = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = b_yjmxClick
    NumGlyphs = 2
  end
  object b_cancel: TBitBtn
    Left = 367
    Top = 187
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
    TabOrder = 7
    OnClick = b_cancelClick
    NumGlyphs = 2
  end
  object b_save: TBitBtn
    Left = 275
    Top = 187
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
    TabOrder = 8
    OnClick = b_saveClick
    NumGlyphs = 2
  end
  object ds_yjmxcx: TDataSource
    DataSet = sp_yjmxcx
    Left = 248
    Top = 398
  end
  object sp_yjmxcx: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'mzsf_cx_yjmx;1'
    Parameters = <
      item
        Name = '@khid'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 132
    Top = 398
  end
  object sp_cx_kyh: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'mzsf_cx_kyh;1'
    Parameters = <
      item
        Name = '@tmh'
        DataType = ftString
        Size = -1
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
  object sp_in_mzyj: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'mzsf_in_mzyj'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@khid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@brxm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@brxb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@yjje'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@yjxs'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@sfczy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@sjlb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@sjh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 9
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
  object ds_brxx: TDataSource
    DataSet = sp_cx_kyh
    Left = 182
    Top = 350
  end
end
