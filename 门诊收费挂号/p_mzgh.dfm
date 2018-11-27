object frm_mzgh: Tfrm_mzgh
  Left = 161
  Top = 106
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #25346#21495#31649#29702'-'#38376#35786#25346#21495
  ClientHeight = 649
  ClientWidth = 932
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox1: TGroupBox
    Left = 0
    Top = 86
    Width = 932
    Height = 104
    Align = alTop
    Caption = #30149#20154#20449#24687
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 30
      Width = 32
      Height = 16
      Caption = #21345#21495
    end
    object Label2: TLabel
      Left = 245
      Top = 30
      Width = 32
      Height = 16
      Caption = #22995#21517
    end
    object Label3: TLabel
      Left = 411
      Top = 30
      Width = 48
      Height = 16
      Caption = #24615'  '#21035
    end
    object Label5: TLabel
      Left = 736
      Top = 30
      Width = 48
      Height = 16
      Caption = #24180'  '#40836
    end
    object bc: TLabel
      Left = 529
      Top = 8
      Width = 7
      Height = 13
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 550
      Top = 30
      Width = 64
      Height = 16
      Caption = #20986#29983#26085#26399
    end
    object Label11: TLabel
      Left = 269
      Top = 77
      Width = 64
      Height = 16
      Caption = #23621#27665#22320#22336
    end
    object Label12: TLabel
      Left = 549
      Top = 51
      Width = 347
      Height = 13
      Caption = #20363':22'#23681#36755#20837'22'#22238#36710',3'#26376#36755#20837'3Y'#22238#36710',1'#26376'19'#22825#36755#20837'1Y19T'#22238#36710
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object lab_yyh: TLabel
      Left = 72
      Top = 6
      Width = 201
      Height = 19
      Caption = #24744#30340#32593#19978#39044#32422#21495#20026':yy2012030001'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lb_khy: TLabel
      Left = 48
      Top = 52
      Width = 221
      Height = 13
      Caption = #21452#20987#36755#20837#26694#21487#36827#34892#20581#24247#21345#33258#21160#21047#21345#25805#20316
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      AlignWithMargins = True
      Left = 9
      Top = 63
      Width = 30
      Height = 35
      Alignment = taCenter
      AutoSize = False
      Caption = #21345#21495#31181#31867
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label10: TLabel
      AlignWithMargins = True
      Left = 140
      Top = 63
      Width = 30
      Height = 35
      Alignment = taCenter
      AutoSize = False
      Caption = #23621#27665#32844#19994
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label16: TLabel
      Left = 720
      Top = 77
      Width = 64
      Height = 16
      Caption = #32852#31995#30005#35805
    end
    object kh: TEdit
      Left = 40
      Top = 22
      Width = 148
      Height = 24
      ImeMode = imClose
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      MaxLength = 12
      TabOrder = 0
      OnDblClick = khDblClick
      OnEnter = khEnter
      OnExit = khExit
      OnKeyPress = khKeyPress
    end
    object xm: TEdit
      Left = 279
      Top = 27
      Width = 120
      Height = 24
      Enabled = False
      ImeMode = imOpen
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 2
      OnEnter = xmEnter
      OnExit = xmExit
      OnKeyDown = xmKeyDown
    end
    object xb: TComboBox
      Left = 465
      Top = 27
      Width = 70
      Height = 24
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ImeMode = imClose
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      ItemHeight = 16
      ParentFont = False
      TabOrder = 3
      OnEnter = xbEnter
      OnExit = xbExit
      OnKeyDown = xbKeyDown
      Items.Strings = (
        #30007
        #22899)
    end
    object nl: TSXAgeBox
      Left = 790
      Top = 27
      Width = 120
      Height = 24
      Hint = #20363':22'#23681#36755#20837'22'#22238#36710',3'#26376#36755#20837'3Y'#22238#36710',1'#26376'19'#22825#36755#20837'1Y19T'#22238#36710
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 5
      OnEnter = nlEnter
      OnExit = nlExit
      OnKeyDown = nlKeyDown
    end
    object dtp1: TDateTimePicker
      Left = 620
      Top = 27
      Width = 108
      Height = 24
      Date = 0.624740300932899100
      Time = 0.624740300932899100
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 4
      OnEnter = dtp1Enter
      OnExit = dtp1Exit
      OnKeyDown = dtp1KeyDown
    end
    object combox_jmlb: TComboBox
      Left = 173
      Top = 72
      Width = 90
      Height = 24
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ImeMode = imClose
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      ItemHeight = 16
      ParentFont = False
      TabOrder = 7
      OnEnter = combox_jmlbEnter
      OnExit = combox_jmlbExit
      OnKeyDown = combox_jmlbKeyDown
      Items.Strings = (
        #30007
        #22899)
    end
    object brdz: TSXXzqhBox
      Left = 336
      Top = 72
      Width = 374
      Height = 24
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 8
      OnEnter = brdzEnter
      OnExit = brdzExit
      OnKeyDown = brdzKeyDown
      Connection = DM_data.ado_mydata
    end
    object b_sbhk: TBitBtn
      Left = 194
      Top = 27
      Width = 45
      Height = 24
      Caption = #21307#20445'[Q]'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = b_sbhkClick
    end
    object combox_khlb: TComboBox
      Left = 40
      Top = 72
      Width = 90
      Height = 24
      Style = csDropDownList
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeMode = imClose
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      ItemHeight = 16
      ParentFont = False
      TabOrder = 6
      OnChange = combox_khlbChange
      OnExit = combox_khlbExit
      OnKeyDown = combox_khlbKeyDown
    end
    object lxdh: TEdit
      Left = 790
      Top = 72
      Width = 120
      Height = 24
      ImeMode = imOpen
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 9
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 190
    Width = 932
    Height = 77
    Align = alTop
    Caption = #25346#21495#25968#25454
    TabOrder = 4
    object Label4: TLabel
      Left = 4
      Top = 37
      Width = 64
      Height = 16
      Caption = #25346#21495#19987#19994
    end
    object Label7: TLabel
      Left = 245
      Top = 37
      Width = 32
      Height = 16
      Caption = #21307#29983
    end
    object Label13: TLabel
      Left = 720
      Top = 18
      Width = 64
      Height = 16
      Caption = #24212#25910#37329#39069
    end
    object Label6: TLabel
      Left = 720
      Top = 50
      Width = 64
      Height = 16
      Caption = #23454#25910#29616#37329
    end
    object lab_jzbz: TLabel
      Left = 656
      Top = 16
      Width = 26
      Height = 19
      Caption = #24613#35786
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lbl1: TLabel
      Left = 411
      Top = 18
      Width = 48
      Height = 16
      Caption = #25346#21495#36153
    end
    object ks: TEdit
      Left = 68
      Top = 33
      Width = 171
      Height = 24
      ImeMode = imClose
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 3
      OnEnter = ksEnter
      OnExit = ksExit
      OnKeyPress = ksKeyPress
    end
    object ys: TEdit
      Left = 279
      Top = 33
      Width = 120
      Height = 24
      ImeMode = imClose
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 4
      OnEnter = ysEnter
      OnExit = ysExit
      OnKeyPress = ysKeyPress
    end
    object ssf: TEdit
      Left = 790
      Top = 14
      Width = 120
      Height = 24
      ImeMode = imClose
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 1
      OnKeyPress = ssfKeyPress
    end
    object zb: TEdit
      Left = 790
      Top = 46
      Width = 120
      Height = 24
      ImeMode = imClose
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 6
      Text = '0'
      OnEnter = zbEnter
      OnExit = zbExit
      OnKeyPress = zbKeyPress
    end
    object ghf: TEdit
      Left = 465
      Top = 14
      Width = 70
      Height = 24
      TabStop = False
      ImeMode = imClose
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 0
      OnKeyPress = zcfKeyPress
    end
    object CheckBox2: TCheckBox
      Left = 549
      Top = 19
      Width = 93
      Height = 17
      TabStop = False
      Caption = #20813#25346#21495#36153'(&E)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = CheckBox2Click
    end
    object gb_zcf: TcxGroupBox
      Left = 401
      Top = 37
      TabOrder = 5
      Height = 37
      Width = 318
      object Label8: TLabel
        Left = 10
        Top = 15
        Width = 48
        Height = 16
        Caption = #35786#26597#36153
      end
      object Label14: TLabel
        Left = 149
        Top = 14
        Width = 64
        Height = 16
        Caption = #20854#20013#32479#31609
      end
      object zcf: TEdit
        Left = 64
        Top = 10
        Width = 70
        Height = 24
        TabStop = False
        ImeMode = imClose
        ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
        TabOrder = 0
        OnEnter = zcfEnter
        OnExit = zcfExit
        OnKeyPress = zcfKeyPress
      end
      object zcf_tc: TEdit
        Left = 219
        Top = 10
        Width = 90
        Height = 24
        TabStop = False
        ImeMode = imClose
        ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
        TabOrder = 1
        Text = '0'
        OnEnter = zcfEnter
        OnExit = zcfExit
        OnKeyPress = zcfKeyPress
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 45
    Width = 932
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = '      '
    Font.Charset = GB2312_CHARSET
    Font.Color = clRed
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label_kye: TLabel
      Left = 2
      Top = 5
      Width = 88
      Height = 24
      Caption = #21345#20313#39069':'
      Visible = False
    end
  end
  object SBar1: TStatusBar
    Left = 0
    Top = 296
    Width = 932
    Height = 26
    Align = alTop
    BiDiMode = bdLeftToRight
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    Panels = <
      item
        Alignment = taCenter
        Text = #25346#21495#21592
        Width = 54
      end
      item
        Alignment = taCenter
        Width = 60
      end
      item
        Alignment = taCenter
        Text = #25346#20986#20154#25968
        Width = 70
      end
      item
        Alignment = taCenter
        Width = 60
      end
      item
        Alignment = taCenter
        Text = #21512#35745#36153#29992
        Width = 70
      end
      item
        Alignment = taCenter
        Width = 60
      end
      item
        Alignment = taCenter
        Text = #24403#21069#21307#29983#25346#20986#20154#25968
        Width = 130
      end
      item
        Alignment = taCenter
        Width = 60
      end
      item
        Alignment = taCenter
        Text = #24403#21069#25910#25454#21495
        Width = 90
      end
      item
        Alignment = taCenter
        Bevel = pbRaised
        Style = psOwnerDraw
        Text = #24050#29992#23436
        Width = 100
      end
      item
        Text = #20020#26102#21345#21097#20313#37327
        Width = 100
      end
      item
        Width = 50
      end>
    ParentBiDiMode = False
    ParentShowHint = False
    ShowHint = False
    SizeGrip = False
    UseSystemFont = False
    OnDrawPanel = SBar1DrawPanel
  end
  object Panel3: TPanel
    Left = 0
    Top = 267
    Width = 932
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlue
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object cbbl: TCheckBox
      Left = 8
      Top = 8
      Width = 89
      Height = 17
      TabStop = False
      Caption = #30149#21382#36153'(&G)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = cbblClick
    end
    object CheckBox1: TCheckBox
      Left = 97
      Top = 8
      Width = 49
      Height = 17
      TabStop = False
      Caption = #25240#21472
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = CheckBox1Click
    end
    object BitBtn3: TBitBtn
      Left = 379
      Top = 3
      Width = 80
      Height = 25
      Cancel = True
      Caption = #25918#24323'(F11)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn3Click
      OnEnter = BitBtn3Enter
    end
    object BitBtn1: TBitBtn
      Left = 460
      Top = 3
      Width = 80
      Height = 25
      Caption = #25346#20986'(F12)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 818
      Top = 3
      Width = 70
      Height = 25
      Caption = #36864#20986'(&X)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = BitBtn2Click
    end
    object bbtn_yybj: TBitBtn
      Left = 727
      Top = 3
      Width = 90
      Height = 25
      Caption = #35821#38899#25253#20215'(F7)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Visible = False
      OnClick = bbtn_yybjClick
    end
    object BitBtn6: TBitBtn
      Left = 635
      Top = 3
      Width = 90
      Height = 25
      Caption = #20813#36153#25346#21495'(F6)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Visible = False
      OnClick = BitBtn6Click
    end
    object btn1: TBitBtn
      Left = 307
      Top = 3
      Width = 70
      Height = 25
      Cancel = True
      Caption = #36864#21345
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btn1Click
    end
    object btn2: TBitBtn
      Left = 542
      Top = 3
      Width = 90
      Height = 25
      Cancel = True
      Caption = #39044#32422#25346#21495'(F5)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 236
      Top = 3
      Width = 70
      Height = 25
      Caption = #20250#21592#24314#21345
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btn3Click
    end
    object b_xxcx: TButton
      Left = 152
      Top = 3
      Width = 83
      Height = 25
      Caption = #21345#20449#24687#26597#35810
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = b_xxcxClick
    end
  end
  object dbctl: TDBCtrlGrid
    Left = 0
    Top = 322
    Width = 932
    Height = 327
    Hint = #21491#38190#21047#26032
    Align = alClient
    ColCount = 6
    DataSource = ds_dryzks
    PanelHeight = 40
    PanelWidth = 152
    PopupMenu = pm_sxxs
    TabOrder = 7
    RowCount = 8
    OnClick = dbctlClick
    object DBText1: TDBText
      Left = 3
      Top = 1
      Width = 146
      Height = 16
      DataField = 'zymc'
      DataSource = ds_dryzks
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      OnClick = dbctlClick
    end
    object DBText2: TDBText
      Left = 71
      Top = 23
      Width = 42
      Height = 17
      DataField = 'sxw'
      DataSource = ds_dryzks
      OnClick = dbctlClick
    end
    object DBText4: TDBText
      Left = 3
      Top = 23
      Width = 66
      Height = 17
      DataField = 'ysmc'
      DataSource = ds_dryzks
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = dbctlClick
    end
    object DBText3: TDBText
      Left = 118
      Top = 19
      Width = 33
      Height = 19
      DataField = 'gcrs'
      DataSource = ds_dryzks
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = dbctlClick
    end
  end
  object ksgrid: TDBGrid
    Left = 75
    Top = 322
    Width = 323
    Height = 193
    DataSource = ds_ghxm
    ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 8
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnDblClick = ksgridDblClick
    OnExit = ksgridExit
    OnKeyPress = ksgridKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'zydm'
        Title.Alignment = taCenter
        Title.Caption = #20195#30721
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zymc'
        Title.Alignment = taCenter
        Title.Caption = #25346#21495#19987#19994
        Width = 241
        Visible = True
      end>
  end
  object ysgrid: TDBGrid
    Left = 404
    Top = 322
    Width = 473
    Height = 193
    DataSource = ds_yspb
    ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 9
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnDblClick = ysgridDblClick
    OnExit = ysgridExit
    OnKeyPress = ysgridKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'ysdm'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #20195#30721
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ysmc'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #22995#21517
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zcmc'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #32844#31216
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zymc'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #24212#35786#19987#19994
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 147
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sxw'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #19978#19979#21320
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 58
        Visible = True
      end>
  end
  object ysGrid2: TDBGrid
    Left = 118
    Top = 397
    Width = 513
    Height = 193
    DataSource = ds_ys
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnDblClick = ysGrid2DblClick
    OnExit = ysGrid2Exit
    OnKeyPress = ysGrid2KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'ysdm'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #20195#30721
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ysmc'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #22995#21517
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zcmc'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #32844#31216
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zymc'
        Title.Alignment = taCenter
        Title.Caption = #24212#35786#19987#19994
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sxw'
        Title.Alignment = taCenter
        Title.Caption = #19978#21320'/'#19979#21320
        Width = 84
        Visible = True
      end>
  end
  object pnl_ks: TPanel
    Left = 0
    Top = 0
    Width = 932
    Height = 45
    Align = alTop
    BevelOuter = bvNone
    Caption = '     '
    Font.Charset = GB2312_CHARSET
    Font.Color = clRed
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lab_bl: TLabel
      Left = 2
      Top = 5
      Width = 128
      Height = 33
      Caption = #25346#21495#34917#24405
      Visible = False
    end
  end
  object MyIdrOcx1: TMyIdrOcx
    Left = 962
    Top = 8
    Width = 287
    Height = 195
    TabOrder = 1
    ControlData = {00030000AA1D000027140000E903}
  end
  object sp_cx_kyh: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'mzsf_cx_kyh;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end>
    Left = 299
    Top = 8
  end
  object sp_cx_rsfy: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'mzsf_cx_ghrsfy;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@czy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 342
    Top = 9
  end
  object sp_cx_yspb: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'mzgh_cx_dryspb_dzbl;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@yzrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@yzrq1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@zydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ysdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@czfs'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 576
    Top = 8
  end
  object sp_cx_ghxm: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'mzgh_cx_GHPBQK;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@srm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = ' '
      end>
    Left = 440
    Top = 8
  end
  object ds_ghxm: TDataSource
    DataSet = sp_cx_ghxm
    Left = 437
    Top = 41
  end
  object ds_ghlb: TDataSource
    Left = 146
    Top = 3
  end
  object ds_yspb: TDataSource
    DataSet = sp_cx_yspb
    Left = 576
    Top = 40
  end
  object ds_ghf: TDataSource
    Left = 191
    Top = 3
  end
  object sp_cx_ysgcrs: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'mzgh_cx_ysgcrs;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ysdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@zydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ghrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@sxwbz'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@gcrs'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 504
    Top = 8
  end
  object ad_fpbhcl: TADODataSet
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 612
    Top = 10
  end
  object sp_cx_dryzks: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'mzgh_cx_dryzks_dzbl;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@yzrq1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = #39#39
      end
      item
        Name = '@yzrq2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = #39#39
      end>
    Left = 722
    Top = 11
  end
  object ds_dryzks: TDataSource
    DataSet = sp_cx_dryzks
    Left = 722
    Top = 41
  end
  object sp_cx_ys: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'mzgh_cx_fpbys;1'
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
        Value = '1'
      end
      item
        Name = '@ghrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = '11'
      end
      item
        Name = '@zydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '1111'
      end>
    Left = 472
    Top = 9
  end
  object ds_ys: TDataSource
    DataSet = sp_cx_ys
    Left = 474
    Top = 42
  end
  object sp_up_ghfy: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'mzsf_up_fycl_dzbl;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@czy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end
      item
        Name = '@brxm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@brxb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@brnl'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@csrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@brzy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@brdz'
        Attributes = [paNullable]
        DataType = ftString
        Size = 40
        Value = Null
      end
      item
        Name = '@sfzhm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 18
        Value = Null
      end
      item
        Name = '@fylb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@sjbh'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@cfbh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end
      item
        Name = '@fydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ghf'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 6
        Value = Null
      end
      item
        Name = '@zcf'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 6
        Value = Null
      end
      item
        Name = '@blf'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 6
        Value = Null
      end
      item
        Name = '@ssfy'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 6
        Value = Null
      end
      item
        Name = '@kdks'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ghks'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@czks'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@czys'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@sfbz'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@zlrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@ghzl'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@sxwbz'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
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
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 1
        Value = Null
      end
      item
        Name = '@kyhze'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 1
        Value = Null
      end
      item
        Name = '@ghrs'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ghrs1'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@yyghid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@zcf_tc'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 6
        Value = Null
      end
      item
        Name = '@lxdh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
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
        Name = '@khzl'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@qtzjhm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 650
    Top = 11
  end
  object ActionList1: TActionList
    Left = 107
    Top = 10
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 123
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 122
      OnExecute = Action2Execute
    end
    object Action3: TAction
      Caption = 'Action3'
      ShortCut = 116
    end
  end
  object ad_xtkg: TADODataSet
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 691
    Top = 10
  end
  object sp_get_kh: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'sys_sqlskh;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@lstmh'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 12
        Value = Null
      end>
    Left = 262
    Top = 7
  end
  object sp_cx_ksgcrs: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'mzgh_cx_ksgcrs;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@fydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ghrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@sxwbz'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end>
    Left = 536
    Top = 8
  end
  object qry_ksdm: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select dm,mc from sys_ksdm')
    Left = 280
    Top = 56
  end
  object qry_srf: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 152
    Top = 56
  end
  object qry_fydm: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select fydm,fymc,jkyhfybl,ykyhfybl,ptkyhfybl,qqkyhfybl'#13#10'from sys' +
      '_kjsfxm '#13#10'where  mzfy=1 and '#13#10'           qybz=1'
    Parameters = <>
    Left = 365
    Top = 59
  end
  object sp_up_blfycl: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'mzgh_up_blfycl;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@czy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end
      item
        Name = '@brxm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@brxb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@fylb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@sjbh'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@cfbh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end
      item
        Name = '@fydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ghf'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 6
        Value = Null
      end
      item
        Name = '@blf'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 6
        Value = Null
      end
      item
        Name = '@ssfy'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 6
        Value = Null
      end
      item
        Name = '@kdks'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ghks'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@czks'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@czys'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@sfbz'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@ghzl'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 1
        Value = Null
      end
      item
        Name = '@kyhze'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 1
        Value = Null
      end>
    Left = 392
    Top = 8
  end
  object sp_kgl_fk: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'mzgh_kgl_fk;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@klydh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
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
        Name = '@sjbh'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@klb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end
      item
        Name = '@czy'
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
        Name = '@fydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@sfbz'
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
        Size = 100
        Value = Null
      end>
    Left = 810
    Top = 11
    object StringField1: TStringField
      FieldName = 'yzrq'
      FixedChar = True
      Size = 2
    end
    object StringField2: TStringField
      FieldName = 'zydm'
      FixedChar = True
      Size = 4
    end
    object StringField3: TStringField
      FieldName = 'zymc'
    end
    object StringField4: TStringField
      FieldName = 'ysdm'
      FixedChar = True
      Size = 4
    end
    object StringField5: TStringField
      FieldName = 'ysmc'
      Size = 10
    end
    object StringField6: TStringField
      FieldName = 'zcdm'
      FixedChar = True
      Size = 2
    end
    object StringField7: TStringField
      FieldName = 'zcmc'
      FixedChar = True
      Size = 12
    end
    object StringField8: TStringField
      FieldName = 'ghfdm'
      FixedChar = True
      Size = 4
    end
    object StringField9: TStringField
      FieldName = 'fymc'
      Size = 100
    end
    object BCDField1: TBCDField
      FieldName = 'sfbz'
      Precision = 10
      Size = 2
    end
    object StringField10: TStringField
      FieldName = 'ghzl'
      FixedChar = True
      Size = 2
    end
    object StringField11: TStringField
      FieldName = 'jzghfdm'
      FixedChar = True
      Size = 4
    end
    object StringField12: TStringField
      FieldName = 'jzfymc'
      Size = 100
    end
    object BCDField2: TBCDField
      FieldName = 'jzsfbz'
      Precision = 10
      Size = 2
    end
    object StringField13: TStringField
      FieldName = 'jzghzl'
      FixedChar = True
      Size = 2
    end
    object StringField14: TStringField
      FieldName = 'sxw'
      ReadOnly = True
      Size = 4
    end
  end
  object ds_kgl_fk: TDataSource
    DataSet = sp_kgl_fk
    Left = 810
    Top = 49
  end
  object qry_kgl_check: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'lb'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'lyr'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from sys_sjlymx where sjlb=:lb and lyr=:lyr and qybz=1 ' +
        'and tybz=0')
    Left = 848
    Top = 8
  end
  object ds_kgl_check: TDataSource
    DataSet = qry_kgl_check
    Left = 850
    Top = 49
  end
  object jbqk_cx: TADODataSet
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 190
    Top = 57
  end
  object sp_cx_yyghjbxx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    Left = 776
    Top = 8
  end
  object ds_cx_yyghjbxx: TDataSource
    DataSet = sp_cx_yyghjbxx
    Left = 773
    Top = 41
  end
  object pm_sxxs: TPopupMenu
    Left = 224
    Top = 8
    object N1: TMenuItem
      Caption = #21047#26032
      Hint = #21047#26032
      OnClick = N1Click
    end
  end
  object mzsf_updatesjh: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 112
    Top = 56
  end
  object sp_in_tzzcf: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'mzgh_in_tzzcf;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
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
        Name = '@sjbh'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end
      item
        Name = '@czy'
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
        Name = '@ysdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@fydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
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
        Name = '@sfbz'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@tcfy'
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
        Size = 100
        Value = Null
      end>
    Left = 882
    Top = 3
    object StringField15: TStringField
      FieldName = 'yzrq'
      FixedChar = True
      Size = 2
    end
    object StringField16: TStringField
      FieldName = 'zydm'
      FixedChar = True
      Size = 4
    end
    object StringField17: TStringField
      FieldName = 'zymc'
    end
    object StringField18: TStringField
      FieldName = 'ysdm'
      FixedChar = True
      Size = 4
    end
    object StringField19: TStringField
      FieldName = 'ysmc'
      Size = 10
    end
    object StringField20: TStringField
      FieldName = 'zcdm'
      FixedChar = True
      Size = 2
    end
    object StringField21: TStringField
      FieldName = 'zcmc'
      FixedChar = True
      Size = 12
    end
    object StringField22: TStringField
      FieldName = 'ghfdm'
      FixedChar = True
      Size = 4
    end
    object StringField23: TStringField
      FieldName = 'fymc'
      Size = 100
    end
    object BCDField3: TBCDField
      FieldName = 'sfbz'
      Precision = 10
      Size = 2
    end
    object StringField24: TStringField
      FieldName = 'ghzl'
      FixedChar = True
      Size = 2
    end
    object StringField25: TStringField
      FieldName = 'jzghfdm'
      FixedChar = True
      Size = 4
    end
    object StringField26: TStringField
      FieldName = 'jzfymc'
      Size = 100
    end
    object BCDField4: TBCDField
      FieldName = 'jzsfbz'
      Precision = 10
      Size = 2
    end
    object StringField27: TStringField
      FieldName = 'jzghzl'
      FixedChar = True
      Size = 2
    end
    object StringField28: TStringField
      FieldName = 'sxw'
      ReadOnly = True
      Size = 4
    end
  end
  object ds_in_tzzcf: TDataSource
    DataSet = sp_in_tzzcf
    Left = 882
    Top = 41
  end
  object qry1: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'mc'
        DataType = ftString
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'select wzmc from sys_czwz a left join sys_ksdm b on a.ksdm =b.dm' +
        ' where b.mc=:mc')
    Left = 592
    Top = 72
  end
end
