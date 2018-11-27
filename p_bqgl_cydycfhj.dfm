object frm_cydycfhj: Tfrm_cydycfhj
  Left = 216
  Top = 80
  BorderIcons = [biSystemMenu]
  Caption = #30149#21592#20986#38498#24102#33647#22788#26041#21010#20215
  ClientHeight = 500
  ClientWidth = 822
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 822
    Height = 136
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 7
      Width = 62
      Height = 15
      Caption = #21345'    '#21495
    end
    object Label2: TLabel
      Left = 371
      Top = 33
      Width = 60
      Height = 15
      Caption = #36153#29992#31867#21035
    end
    object Label3: TLabel
      Left = 186
      Top = 59
      Width = 60
      Height = 15
      Caption = #36153#29992#24635#35745
    end
    object Label4: TLabel
      Left = 8
      Top = 59
      Width = 60
      Height = 15
      Caption = #39044#20132#37329#39069
    end
    object Label5: TLabel
      Left = 371
      Top = 7
      Width = 60
      Height = 15
      Caption = #30149#20154#24202#21495
    end
    object Label11: TLabel
      Left = 371
      Top = 59
      Width = 60
      Height = 15
      Caption = #33258#36153#37329#39069
    end
    object Label12: TLabel
      Left = 555
      Top = 59
      Width = 60
      Height = 15
      Caption = #21097#20313#37329#39069
    end
    object Label13: TLabel
      Left = 555
      Top = 7
      Width = 60
      Height = 15
      Caption = #20837#38498#26085#26399
    end
    object Label15: TLabel
      Left = 8
      Top = 84
      Width = 60
      Height = 15
      Caption = #24320#21333#31185#23460
    end
    object Label16: TLabel
      Left = 186
      Top = 84
      Width = 60
      Height = 15
      Caption = #24320#21333#21307#29983
    end
    object Label17: TLabel
      Left = 371
      Top = 84
      Width = 60
      Height = 15
      Caption = #22788#32622#31185#23460
    end
    object Label18: TLabel
      Left = 555
      Top = 84
      Width = 60
      Height = 15
      Caption = #22788#32622#21307#29983
    end
    object Label6: TLabel
      Left = 8
      Top = 33
      Width = 62
      Height = 15
      Caption = #22791'    '#27880
    end
    object Label7: TLabel
      Left = 555
      Top = 33
      Width = 60
      Height = 15
      Caption = #35760#36153#38480#39069
    end
    object Label8: TLabel
      Left = 186
      Top = 7
      Width = 60
      Height = 15
      Caption = #30149#20154#22995#21517
    end
    object Label9: TLabel
      Left = 8
      Top = 110
      Width = 60
      Height = 15
      Caption = #36153#29992#20195#30721
    end
    object Label10: TLabel
      Left = 188
      Top = 113
      Width = 60
      Height = 15
      Caption = #23545#24212#33647#25151
    end
    object Label14: TLabel
      Left = 371
      Top = 111
      Width = 60
      Height = 15
      Caption = #20013#33647#26381#25968
    end
    object tmh: TEdit
      Left = 76
      Top = 4
      Width = 100
      Height = 23
      Hint = #30149#20154#22995#21517#12289#20303#38498#21345#21495#12289#30149#24202#21495
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnEnter = tmhEnter
      OnExit = tmhExit
      OnKeyPress = tempgrid1KeyPress
    end
    object fylb: TEdit
      Left = 436
      Top = 29
      Width = 100
      Height = 23
      TabStop = False
      ReadOnly = True
      TabOrder = 2
      OnEnter = fylbEnter
      OnExit = fylbExit
    end
    object zfy: TEdit
      Left = 253
      Top = 54
      Width = 100
      Height = 23
      TabStop = False
      Color = 16744576
      ReadOnly = True
      TabOrder = 3
      Text = '0'
      OnEnter = fylbEnter
      OnExit = fylbExit
    end
    object zyj: TEdit
      Left = 73
      Top = 54
      Width = 100
      Height = 23
      TabStop = False
      Color = 16744576
      ReadOnly = True
      TabOrder = 4
      Text = '0'
      OnEnter = fylbEnter
      OnExit = fylbExit
    end
    object bch: TEdit
      Left = 436
      Top = 3
      Width = 100
      Height = 23
      TabStop = False
      ReadOnly = True
      TabOrder = 0
      OnEnter = fylbEnter
      OnExit = fylbExit
    end
    object zzf: TEdit
      Left = 436
      Top = 54
      Width = 100
      Height = 23
      TabStop = False
      Color = 16744576
      TabOrder = 5
      Text = '0'
      OnEnter = fylbEnter
      OnExit = fylbExit
    end
    object syje: TEdit
      Left = 620
      Top = 54
      Width = 100
      Height = 23
      TabStop = False
      Color = 16744576
      TabOrder = 6
      Text = '0'
      OnEnter = fylbEnter
      OnExit = fylbExit
    end
    object RYRQ: TEdit
      Left = 620
      Top = 3
      Width = 100
      Height = 23
      TabOrder = 7
      OnEnter = fylbEnter
      OnExit = fylbExit
    end
    object kdks: TEdit
      Left = 73
      Top = 79
      Width = 100
      Height = 23
      TabOrder = 8
      OnEnter = kdksEnter
      OnExit = kdksExit
      OnKeyPress = tempgrid1KeyPress
    end
    object kdys: TEdit
      Left = 253
      Top = 79
      Width = 100
      Height = 23
      TabStop = False
      TabOrder = 9
      OnEnter = kdysEnter
      OnExit = kdysExit
      OnKeyPress = tempgrid1KeyPress
    end
    object czks: TEdit
      Left = 436
      Top = 79
      Width = 100
      Height = 23
      TabOrder = 10
      OnEnter = czksEnter
      OnExit = czksExit
      OnKeyPress = tempgrid1KeyPress
    end
    object czys: TEdit
      Left = 620
      Top = 79
      Width = 100
      Height = 23
      TabOrder = 11
      OnEnter = czysEnter
      OnExit = czysExit
      OnKeyPress = tempgrid1KeyPress
    end
    object bz: TEdit
      Left = 73
      Top = 29
      Width = 280
      Height = 23
      TabStop = False
      TabOrder = 12
    end
    object zdqf: TEdit
      Left = 620
      Top = 29
      Width = 100
      Height = 23
      TabStop = False
      TabOrder = 13
    end
    object Edit1: TEdit
      Left = 253
      Top = 3
      Width = 100
      Height = 23
      TabStop = False
      ReadOnly = True
      TabOrder = 14
      OnEnter = fylbEnter
      OnExit = fylbExit
    end
    object e_fydm: TEdit
      Left = 73
      Top = 104
      Width = 100
      Height = 23
      TabOrder = 15
      Text = #35199#33647
      OnEnter = e_fydmEnter
      OnExit = e_fydmExit
      OnKeyDown = e_fydmKeyDown
    end
    object e_dyyf: TEdit
      Left = 253
      Top = 107
      Width = 100
      Height = 23
      Color = clScrollBar
      ReadOnly = True
      TabOrder = 16
    end
    object fs: TEdit
      Left = 437
      Top = 105
      Width = 100
      Height = 23
      ReadOnly = True
      TabOrder = 17
      Text = '1'
      OnExit = fsExit
      OnKeyDown = fsKeyDown
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 470
    Width = 822
    Height = 30
    Align = alBottom
    AutoSize = True
    TabOrder = 2
    object B_ENTER: TBitBtn
      Left = 464
      Top = 4
      Width = 82
      Height = 25
      Caption = #35745#36153'(F10)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = B_ENTERClick
    end
    object B_CREATEBATCH: TBitBtn
      Left = 0
      Top = 4
      Width = 101
      Height = 25
      Caption = #25209#37327#36890#30693'(F8)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnClick = B_CREATEBATCHClick
    end
    object B_FINAL: TBitBtn
      Left = 640
      Top = 2
      Width = 75
      Height = 25
      Caption = #32467#26463
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = B_FINALClick
    end
    object B_giveup: TBitBtn
      Left = 552
      Top = 2
      Width = 75
      Height = 25
      Caption = #25918#24323'(F12)'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = B_giveupClick
    end
    object cfbh: TEdit
      Left = 240
      Top = 1
      Width = 145
      Height = 27
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = '123456789012'
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 177
    Width = 822
    Height = 293
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
      Width = 818
      Height = 289
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = ds_zycfmx
      Flat = True
      FooterColor = clInfoBk
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
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          Footer.Value = #26412#22788#26041#24635#35745
          Footer.ValueType = fvtStaticText
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #33647#21697#21517#31216
          Title.Font.Charset = GB2312_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Width = 216
        end
        item
          EditButtons = <>
          FieldName = 'ypgg'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #35268#26684
          Title.Font.Charset = GB2312_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Width = 95
        end
        item
          EditButtons = <>
          FieldName = 'yl'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #29992#37327
          Width = 70
        end
        item
          EditButtons = <>
          FieldName = 'yldw'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #29992#37327#21333#20301
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'yf'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #29992#27861
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'yytj'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #29992#33647#36884#24452
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'ypdw'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #21333#20301
          Title.Font.Charset = GB2312_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Width = 34
        end
        item
          EditButtons = <>
          FieldName = 'ypdj'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #21333#20215
          Title.Font.Charset = GB2312_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Width = 58
        end
        item
          EditButtons = <>
          FieldName = 'ypsl'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #25968#37327
          Title.Font.Charset = GB2312_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'zje'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #24635#37329#39069
          Title.Font.Charset = GB2312_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Width = 76
        end
        item
          EditButtons = <>
          FieldName = 'zfje'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #33258#36153#37329#39069
          Title.Font.Charset = GB2312_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Width = 70
        end
        item
          EditButtons = <>
          FieldName = 'spm'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #21035#21517
          Title.Font.Charset = GB2312_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Width = 73
        end
        item
          EditButtons = <>
          FieldName = 'jylyp'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          Footers = <>
          Title.Caption = #31867#21035
          Title.Font.Charset = GB2312_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
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
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          Footers = <>
          Title.Caption = #24207#21495
          Title.Font.Charset = GB2312_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Width = 37
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object ypmc_grid: TDBGrid
      Left = 8
      Top = 57
      Width = 745
      Height = 152
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
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = #33647#21697#21517#31216
          Title.Font.Charset = GB2312_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Width = 196
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ypbm'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = #21035#21517
          Title.Font.Charset = GB2312_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pym'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = #25340#38899#30721
          Title.Font.Charset = GB2312_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ypgg'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = #33647#21697#35268#26684
          Title.Font.Charset = GB2312_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Width = 121
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kcsl'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = #24211#23384#25968#37327
          Title.Font.Charset = GB2312_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ypdw'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = #21333#20301
          Title.Font.Charset = GB2312_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lsj'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = #21333#20215
          Title.Font.Charset = GB2312_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Width = 60
          Visible = True
        end>
    end
    object ypdw_grid: TDBGrid
      Left = 491
      Top = 224
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
  end
  object tempgrid1: TDBGrid
    Left = 353
    Top = 328
    Width = 286
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
    TabOrder = 3
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = tempgrid1Exit
    OnKeyPress = tempgrid1KeyPress
  end
  object fydmgrid: TDBGrid
    Left = 133
    Top = 248
    Width = 413
    Height = 169
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnEnter = fydmgridEnter
    OnKeyPress = fydmgridKeyPress
  end
  object ksys_grid: TDBGrid
    Left = 32
    Top = 264
    Width = 255
    Height = 153
    DataSource = ds_ysks
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 5
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
    Top = 0
    Width = 822
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    Color = clHighlightText
    TabOrder = 6
    object Label22: TLabel
      Left = 8
      Top = 4
      Width = 464
      Height = 16
      Caption = #27880#24847#65306#26412#39029#38754#26159#21307#38498#20869#37096#35760#36134#20351#29992#65292#19981#23545#30149#20154#24320#25918#65292#35831#27880#24847#20445#23494#65281
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 56
      Top = 21
      Width = 624
      Height = 16
      Caption = #31995#32479#25152#35774#20219#20309#38480#39069#65292#20026#21307#38498#31649#29702#30340#38656#35201#65292#24182#19981#20195#34920#30149#20154#36523#20221#65292#19982#30149#20154#36523#20221#26080#20851#65281#29305#27492#22768#26126
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
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
    CommandText = 'select * from zyxyf_zycfmx where cfbh=:cfbh'
    Parameters = <
      item
        Name = 'cfbh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    Left = 191
    Top = 423
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
    object ad_zycfmxXH1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'XH1'
      Calculated = True
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
    object ad_zycfmxspm: TStringField
      FieldKind = fkLookup
      FieldName = 'spm'
      LookupDataSet = ad_ypdm
      LookupKeyFields = 'ypdm'
      LookupResultField = 'ypbm'
      KeyFields = 'ypdm'
      Lookup = True
    end
    object ad_zycfmxyf: TStringField
      FieldName = 'yf'
    end
    object ad_zycfmxyl: TStringField
      FieldName = 'yl'
    end
    object ad_zycfmxyldw: TStringField
      FieldName = 'yldw'
    end
    object ad_zycfmxyytj: TStringField
      FieldName = 'yytj'
    end
  end
  object ad_zyfymx_ls: TADODataSet
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    AfterPost = ad_zyfymx_lsAfterPost
    AfterScroll = ad_zyfymx_lsAfterScroll
    CommandText = 'select * from zysf_zyfymx_ls '
    Parameters = <>
    Left = 372
    Top = 338
    object ad_zyfymx_lsid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ad_zyfymx_lstmh: TStringField
      FieldName = 'tmh'
      FixedChar = True
      Size = 9
    end
    object ad_zyfymx_lszyh: TStringField
      FieldName = 'zyh'
      FixedChar = True
      Size = 16
    end
    object ad_zyfymx_lskdks: TStringField
      FieldName = 'kdks'
      FixedChar = True
      Size = 4
    end
    object ad_zyfymx_lsczks: TStringField
      FieldName = 'czks'
      FixedChar = True
      Size = 4
    end
    object ad_zyfymx_lskdys: TStringField
      FieldName = 'kdys'
      FixedChar = True
      Size = 4
    end
    object ad_zyfymx_lsczys: TStringField
      FieldName = 'czys'
      FixedChar = True
      Size = 4
    end
    object ad_zyfymx_lsfydm: TStringField
      FieldName = 'fydm'
      FixedChar = True
      Size = 4
    end
    object ad_zyfymx_lsfysl: TIntegerField
      FieldName = 'fysl'
    end
    object ad_zyfymx_lsfyje: TBCDField
      DisplayWidth = 10
      FieldName = 'fyje'
      Precision = 18
      Size = 2
    end
    object ad_zyfymx_lszkje: TBCDField
      FieldName = 'zkje'
      Precision = 18
      Size = 2
    end
    object ad_zyfymx_lsssje: TBCDField
      FieldName = 'ssje'
      Precision = 18
      Size = 2
    end
    object ad_zyfymx_lszfje: TBCDField
      FieldName = 'zfje'
      Precision = 18
      Size = 2
    end
    object ad_zyfymx_lssfczy: TStringField
      FieldName = 'sfczy'
      FixedChar = True
      Size = 4
    end
    object ad_zyfymx_lssfrq: TDateTimeField
      FieldName = 'sfrq'
    end
    object ad_zyfymx_lssjbh: TStringField
      FieldName = 'sjbh'
      FixedChar = True
      Size = 16
    end
    object ad_zyfymx_lscfbh: TStringField
      FieldName = 'cfbh'
      FixedChar = True
      Size = 12
    end
    object ad_zyfymx_lstfbz: TBooleanField
      FieldName = 'tfbz'
    end
    object ad_zyfymx_lstfczy: TStringField
      FieldName = 'tfczy'
      FixedChar = True
      Size = 4
    end
    object ad_zyfymx_lstfrq: TDateTimeField
      FieldName = 'tfrq'
    end
    object ad_zyfymx_lsjzbz: TBooleanField
      FieldName = 'jzbz'
    end
    object ad_zyfymx_lsjsbz: TBooleanField
      FieldName = 'jsbz'
    end
    object ad_zyfymx_lsjsdh: TStringField
      FieldName = 'jsdh'
      FixedChar = True
      Size = 16
    end
    object ad_zyfymx_lsbz: TStringField
      FieldName = 'bz'
      FixedChar = True
      Size = 4
    end
    object ad_zyfymx_lsfydmmc: TStringField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'fydmmc'
      LookupDataSet = ad_sfxm
      LookupKeyFields = 'fydm'
      LookupResultField = 'fymc'
      KeyFields = 'fydm'
      Lookup = True
    end
    object ad_zyfymx_lsph: TStringField
      DisplayWidth = 16
      FieldName = 'ph'
      FixedChar = True
      Size = 16
    end
  end
  object sp_cx_xyjg: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zyxyf_cx_ypkc_bq;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
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
    Left = 406
    Top = 422
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
    object sp_cx_xyjgypbm: TStringField
      FieldName = 'ypbm'
      FixedChar = True
      Size = 30
    end
    object sp_cx_xyjgyzyldw: TStringField
      FieldName = 'yzyldw'
    end
    object sp_cx_xyjgsfmzyp: TBooleanField
      FieldName = 'sfmzyp'
    end
  end
  object sp_cx_zybrjbqk: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'bqgl_cx_zybrjbqk;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 9
        Value = Null
      end
      item
        Name = '@xm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@bch'
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
      end>
    Left = 495
    Top = 413
  end
  object ds_sfmx: TDataSource
    DataSet = ad_zyfymx_ls
    Left = 80
    Top = 345
  end
  object ds_zycfmx: TDataSource
    DataSet = ad_zycfmx
    Left = 129
    Top = 428
  end
  object ds_zybrjbqk: TDataSource
    DataSet = sp_cx_zybrjbqk
    Left = 184
    Top = 345
  end
  object sp_get_cfbh: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zy_getcfbh;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@cfbh'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 12
        Value = Null
      end>
    Left = 544
    Top = 324
  end
  object sp_cx_ypbz: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'xyf_cx_ypbz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ypdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 564
    Top = 420
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
    Left = 152
    Top = 345
  end
  object ds_ypdw: TDataSource
    DataSet = sp_cx_ypbz
    Left = 248
    Top = 345
  end
  object ActionList1: TActionList
    Left = 576
    Top = 176
    object createbatch: TAction
      Caption = 'scpl'
      ShortCut = 119
      OnExecute = createbatchExecute
    end
    object jshj: TAction
      Caption = 'jshj'
      ShortCut = 120
    end
    object jf: TAction
      Caption = 'jf'
      ShortCut = 121
      OnExecute = jfExecute
    end
    object zf: TAction
      Caption = 'zf'
      ShortCut = 122
    end
    object xg: TAction
      Caption = 'xg'
      ShortCut = 123
      OnExecute = xgExecute
    end
  end
  object ad_zycfzb: TADODataSet
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 266
    Top = 423
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
    Left = 430
    Top = 333
  end
  object ad_ypdm: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 'select * FROM sys_ypdm'
    Parameters = <>
    Left = 608
    Top = 331
  end
  object sp_up_brfymxcl: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'bqgl_up_brcffymx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ph'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
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
        Name = '@fyze'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 12
        Value = Null
      end
      item
        Name = '@zkje'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 12
        Value = Null
      end
      item
        Name = '@zfje'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 12
        Value = Null
      end
      item
        Name = '@qtfybs'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@xyfydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@clfydm'
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
        Name = '@xyfksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@zyfksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdOutput
        Size = 1
        Value = Null
      end>
    Left = 330
    Top = 419
  end
  object sp_cx_czyks: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'bqgl_cx_czyks;1'
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
    Left = 312
    Top = 339
  end
  object ds_ysks: TDataSource
    DataSet = sp_cx_czyks
    Left = 651
    Top = 337
  end
  object sp_up_fypl: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'bqgl_up_pltz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
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
        Name = '@kssj'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pldh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
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
    Left = 483
    Top = 314
  end
  object ad_sfxm: TADODataSet
    Connection = DM_data.ado_mydata
    CommandText = 'select * from sys_kjsfxm'
    Parameters = <>
    Left = 632
    Top = 456
  end
  object ad_plcl: TADODataSet
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 344
    Top = 205
  end
  object qry_yf: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 200
    Top = 272
  end
  object qry_yfdm: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 200
    Top = 232
  end
  object qry_gytj: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      'select * from sys_gytj')
    Left = 384
    Top = 272
  end
  object qry_ypyf: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      'select * from sys_ypyf')
    Left = 440
    Top = 272
  end
  object qry_: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      'select * from sys_ypyf')
    Left = 488
    Top = 272
  end
end
