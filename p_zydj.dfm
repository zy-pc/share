object frm_zydj: Tfrm_zydj
  Left = 229
  Top = 129
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #21150#29702#30331#35760
  ClientHeight = 586
  ClientWidth = 814
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 814
    Height = 60
    Align = alTop
    Shape = bsFrame
    Style = bsRaised
  end
  object Label1: TLabel
    Left = 5
    Top = 13
    Width = 62
    Height = 15
    Caption = #21345'    '#21495
    Transparent = True
  end
  object Label22: TLabel
    Left = 352
    Top = 13
    Width = 60
    Height = 15
    Caption = #20303#38498#27425#25968
    Transparent = True
  end
  object Label10: TLabel
    Left = 513
    Top = 13
    Width = 45
    Height = 15
    Caption = #25910#25454#21495
    Transparent = True
  end
  object lb_khy: TLabel
    Left = 8
    Top = 39
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
  object MyIdrOcx1: TMyIdrOcx
    Left = 518
    Top = 800
    Width = 287
    Height = 195
    TabOrder = 10
    ControlData = {00030000AA1D000027140000E903}
  end
  object b_close: TBitBtn
    Left = 518
    Top = 410
    Width = 75
    Height = 25
    Caption = #36864#20986'(&Q)'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = b_closeClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
      F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
      000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
      338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
      45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
      3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
      F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
      000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
      338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
      4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
      8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
      333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
      0000}
    NumGlyphs = 2
  end
  object tmh: TEdit
    Left = 71
    Top = 9
    Width = 133
    Height = 23
    Hint = #36755#20837'9'#20301#21345#21495#65306
    ImeMode = imClose
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    MaxLength = 9
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnDblClick = tmhDblClick
    OnEnter = tmhEnter
    OnKeyPress = tmhKeyPress
  end
  object zycs: TDBEdit
    Left = 412
    Top = 9
    Width = 100
    Height = 23
    DataField = 'zycs'
    DataSource = ds_zydj
    ImeName = #20116#31508#22411#30721
    ReadOnly = True
    TabOrder = 4
  end
  object sjbh: TEdit
    Left = 559
    Top = 9
    Width = 119
    Height = 23
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ReadOnly = True
    TabOrder = 5
  end
  object Button1: TButton
    Left = 692
    Top = 490
    Width = 75
    Height = 25
    Caption = #36820#22238'(&B)'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = Button1Click
  end
  object btn_sbdk: TButton
    Left = 205
    Top = 8
    Width = 52
    Height = 25
    Caption = #35835#21345
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btn_sbdkClick
  end
  object Button2: TButton
    Left = 684
    Top = 8
    Width = 122
    Height = 25
    Caption = #23548#20837#38376#35786#25968#25454'F4'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 60
    Width = 814
    Height = 526
    Align = alClient
    BevelInner = bvLowered
    Enabled = False
    TabOrder = 6
    OnClick = Panel1Click
    object Bevel4: TBevel
      Left = 0
      Top = 208
      Width = 771
      Height = 5
      Shape = bsFrame
      Style = bsRaised
    end
    object Bevel3: TBevel
      Left = 0
      Top = 376
      Width = 771
      Height = 2
      Shape = bsFrame
      Style = bsRaised
    end
    object Label2: TLabel
      Left = 19
      Top = 20
      Width = 62
      Height = 15
      Caption = #22995'    '#21517
      Transparent = True
    end
    object Label3: TLabel
      Left = 19
      Top = 58
      Width = 38
      Height = 15
      Caption = #24615' '#21035
      Transparent = True
    end
    object Label5: TLabel
      Left = 18
      Top = 255
      Width = 60
      Height = 15
      Caption = #20837#38498#31185#23460
      Transparent = True
    end
    object Label6: TLabel
      Left = 18
      Top = 287
      Width = 60
      Height = 15
      Caption = #36153#29992#31867#21035
      Transparent = True
    end
    object Label12: TLabel
      Left = 354
      Top = 20
      Width = 61
      Height = 15
      Caption = #36523' '#20221' '#35777
      Transparent = True
    end
    object Label18: TLabel
      Left = 590
      Top = 97
      Width = 60
      Height = 15
      Caption = #30149#20154#32844#19994
      Transparent = True
    end
    object Label14: TLabel
      Left = 18
      Top = 352
      Width = 62
      Height = 15
      Caption = #22791'    '#27880
      Transparent = True
    end
    object Label17: TLabel
      Left = 215
      Top = 132
      Width = 60
      Height = 15
      Caption = #30149#20154#22320#22336
      Transparent = True
    end
    object Label4: TLabel
      Left = 18
      Top = 223
      Width = 60
      Height = 15
      Caption = #20837#38498#26085#26399
      Transparent = True
    end
    object Label9: TLabel
      Left = 393
      Top = 320
      Width = 60
      Height = 15
      Caption = #31038#20445#21345#21495
      Transparent = True
    end
    object Label13: TLabel
      Left = 524
      Top = 58
      Width = 122
      Height = 15
      Caption = #24180#40836#12304#19981#35814'-000'#12305
      Transparent = True
    end
    object Label19: TLabel
      Left = 19
      Top = 97
      Width = 62
      Height = 15
      Caption = #31821'    '#36143
      Transparent = True
    end
    object Label20: TLabel
      Left = 352
      Top = 97
      Width = 60
      Height = 15
      Caption = #30149#20154#30465#20221
      Transparent = True
    end
    object Label21: TLabel
      Left = 141
      Top = 58
      Width = 38
      Height = 15
      Caption = #27665' '#26063
      Transparent = True
    end
    object Label31: TLabel
      Left = 524
      Top = 255
      Width = 60
      Height = 15
      Caption = #20837#38498#30149#24773
      Transparent = True
    end
    object Label32: TLabel
      Left = 298
      Top = 223
      Width = 60
      Height = 15
      Caption = #20837#38498#36884#24452
      Transparent = True
    end
    object Label7: TLabel
      Left = 393
      Top = 352
      Width = 60
      Height = 15
      Caption = #20837#38498#39044#20132
      Transparent = True
    end
    object Label8: TLabel
      Left = 21
      Top = 165
      Width = 60
      Height = 15
      Caption = #21333#20301#30005#35805
      Transparent = True
    end
    object Label15: TLabel
      Left = 19
      Top = 134
      Width = 62
      Height = 15
      Caption = #37038'    '#32534
      Transparent = True
    end
    object Label16: TLabel
      Left = 552
      Top = 165
      Width = 60
      Height = 15
      Caption = #32852#31995#30005#35805
      Transparent = True
    end
    object Label11: TLabel
      Left = 18
      Top = 320
      Width = 60
      Height = 15
      Caption = #31038#20445#21333#20301
    end
    object Label23: TLabel
      Left = 525
      Top = 223
      Width = 60
      Height = 15
      Caption = #20837#38498#35786#26029
      Transparent = True
    end
    object Label24: TLabel
      Left = 378
      Top = 165
      Width = 62
      Height = 15
      Caption = #20851'    '#31995
      Transparent = True
    end
    object Label25: TLabel
      Left = 215
      Top = 165
      Width = 61
      Height = 15
      Caption = #32852' '#31995' '#20154
      Transparent = True
    end
    object Label26: TLabel
      Left = 296
      Top = 255
      Width = 60
      Height = 15
      Caption = #38376#35786#21307#29983
      Transparent = True
    end
    object Label27: TLabel
      Left = 534
      Top = 352
      Width = 60
      Height = 15
      Caption = #39044#30041#37329#39069
      Transparent = True
    end
    object brkh: TLabel
      Left = 10
      Top = 452
      Width = 90
      Height = 17
      Caption = #30149#20154#21345#21495#65306
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label28: TLabel
      Left = 667
      Top = 352
      Width = 30
      Height = 15
      Caption = #24202#21495
      Transparent = True
    end
    object Label30: TLabel
      Left = 296
      Top = 287
      Width = 60
      Height = 15
      Caption = #27424#36153#38480#39069
      Transparent = True
    end
    object lbl1: TLabel
      Left = 289
      Top = 57
      Width = 60
      Height = 15
      Caption = #20986#29983#26085#26399
      Transparent = True
    end
    object Bevel2: TBevel
      Left = 5
      Top = 442
      Width = 771
      Height = 2
      Shape = bsFrame
      Style = bsRaised
    end
    object Label_ts: TLabel
      Left = 19
      Top = 382
      Width = 710
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = #24202#20301#25968
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label29: TLabel
      Left = 293
      Top = 453
      Width = 53
      Height = 15
      Caption = #20303#38498#21495':'
      Transparent = True
    end
    object lbl_balj: TLabel
      Left = 28
      Top = 427
      Width = 64
      Height = 15
      Caption = 'lbl_balj'
    end
    object Label33: TLabel
      Left = 10
      Top = 486
      Width = 53
      Height = 15
      Caption = #30149#26696#21495':'
      Transparent = True
      Visible = False
    end
    object lblfkfs: TLabel
      Left = 239
      Top = 352
      Width = 60
      Height = 15
      Caption = #20184#27454#26041#24335
      Transparent = True
    end
    object lblnessary1: TLabel
      Left = 329
      Top = 16
      Width = 9
      Height = 15
      Caption = '*'
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 277
      Top = 57
      Width = 9
      Height = 15
      Caption = '*'
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 124
      Top = 57
      Width = 9
      Height = 15
      Caption = '*'
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 597
      Top = 19
      Width = 9
      Height = 15
      Caption = '*'
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 514
      Top = 57
      Width = 9
      Height = 15
      Caption = '*'
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl6: TLabel
      Left = 755
      Top = 57
      Width = 9
      Height = 15
      Caption = '*'
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl7: TLabel
      Left = 575
      Top = 96
      Width = 9
      Height = 15
      Caption = '*'
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl8: TLabel
      Left = 755
      Top = 96
      Width = 9
      Height = 15
      Caption = '*'
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl9: TLabel
      Left = 755
      Top = 135
      Width = 9
      Height = 15
      Caption = '*'
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl10: TLabel
      Left = 356
      Top = 164
      Width = 9
      Height = 15
      Caption = '*'
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl11: TLabel
      Left = 755
      Top = 223
      Width = 9
      Height = 15
      Caption = '*'
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label34: TLabel
      Left = 509
      Top = 223
      Width = 9
      Height = 15
      Caption = '*'
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl12: TLabel
      Left = 271
      Top = 254
      Width = 9
      Height = 15
      Caption = '*'
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl13: TLabel
      Left = 755
      Top = 254
      Width = 9
      Height = 15
      Caption = '*'
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl14: TLabel
      Left = 271
      Top = 286
      Width = 9
      Height = 15
      Caption = '*'
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblStarSBDW: TLabel
      Left = 374
      Top = 319
      Width = 9
      Height = 15
      Caption = '*'
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label35: TLabel
      Left = 329
      Top = 96
      Width = 9
      Height = 15
      Caption = '*'
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label36: TLabel
      Left = 612
      Top = 19
      Width = 60
      Height = 15
      Caption = #23130#23035#29366#20917
      Visible = False
    end
    object Label37: TLabel
      Left = 536
      Top = 284
      Width = 45
      Height = 15
      Caption = #20171#32461#20154
      Transparent = True
    end
    object Label_pq: TLabel
      Left = 50
      Top = 190
      Width = 30
      Height = 15
      Caption = #29255#21306
    end
    object lbl_tsbs: TLabel
      Left = 210
      Top = 187
      Width = 60
      Height = 15
      Caption = #29305#27530#26631#35782
      Transparent = True
      Visible = False
    end
    object lbl15: TLabel
      Left = 546
      Top = 190
      Width = 84
      Height = 15
      Caption = 'Old'#20303#38498#21495#65306
      Transparent = True
    end
    object brdwdz: TDBEdit
      Left = 279
      Top = 133
      Width = 475
      Height = 23
      DataField = 'brdz'
      DataSource = ds_zydj
      ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
      TabOrder = 13
      Visible = False
      OnEnter = brdwdzEnter
      OnExit = brdwdzExit
      OnKeyPress = brxmKeyPress
    end
    object bz: TDBEdit
      Left = 86
      Top = 348
      Width = 142
      Height = 23
      DataField = 'bz'
      DataSource = ds_zydj
      ImeName = #20116#31508#22411#30721
      TabOrder = 31
      OnEnter = bzEnter
      OnExit = bzExit
      OnKeyPress = brxmKeyPress
    end
    object b_save: TBitBtn
      Left = 505
      Top = 450
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
      TabOrder = 39
      OnClick = b_saveClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object brxm: TDBEdit
      Left = 86
      Top = 16
      Width = 240
      Height = 23
      DataField = 'brxm'
      DataSource = ds_zydj
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 0
      OnEnter = brxmEnter
      OnExit = brxmExit
      OnKeyPress = brxmKeyPress
    end
    object sfzhm: TDBEdit
      Left = 419
      Top = 16
      Width = 175
      Height = 23
      DataField = 'sfzhm'
      DataSource = ds_zydj
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 1
      OnChange = sfzhmChange
      OnExit = sfzhmExit
      OnKeyPress = brxmKeyPress
    end
    object ryrq: TDateTimePicker
      Left = 86
      Top = 219
      Width = 129
      Height = 23
      Date = 36747.653047361100000000
      Time = 36747.653047361100000000
      DateFormat = dfLong
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 19
      OnChange = dtp1Change
      OnExit = ryrqExit
      OnKeyPress = brxmKeyPress
    end
    object b_cancel: TBitBtn
      Left = 587
      Top = 450
      Width = 72
      Height = 25
      Cancel = True
      Caption = #25918#24323
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 40
      OnClick = b_cancelClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object brzy: TComboBox
      Left = 654
      Top = 93
      Width = 100
      Height = 23
      AutoComplete = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 15
      TabOrder = 11
      OnExit = brzyExit
      OnKeyPress = brxmKeyPress
    end
    object brxb: TComboBox
      Left = 62
      Top = 54
      Width = 52
      Height = 23
      AutoComplete = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 15
      TabOrder = 4
      OnExit = brxbExit
      OnKeyPress = brxmKeyPress
      Items.Strings = (
        #30007
        #22899)
    end
    object brjg: TComboBox
      Left = 207
      Top = 93
      Width = 119
      Height = 23
      AutoComplete = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 15
      TabOrder = 9
      OnExit = brjgExit
      OnKeyPress = brxmKeyPress
    end
    object brsf: TComboBox
      Left = 419
      Top = 93
      Width = 155
      Height = 23
      AutoComplete = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 15
      TabOrder = 10
      OnExit = brsfExit
      OnKeyPress = brxmKeyPress
    end
    object brmz: TComboBox
      Left = 187
      Top = 54
      Width = 84
      Height = 23
      AutoComplete = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 15
      TabOrder = 5
      OnExit = brmzExit
      OnKeyPress = brmzKeyPress
    end
    object rybq: TComboBox
      Left = 590
      Top = 251
      Width = 164
      Height = 23
      AutoComplete = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 15
      TabOrder = 25
      OnExit = rybqExit
      OnKeyPress = brxmKeyPress
    end
    object rytj: TComboBox
      Left = 364
      Top = 219
      Width = 142
      Height = 23
      AutoComplete = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 15
      TabOrder = 21
      OnExit = rytjExit
      OnKeyPress = brxmKeyPress
    end
    object fylb: TComboBox
      Left = 86
      Top = 283
      Width = 185
      Height = 23
      AutoComplete = False
      Enabled = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 15
      TabOrder = 27
      OnChange = fylbChange
      OnExit = fylbExit
      OnKeyPress = brxmKeyPress
    end
    object ryyj: TEdit
      Left = 456
      Top = 348
      Width = 73
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 33
      OnExit = ryyjExit
      OnKeyPress = brxmKeyPress
    end
    object dwdh: TDBEdit
      Left = 86
      Top = 161
      Width = 110
      Height = 23
      DataField = 'dwdh'
      DataSource = ds_zydj
      ImeName = #20116#31508#22411#30721
      TabOrder = 14
      OnKeyPress = brxmKeyPress
    end
    object dwyb: TDBEdit
      Left = 86
      Top = 128
      Width = 110
      Height = 23
      DataField = 'dwyb'
      DataSource = ds_zydj
      ImeName = #20116#31508#22411#30721
      TabOrder = 12
      OnKeyPress = dwybKeyPress
    end
    object nxrdh: TDBEdit
      Left = 615
      Top = 161
      Width = 139
      Height = 23
      DataField = 'nxrdh'
      DataSource = ds_zydj
      ImeName = #20116#31508#22411#30721
      TabOrder = 16
      OnKeyPress = brxmKeyPress
    end
    object sbkh: TDBEdit
      Left = 456
      Top = 319
      Width = 298
      Height = 23
      DataField = 'sbkh'
      DataSource = ds_zydj
      Enabled = False
      ImeName = #20116#31508#22411#30721
      TabOrder = 30
      OnExit = sbkhExit
      OnKeyPress = brxmKeyPress
    end
    object ryks: TComboBox
      Left = 86
      Top = 251
      Width = 185
      Height = 23
      AutoComplete = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 15
      TabOrder = 23
      OnExit = ryksExit
      OnKeyPress = brxmKeyPress
    end
    object jbbm: TComboBox
      Left = 591
      Top = 219
      Width = 164
      Height = 23
      AutoComplete = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 15
      TabOrder = 22
      OnExit = jbbmExit
      OnKeyPress = jbbmKeyPress
      Items.Strings = (
        #21361
        #24613
        #19968#33324)
    end
    object sbdw: TComboBox
      Left = 86
      Top = 316
      Width = 288
      Height = 23
      Enabled = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 15
      TabOrder = 29
      OnExit = sbdwExit
      OnKeyPress = brxmKeyPress
    end
    object dbr: TDBEdit
      Left = 281
      Top = 162
      Width = 73
      Height = 23
      DataField = 'dbr'
      DataSource = ds_zydj
      ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
      TabOrder = 17
      OnDblClick = dbrDblClick
      OnEnter = dbrEnter
      OnExit = dbrExit
      OnKeyPress = brmzKeyPress
    end
    object pbgx: TComboBox
      Left = 446
      Top = 161
      Width = 81
      Height = 23
      AutoComplete = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 15
      TabOrder = 15
      OnExit = pbgxExit
      OnKeyPress = brxmKeyPress
    end
    object mzys: TComboBox
      Left = 364
      Top = 251
      Width = 142
      Height = 23
      AutoComplete = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 15
      TabOrder = 24
      OnExit = mzysExit
      OnKeyPress = brxmKeyPress
    end
    object ylje: TDBEdit
      Left = 597
      Top = 348
      Width = 65
      Height = 23
      DataField = 'ylje'
      DataSource = ds_zydj
      ImeName = #20116#31508#22411#30721
      TabOrder = 34
      OnKeyPress = brxmKeyPress
    end
    object bch: TEdit
      Left = 697
      Top = 348
      Width = 57
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 35
      OnKeyPress = brxmKeyPress
    end
    object qfxe: TEdit
      Left = 364
      Top = 283
      Width = 142
      Height = 23
      TabStop = False
      Color = clScrollBar
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 28
      OnExit = ryyjExit
    end
    object dtp1: TDateTimePicker
      Left = 349
      Top = 54
      Width = 155
      Height = 23
      Date = 40906.624740300930000000
      Format = 'yyyy'#24180'M'#26376'd'#26085
      Time = 40906.624740300930000000
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 6
      OnChange = dtp1Change
      OnExit = dtp1Exit
      OnKeyPress = dtp1KeyPress
    end
    object brnl: TSXAgeBox
      Left = 648
      Top = 54
      Width = 106
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 7
      OnExit = brnlExit
      OnKeyPress = brxmKeyPress
    end
    object memo_lbs: TMemo
      Left = 6
      Top = 400
      Width = 744
      Height = 26
      BorderStyle = bsNone
      Color = clBtnFace
      Ctl3D = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 36
    end
    object bah: TEdit
      Left = 350
      Top = 450
      Width = 149
      Height = 23
      Hint = #22635#20889#21518#30149#26696#21495#19981#33258#21160#29983#25104#65281
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      MaxLength = 16
      ParentShowHint = False
      ShowHint = True
      TabOrder = 38
      OnExit = bahExit
      OnKeyPress = brxmKeyPress
    end
    object Edit1: TEdit
      Left = 87
      Top = 93
      Width = 121
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 8
      Text = #20013#22269
      OnKeyPress = brxmKeyPress
    end
    object ComboBox1: TComboBox
      Left = 144
      Top = 449
      Width = 143
      Height = 23
      Style = csDropDownList
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 15
      TabOrder = 37
      Visible = False
    end
    object rysj: TDateTimePicker
      Left = 209
      Top = 219
      Width = 85
      Height = 23
      Date = 41534.447784108790000000
      Time = 41534.447784108790000000
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      Kind = dtkTime
      TabOrder = 20
      OnChange = dtp1Change
      OnExit = ryrqExit
      OnKeyPress = rysjKeyPress
    end
    object Cmbbfkfs: TComboBox
      Left = 305
      Top = 348
      Width = 69
      Height = 23
      Style = csDropDownList
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 15
      TabOrder = 32
      OnKeyPress = CmbbfkfsKeyPress
    end
    object grp1: TGroupBox
      Left = 144
      Top = 474
      Width = 641
      Height = 61
      Caption = #19978#27425#30149#20154#30331#35760#20449#24687':'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 41
      object lbl_tmh: TLabel
        Left = 3
        Top = 30
        Width = 53
        Height = 15
        Caption = #26465#30721#21495':'
        Transparent = True
      end
      object lbl_brxm: TLabel
        Left = 144
        Top = 30
        Width = 38
        Height = 15
        Caption = #22995#21517':'
        Transparent = True
      end
      object lbl_brxb: TLabel
        Left = 292
        Top = 30
        Width = 38
        Height = 15
        Caption = #24615#21035':'
        Transparent = True
      end
      object lbl_brnl: TLabel
        Left = 386
        Top = 30
        Width = 38
        Height = 15
        Caption = #24180#40836':'
        Transparent = True
      end
      object lbl_ryks: TLabel
        Left = 484
        Top = 30
        Width = 68
        Height = 15
        Caption = #20837#38498#31185#23460':'
        Transparent = True
      end
    end
    object chk1: TCheckBox
      Left = 620
      Top = 18
      Width = 118
      Height = 17
      Caption = #31934#20934#25206#36139#39564#35777
      TabOrder = 3
      OnClick = chk1Click
    end
    object hyqk: TComboBox
      Left = 684
      Top = 16
      Width = 80
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 15
      TabOrder = 2
      Visible = False
      Items.Strings = (
        #24050#23130
        #26410#23130)
    end
    object DBEditdbr: TDBEdit
      Left = 590
      Top = 280
      Width = 160
      Height = 23
      DataField = 'jsr'
      DataSource = ds_zydj
      ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
      TabOrder = 26
      OnDblClick = dbrDblClick
      OnEnter = dbrEnter
      OnExit = DBEditdbrExit
      OnKeyPress = brxmKeyPress
    end
    object cbb_pq: TComboBox
      Left = 86
      Top = 186
      Width = 110
      Height = 23
      AutoComplete = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 15
      ItemIndex = 0
      TabOrder = 18
      Text = #25479#20992
      Visible = False
      OnExit = brmzExit
      OnKeyPress = brmzKeyPress
      Items.Strings = (
        #25479#20992
        #22242#26519
        #40635#22478
        #19996#23453
        #27801#27915
        #38047#27915
        #28467#27827
        #20854#20182)
    end
    object cbb_tsbs: TComboBox
      Left = 276
      Top = 186
      Width = 107
      Height = 23
      AutoComplete = False
      Style = csDropDownList
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 15
      TabOrder = 42
      Visible = False
      OnExit = cbb_tsbsExit
      OnKeyPress = cbb_tsbsKeyPress
    end
    object dbedt_oldzyh: TDBEdit
      Left = 617
      Top = 186
      Width = 136
      Height = 23
      DataField = 'old_zyh'
      DataSource = ds_zydj
      ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
      TabOrder = 43
      OnDblClick = dbrDblClick
      OnEnter = dbrEnter
      OnExit = dbrExit
      OnKeyPress = brxmKeyPress
    end
    object chkcpkrk: TCheckBox
      Left = 389
      Top = 190
      Width = 94
      Height = 14
      Caption = #36139#22256#20154#21592
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 44
    end
    object brdz: TSXXzqhBox
      Left = 281
      Top = 134
      Width = 474
      Height = 23
      TabOrder = 45
      OnExit = brdzExit
      OnKeyPress = brdzKeyPress
      Connection = DM_data.ado_mydata
    end
    object chk_lgbr: TCheckBox
      Left = 505
      Top = 400
      Width = 94
      Height = 14
      Caption = #30041#35266#30149#20154
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 46
      Visible = False
    end
  end
  object tempgrid: TDBGrid
    Left = 86
    Top = 411
    Width = 318
    Height = 217
    DataSource = dstemp
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = tempgridExit
    OnKeyDown = tempgridKeyDown
    Columns = <
      item
        Expanded = False
        Title.Alignment = taCenter
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        Title.Alignment = taCenter
        Width = 142
        Visible = True
      end>
  end
  object b_dk: TButton
    Left = 205
    Top = 7
    Width = 52
    Height = 25
    Caption = #35835#21345
    TabOrder = 1
    OnClick = b_dkClick
  end
  object BitBtn1: TBitBtn
    Left = 263
    Top = 7
    Width = 85
    Height = 25
    Caption = #20581#24247#21345#32465#23450
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = BitBtn1Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object ds_zydj: TDataSource
    DataSet = qry_zydj
    Left = 614
    Top = 148
  end
  object dstemp: TDataSource
    DataSet = jbqk_cx
    Left = 526
    Top = 68
  end
  object jbqk_cx: TADODataSet
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 262
    Top = 124
  end
  object sp_cx_brqk: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_cx_zykyh'
    Parameters = <>
    Left = 350
    Top = 60
  end
  object qry_zydj: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'srtmh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 9
        Value = Null
      end>
    SQL.Strings = (
      'select * from zysf_zydj where tmh=:srtmh and cybz=0 and jsbz=0')
    Left = 534
    Top = 132
  end
  object sp_up_kyh: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_up_kyh;1'
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
        Size = 9
        Value = Null
      end>
    Left = 614
    Top = 180
  end
  object sp_inyj: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_in_zyyj;1'
    Parameters = <
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 9
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
        Name = '@yjje'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
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
        Name = '@yjxs'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@sfrq'
        Attributes = [paNullable]
        DataType = ftDateTime
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
        Name = '@sjbh'
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
    Left = 326
    Top = 108
  end
  object sp_gettmh: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'sys_get_tmh;1'
    Parameters = <
      item
        Name = '@lb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@sctmh'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 9
        Value = Null
      end>
    Left = 414
    Top = 60
  end
  object sp_cwaz: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_up_cwaz;1'
    Parameters = <
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 9
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
        Name = '@bch'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
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
    Left = 422
    Top = 132
  end
  object qry_bq: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ksdm'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select bqdm,count(*) cws ,sum(case when rtrim(zyh)='#39#39' then 1 els' +
        'e 0 end ) kcs'
      'into #temp'
      'from sys_kscwsz where tybz=0'
      'group by bqdm'
      'select a.bqdm,a.bqmc,c.mc ksmc,d.cws,d.kcs'
      'from sys_bqdm a,sys_bqzyfl b,sys_ksdm c,#temp d'
      'where a.bqdm=b.bqdm and'
      '      b.bqzydm=c.dm and'
      '      a.bqdm=d.bqdm and'
      '      c.dm = :ksdm')
    Left = 246
    Top = 132
  end
  object qry_bqcw_lb: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'bqdm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select b.lbmc,count(*) cws '
      'from sys_kscwsz a,sys_bclb b'
      'where a.bclb = b.lbdm and'
      '      rtrim(a.zyh)='#39#39' and '
      '      a.bqdm=:bqdm and a.tybz=0'
      'group by lbmc')
    Left = 366
    Top = 124
  end
  object conn_ba: TADOConnection
    LoginPrompt = False
    Left = 278
    Top = 260
  end
  object qry_balj: TADOQuery
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 190
    Top = 140
  end
  object sp_get_bah: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'sye_get_bah'
    Parameters = <>
    Left = 158
    Top = 196
  end
  object ADOQuery1: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from sys_xt_bah_Config where tybz=0')
    Left = 14
    Top = 132
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 470
    Top = 76
  end
  object qryfkfs: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 480
    Top = 128
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
    Left = 576
    Top = 128
  end
end