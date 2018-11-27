object frm_clcfhj: Tfrm_clcfhj
  Left = 211
  Top = 140
  BorderIcons = []
  Caption = #26448#26009#21010#20215#25910#36153
  ClientHeight = 566
  ClientWidth = 872
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 872
    Height = 163
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
      Left = 446
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
    object Label4: TLabel
      Left = 8
      Top = 43
      Width = 64
      Height = 16
      Caption = #24320#21333#20154#21592
    end
    object Label18: TLabel
      Left = 372
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
      Left = 455
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
      Left = 671
      Top = 32
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
      Left = 11
      Top = 99
      Width = 64
      Height = 16
      Caption = #30149#20154#22791#27880
    end
    object Label12: TLabel
      Left = 10
      Top = 71
      Width = 64
      Height = 16
      Caption = #36153#29992#31867#21035
    end
    object Label9: TLabel
      Left = 546
      Top = 99
      Width = 32
      Height = 16
      Caption = #32534#21495
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 193
      Top = 69
      Width = 64
      Height = 16
      Caption = #27424#36153#38480#39069
    end
    object Label17: TLabel
      Left = 447
      Top = 69
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
      TabOrder = 1
      OnChange = tmhChange
      OnEnter = tmhEnter
      OnExit = tmhExit
      OnKeyPress = tempgrid1KeyPress
    end
    object ryzd: TEdit
      Left = 255
      Top = 36
      Width = 190
      Height = 24
      TabStop = False
      ReadOnly = True
      TabOrder = 2
    end
    object zfy: TEdit
      Left = 512
      Top = 36
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
      TabOrder = 3
      Text = '0'
    end
    object bch: TEdit
      Left = 572
      Top = 6
      Width = 40
      Height = 24
      TabStop = False
      ReadOnly = True
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 255
      Top = 6
      Width = 114
      Height = 27
      TabStop = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object KDYS: TEdit
      Left = 81
      Top = 39
      Width = 103
      Height = 24
      TabStop = False
      TabOrder = 5
      OnEnter = kdysEnter
      OnExit = kdysExit
      OnKeyPress = KDYSKeyPress
    end
    object DBEdit11: TDBEdit
      Left = 406
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
      TabOrder = 6
    end
    object DBEdit9: TDBEdit
      Left = 491
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
      TabOrder = 7
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
      TabOrder = 8
    end
    object syje: TEdit
      Left = 616
      Top = 48
      Width = 166
      Height = 37
      TabStop = False
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -29
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
      Text = '0'
    end
    object Panel2: TPanel
      Left = 2
      Top = 123
      Width = 868
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
      TabOrder = 10
      object Label14: TLabel
        Left = 391
        Top = 9
        Width = 40
        Height = 19
        Caption = #21512#35745
      end
      object Label10: TLabel
        Left = 440
        Top = 10
        Width = 88
        Height = 19
        Caption = '00000.00'
      end
      object SBt_wjf: TSpeedButton
        Left = 2
        Top = 2
        Width = 105
        Height = 36
        Caption = #26410#35760#36153#26448#26009'(F11)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        OnClick = SBt_wjfClick
      end
      object B_ENTER: TBitBtn
        Left = 555
        Top = 2
        Width = 78
        Height = 36
        Caption = #35760#36153'(F10)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = B_ENTERClick
      end
      object B_giveup: TBitBtn
        Left = 632
        Top = 2
        Width = 78
        Height = 36
        Caption = #25918#24323'(F12)'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = B_giveupClick
      end
      object B_FINAL: TBitBtn
        Left = 709
        Top = 2
        Width = 78
        Height = 36
        Caption = #32467#26463'(&X)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = B_FINALClick
      end
    end
    object e_bz: TEdit
      Left = 81
      Top = 97
      Width = 434
      Height = 24
      TabStop = False
      Color = clAqua
      ReadOnly = True
      TabOrder = 11
    end
    object e_fylb: TEdit
      Left = 81
      Top = 67
      Width = 104
      Height = 24
      TabStop = False
      Enabled = False
      TabOrder = 12
    end
    object cfbh: TEdit
      Left = 583
      Top = 92
      Width = 198
      Height = 29
      AutoSize = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
    end
    object zdjf: TEdit
      Left = 256
      Top = 65
      Width = 190
      Height = 24
      TabStop = False
      ReadOnly = True
      TabOrder = 14
    end
    object zfze: TEdit
      Left = 513
      Top = 65
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
      TabOrder = 15
      Text = '0'
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 163
    Width = 872
    Height = 377
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object cfmx_input: TDBGridEh
      Left = 2
      Top = 2
      Width = 868
      Height = 373
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = ds_zycfmx
      Flat = False
      FooterColor = clYellow
      FooterFont.Charset = GB2312_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -16
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      RowDetailPanel.Color = clBtnFace
      SumList.Active = True
      SumList.VirtualRecords = True
      TabOrder = 0
      TitleFont.Charset = GB2312_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnColExit = cfmx_inputColExit
      OnEnter = cfmx_inputEnter
      OnKeyDown = cfmx_inputKeyDown
      OnKeyPress = cfmx_inputKeyPress
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ypmc'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          Footer.Value = #26412#22788#26041#24635#35745
          Footer.ValueType = fvtStaticText
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #26448#26009#21517#31216
          Title.Font.Charset = GB2312_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Width = 216
        end
        item
          EditButtons = <>
          FieldName = 'ypgg'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #35268#26684
          Title.Font.Charset = GB2312_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Width = 128
        end
        item
          EditButtons = <>
          FieldName = 'ypdw'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #21333#20301
          Title.Font.Charset = GB2312_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Width = 61
        end
        item
          EditButtons = <>
          FieldName = 'ypdj'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #21333#20215
          Title.Font.Charset = GB2312_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Width = 58
        end
        item
          EditButtons = <>
          FieldName = 'ypsl'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #25968#37327
          Title.Font.Charset = GB2312_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Width = 54
        end
        item
          EditButtons = <>
          FieldName = 'zje'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #24635#37329#39069
          Title.Font.Charset = GB2312_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Width = 76
        end
        item
          EditButtons = <>
          FieldName = 'zfje'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #33258#36153#37329#39069
          Width = 72
        end
        item
          EditButtons = <>
          FieldName = 'jylyp'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          Footers = <>
          Title.Caption = #31867#21035
          Title.Font.Charset = GB2312_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Width = 42
        end
        item
          Color = clAqua
          EditButtons = <>
          FieldName = 'xh'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Caption = #24207#21495
          Title.Font.Charset = GB2312_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Width = 37
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object ypdw_grid: TDBGrid
      Left = 595
      Top = 176
      Width = 137
      Height = 145
      DataSource = ds_ypdw
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = GB2312_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      Visible = False
      OnExit = ypdw_gridExit
      OnKeyPress = ypdw_gridKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'ypdw'
          Title.Caption = #21333#20301
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bzbl'
          Title.Caption = #27604#29575
          Width = 41
          Visible = True
        end>
    end
    object ypmc_grid: TDBGrid
      Left = 80
      Top = 44
      Width = 665
      Height = 276
      DataSource = ds_ypmc
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
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
      OnExit = ypmc_gridExit
      OnKeyPress = tempgrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'ypmc'
          Title.Alignment = taCenter
          Title.Caption = #26448#26009#21517#31216
          Width = 196
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pym'
          Title.Alignment = taCenter
          Title.Caption = #25340#38899#30721
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ypgg'
          Title.Alignment = taCenter
          Title.Caption = #35268#26684
          Width = 121
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kcsl'
          Title.Alignment = taCenter
          Title.Caption = #24211#23384#25968#37327
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ypdw'
          Title.Alignment = taCenter
          Title.Caption = #21333#20301
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lsj'
          Title.Alignment = taCenter
          Title.Caption = #21333#20215
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kcsl'
          Title.Alignment = taCenter
          Title.Caption = #24211#23384#25968#37327
          Width = 70
          Visible = True
        end>
    end
  end
  object ksys_grid: TDBGrid
    Left = 79
    Top = 242
    Width = 255
    Height = 153
    DataSource = ds_ysks
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = ksys_gridExit
    OnKeyPress = tempgrid1KeyPress
  end
  object Panel3: TPanel
    Left = 0
    Top = 540
    Width = 872
    Height = 26
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'F7-'#36864#26448#26009'  F10-'#35760#36153'  F11-'#26410#35760#36153#26448#26009
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object tempgrid1: TDBGrid
    Left = 96
    Top = 288
    Width = 448
    Height = 151
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
    TabOrder = 4
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDrawColumnCell = tempgrid1DrawColumnCell
    OnExit = tempgrid1Exit
    OnKeyPress = tempgrid1KeyPress
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
  object ad_zycfmx: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = ad_zycfmxAfterInsert
    AfterEdit = ad_zycfmxAfterDelete
    BeforePost = ad_zycfmxBeforePost
    AfterPost = ad_zycfmxAfterPost
    BeforeDelete = ad_zycfmxBeforeDelete
    AfterDelete = ad_zycfmxAfterDelete
    OnCalcFields = ad_zycfmxCalcFields
    CommandText = 'select * from bqkf_zycfmx where cfbh=:cfbh'
    Parameters = <
      item
        Name = 'cfbh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    Left = 489
    Top = 259
    object ad_zycfmxcfbh: TStringField
      FieldName = 'cfbh'
      FixedChar = True
      Size = 12
    end
    object ad_zycfmxxh: TIntegerField
      FieldName = 'xh'
    end
    object ad_zycfmxypdm: TStringField
      FieldName = 'ypdm'
      FixedChar = True
      Size = 14
    end
    object ad_zycfmxypdwid: TIntegerField
      FieldName = 'ypdwid'
    end
    object ad_zycfmxypdw: TStringField
      FieldName = 'ypdw'
      FixedChar = True
      Size = 8
    end
    object ad_zycfmxypbzbl: TIntegerField
      FieldName = 'ypbzbl'
    end
    object ad_zycfmxypsl: TBCDField
      FieldName = 'ypsl'
      Precision = 18
      Size = 2
    end
    object ad_zycfmxypdj: TBCDField
      FieldName = 'ypdj'
      Precision = 18
    end
    object ad_zycfmxyplb: TStringField
      FieldName = 'yplb'
      FixedChar = True
      Size = 30
    end
    object ad_zycfmxypmc: TStringField
      FieldName = 'ypmc'
      Size = 30
    end
    object ad_zycfmxypgg: TStringField
      FieldKind = fkLookup
      FieldName = 'ypgg'
      LookupDataSet = ad_ypdm
      LookupKeyFields = 'ypdm'
      LookupResultField = 'ypgg'
      KeyFields = 'ypdm'
      Lookup = True
    end
    object ad_zycfmxzje: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'zje'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ad_zycfmxzfje: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'zfje'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ad_zycfmxkccgj: TBCDField
      FieldName = 'kccgj'
      Precision = 18
    end
    object ad_zycfmxsbfybl: TFloatField
      FieldKind = fkLookup
      FieldName = 'sbfybl'
      LookupDataSet = ad_ypdm
      LookupKeyFields = 'ypdm'
      LookupResultField = 'sbfybl'
      KeyFields = 'ypdm'
      Lookup = True
    end
    object ad_zycfmxhtfybl: TFloatField
      FieldKind = fkLookup
      FieldName = 'htfybl'
      LookupDataSet = ad_ypdm
      LookupKeyFields = 'ypdm'
      LookupResultField = 'htfybl'
      KeyFields = 'ypdm'
      Lookup = True
    end
    object ad_zycfmxbxfybl: TFloatField
      FieldKind = fkLookup
      FieldName = 'bxfybl'
      LookupDataSet = ad_ypdm
      LookupKeyFields = 'ypdm'
      LookupResultField = 'bxfybl'
      KeyFields = 'ypdm'
      Lookup = True
    end
    object ad_zycfmxjlyp: TBooleanField
      FieldKind = fkLookup
      FieldName = 'jlyp'
      LookupDataSet = ad_ypdm
      LookupKeyFields = 'ypdm'
      LookupResultField = 'sfjlyp'
      KeyFields = 'ypdm'
      Lookup = True
    end
    object ad_zycfmxylyp: TBooleanField
      FieldKind = fkLookup
      FieldName = 'ylyp'
      LookupDataSet = ad_ypdm
      LookupKeyFields = 'ypdm'
      LookupResultField = 'sfylyp'
      KeyFields = 'ypdm'
      Lookup = True
    end
    object ad_zycfmxjylyp: TStringField
      FieldKind = fkCalculated
      FieldName = 'jylyp'
      Calculated = True
    end
    object ad_zycfmxsbfybl01: TFloatField
      FieldKind = fkLookup
      FieldName = 'sbfybl01'
      LookupDataSet = ad_ypdm
      LookupKeyFields = 'ypdm'
      LookupResultField = 'sbfybl'
      KeyFields = 'ypdm'
      Lookup = True
    end
    object ad_zycfmxsbfybl02: TFloatField
      FieldKind = fkLookup
      FieldName = 'sbfybl02'
      LookupDataSet = ad_ypdm
      LookupKeyFields = 'ypdm'
      LookupResultField = 'sbfybl'
      KeyFields = 'ypdm'
      Lookup = True
    end
  end
  object sp_cx_xyjg: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'bqkf_cx_ypkc;1'
    Parameters = <
      item
        Name = '@pym'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 397
    Top = 355
    object sp_cx_xyjgypdm: TStringField
      FieldName = 'ypdm'
      Size = 14
    end
    object sp_cx_xyjgypmc: TStringField
      FieldName = 'ypmc'
      FixedChar = True
      Size = 30
    end
    object sp_cx_xyjgpym: TStringField
      FieldName = 'pym'
      ReadOnly = True
      Size = 15
    end
    object sp_cx_xyjgypgg: TStringField
      FieldName = 'ypgg'
      FixedChar = True
    end
    object sp_cx_xyjgdwid: TIntegerField
      FieldName = 'dwid'
    end
    object sp_cx_xyjgypdw: TStringField
      FieldName = 'ypdw'
      FixedChar = True
      Size = 8
    end
    object sp_cx_xyjgzhl: TIntegerField
      FieldName = 'zhl'
    end
    object sp_cx_xyjglsj: TBCDField
      FieldName = 'lsj'
      Precision = 18
    end
    object sp_cx_xyjgsybz: TStringField
      FieldName = 'sybz'
      FixedChar = True
      Size = 1
    end
    object sp_cx_xyjgkcsl: TBCDField
      FieldName = 'kcsl'
      ReadOnly = True
      Precision = 32
      Size = 18
    end
    object sp_cx_xyjgzxdwsl: TBCDField
      FieldName = 'zxdwsl'
      Precision = 18
      Size = 2
    end
    object sp_cx_xyjghtfybl: TBCDField
      FieldName = 'htfybl'
      Precision = 6
      Size = 2
    end
    object sp_cx_xyjgsbfybl: TBCDField
      FieldName = 'sbfybl'
      Precision = 6
      Size = 2
    end
    object sp_cx_xyjgbxfybl: TBCDField
      FieldName = 'bxfybl'
      Precision = 6
      Size = 2
    end
    object sp_cx_xyjgsfjsyp: TBooleanField
      FieldName = 'sfjsyp'
    end
    object sp_cx_xyjgsfgzyp: TBooleanField
      FieldName = 'sfgzyp'
    end
    object sp_cx_xyjgsfdmyp: TBooleanField
      FieldName = 'sfdmyp'
    end
    object sp_cx_xyjgsfzfyp: TBooleanField
      FieldName = 'sfzfyp'
    end
    object sp_cx_xyjgkccgj: TBCDField
      FieldName = 'kccgj'
      Precision = 18
    end
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
    Left = 133
    Top = 251
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
      ReadOnly = True
      Precision = 31
      Size = 2
    end
  end
  object ds_ksdm: TDataSource
    DataSet = ad_ksdm
    Left = 202
    Top = 326
  end
  object ds_zycfmx: TDataSource
    DataSet = ad_zycfmx
    Left = 485
    Top = 297
  end
  object ds_zybrjbqk: TDataSource
    DataSet = sp_cx_zybrjbqk
    Left = 147
    Top = 317
  end
  object sp_get_cfbh: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'bqkf_getcfbh;1'
    Parameters = <
      item
        Name = '@cfbh'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 12
        Value = Null
      end>
    Left = 556
    Top = 331
  end
  object sp_cx_ypbz: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'bqkf_cx_ypbz;1'
    Parameters = <
      item
        Name = '@ypdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 14
        Value = Null
      end>
    Left = 444
    Top = 235
    object sp_cx_ypbzbzbl: TIntegerField
      FieldName = 'bzbl'
    end
    object sp_cx_ypbzid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object sp_cx_ypbzypdw: TStringField
      FieldName = 'ypdw'
      FixedChar = True
      Size = 8
    end
  end
  object ds_ypmc: TDataSource
    DataSet = sp_cx_xyjg
    Left = 311
    Top = 351
  end
  object ds_ypdw: TDataSource
    DataSet = sp_cx_ypbz
    Left = 441
    Top = 297
  end
  object ActionList1: TActionList
    Left = 688
    Top = 258
    object jf: TAction
      Caption = 'jf'
      ShortCut = 121
      OnExecute = jfExecute
    end
    object zyty: TAction
      Caption = 'zyty'
      ShortCut = 118
      OnExecute = zytyExecute
    end
    object Act_wjf: TAction
      Caption = 'Act_wjf'
      ShortCut = 122
      OnExecute = Act_wjfExecute
    end
  end
  object ad_zycfzb: TADODataSet
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 530
    Top = 259
  end
  object sp_cx_syje: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'bqgl_cx_zyfy;1'
    Parameters = <
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 404
    Top = 259
  end
  object ad_ypdm: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 'select * FROM sys_ypdm'
    Parameters = <>
    Left = 361
    Top = 259
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
        Size = 50
        Value = ' '
      end>
    Left = 617
    Top = 315
  end
  object ds_ysks: TDataSource
    DataSet = sp_cx_czyks
    Left = 262
    Top = 334
  end
  object ad_ksdm: TADODataSet
    Connection = DM_data.ado_mydata
    CommandText = 'select * from sys_kjsfxm'
    Parameters = <>
    Left = 199
    Top = 259
  end
  object sp_cx_czyks: TADODataSet
    Connection = DM_data.ado_mydata
    LockType = ltReadOnly
    Parameters = <>
    Left = 252
    Top = 259
  end
  object qry_kdys: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      'select dm,mc from sys_czy')
    Left = 640
    Top = 259
  end
end
