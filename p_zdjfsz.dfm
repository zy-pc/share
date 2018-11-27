object frm_zdjfsz: Tfrm_zdjfsz
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #33258#21160#35745#36153#35774#32622
  ClientHeight = 703
  ClientWidth = 1027
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 1027
    Height = 233
    Align = alTop
    Caption = #26412#31185#23460#30149#20154#21015#34920
    TabOrder = 2
    object dbgrideh1: TcxGrid
      Left = 2
      Top = 17
      Width = 1023
      Height = 214
      Align = alClient
      TabOrder = 0
      object dbgrideh1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCellClick = dbgrideh1DBTableView1CellClick
        OnCustomDrawCell = dbgrideh1DBTableView1CustomDrawCell
        DataController.DataSource = ds_brxx
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object dbgrideh1DBTableView1Column7: TcxGridDBColumn
          Caption = #30149#24202#21495
          DataBinding.FieldName = 'yybch'
          Width = 122
        end
        object dbgrideh1DBTableView1Column1: TcxGridDBColumn
          Caption = #30149#20154#22995#21517
          DataBinding.FieldName = 'brxm'
          Options.Editing = False
          Options.Focusing = False
          Width = 142
        end
        object dbgrideh1DBTableView1Column2: TcxGridDBColumn
          Caption = #26465#30721#21495
          DataBinding.FieldName = 'tmh'
          Options.Editing = False
          Options.Focusing = False
          Width = 113
        end
        object dbgrideh1DBTableView1Column3: TcxGridDBColumn
          Caption = #24615#21035
          DataBinding.FieldName = 'brxb'
          Options.Editing = False
          Options.Focusing = False
          Width = 113
        end
        object dbgrideh1DBTableView1Column4: TcxGridDBColumn
          Caption = #24180#40836
          DataBinding.FieldName = 'brnl'
          Options.Editing = False
          Options.Focusing = False
          Width = 94
        end
        object dbgrideh1DBTableView1Column5: TcxGridDBColumn
          Caption = #20027#31649#21307#29983
          DataBinding.FieldName = 'zgysmc'
          Options.Editing = False
          Options.Focusing = False
          Width = 134
        end
        object dbgrideh1DBTableView1Column6: TcxGridDBColumn
          Caption = #26159#21542#35774#32622
          DataBinding.FieldName = 'sfsz'
          Options.Editing = False
          Options.Focusing = False
          Width = 171
        end
      end
      object dbgrideh1Level1: TcxGridLevel
        GridView = dbgrideh1DBTableView1
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 233
    Width = 1027
    Height = 470
    Align = alClient
    Caption = #33258#21160#35745#36153#35774#32622
    TabOrder = 0
    object Panel1: TPanel
      Left = 2
      Top = 17
      Width = 1023
      Height = 130
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
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
      end
      object zfy: TEdit
        Left = 346
        Top = 68
        Width = 100
        Height = 24
        TabStop = False
        Color = 16744576
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindow
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Text = '0'
      end
      object zyj: TEdit
        Left = 92
        Top = 68
        Width = 100
        Height = 24
        TabStop = False
        Color = 16744576
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindow
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        Text = '0'
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
      end
      object zzf: TEdit
        Left = 567
        Top = 68
        Width = 100
        Height = 24
        TabStop = False
        Color = 16744576
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindow
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ParentFont = False
        TabOrder = 5
        Text = '0'
      end
      object syje: TEdit
        Left = 767
        Top = 68
        Width = 129
        Height = 24
        TabStop = False
        Color = 16744576
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindow
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ParentFont = False
        TabOrder = 6
        Text = '0'
      end
      object RYRQ: TEdit
        Left = 767
        Top = 11
        Width = 129
        Height = 23
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 7
      end
      object kdks: TEdit
        Tag = 1
        Left = 92
        Top = 96
        Width = 100
        Height = 23
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 8
        OnExit = kdksExit
        OnKeyPress = kdksKeyPress
      end
      object kdys: TEdit
        Tag = 2
        Left = 346
        Top = 96
        Width = 100
        Height = 23
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 9
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
        OnExit = czksExit
        OnKeyPress = czksKeyPress
      end
      object czys: TEdit
        Tag = 4
        Left = 767
        Top = 96
        Width = 129
        Height = 23
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 11
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
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 147
      Width = 1023
      Height = 39
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 1
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
        OnKeyPress = fydmKeyPress
      end
      object gg: TDBEdit
        Left = 230
        Top = 10
        Width = 106
        Height = 23
        TabStop = False
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 1
        OnKeyPress = ggKeyPress
      end
      object sfbz: TEdit
        Left = 391
        Top = 10
        Width = 81
        Height = 23
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ReadOnly = True
        TabOrder = 2
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
        Left = 639
        Top = 9
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
        OnKeyPress = jeKeyPress
      end
      object B_ENTER: TBitBtn
        Left = 745
        Top = 6
        Width = 85
        Height = 25
        Caption = #20445#23384'(F10)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = B_ENTERClick
      end
      object B_giveup: TBitBtn
        Left = 838
        Top = 6
        Width = 85
        Height = 25
        Caption = #25918#24323'(&C)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = B_giveupClick
      end
      object B_FINAL: TBitBtn
        Left = 929
        Top = 6
        Width = 85
        Height = 25
        Caption = #32467#26463'(F4)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = B_FINALClick
      end
    end
    object fydmgrid: TDBGrid
      Left = 2
      Top = 186
      Width = 625
      Height = 282
      Align = alLeft
      DataSource = ds_cx_sfxm
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      OnDblClick = fydmgridDblClick
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
    object DBGridEh2: TDBGridEh
      Left = 627
      Top = 186
      Width = 398
      Height = 282
      Hint = '"Esc":'#21024#38500#24403#21069#25968#25454#65307'F5:'#36153#29992#24405#20837#65307'F6:'#36827#20837#35813#32593#26684#65292#20197#20415#21024#38500#25968#25454
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = ds_sfmx
      Flat = False
      FooterColor = 8454143
      FooterFont.Charset = DEFAULT_CHARSET
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
      TitleFont.Charset = DEFAULT_CHARSET
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
  end
  object ksys_grid: TDBGrid
    Left = 200
    Top = 504
    Width = 225
    Height = 113
    DataSource = ds_ysks
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = ksys_gridExit
    OnKeyPress = ksys_gridKeyPress
  end
  object ds_brxx: TDataSource
    DataSet = qry_brxx
    Left = 344
    Top = 96
  end
  object qry_brxx: TADOQuery
    Connection = DM_data.ado_mydata
    BeforeScroll = qry_brxxBeforeScroll
    Parameters = <>
    Left = 384
    Top = 96
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
        Size = 10
        Value = Null
      end>
    Left = 454
    Top = 98
  end
  object ds_sfmx: TDataSource
    DataSet = ad_zyfymx_ls
    Left = 656
    Top = 449
  end
  object ad_zyfymx_ls: TADODataSet
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    CommandText = 'select * from zysf_zyfymx_zdjf'
    Parameters = <>
    Left = 688
    Top = 449
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
  end
  object ad_sfxm: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 'select * from sys_kjsfxm'
    Parameters = <>
    Left = 722
    Top = 449
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
    Left = 256
    Top = 505
  end
  object ds_ysks: TDataSource
    DataSet = sp_cx_czyks
    Left = 308
    Top = 504
  end
  object ds_cx_sfxm: TDataSource
    DataSet = sp_cx_sfxm
    Left = 256
    Top = 464
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
        Value = 0
      end
      item
        Name = '@fydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = #39#39
      end
      item
        Name = '@fymc'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = #39#39
      end
      item
        Name = '@pym'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = #39#39
      end
      item
        Name = '@bqdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 6
        Value = #39'0001'#39
      end>
    Left = 336
    Top = 465
  end
end
