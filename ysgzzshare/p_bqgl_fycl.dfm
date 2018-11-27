object frm_fycl: Tfrm_fycl
  Left = 167
  Top = 118
  BorderIcons = [biSystemMenu]
  BorderWidth = 4
  Caption = #30149#21592#35745#36153#22788#29702
  ClientHeight = 550
  ClientWidth = 987
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 49
    Width = 987
    Height = 130
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitWidth = 938
    object Label1: TLabel
      Left = 280
      Top = 16
      Width = 60
      Height = 15
      Caption = #30149#20154#22995#21517
    end
    object Label2: TLabel
      Left = 502
      Top = 44
      Width = 60
      Height = 15
      Caption = #36153#29992#31867#21035
    end
    object Label3: TLabel
      Left = 280
      Top = 73
      Width = 60
      Height = 15
      Caption = #36153#29992#24635#35745
    end
    object Label4: TLabel
      Left = 24
      Top = 73
      Width = 60
      Height = 15
      Caption = #39044#20132#37329#39069
    end
    object Label5: TLabel
      Left = 500
      Top = 18
      Width = 61
      Height = 15
      Caption = #30149' '#24202' '#21495
    end
    object Label11: TLabel
      Left = 502
      Top = 73
      Width = 60
      Height = 15
      Caption = #33258#36153#37329#39069
    end
    object Label12: TLabel
      Left = 702
      Top = 73
      Width = 60
      Height = 15
      Caption = #21097#20313#37329#39069
    end
    object Label13: TLabel
      Left = 702
      Top = 16
      Width = 60
      Height = 15
      Caption = #20837#38498#26085#26399
    end
    object Label15: TLabel
      Left = 24
      Top = 101
      Width = 60
      Height = 15
      Caption = #20303#38498#31185#23460
    end
    object Label16: TLabel
      Left = 280
      Top = 101
      Width = 60
      Height = 15
      Caption = #20027#31649#21307#29983
    end
    object Label17: TLabel
      Left = 502
      Top = 101
      Width = 60
      Height = 15
      Caption = #22788#32622#31185#23460
    end
    object Label18: TLabel
      Left = 702
      Top = 101
      Width = 60
      Height = 15
      Caption = #22788#32622#20154#21592
    end
    object Label14: TLabel
      Left = 24
      Top = 44
      Width = 60
      Height = 15
      Caption = #20837#38498#35786#26029
    end
    object Label19: TLabel
      Left = 702
      Top = 44
      Width = 60
      Height = 15
      Caption = #35760#36153#38480#39069
    end
    object Label20: TLabel
      Left = 24
      Top = 16
      Width = 70
      Height = 17
      Caption = #21345'    '#21495
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object tmh: TEdit
      Left = 92
      Top = 10
      Width = 100
      Height = 23
      Hint = #30149#20154#22995#21517#12289#20303#38498#21345#21495#12289#30149#24202#21495
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnEnter = tmhEnter
      OnExit = tmhExit
      OnKeyPress = tempgrid1KeyPress
    end
    object fylb: TEdit
      Left = 567
      Top = 39
      Width = 100
      Height = 23
      TabStop = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 2
      OnEnter = fylbEnter
      OnExit = fylbExit
    end
    object zfy: TEdit
      Left = 346
      Top = 68
      Width = 100
      Height = 25
      TabStop = False
      Color = 16744576
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindow
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = '0'
      OnEnter = fylbEnter
      OnExit = fylbExit
    end
    object zyj: TEdit
      Left = 92
      Top = 68
      Width = 100
      Height = 25
      TabStop = False
      Color = 16744576
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindow
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      Text = '0'
      OnEnter = fylbEnter
      OnExit = fylbExit
    end
    object bch: TEdit
      Left = 567
      Top = 11
      Width = 100
      Height = 23
      TabStop = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 1
      OnEnter = fylbEnter
      OnExit = fylbExit
    end
    object zzf: TEdit
      Left = 567
      Top = 68
      Width = 100
      Height = 25
      TabStop = False
      Color = 16744576
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindow
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 5
      Text = '0'
      OnEnter = fylbEnter
      OnExit = fylbExit
    end
    object syje: TEdit
      Left = 767
      Top = 68
      Width = 129
      Height = 25
      TabStop = False
      Color = 16744576
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindow
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 6
      Text = '0'
      OnEnter = fylbEnter
      OnExit = fylbExit
    end
    object RYRQ: TEdit
      Left = 767
      Top = 11
      Width = 129
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 7
      OnEnter = fylbEnter
      OnExit = fylbExit
    end
    object kdks: TEdit
      Tag = 1
      Left = 92
      Top = 96
      Width = 100
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 8
      OnEnter = kdksEnter
      OnExit = kdksExit
      OnKeyPress = tempgrid1KeyPress
    end
    object kdys: TEdit
      Tag = 2
      Left = 346
      Top = 96
      Width = 100
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 9
      OnEnter = kdysEnter
      OnExit = kdysExit
      OnKeyPress = kdysKeyPress
    end
    object czks: TEdit
      Tag = 3
      Left = 567
      Top = 96
      Width = 100
      Height = 23
      TabStop = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 10
      OnEnter = czksEnter
      OnExit = czksExit
      OnKeyPress = tempgrid1KeyPress
    end
    object czys: TEdit
      Tag = 4
      Left = 767
      Top = 96
      Width = 129
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 11
      OnEnter = czysEnter
      OnExit = czysExit
      OnKeyPress = czysKeyPress
    end
    object bz: TEdit
      Left = 92
      Top = 39
      Width = 353
      Height = 23
      TabStop = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 12
    end
    object zdqf: TEdit
      Left = 767
      Top = 39
      Width = 129
      Height = 23
      TabStop = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 13
    end
    object Edit1: TEdit
      Left = 346
      Top = 11
      Width = 100
      Height = 23
      TabStop = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 14
      OnEnter = fylbEnter
      OnExit = fylbExit
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 524
    Width = 987
    Height = 26
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 4
    ExplicitWidth = 938
    object Label21: TLabel
      Left = 6
      Top = 7
      Width = 60
      Height = 15
      Caption = #39033#30446#22791#27880
    end
    object B_ENTER: TBitBtn
      Left = 466
      Top = 1
      Width = 85
      Height = 25
      Caption = #20445#23384'(F10)'
      Enabled = False
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
      Left = 643
      Top = 1
      Width = 85
      Height = 25
      Caption = #32467#26463'(F4)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = B_FINALClick
    end
    object B_giveup: TBitBtn
      Left = 557
      Top = 1
      Width = 85
      Height = 25
      Caption = #25918#24323'(&C)'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = B_giveupClick
    end
    object xmbz: TEdit
      Tag = 3
      Left = 66
      Top = 3
      Width = 295
      Height = 21
      TabStop = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 3
      OnEnter = czksEnter
      OnExit = czksExit
      OnKeyPress = tempgrid1KeyPress
    end
    object BitBtn1: TBitBtn
      Left = 367
      Top = 0
      Width = 97
      Height = 26
      Caption = #26448#26009#35760#36153'F8'
      TabOrder = 4
      OnClick = BitBtn1Click
    end
  end
  object fydmgrid: TDBGrid
    Left = 0
    Top = 249
    Width = 650
    Height = 275
    Align = alLeft
    DataSource = ds_cx_sfxm
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    OnDblClick = fydmgridDblClick
    OnEnter = fydmgridEnter
    OnExit = fydmgridExit
    OnKeyDown = fydmgridKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'szdm'
        Title.Alignment = taCenter
        Title.Caption = #26631#20934#30721
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fydm'
        Title.Alignment = taCenter
        Title.Caption = #36153#29992#20195#30721
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fymc'
        Title.Alignment = taCenter
        Title.Caption = #39033#30446#21517#31216
        Width = 152
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pym'
        Title.Alignment = taCenter
        Title.Caption = #36755#20837#31616#20889
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dw'
        Title.Alignment = taCenter
        Title.Caption = #21333#20301
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sfbz'
        Title.Alignment = taCenter
        Title.Caption = #25910#36153#26631#20934
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bxbl'
        Title.Alignment = taCenter
        Title.Caption = #31038#20445#25253#38144#27604#20363
        Width = 100
        Visible = True
      end>
  end
  object tempgrid1: TDBGrid
    Left = 56
    Top = 283
    Width = 285
    Height = 124
    DataSource = ds_zybrjbqk
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = tempgrid1Exit
    OnKeyPress = tempgrid1KeyPress
  end
  object DBGridEh2: TDBGridEh
    Left = 650
    Top = 249
    Width = 337
    Height = 275
    Hint = '"Esc":'#21024#38500#24403#21069#25968#25454#65307'F5:'#36153#29992#24405#20837#65307'F6:'#36827#20837#35813#32593#26684#65292#20197#20415#21024#38500#25968#25454
    Align = alClient
    DataGrouping.GroupLevels = <>
    DataSource = ds_sfmx
    Flat = False
    FooterColor = 8454143
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    FooterRowCount = 1
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentShowHint = False
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    ShowHint = True
    SumList.Active = True
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    OnKeyDown = DBGridEh2KeyDown
    Columns = <
      item
        EditButtons = <>
        FieldName = 'fydmmc'
        Footer.FieldName = 'fydmmc'
        Footer.Value = #39033#30446#20301#25968':'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #25910#36153#39033#30446
        Width = 114
      end
      item
        EditButtons = <>
        FieldName = 'fyje'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #37329#39069
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'zfje'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #33258#36153#37329#39069
        Width = 66
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 179
    Width = 987
    Height = 70
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    ExplicitWidth = 938
    object Label6: TLabel
      Left = 24
      Top = 13
      Width = 60
      Height = 15
      Caption = #36153#29992#20195#30721
    end
    object Label7: TLabel
      Left = 198
      Top = 15
      Width = 30
      Height = 15
      Caption = #35268#26684
    end
    object Label8: TLabel
      Left = 359
      Top = 15
      Width = 30
      Height = 15
      Caption = #21333#20215
    end
    object Label9: TLabel
      Left = 485
      Top = 15
      Width = 30
      Height = 15
      Caption = #25968#37327
    end
    object Label10: TLabel
      Left = 605
      Top = 13
      Width = 30
      Height = 15
      Caption = #37329#39069
    end
    object fydm: TEdit
      Left = 90
      Top = 8
      Width = 100
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 0
      OnEnter = fydmEnter
      OnExit = fydmExit
      OnKeyPress = tempgrid1KeyPress
    end
    object gg: TDBEdit
      Left = 230
      Top = 10
      Width = 106
      Height = 23
      TabStop = False
      DataSource = ds_sfmx
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 1
      OnEnter = ggEnter
      OnExit = ggExit
      OnKeyPress = tempgrid1KeyPress
    end
    object sfbz: TEdit
      Left = 395
      Top = 12
      Width = 81
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 2
      OnEnter = sfbzEnter
      OnExit = sfbzExit
      OnKeyPress = sfbzKeyPress
    end
    object sl: TDBEdit
      Left = 518
      Top = 10
      Width = 81
      Height = 23
      Color = clAqua
      DataField = 'fysl'
      DataSource = ds_sfmx
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 3
      OnEnter = slEnter
      OnExit = slExit
      OnKeyPress = slKeyPress
    end
    object je: TDBEdit
      Left = 641
      Top = 10
      Width = 100
      Height = 23
      Color = clAqua
      DataField = 'fyje'
      DataSource = ds_sfmx
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 4
      OnEnter = jeEnter
      OnExit = jeExit
      OnKeyPress = slKeyPress
    end
    object CheckBox1: TCheckBox
      Left = 24
      Top = 41
      Width = 177
      Height = 17
      Caption = #36873#25321#36153#29992#23454#38469#21457#29983#26102#38388
      TabOrder = 5
      OnClick = CheckBox1Click
    end
    object cxDateEdit1: TcxDateEdit
      Left = 230
      Top = 41
      Properties.Kind = ckDateTime
      TabOrder = 6
      Visible = False
      Width = 242
    end
  end
  object ksys_grid: TDBGrid
    Left = 220
    Top = 264
    Width = 225
    Height = 113
    DataSource = ds_ysks
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = ksys_gridExit
    OnKeyPress = tempgrid1KeyPress
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 987
    Height = 49
    Align = alTop
    BevelInner = bvLowered
    Color = clHighlightText
    TabOrder = 7
    ExplicitWidth = 938
    object Label22: TLabel
      Left = 8
      Top = 4
      Width = 493
      Height = 17
      Caption = #27880#24847#65306#26412#39029#38754#26159#21307#38498#20869#37096#35760#36134#20351#29992#65292#19981#23545#30149#20154#24320#25918#65292#35831#27880#24847#20445#23494#65281
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 56
      Top = 28
      Width = 663
      Height = 17
      Caption = #31995#32479#25152#35774#20219#20309#38480#39069#65292#20026#21307#38498#31649#29702#30340#38656#35201#65292#24182#19981#20195#34920#30149#20154#36523#20221#65292#19982#30149#20154#36523#20221#26080#20851#65281#29305#27492#22768#26126
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object ad_zyfymx_ls: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforePost = ad_zyfymx_lsBeforePost
    AfterPost = ad_zyfymx_lsAfterPost
    AfterDelete = ad_zyfymx_lsAfterDelete
    AfterScroll = ad_zyfymx_lsAfterScroll
    CommandText = 'select * from zysf_zyfymx_ls '
    FieldDefs = <
      item
        Name = 'id'
        Attributes = [faReadonly, faFixed]
        DataType = ftAutoInc
      end
      item
        Name = 'tmh'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 9
      end
      item
        Name = 'zyh'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 16
      end
      item
        Name = 'ph'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 16
      end
      item
        Name = 'kdks'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 4
      end
      item
        Name = 'czks'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 4
      end
      item
        Name = 'kdys'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 4
      end
      item
        Name = 'czys'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 4
      end
      item
        Name = 'fydm'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 4
      end
      item
        Name = 'fysl'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'fyje'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'zkje'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ssje'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'zfje'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'sfczy'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 4
      end
      item
        Name = 'sfrq'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'sjbh'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 16
      end
      item
        Name = 'cfbh'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 12
      end
      item
        Name = 'tfbz'
        Attributes = [faFixed]
        DataType = ftBoolean
      end
      item
        Name = 'tfczy'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 4
      end
      item
        Name = 'tfrq'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'jzbz'
        Attributes = [faFixed]
        DataType = ftBoolean
      end
      item
        Name = 'jsbz'
        Attributes = [faFixed]
        DataType = ftBoolean
      end
      item
        Name = 'jsdh'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 16
      end
      item
        Name = 'bz'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 4
      end
      item
        Name = 'fysl1'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 10
        Size = 2
      end
      item
        Name = 'sjfysl'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 10
        Size = 2
      end>
    Parameters = <>
    StoreDefs = True
    Left = 640
    Top = 417
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
      DisplayWidth = 19
      FieldName = 'fyje'
      DisplayFormat = '0.00'
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
      DisplayFormat = '0.00'
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
      FieldName = 'ph'
      FixedChar = True
      Size = 16
    end
    object ad_zyfymx_lssbfybl: TFloatField
      FieldKind = fkLookup
      FieldName = 'sbfybl'
      LookupDataSet = ad_sfxm
      LookupKeyFields = 'fydm'
      LookupResultField = 'sbfybl'
      KeyFields = 'fydm'
      Lookup = True
    end
    object ad_zyfymx_lsbxfybl: TFloatField
      FieldKind = fkLookup
      FieldName = 'bxfybl'
      LookupDataSet = ad_sfxm
      LookupKeyFields = 'fydm'
      LookupResultField = 'bxfybl'
      KeyFields = 'fydm'
      Lookup = True
    end
    object ad_zyfymx_lshtfybl: TFloatField
      FieldKind = fkLookup
      FieldName = 'htfybl'
      LookupDataSet = ad_sfxm
      LookupKeyFields = 'fydm'
      LookupResultField = 'htfybl'
      KeyFields = 'fydm'
      Lookup = True
    end
    object ad_zyfymx_lssbfybl01: TFloatField
      FieldKind = fkLookup
      FieldName = 'sbfybl01'
      LookupDataSet = ad_sfxm
      LookupKeyFields = 'fydm'
      LookupResultField = 'sbfybl01'
      KeyFields = 'fydm'
      Lookup = True
    end
    object ad_zyfymx_lssbfybl02: TFloatField
      FieldKind = fkLookup
      FieldName = 'sbfybl02'
      LookupDataSet = ad_sfxm
      LookupKeyFields = 'fydm'
      LookupResultField = 'sbfybl02'
      KeyFields = 'fydm'
      Lookup = True
    end
    object ad_zyfymx_lsfysl1: TBCDField
      FieldName = 'fysl1'
      Precision = 10
      Size = 2
    end
    object ad_zyfymx_lssjfysl: TBCDField
      FieldName = 'sjfysl'
      Precision = 10
      Size = 2
    end
  end
  object sp_cx_sfxm: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'bqgl_cx_kjsfxm;1'
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
        Name = '@fymc'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@pym'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@bqdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@sfxz'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ksdm'
        DataType = ftString
        Size = 40
        Value = #39#39
      end>
    Left = 344
    Top = 257
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
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 566
    Top = 258
  end
  object ds_sfmx: TDataSource
    DataSet = ad_zyfymx_ls
    Left = 608
    Top = 417
  end
  object ds_zybrjbqk: TDataSource
    DataSet = sp_cx_zybrjbqk
    Left = 184
    Top = 345
  end
  object ad_sfxm: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 'select * from sys_kjsfxm'
    Parameters = <>
    Left = 264
    Top = 297
  end
  object ds_sfxm: TDataSource
    DataSet = ad_sfxm
    Left = 312
    Top = 305
  end
  object ActionList1: TActionList
    Left = 427
    Top = 255
    object jshj: TAction
      Caption = 'jshj'
      ShortCut = 115
      OnExecute = B_FINALClick
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
      ShortCut = 27
      OnExecute = xgExecute
    end
    object F5: TAction
      Caption = 'F5'
      ShortCut = 116
      OnExecute = F5Execute
    end
    object F6: TAction
      Caption = 'F6'
      ShortCut = 117
      OnExecute = F6Execute
    end
    object cljf: TAction
      Caption = 'cljf'
      ShortCut = 119
      OnExecute = cljfExecute
    end
  end
  object ad_zycfzb: TADODataSet
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 264
    Top = 353
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
    Left = 352
    Top = 305
  end
  object sp_up_brfymxcl: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'bqgl_up_brfymx;1'
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
        Name = '@csfyrq'
        Attributes = [paNullable]
        DataType = ftDateTime
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
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 1
        Value = Null
      end>
    Left = 336
    Top = 353
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
    Left = 304
    Top = 257
  end
  object ds_ysks: TDataSource
    DataSet = sp_cx_czyks
    Left = 188
    Top = 256
  end
  object ds_sp_sfxm: TDataSource
    DataSet = sp_cx_sfxm
    Left = 144
    Top = 305
  end
  object ds_cx_sfxm: TDataSource
    DataSet = sp_cx_sfxm
    Left = 264
    Top = 256
  end
  object ADOQuery1: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 624
    Top = 368
  end
  object qry_delete_fyls: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'delete from zysf_zyfymx_ls where id=:id')
    Left = 200
    Top = 416
  end
  object qry_fylb: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 792
    Top = 32
  end
  object sp_checkwpkc: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'mzzy_cx_wpkc'
    Parameters = <
      item
        Name = '@tmh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 40
        Value = #39#39
      end
      item
        Name = '@czydm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 40
        Value = #39#39
      end
      item
        Name = '@bz'
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = 0
      end>
    Left = 160
    Top = 424
  end
end
