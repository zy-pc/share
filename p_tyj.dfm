object frm_tyj: Tfrm_tyj
  Left = 200
  Top = 156
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #20316#24223#39044#20132#27454
  ClientHeight = 452
  ClientWidth = 642
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  Menu = mmTYJ
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 642
    Height = 35
    Align = alTop
    Shape = bsFrame
    Style = bsRaised
  end
  object Label1: TLabel
    Left = 5
    Top = 9
    Width = 52
    Height = 16
    Caption = #21345'  '#21495
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 220
    Top = 9
    Width = 64
    Height = 16
    Caption = #25910#25454#32534#21495
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object ok2: TBitBtn
    Left = 563
    Top = 4
    Width = 69
    Height = 27
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
    TabOrder = 1
    OnClick = ok2Click
    NumGlyphs = 2
  end
  object tmh: TEdit
    Left = 60
    Top = 5
    Width = 125
    Height = 24
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    MaxLength = 9
    TabOrder = 0
    OnEnter = tmhEnter
    OnExit = tmhExit
    OnKeyPress = tmhKeyPress
  end
  object sjbh: TEdit
    Left = 285
    Top = 5
    Width = 121
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
    TabOrder = 2
  end
  object b_save: TBitBtn
    Left = 408
    Top = 4
    Width = 74
    Height = 27
    Caption = #36864#27454'(&T)'
    Enabled = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = b_saveClick
    NumGlyphs = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 35
    Width = 642
    Height = 121
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 4
    object Label3: TLabel
      Left = 8
      Top = 10
      Width = 48
      Height = 16
      Caption = #31185'  '#23460
    end
    object Label9: TLabel
      Left = 8
      Top = 40
      Width = 48
      Height = 16
      Caption = #24635#36153#29992
    end
    object Label8: TLabel
      Left = 8
      Top = 69
      Width = 48
      Height = 16
      Caption = #24635#39044#20132
    end
    object Label14: TLabel
      Left = 220
      Top = 69
      Width = 64
      Height = 16
      Caption = #21097#20313#25276#37329
    end
    object Label10: TLabel
      Left = 220
      Top = 40
      Width = 64
      Height = 16
      Caption = #36153#29992#31867#21035
    end
    object Label2: TLabel
      Left = 220
      Top = 10
      Width = 64
      Height = 16
      Caption = #22995'    '#21517
    end
    object Label19: TLabel
      Left = 435
      Top = 69
      Width = 64
      Height = 16
      Caption = #26368#22823#27424#36153
    end
    object Label16: TLabel
      Left = 435
      Top = 40
      Width = 64
      Height = 16
      Caption = #20837#38498#26085#26399
    end
    object Label4: TLabel
      Left = 435
      Top = 10
      Width = 64
      Height = 16
      Caption = #24202'    '#21495
    end
    object lblrate2: TLabel
      Left = 233
      Top = 97
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
    object lblRate: TLabel
      Left = 18
      Top = 97
      Width = 136
      Height = 16
      Caption = #39044#20132#29983#25104#25285#20445#27604#20363
      Font.Charset = GB2312_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ksmc: TEdit
      Left = 60
      Top = 5
      Width = 125
      Height = 24
      Enabled = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 0
    end
    object zfy: TEdit
      Left = 60
      Top = 35
      Width = 125
      Height = 24
      Enabled = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 1
    end
    object zyj: TEdit
      Left = 60
      Top = 64
      Width = 125
      Height = 24
      Enabled = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 2
    end
    object brxm: TEdit
      Left = 285
      Top = 5
      Width = 121
      Height = 24
      Enabled = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 3
    end
    object lbmc: TEdit
      Left = 285
      Top = 35
      Width = 122
      Height = 24
      Enabled = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 4
    end
    object syyj: TEdit
      Left = 286
      Top = 64
      Width = 121
      Height = 23
      BorderStyle = bsNone
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object bch: TEdit
      Left = 500
      Top = 5
      Width = 131
      Height = 24
      Enabled = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 6
    end
    object ryrq: TDateTimePicker
      Left = 500
      Top = 35
      Width = 132
      Height = 25
      Date = 36748.712903275490000000
      Time = 36748.712903275490000000
      DateFormat = dfLong
      Enabled = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 7
    end
    object zdjf: TEdit
      Left = 500
      Top = 64
      Width = 132
      Height = 24
      Enabled = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 8
    end
    object edtcsdbje: TEdit
      Left = 307
      Top = 93
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
      TabOrder = 9
    end
    object edtRate: TEdit
      Left = 160
      Top = 93
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
      TabOrder = 10
    end
    object ckbxAutoGen: TRzCheckBox
      Left = 430
      Top = 97
      Width = 107
      Height = 17
      Caption = #20943#23569#30456#24212#25285#20445
      Font.Charset = GB2312_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      State = cbUnchecked
      TabOrder = 11
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 156
    Width = 642
    Height = 296
    Align = alClient
    DataSource = ds_yjmxcx
    DefaultDrawing = False
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 5
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
        Title.Caption = #25276#37329#37329#39069
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fkfsmc'
        Title.Alignment = taCenter
        Title.Caption = #20184#27454#26041#24335
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'czymc'
        Title.Alignment = taCenter
        Title.Caption = #25805#20316#21592
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sjh'
        Title.Alignment = taCenter
        Title.Caption = #25910#25454#32534#21495
        Width = 133
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sfrq'
        Title.Alignment = taCenter
        Title.Caption = #25910#36153#26085#26399
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bz'
        Title.Alignment = taCenter
        Title.Caption = #22791#27880
        Width = 104
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 55
    Top = 231
    Width = 554
    Height = 149
    DataSource = DM_data.DS_pub
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 6
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
        Width = 70
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
  object b_print: TBitBtn
    Left = 486
    Top = 4
    Width = 74
    Height = 27
    Caption = #25171#21360'(&P)'
    Enabled = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = b_printClick
    NumGlyphs = 2
  end
  object ds_yjmxcx: TDataSource
    DataSet = sp_yjmxcx
    Left = 215
    Top = 193
  end
  object sp_yjmxcx: TADOStoredProc
    Connection = DM_data.ado_mydata
    AfterScroll = sp_yjmxcxAfterScroll
    ProcedureName = 'zysf_cx_tyjmx;1'
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
      end
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 245
    Top = 194
  end
  object sp_up_tyj: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_up_tyj;1'
    Parameters = <
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
        Name = '@yjje'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@sjbh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
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
    Left = 320
    Top = 193
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
    Left = 282
    Top = 193
  end
  object mmTYJ: TMainMenu
    Left = 528
    Top = 200
    object mniPzdbbl: TMenuItem
      Caption = #37197#32622#25285#20445#27604#20363
      Visible = False
      OnClick = mniPzdbblClick
    end
  end
end
