object frm_qyxzbr: Tfrm_qyxzbr
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #20840#38498#29616#20303#30149#20154
  ClientHeight = 634
  ClientWidth = 1339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel52: TPanel
    Left = 0
    Top = 0
    Width = 1339
    Height = 65
    Align = alTop
    TabOrder = 0
    object lbl3: TLabel
      Left = 964
      Top = 10
      Width = 312
      Height = 13
      Caption = #25552#31034#65306#24320#22987#26102#38388#25110#32773#40664#35748#26102#38388#19981#36873#30340#29366#24577#26159#26597#35810#25152#26377#30340#25968#25454
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Panel46: TPanel
      Left = 5
      Top = -1
      Width = 930
      Height = 31
      BevelInner = bvLowered
      TabOrder = 0
      object btn_sx: TcxButton
        Left = 6
        Top = 3
        Width = 179
        Height = 25
        Caption = #21047#26032
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btn_sxClick
      end
      object btn_dc: TcxButton
        Left = 191
        Top = 3
        Width = 179
        Height = 25
        Caption = #20840#37096#23548#20986#21040' Excel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btn_dcClick
      end
      object btn_dyyl: TcxButton
        Left = 376
        Top = 3
        Width = 179
        Height = 25
        Caption = #25171#21360#39044#35272
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btn_dyylClick
      end
      object btn_tc: TcxButton
        Left = 746
        Top = 3
        Width = 179
        Height = 25
        Caption = #36864#20986
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = btn_tcClick
      end
      object btn_dy: TcxButton
        Left = 561
        Top = 3
        Width = 179
        Height = 25
        Caption = #25171#21360
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = btn_dyClick
      end
    end
    object Panel47: TPanel
      Left = 331
      Top = 31
      Width = 222
      Height = 30
      TabOrder = 1
      object lbl1: TLabel
        Left = 14
        Top = 7
        Width = 64
        Height = 16
        Caption = #25171#21360#26041#21521
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rb2: TRadioButton
        Left = 159
        Top = 6
        Width = 58
        Height = 17
        Caption = #31446#25490
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object rb1: TRadioButton
        Left = 98
        Top = 6
        Width = 55
        Height = 17
        Caption = #27178#25490
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel1: TPanel
      Left = 5
      Top = 31
      Width = 320
      Height = 30
      Align = alCustom
      TabOrder = 2
      object lbl8: TLabel
        Left = 0
        Top = 7
        Width = 39
        Height = 13
        Caption = #26085#26399#65306
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'lbl6'
        Font.Style = []
        ParentFont = False
      end
      object lbl9: TLabel
        Left = 168
        Top = 7
        Width = 13
        Height = 13
        Caption = #33267
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'lbl6'
        Font.Style = []
        ParentFont = False
      end
      object edt3: TDBDateTimeEditEh
        Left = 41
        Top = 5
        Width = 121
        Height = 21
        EditButtons = <>
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Kind = dtkDateEh
        TabOrder = 0
        Visible = True
      end
      object edt4: TDBDateTimeEditEh
        Left = 197
        Top = 5
        Width = 121
        Height = 21
        EditButtons = <>
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Kind = dtkDateEh
        TabOrder = 1
        Visible = True
      end
    end
    object Panel2: TPanel
      Left = 553
      Top = 31
      Width = 240
      Height = 30
      Align = alCustom
      TabOrder = 3
      object lbl2: TLabel
        Left = 7
        Top = 7
        Width = 65
        Height = 13
        Caption = #36873#25321#31185#23460#65306
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'lbl6'
        Font.Style = []
        ParentFont = False
      end
      object dblkcbb1: TDBLookupComboBox
        Left = 67
        Top = 5
        Width = 126
        Height = 21
        DropDownRows = 15
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        KeyField = 'dm'
        ListField = 'mc'
        ListSource = ds_comboxxx
        TabOrder = 0
      end
      object chk3: TCheckBox
        Left = 192
        Top = 6
        Width = 48
        Height = 17
        Caption = #20840#37096
        TabOrder = 1
        Visible = False
        OnClick = chk3Click
      end
    end
    object Panel3: TPanel
      Left = 793
      Top = 31
      Width = 188
      Height = 30
      TabOrder = 4
      object rb3: TRadioButton
        Left = 70
        Top = 7
        Width = 58
        Height = 17
        Caption = #20303#38498
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object rb4: TRadioButton
        Left = 9
        Top = 7
        Width = 55
        Height = 17
        Caption = #38376#35786
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = True
      end
      object rb7: TRadioButton
        Left = 125
        Top = 7
        Width = 58
        Height = 17
        Caption = #20840#38498
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Visible = False
      end
    end
    object Panel4: TPanel
      Left = 981
      Top = 31
      Width = 129
      Height = 30
      TabOrder = 5
      object rb5: TRadioButton
        Left = 70
        Top = 8
        Width = 58
        Height = 17
        Caption = #26126#32454
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object rb6: TRadioButton
        Left = 9
        Top = 7
        Width = 55
        Height = 17
        Caption = #27719#24635
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel5: TPanel
      Left = 1110
      Top = 31
      Width = 150
      Height = 30
      TabOrder = 6
      object chk1: TCheckBox
        Left = 7
        Top = 8
        Width = 138
        Height = 17
        Caption = #33258#21160#35843#25972#25171#21360#26684#24335
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 0
      end
    end
    object Panel6: TPanel
      Left = 1259
      Top = 31
      Width = 94
      Height = 30
      TabOrder = 7
      object chk2: TCheckBox
        Left = 7
        Top = 7
        Width = 82
        Height = 17
        Caption = #25968#25454#36873#25321
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = chk2Click
      end
    end
  end
  object Panel53: TPanel
    Left = 0
    Top = 65
    Width = 1339
    Height = 543
    Align = alClient
    TabOrder = 1
    object Panel7: TPanel
      Left = 1
      Top = 1
      Width = 1337
      Height = 541
      Align = alClient
      TabOrder = 1
    end
    object dbgrdh_qyxzbr: TDBGridEh
      Left = 1
      Top = 1
      Width = 1337
      Height = 541
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = ds_qyxzbr
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Tahoma'
      FooterFont.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      RowDetailPanel.BorderStyle = bsNone
      RowDetailPanel.Color = clBtnFace
      STFilter.InstantApply = False
      STFilter.Location = stflInTitleFilterEh
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      TitleHeight = 2
      TitleLines = 3
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          Footers = <>
          Title.Caption = '|'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object stat1: TStatusBar
    Left = 0
    Top = 608
    Width = 1339
    Height = 26
    Color = clSilver
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Pitch = fpVariable
    Font.Style = []
    Panels = <
      item
        Alignment = taCenter
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Text = #31354
        Width = 200
      end
      item
        Alignment = taCenter
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Text = #24037#20316#32452':'
        Width = 200
      end
      item
        Alignment = taCenter
        Text = #29992#25143#31649#29702#21592#65306
        Width = 200
      end
      item
        Alignment = taCenter
        Text = #32418#33394':'#21307#20445#33258#36153#31867
        Width = 200
      end
      item
        Width = 50
      end>
    UseSystemFont = False
  end
  object qry_sj: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      
        'SELECT  substring(convert(varchar(20),getdate(),120),0,12)+daten' +
        'ame(weekday, getdate()) as sj')
    Left = 168
    Top = 600
  end
  object qry_comboxxx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 648
    Top = 32
  end
  object ds_comboxxx: TDataSource
    DataSet = qry_comboxxx
    Left = 688
    Top = 32
  end
  object dy: TPrintDBGridEh
    DBGridEh = dbgrdh_qyxzbr
    Options = []
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Tahoma'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Tahoma'
    PageHeader.Font.Style = []
    Units = MM
    Left = 544
    Top = 128
  end
  object dlgSave1: TSaveDialog
    FilterIndex = 5
    Left = 368
    Top = 88
  end
  object sp_qyxzbr: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    Left = 400
    Top = 88
  end
  object ds_qyxzbr: TDataSource
    DataSet = sp_qyxzbr
    Left = 432
    Top = 88
  end
  object cxStyleRepository1: TcxStyleRepository
    object cxStyle1: TcxStyle
      AssignedValues = [svBitmap, svColor, svFont, svTextColor]
      Color = clDefault
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clDefault
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
    object cxStyle4: TcxStyle
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    object cxStyle3: TcxStyle
    end
  end
  object cxStyleRepository3: TcxStyleRepository
    object cxStyle5: TcxStyle
    end
  end
  object qry_xxsz: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 1200
    Top = 104
  end
end
