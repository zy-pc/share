object frm_clhj_wjf: Tfrm_clhj_wjf
  Left = 211
  Top = 140
  BorderIcons = []
  Caption = #26410#25910#36153#26448#26009#35760#36153
  ClientHeight = 566
  ClientWidth = 787
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Panel_wjf: TPanel
    Left = 0
    Top = 137
    Width = 787
    Height = 429
    Align = alClient
    BevelOuter = bvLowered
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 785
      Height = 136
      Align = alTop
      Caption = #26410#20132#36153
      TabOrder = 0
      object DBGridEh1: TDBGridEh
        Left = 2
        Top = 17
        Width = 781
        Height = 117
        Align = alClient
        DataSource = ds_wjf_zb
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = GB2312_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'cfbh'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #32534#21495
            Width = 165
          end
          item
            EditButtons = <>
            FieldName = 'cfzje'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #24635#37329#39069
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'zfzje'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #33258#36153#24635#37329#39069
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'hjrq'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #21010#20215#26085#26399
            Width = 171
          end>
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 137
      Width = 785
      Height = 291
      Align = alClient
      Caption = #26126#32454
      TabOrder = 1
      object DBGridEh2: TDBGridEh
        Left = 2
        Top = 17
        Width = 781
        Height = 272
        Align = alClient
        DataSource = ds_wjf_mx
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = GB2312_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        FooterRowCount = 1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ypmc'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #21517#31216
            Width = 158
          end
          item
            EditButtons = <>
            FieldName = 'ypsl'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #25968#37327
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'ypdj'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #21333#20215
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'ypdw'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #21333#20301
            Width = 100
          end
          item
            Color = clAqua
            EditButtons = <>
            FieldName = 'xh'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #24207#21495
            Width = 35
          end>
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 787
    Height = 137
    Align = alTop
    BevelInner = bvLowered
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 13
      Width = 64
      Height = 16
      Caption = #21345'    '#21495
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 192
      Top = 40
      Width = 64
      Height = 16
      Caption = #20303#38498#39044#20132
    end
    object Label3: TLabel
      Left = 371
      Top = 40
      Width = 64
      Height = 16
      Caption = #36153#29992#24635#35745
    end
    object Label5: TLabel
      Left = 542
      Top = 10
      Width = 32
      Height = 16
      Caption = #24202#21495
    end
    object Label8: TLabel
      Left = 192
      Top = 10
      Width = 64
      Height = 16
      Caption = #30149#20154#22995#21517
    end
    object Label18: TLabel
      Left = 373
      Top = 10
      Width = 32
      Height = 16
      Caption = #24615#21035
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 464
      Top = 10
      Width = 32
      Height = 16
      Caption = #24180#40836
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 620
      Top = 10
      Width = 64
      Height = 16
      Caption = #20303#38498#31185#23460
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 7
      Top = 74
      Width = 68
      Height = 16
      Caption = #21097#20313#37329#39069
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 372
      Top = 66
      Width = 64
      Height = 16
      Caption = #30149#20154#22791#27880
    end
    object Label12: TLabel
      Left = 10
      Top = 39
      Width = 64
      Height = 16
      Caption = #36153#29992#31867#21035
    end
    object Label15: TLabel
      Left = 193
      Top = 69
      Width = 64
      Height = 16
      Caption = #27424#36153#38480#39069
    end
    object Label17: TLabel
      Left = 541
      Top = 37
      Width = 64
      Height = 16
      Caption = #33258#20184#24635#35745
    end
    object tmh: TEdit
      Left = 80
      Top = 8
      Width = 103
      Height = 24
      Hint = #30149#20154#22995#21517#12289#20303#38498#21345#21495#12289#30149#24202#21495
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnKeyDown = tmhKeyDown
    end
    object ryzd: TEdit
      Left = 255
      Top = 36
      Width = 114
      Height = 24
      TabStop = False
      ReadOnly = True
      TabOrder = 7
    end
    object zfy: TEdit
      Left = 438
      Top = 36
      Width = 97
      Height = 24
      TabStop = False
      Color = 16744576
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindow
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
      Text = '0'
    end
    object DBEdit11: TDBEdit
      Left = 407
      Top = 6
      Width = 39
      Height = 24
      DataField = 'brxb'
      DataSource = ds_zybrjbqk
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit9: TDBEdit
      Left = 500
      Top = 6
      Width = 33
      Height = 24
      DataField = 'brnl'
      DataSource = ds_zybrjbqk
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 688
      Top = 6
      Width = 89
      Height = 24
      DataField = 'ksmc'
      DataSource = ds_zybrjbqk
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object Panel2: TPanel
      Left = 2
      Top = 97
      Width = 783
      Height = 38
      Align = alBottom
      Alignment = taLeftJustify
      BevelInner = bvLowered
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      object Label4: TLabel
        Left = 416
        Top = 11
        Width = 51
        Height = 19
        Caption = #21512#35745':'
      end
      object DBText1: TDBText
        Left = 467
        Top = 5
        Width = 145
        Height = 29
        DataField = 'cfzje'
        DataSource = ds_wjf_zb
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -29
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
      end
      object B_ENTER: TBitBtn
        Left = 627
        Top = 2
        Width = 78
        Height = 36
        Caption = #35760#36153'(F10)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = B_ENTERClick
      end
      object B_FINAL: TBitBtn
        Left = 704
        Top = 2
        Width = 78
        Height = 36
        Caption = #32467#26463'(&X)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = B_FINALClick
      end
    end
    object zdjf: TEdit
      Left = 256
      Top = 65
      Width = 113
      Height = 24
      TabStop = False
      ReadOnly = True
      TabOrder = 11
    end
    object zfze: TEdit
      Left = 607
      Top = 33
      Width = 100
      Height = 24
      TabStop = False
      Color = 16744576
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindow
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
      Text = '0'
    end
    object DBEdit1: TDBEdit
      Left = 572
      Top = 6
      Width = 45
      Height = 24
      DataField = 'bch'
      DataSource = ds_zybrjbqk
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit2: TDBEdit
      Left = 255
      Top = 6
      Width = 112
      Height = 24
      DataField = 'brxm'
      DataSource = ds_zybrjbqk
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 80
      Top = 38
      Width = 105
      Height = 24
      DataField = 'fylbmc'
      DataSource = ds_zybrjbqk
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit4: TDBEdit
      Left = 438
      Top = 64
      Width = 339
      Height = 24
      Color = clAqua
      DataField = 'bz'
      DataSource = ds_zybrjbqk
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object DBEdit5: TDBEdit
      Left = 80
      Top = 67
      Width = 105
      Height = 24
      Color = clMenuText
      DataField = 'syje'
      DataSource = ds_zybrjbqk
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
  end
  object tempgrid1: TDBGrid
    Left = 80
    Top = 32
    Width = 448
    Height = 233
    DataSource = ds_zybrjbqk
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDrawColumnCell = tempgrid1DrawColumnCell
    OnDblClick = tempgrid1DblClick
    OnExit = tempgrid1Exit
    OnKeyDown = tempgrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'tmh'
        Title.Caption = #21345#21495
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brxm'
        Title.Caption = #22995#21517
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bch'
        Title.Caption = #24202#21495
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brnl'
        Title.Caption = #24180#40836
        Width = 47
        Visible = True
      end
      item
        Color = clSkyBlue
        Expanded = False
        FieldName = 'syje'
        Title.Caption = #21097#20313#37329#39069
        Width = 93
        Visible = True
      end>
  end
  object sp_cx_zybrjbqk: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zysf_cx_zydj_bqkf;1'
    Parameters = <
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 9
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 149
    Top = 259
    object sp_cx_zybrjbqktmh: TStringField
      FieldName = 'tmh'
      FixedChar = True
      Size = 9
    end
    object sp_cx_zybrjbqkzyh: TStringField
      FieldName = 'zyh'
      FixedChar = True
      Size = 16
    end
    object sp_cx_zybrjbqkbrxm: TStringField
      FieldName = 'brxm'
      FixedChar = True
      Size = 12
    end
    object sp_cx_zybrjbqksbkh: TStringField
      FieldName = 'sbkh'
      FixedChar = True
      Size = 30
    end
    object sp_cx_zybrjbqkcsrq: TDateTimeField
      FieldName = 'csrq'
    end
    object sp_cx_zybrjbqkybndzje: TBCDField
      FieldName = 'ybndzje'
      Precision = 19
      Size = 2
    end
    object sp_cx_zybrjbqkbrnl: TBCDField
      FieldName = 'brnl'
      Precision = 18
      Size = 2
    end
    object sp_cx_zybrjbqksbdw: TStringField
      FieldName = 'sbdw'
      FixedChar = True
      Size = 50
    end
    object sp_cx_zybrjbqkbrzy: TStringField
      FieldName = 'brzy'
      Size = 8
    end
    object sp_cx_zybrjbqkbrxb: TStringField
      FieldName = 'brxb'
      FixedChar = True
      Size = 2
    end
    object sp_cx_zybrjbqkbrsf: TStringField
      FieldName = 'brsf'
      FixedChar = True
      Size = 3
    end
    object sp_cx_zybrjbqkbrjg: TStringField
      FieldName = 'brjg'
      FixedChar = True
      Size = 5
    end
    object sp_cx_zybrjbqkbrmz: TStringField
      FieldName = 'brmz'
      FixedChar = True
      Size = 2
    end
    object sp_cx_zybrjbqkdwdh: TStringField
      FieldName = 'dwdh'
      FixedChar = True
      Size = 13
    end
    object sp_cx_zybrjbqkbrdz: TStringField
      FieldName = 'brdz'
      FixedChar = True
      Size = 30
    end
    object sp_cx_zybrjbqkdwyb: TStringField
      FieldName = 'dwyb'
      FixedChar = True
      Size = 6
    end
    object sp_cx_zybrjbqkzkze: TBCDField
      FieldName = 'zkze'
      Precision = 18
      Size = 2
    end
    object sp_cx_zybrjbqkzfze: TBCDField
      FieldName = 'zfze'
      Precision = 18
      Size = 2
    end
    object sp_cx_zybrjbqkdbr: TStringField
      FieldName = 'dbr'
      FixedChar = True
      Size = 10
    end
    object sp_cx_zybrjbqkdbrdz: TStringField
      FieldName = 'dbrdz'
      FixedChar = True
      Size = 30
    end
    object sp_cx_zybrjbqknxrdh: TStringField
      FieldName = 'nxrdh'
      FixedChar = True
      Size = 13
    end
    object sp_cx_zybrjbqkhkyb: TStringField
      FieldName = 'hkyb'
      FixedChar = True
      Size = 6
    end
    object sp_cx_zybrjbqkbch: TStringField
      FieldName = 'bch'
      FixedChar = True
      Size = 4
    end
    object sp_cx_zybrjbqkryzd: TStringField
      FieldName = 'ryzd'
      FixedChar = True
      Size = 40
    end
    object sp_cx_zybrjbqkksdm: TStringField
      FieldName = 'ksdm'
      FixedChar = True
      Size = 4
    end
    object sp_cx_zybrjbqkzgys: TStringField
      FieldName = 'zgys'
      FixedChar = True
      Size = 4
    end
    object sp_cx_zybrjbqkzycs: TIntegerField
      FieldName = 'zycs'
    end
    object sp_cx_zybrjbqkfylb: TStringField
      FieldName = 'fylb'
      FixedChar = True
      Size = 2
    end
    object sp_cx_zybrjbqkryks: TStringField
      FieldName = 'ryks'
      FixedChar = True
      Size = 4
    end
    object sp_cx_zybrjbqksfzhm: TStringField
      FieldName = 'sfzhm'
      FixedChar = True
      Size = 18
    end
    object sp_cx_zybrjbqkrybq: TStringField
      FieldName = 'rybq'
      FixedChar = True
      Size = 4
    end
    object sp_cx_zybrjbqkrytj: TStringField
      FieldName = 'rytj'
      FixedChar = True
      Size = 1
    end
    object sp_cx_zybrjbqkryrq: TDateTimeField
      FieldName = 'ryrq'
    end
    object sp_cx_zybrjbqksjyjze: TBCDField
      FieldName = 'sjyjze'
      Precision = 18
      Size = 2
    end
    object sp_cx_zybrjbqkzdjf: TBCDField
      FieldName = 'zdjf'
      ReadOnly = True
      Precision = 30
      Size = 2
    end
    object sp_cx_zybrjbqkbqdm: TStringField
      FieldName = 'bqdm'
      FixedChar = True
      Size = 4
    end
    object sp_cx_zybrjbqkyjze: TBCDField
      FieldName = 'yjze'
      Precision = 19
      Size = 2
    end
    object sp_cx_zybrjbqkzfy: TBCDField
      FieldName = 'zfy'
      Precision = 19
      Size = 2
    end
    object sp_cx_zybrjbqkybndzje_1: TBCDField
      FieldName = 'ybndzje_1'
      Precision = 19
      Size = 2
    end
    object sp_cx_zybrjbqkryczy: TStringField
      FieldName = 'ryczy'
      FixedChar = True
      Size = 4
    end
    object sp_cx_zybrjbqkbz: TStringField
      FieldName = 'bz'
      FixedChar = True
      Size = 30
    end
    object sp_cx_zybrjbqkksmc: TStringField
      FieldName = 'ksmc'
    end
    object sp_cx_zybrjbqkfylbmc: TStringField
      FieldName = 'fylbmc'
      FixedChar = True
      Size = 8
    end
    object sp_cx_zybrjbqkyjbz: TBooleanField
      FieldName = 'yjbz'
    end
    object sp_cx_zybrjbqkzfzdmc: TStringField
      FieldName = 'zfzdmc'
      Size = 10
    end
    object sp_cx_zybrjbqkfyxz: TBCDField
      FieldName = 'fyxz'
      Precision = 18
      Size = 0
    end
    object sp_cx_zybrjbqkmc: TStringField
      FieldName = 'mc'
      FixedChar = True
      Size = 8
    end
    object sp_cx_zybrjbqksyje: TBCDField
      FieldName = 'syje'
      Precision = 31
      Size = 2
    end
  end
  object ds_zybrjbqk: TDataSource
    DataSet = sp_cx_zybrjbqk
    Left = 147
    Top = 293
  end
  object qry_wjf_zb: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'zyh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select * from bqkf_zycfzb where sfbz=0 and zyh=:zyh')
    Left = 200
    Top = 256
  end
  object qry_wjf_mx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    DataSource = ds_wjf_zb
    Parameters = <
      item
        Name = 'cfbh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'select * from bqkf_zycfmx where cfbh=:cfbh')
    Left = 256
    Top = 256
  end
  object ds_wjf_zb: TDataSource
    DataSet = qry_wjf_zb
    Left = 200
    Top = 296
  end
  object ds_wjf_mx: TDataSource
    DataSet = qry_wjf_mx
    Left = 256
    Top = 296
  end
  object sp_save: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'bqkf_cffy;1'
    Parameters = <
      item
        Name = '@cfbh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
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
        Name = '@fyczy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
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
        Name = '@sc_cg'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Precision = 10
        Size = 1
        Value = ' '
      end>
    Left = 313
    Top = 259
  end
  object sp_cx_syje: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'bqgl_cx_zyfy;1'
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
    Left = 364
    Top = 259
  end
end
