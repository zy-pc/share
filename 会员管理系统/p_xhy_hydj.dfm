object frm_xhy_hydj: Tfrm_xhy_hydj
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #20250#21592#30331#35760'/'#20462#25913#30028#38754
  ClientHeight = 749
  ClientWidth = 1074
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 18
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 1074
    Height = 89
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object lb_briefing: TLabel
      Left = 16
      Top = 15
      Width = 810
      Height = 54
      Caption = 
        #20250#21592#30331#35760'/'#20462#25913#30028#38754':'#35813#30028#38754#29992#20110#27880#20876#26032#30340#20250#21592#20449#24687#21450#20462#25913#24050#27880#20876#30340#20250#21592#20449#24687#12290#13#10#19979#26041#24038#36793#21015#34920#20013#26174#31034#24050#32463#27880#20876#30340#20250#21592#20449#24687#21015#34920#12290#22312#21015#34920#20013#36873#20013 +
        #21017#21487#36827#34892#24050#27880#20876#30340#20250#21592#29992#25143#30340#20449#24687#20462#25913#12290#13#10#12304#24038#36793#21015#34920#20013#32418#33394#20250#21592#20026#24050#32463#20572#29992#30340#20250#21592#12305
    end
    object cxb_close: TcxButton
      Left = 896
      Top = 22
      Width = 105
      Height = 38
      Caption = #36864#20986
      TabOrder = 0
      OnClick = cxb_closeClick
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 89
    Width = 281
    Height = 660
    Align = alLeft
    BevelInner = bvLowered
    TabOrder = 1
    object pnl4: TPanel
      Left = 2
      Top = 2
      Width = 277
      Height = 55
      Align = alTop
      TabOrder = 0
      object lb_hykh: TLabel
        Left = 14
        Top = 16
        Width = 81
        Height = 18
        Caption = #20250#21592#21345#21495':'
      end
      object e_tmh: TEdit
        Left = 101
        Top = 14
        Width = 157
        Height = 26
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        MaxLength = 9
        TabOrder = 0
        OnKeyDown = e_tmhKeyDown
      end
    end
    object cxGrid1: TcxGrid
      Left = 2
      Top = 57
      Width = 277
      Height = 601
      Align = alClient
      TabOrder = 1
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
        DataController.DataSource = ds_hyxx
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnMoving = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        Styles.Background = cxStyle2
        Styles.Header = cxStyle11
        object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = #20250#21592#21345#21495
          DataBinding.FieldName = 'tmh'
          HeaderAlignmentHorz = taCenter
          Width = 113
        end
        object cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = #20250#21592#22995#21517
          DataBinding.FieldName = 'brxm'
          HeaderAlignmentHorz = taCenter
          Width = 111
        end
        object cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = #20572#29992#26631#24535
          DataBinding.FieldName = 'tybz'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object pnl3: TPanel
    Left = 281
    Top = 89
    Width = 793
    Height = 660
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 2
    object pnl5: TPanel
      Left = 2
      Top = 600
      Width = 789
      Height = 58
      Align = alBottom
      BevelInner = bvLowered
      TabOrder = 0
      object cxbut_insert: TcxButton
        Left = 105
        Top = 20
        Width = 125
        Height = 25
        Caption = #30331#35760#26032#20250#21592
        TabOrder = 0
        OnClick = cxbut_insertClick
      end
      object cxbut_Exit: TcxButton
        Left = 268
        Top = 20
        Width = 125
        Height = 25
        Caption = #20462#25913#32769#20250#21592
        TabOrder = 1
        OnClick = cxbut_ExitClick
      end
      object cxbut_post: TcxButton
        Left = 437
        Top = 20
        Width = 125
        Height = 25
        Caption = #20445#23384
        TabOrder = 2
        OnClick = cxbut_postClick
      end
      object cxbut_close: TcxButton
        Left = 599
        Top = 20
        Width = 125
        Height = 25
        Caption = #25918#24323
        TabOrder = 3
        OnClick = cxbut_closeClick
      end
    end
    object grp_btx: TGroupBox
      Left = 2
      Top = 2
      Width = 789
      Height = 183
      Align = alTop
      Caption = #24517#22635#20449#24687
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -18
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 38
        Top = 48
        Width = 81
        Height = 18
        Caption = #20250#21592#21345#21495':'
      end
      object Label2: TLabel
        Left = 38
        Top = 93
        Width = 81
        Height = 18
        Caption = #20250#21592#22995#21517':'
      end
      object Label4: TLabel
        Left = 305
        Top = 93
        Width = 81
        Height = 18
        Caption = #20250#21592#24615#21035':'
      end
      object Label3: TLabel
        Left = 437
        Top = 93
        Width = 81
        Height = 18
        Caption = #20250#21592#24180#40836':'
      end
      object Label10: TLabel
        Left = 437
        Top = 137
        Width = 81
        Height = 18
        Caption = #20986#29983#26085#26399':'
      end
      object Label9: TLabel
        Left = 38
        Top = 137
        Width = 81
        Height = 18
        Caption = #36523#20221#35777#21495':'
      end
      object Label11: TLabel
        Left = 599
        Top = 93
        Width = 81
        Height = 18
        Caption = #20250#21592#31867#21035':'
      end
      object dbe_tmh: TDBEdit
        Left = 125
        Top = 45
        Width = 108
        Height = 26
        DataField = 'tmh'
        DataSource = ds_hyxx
        Enabled = False
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        MaxLength = 9
        TabOrder = 0
        OnExit = dbe_tmhExit
        OnKeyDown = dbe_tmhKeyDown
      end
      object cbb_hyxb: TComboBox
        Left = 386
        Top = 90
        Width = 50
        Height = 26
        Style = csDropDownList
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ItemHeight = 18
        ItemIndex = 0
        TabOrder = 1
        Text = #30007
        OnKeyDown = cbb_hyxbKeyDown
        Items.Strings = (
          #30007
          #22899)
      end
      object box_nl: TSXAgeBox
        Left = 521
        Top = 90
        Width = 72
        Height = 26
        Hint = #20363':22'#23681#36755#20837'22'#22238#36710',3'#26376#36755#20837'3Y'#22238#36710',1'#26376'19'#22825#36755#20837'1Y19T'#22238#36710
        ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
        TabOrder = 2
        OnExit = box_nlExit
        OnKeyDown = box_nlKeyDown
      end
      object cbb_hylb: TComboBox
        Left = 680
        Top = 90
        Width = 97
        Height = 26
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ItemHeight = 18
        TabOrder = 3
        OnKeyDown = cbb_hylbKeyDown
      end
      object dbe_brxm: TDBEdit
        Left = 127
        Top = 92
        Width = 174
        Height = 26
        DataField = 'brxm'
        DataSource = ds_hyxx
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 4
        OnExit = dbe_brxmExit
        OnKeyDown = dbe_brxmKeyDown
      end
      object dbe_sfzhm: TDBEdit
        Left = 127
        Top = 136
        Width = 226
        Height = 26
        DataField = 'sfzhm'
        DataSource = ds_hyxx
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 5
        OnKeyDown = dbe_sfzhmKeyDown
      end
      object dtp_csrq: TDateTimePicker
        Left = 524
        Top = 132
        Width = 152
        Height = 26
        Date = 41067.000000000000000000
        Time = 41067.000000000000000000
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 6
        OnExit = dtp_csrqExit
        OnKeyDown = dtp_csrqKeyDown
      end
    end
    object grp_xztx: TGroupBox
      Left = 2
      Top = 185
      Width = 789
      Height = 415
      Align = alClient
      Caption = #36873#25321#22635#39033
      TabOrder = 2
      object Label5: TLabel
        Left = 24
        Top = 26
        Width = 81
        Height = 18
        Caption = #20250#21592#30465#20221':'
      end
      object Label15: TLabel
        Left = 204
        Top = 26
        Width = 81
        Height = 18
        Caption = #20250#21592#30005#35805':'
      end
      object Label6: TLabel
        Left = 427
        Top = 26
        Width = 45
        Height = 18
        Caption = #31821#36143':'
      end
      object Label16: TLabel
        Left = 589
        Top = 26
        Width = 63
        Height = 18
        Caption = #25285#20445#20154':'
      end
      object Label24: TLabel
        Left = 582
        Top = 80
        Width = 81
        Height = 18
        Caption = #20250#21592#34880#22411':'
      end
      object Label20: TLabel
        Left = 391
        Top = 80
        Width = 81
        Height = 18
        Caption = #26723#26696#32534#21495':'
      end
      object Label12: TLabel
        Left = 204
        Top = 80
        Width = 81
        Height = 18
        Caption = #37038#25919#32534#30721':'
      end
      object Label7: TLabel
        Left = 24
        Top = 80
        Width = 81
        Height = 18
        Caption = #20250#21592#27665#26063':'
      end
      object Label8: TLabel
        Left = 24
        Top = 137
        Width = 81
        Height = 18
        Caption = #20250#21592#32844#19994':'
      end
      object Label13: TLabel
        Left = 204
        Top = 137
        Width = 81
        Height = 18
        Caption = #31038#20445#21345#21495':'
      end
      object Label14: TLabel
        Left = 487
        Top = 137
        Width = 81
        Height = 18
        Caption = #31038#20445#31181#31867':'
      end
      object Label18: TLabel
        Left = 24
        Top = 184
        Width = 81
        Height = 18
        Caption = #20250#21592#22320#22336':'
      end
      object Label19: TLabel
        Left = 6
        Top = 228
        Width = 99
        Height = 18
        Caption = #25285#20445#20154#22320#22336':'
      end
      object Label21: TLabel
        Left = 24
        Top = 262
        Width = 81
        Height = 18
        Caption = #36807#25935#33647#29289':'
      end
      object Label22: TLabel
        Left = 24
        Top = 315
        Width = 81
        Height = 18
        Caption = #26082#24448#30149#21490':'
      end
      object Label23: TLabel
        Left = 42
        Top = 362
        Width = 63
        Height = 18
        Caption = #23478#26063#21490':'
      end
      object cbb_hysf: TComboBox
        Left = 105
        Top = 23
        Width = 97
        Height = 26
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ItemHeight = 18
        TabOrder = 0
        OnKeyDown = cbb_hysfKeyDown
      end
      object dbe_brdh: TDBEdit
        Left = 282
        Top = 23
        Width = 139
        Height = 26
        DataField = 'brdh'
        DataSource = ds_hyxx
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 1
        OnKeyDown = dbe_brdhKeyDown
      end
      object cbb_hyjg: TComboBox
        Left = 473
        Top = 23
        Width = 97
        Height = 26
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ItemHeight = 18
        TabOrder = 2
        OnKeyDown = cbb_hyjgKeyDown
      end
      object dbe_dbr: TDBEdit
        Left = 658
        Top = 23
        Width = 95
        Height = 26
        DataField = 'dbr'
        DataSource = ds_hyxx
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 3
        OnKeyDown = dbe_dbrKeyDown
      end
      object cbb_hyxx: TComboBox
        Left = 666
        Top = 77
        Width = 97
        Height = 26
        Style = csDropDownList
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ItemHeight = 18
        ItemIndex = 4
        TabOrder = 4
        Text = #20854#20182
        OnKeyDown = cbb_hyxxKeyDown
        Items.Strings = (
          'A'
          'B'
          'AB'
          'O'
          #20854#20182)
      end
      object dbe_baha: TDBEdit
        Left = 473
        Top = 77
        Width = 103
        Height = 26
        DataField = 'baha'
        DataSource = ds_hyxx
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 5
        OnKeyDown = dbe_bahaKeyDown
      end
      object dbe_bryb: TDBEdit
        Left = 282
        Top = 77
        Width = 103
        Height = 26
        DataField = 'bryb'
        DataSource = ds_hyxx
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 6
        OnKeyDown = dbe_brybKeyDown
      end
      object cbb_hymz: TComboBox
        Left = 105
        Top = 77
        Width = 97
        Height = 26
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ItemHeight = 18
        TabOrder = 7
        OnKeyDown = cbb_hymzKeyDown
      end
      object cbb_hyzy: TComboBox
        Left = 105
        Top = 134
        Width = 97
        Height = 26
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ItemHeight = 18
        TabOrder = 8
        OnKeyDown = cbb_hyzyKeyDown
      end
      object dbe_sbkh: TDBEdit
        Left = 282
        Top = 134
        Width = 190
        Height = 26
        DataField = 'sbkh'
        DataSource = ds_hyxx
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 9
        OnKeyDown = dbe_sbkhKeyDown
      end
      object cbb_sblb: TComboBox
        Left = 574
        Top = 134
        Width = 189
        Height = 26
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ItemHeight = 18
        TabOrder = 10
        OnKeyDown = cbb_sblbKeyDown
      end
      object dbe_hydz: TDBEdit
        Left = 111
        Top = 182
        Width = 647
        Height = 26
        DataField = 'brdz'
        DataSource = ds_hyxx
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 11
        OnKeyDown = dbe_hydzKeyDown
      end
      object dbe_dbrdz: TDBEdit
        Left = 111
        Top = 225
        Width = 647
        Height = 26
        DataField = 'dbrdz'
        DataSource = ds_hyxx
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 12
        OnKeyDown = dbe_dbrdzKeyDown
      end
      object dbmmo_brgmyw: TDBMemo
        Left = 114
        Top = 259
        Width = 647
        Height = 47
        DataField = 'brgmyw'
        DataSource = ds_hyxx
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 13
        OnKeyDown = dbmmo_brgmywKeyDown
      end
      object dbmmo_brjwbs: TDBMemo
        Left = 114
        Top = 312
        Width = 647
        Height = 45
        DataField = 'brjwbs'
        DataSource = ds_hyxx
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 14
        OnKeyDown = dbmmo_brjwbsKeyDown
      end
      object dbmmo_brjzs: TDBMemo
        Left = 114
        Top = 363
        Width = 647
        Height = 46
        DataField = 'brjzs'
        DataSource = ds_hyxx
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 15
        OnKeyDown = dbmmo_brjzsKeyDown
      end
    end
  end
  object qry_hyxx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = qry_hyxxAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT a.tmh,a.sbkh,a.brxm,a.brxb,a.csrq,a.brnl,a.brsf,a.brjg,'
      '       a.brmz,a.brzy,a.brdz,a.brdh,a.sbdw,a.fylb,a.dbr,a.dbrdz,'
      '       a.sfzhm,a.bryb,a.jkrq,a.brxx,a.brgmyw,a.brjwbs,a.brjzs,'
      
        '       a.sblb,a.baha,a.sybz,a.ma,a.jkrq,case ISNULL(b.tytmh,'#39#39') ' +
        'when '#39#39' then 0 else 1 end tybz'
      
        'FROM sys_kyh a left join hy_tykyh b on a.tmh=b.tytmh and b.yxbz=' +
        '1'
      'WHERE a.sybz=1')
    Left = 112
    Top = 312
  end
  object ds_hyxx: TDataSource
    DataSet = qry_hyxx
    Left = 144
    Top = 312
  end
  object cxStyleRepository1: TcxStyleRepository
    object cxStyle1: TcxStyle
    end
    object cxStyle2: TcxStyle
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16775416
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16443110
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13749760
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14599344
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8519755
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 14481663
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13749760
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 191
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13749760
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 166
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object GridTableViewStyleSheetUserFormat3: TcxGridTableViewStyleSheet
      Caption = 'UserFormat3'
      Styles.Content = cxStyle3
      Styles.ContentEven = cxStyle4
      Styles.ContentOdd = cxStyle5
      Styles.Inactive = cxStyle10
      Styles.Selection = cxStyle13
      Styles.Footer = cxStyle6
      Styles.Group = cxStyle7
      Styles.GroupByBox = cxStyle8
      Styles.Header = cxStyle9
      Styles.Indicator = cxStyle11
      Styles.Preview = cxStyle12
      BuiltIn = True
    end
  end
  object qry_pub: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 960
    Top = 136
  end
end
