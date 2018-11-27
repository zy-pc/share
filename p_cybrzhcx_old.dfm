object frm_cybrzhcx: Tfrm_cybrzhcx
  Left = 177
  Top = 138
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #20986#38498#30149#20154#32508#21512#26597#35810
  ClientHeight = 550
  ClientWidth = 746
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 746
    Height = 33
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    DesignSize = (
      746
      33)
    object Label14: TLabel
      Left = 2
      Top = 10
      Width = 69
      Height = 14
      Anchors = [akLeft, akTop, akRight, akBottom]
      BiDiMode = bdLeftToRight
      Caption = #30913' '#21345' '#21495':'
      FocusControl = tmh
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object tmh: TEdit
      Left = 73
      Top = 3
      Width = 159
      Height = 24
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnExit = tmhExit
      OnKeyPress = tmhKeyPress
    end
    object b_close: TBitBtn
      Left = 660
      Top = 4
      Width = 78
      Height = 25
      Caption = #36864#20986'(&Q)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = b_closeClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
        BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
        BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
        BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
        BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
        EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
        EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
        EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
        EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 438
      Top = 4
      Width = 83
      Height = 25
      Caption = #25171#21360#26126#32454#27719#24635
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object btn1: TBitBtn
      Left = 546
      Top = 4
      Width = 83
      Height = 25
      Caption = #25171#21360#26126#32454#28165#21333
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btn1Click
    end
    object btn2: TBitBtn
      Left = 347
      Top = 4
      Width = 69
      Height = 25
      Caption = #25910#25454#38468#20214
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btn2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 746
    Height = 103
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object Label4: TLabel
      Left = 8
      Top = 11
      Width = 64
      Height = 16
      Caption = #22995'    '#21517
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 388
      Top = 11
      Width = 64
      Height = 16
      Caption = #36153#29992#31867#21035
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 191
      Top = 11
      Width = 64
      Height = 16
      Caption = #24615'    '#21035
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 7
      Top = 44
      Width = 64
      Height = 16
      Caption = #20837#38498#26085#26399
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 191
      Top = 44
      Width = 64
      Height = 16
      Caption = #20986#38498#26085#26399
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 388
      Top = 44
      Width = 64
      Height = 16
      Caption = #24212' '#25910' '#29616
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 570
      Top = 44
      Width = 64
      Height = 16
      Caption = #24212' '#36864' '#29616
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 388
      Top = 77
      Width = 64
      Height = 16
      Caption = #33258#36153#24635#39069
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label19: TLabel
      Left = 570
      Top = 77
      Width = 64
      Height = 16
      Caption = #32479#31609#37329#39069
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label10: TLabel
      Left = 7
      Top = 77
      Width = 61
      Height = 14
      Caption = #24635' '#39044' '#20132
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 191
      Top = 77
      Width = 61
      Height = 14
      Caption = #24635' '#36153' '#29992
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 570
      Top = 11
      Width = 64
      Height = 16
      Caption = #31185'    '#23460
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 72
      Top = 6
      Width = 99
      Height = 24
      DataField = 'brxm'
      DataSource = ds_sebrqk
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 256
      Top = 6
      Width = 110
      Height = 24
      DataField = 'brxb'
      DataSource = ds_sebrqk
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 454
      Top = 6
      Width = 99
      Height = 24
      DataField = 'lbmc'
      DataSource = ds_sebrqk
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object ysxje: TEdit
      Left = 454
      Top = 39
      Width = 99
      Height = 24
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object ytxje: TEdit
      Left = 637
      Top = 39
      Width = 99
      Height = 24
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 72
      Top = 39
      Width = 99
      Height = 24
      DataField = 'ryrq'
      DataSource = ds_sebrqk
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object cyrq: TDateTimePicker
      Left = 256
      Top = 39
      Width = 110
      Height = 24
      Date = 37022.998435243100000000
      Time = 37022.998435243100000000
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object sbzfze: TEdit
      Left = 454
      Top = 72
      Width = 99
      Height = 24
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Visible = False
    end
    object sbtcze: TEdit
      Left = 637
      Top = 72
      Width = 99
      Height = 24
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      Visible = False
    end
    object yjze: TEdit
      Left = 72
      Top = 72
      Width = 99
      Height = 24
      Enabled = False
      TabOrder = 9
    end
    object zfy: TEdit
      Left = 256
      Top = 72
      Width = 110
      Height = 24
      Enabled = False
      TabOrder = 10
    end
    object DBEdit7: TDBEdit
      Left = 637
      Top = 6
      Width = 99
      Height = 24
      DataField = 'ksmc'
      DataSource = ds_sebrqk
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 136
    Width = 746
    Height = 414
    Align = alClient
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 744
      Height = 412
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = ' &1.'#36153#29992#22823#31867' '
        object g_tj: TDBGridEh
          Left = 0
          Top = 0
          Width = 736
          Height = 380
          Hint = #21452#20987#26174#31034#24403#21069#36153#29992#22823#31867#26126#32454
          Align = alClient
          DataSource = ds_tj_fydl
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -16
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          OnDblClick = g_tjDblClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'kmmc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #36153#29992#21517#31216
              Width = 200
            end
            item
              EditButtons = <>
              FieldName = 'fyje'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #36153#29992#37329#39069
              Width = 140
            end
            item
              EditButtons = <>
              FieldName = 'zfje'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #33258#20184#37329#39069
              Width = 140
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = ' &2.'#36153#29992#26126#32454' '
        ImageIndex = 1
        object g_fy: TDBGridEh
          Left = 0
          Top = 0
          Width = 736
          Height = 380
          Align = alClient
          DataSource = ds_fymx
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -16
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          OnDrawColumnCell = g_fyDrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'sfrq'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #25910#36153#26085#26399
              Width = 140
            end
            item
              EditButtons = <>
              FieldName = 'fymc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #36153#29992#21517#31216
              Width = 240
            end
            item
              Alignment = taRightJustify
              DisplayFormat = '#0.00'
              EditButtons = <>
              FieldName = 'fyje'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #36153#29992#37329#39069
              Width = 100
            end
            item
              Alignment = taRightJustify
              DisplayFormat = '#0.00'
              EditButtons = <>
              FieldName = 'zfje'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #33258#20184#37329#39069
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'mc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #25805#20316#21592
              Width = 80
            end>
        end
      end
      object TabSheet3: TTabSheet
        Caption = ' &3.'#29992#33647#26126#32454' '
        ImageIndex = 2
        object DBGridEh1: TDBGridEh
          Left = 0
          Top = 0
          Width = 736
          Height = 380
          Align = alClient
          DataSource = DS_yymx
          EditActions = [geaCopyEh]
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -16
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ypmc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #33647#21697#21517#31216
              Width = 200
            end
            item
              EditButtons = <>
              FieldName = 'ypgg'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #33647#21697#35268#26684
              Width = 120
            end
            item
              EditButtons = <>
              FieldName = 'ypdw'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #33647#21697#21333#20301
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'ypsl'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #29992#33647#25968#37327
              Width = 80
            end
            item
              DisplayFormat = '#0.00'
              EditButtons = <>
              FieldName = 'cfje'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #33647#21697#37329#39069
              Width = 120
            end>
        end
      end
      object TabSheet5: TTabSheet
        Caption = '&4.'#20013#33647#26126#32454
        ImageIndex = 3
        object DBGridEh3: TDBGridEh
          Left = 0
          Top = 0
          Width = 736
          Height = 380
          Align = alClient
          DataSource = ds_zyyymx
          EditActions = [geaCopyEh]
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -16
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ypmc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #33647#21697#21517#31216
              Width = 200
            end
            item
              EditButtons = <>
              FieldName = 'ypgg'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #33647#21697#35268#26684
              Width = 120
            end
            item
              EditButtons = <>
              FieldName = 'ypdw'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #33647#21697#21333#20301
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'ypsl'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #29992#33647#25968#37327
              Width = 80
            end
            item
              DisplayFormat = '#0.00'
              EditButtons = <>
              FieldName = 'cfje'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #33647#21697#37329#39069
              Width = 120
            end
            item
              EditButtons = <>
              FieldName = 'cfjl'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #21058#25968
              Width = 80
            end>
        end
      end
      object TabSheet4: TTabSheet
        Caption = ' &4.'#39044#20132#24773#20917' '
        ImageIndex = 3
        object DBGridEh2: TDBGridEh
          Left = 0
          Top = 0
          Width = 736
          Height = 380
          Align = alClient
          DataSource = ds_yjmxcx
          EditActions = [geaCopyEh]
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -16
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'bz'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #22791#27880
              Width = 120
            end
            item
              DisplayFormat = '#0.00'
              EditButtons = <>
              FieldName = 'yjje'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #25276#37329#37329#39069
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'sfrq'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #25910#36153#26085#26399
              Width = 120
            end
            item
              EditButtons = <>
              FieldName = 'sjh'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #25910#25454#32534#21495
              Width = 120
            end
            item
              EditButtons = <>
              FieldName = 'fkfsmc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #20184#27454
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'czymc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #25805#20316#21592
              Width = 80
            end>
        end
      end
    end
  end
  object DBGrid3: TDBGrid
    Left = 78
    Top = 33
    Width = 320
    Height = 177
    DataSource = DM_data.DS_pub
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = DBGrid3Exit
    OnKeyPress = DBGrid3KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'tmh'
        Title.Alignment = taCenter
        Title.Caption = #26465#30721#21495
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brxm'
        Title.Alignment = taCenter
        Title.Caption = #30149#21592#22995#21517
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mc'
        Title.Alignment = taCenter
        Title.Caption = #20303#38498#31185#23460
        Width = 93
        Visible = True
      end>
  end
  object QuickRep1: TQuickRep
    Left = 8
    Top = 1000
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = SP_yymx
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      100.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      2160.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    object DetailBand1: TQRBand
      Left = 38
      Top = 220
      Width = 740
      Height = 12
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        31.750000000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 149
        Top = -2
        Width = 232
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          394.229166666667000000
          -5.291666666666670000
          613.833333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = SP_yymx
        DataField = 'ypmc'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText2: TQRDBText
        Left = 689
        Top = -2
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1822.979166666667000000
          -5.291666666666667000
          66.145833333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = SP_yymx
        DataField = 'cfje'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRDBText4Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText3: TQRDBText
        Left = 557
        Top = -2
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1473.729166666667000000
          -5.291666666666667000
          66.145833333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = SP_yymx
        DataField = 'ypsl'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText4: TQRDBText
        Left = 501
        Top = -2
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1325.562500000000000000
          -5.291666666666667000
          66.145833333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = SP_yymx
        DataField = 'ypdj'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRDBText4Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText5: TQRDBText
        Left = 453
        Top = -2
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1198.562500000000000000
          -5.291666666666670000
          82.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = SP_yymx
        DataField = 'ypdw'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText6: TQRDBText
        Left = 382
        Top = -2
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1010.708333333330000000
          -5.291666666666670000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = SP_yymx
        DataField = 'ypgg'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText7: TQRDBText
        Left = 603
        Top = -2
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1595.437500000000000000
          -5.291666666666667000
          66.145833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = SP_yymx
        DataField = 'yplb'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText8: TQRDBText
        Left = 5
        Top = -2
        Width = 142
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          13.229166666666700000
          -5.291666666666670000
          375.708333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = SP_yymx
        DataField = 'hjrq'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 38
      Top = 193
      Width = 740
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        63.500000000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel1: TQRLabel
        Left = 160
        Top = 2
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          423.333333333333300000
          5.291666666666667000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #33647#21697#21517#31216
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 390
        Top = 2
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1031.875000000000000000
          5.291666666666667000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35268#26684
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 446
        Top = 2
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1180.041666666667000000
          5.291666666666667000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21333#20301
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 494
        Top = 2
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1307.041666666667000000
          5.291666666666667000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21333#20215
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 549
        Top = 2
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1452.562500000000000000
          5.291666666666667000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25968#37327
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 676
        Top = 2
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1788.583333333333000000
          5.291666666666667000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#39069
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 598
        Top = 2
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1582.208333333333000000
          5.291666666666667000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31181#31867
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 8
        Top = 2
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          5.291666666666667000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22788#26041#26085#26399
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 115
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        304.270833333333300000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape1: TQRShape
        Left = 26
        Top = 44
        Width = 688
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666667000000
          68.791666666666700000
          116.416666666667000000
          1820.333333333330000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel7: TQRLabel
        Left = 267
        Top = 14
        Width = 177
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          706.437500000000000000
          37.041666666666670000
          468.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20303#38498#30149#20154#29992#33647#26126#32454
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRLabel8: TQRLabel
        Left = 32
        Top = 51
        Width = 81
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          84.666666666666670000
          134.937500000000000000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#38498#21517#31216#65306
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object yymc: TQRLabel
        Left = 125
        Top = 50
        Width = 36
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          330.729166666666700000
          132.291666666666700000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'yymc'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel9: TQRLabel
        Left = 496
        Top = 76
        Width = 49
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1312.333333333333000000
          201.083333333333300000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31185#23460#65306
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object ksmc: TQRLabel
        Left = 556
        Top = 76
        Width = 37
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1471.083333333333000000
          201.083333333333300000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ksmc'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object tmh1: TQRLabel
        Left = 345
        Top = 76
        Width = 26
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          912.812500000000000000
          201.083333333333300000
          68.791666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'tmh'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel11: TQRLabel
        Left = 277
        Top = 76
        Width = 57
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          732.895833333333300000
          201.083333333333300000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21345'  '#21495#65306
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object brxm: TQRLabel
        Left = 98
        Top = 76
        Width = 34
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          259.291666666666700000
          201.083333333333300000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'brxm'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel12: TQRLabel
        Left = 37
        Top = 76
        Width = 57
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          97.895833333333330000
          201.083333333333300000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995'  '#21517#65306
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object qzsj: TQRLabel
        Left = 278
        Top = 50
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          735.541666666666700000
          132.291666666666700000
          66.145833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qzsj'
        Color = clWhite
        OnPrint = qzsjPrint
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 256
      Width = 740
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel14: TQRLabel
        Left = 16
        Top = 8
        Width = 353
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          42.333333333333330000
          21.166666666666670000
          933.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22791#27880#65306#27492#28165#21333#19981#20316#25253#38144#20351#29992#65292#20197#32467#24080#25968#25454#20026#20934#65281#65281
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel18: TQRLabel
        Left = 448
        Top = 8
        Width = 81
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1185.333333333333000000
          21.166666666666670000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30149#21592#31614#23383#65306
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 217
      Width = 740
      Height = 3
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        7.937500000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'SP_yymx.cfbh'
      FooterBand = QRBand1
      Master = QuickRep1
      ReprintOnNewPage = False
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 232
      Width = 740
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        63.500000000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 296
      Width = 740
      Height = 55
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        145.520833333333300000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 153
      Width = 740
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel10: TQRLabel
        Left = 18
        Top = 11
        Width = 57
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          47.625000000000000000
          29.104166666666670000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995'  '#21517#65306
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object brxm1: TQRLabel
        Left = 79
        Top = 11
        Width = 34
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          209.020833333333300000
          29.104166666666670000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'brxm'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel19: TQRLabel
        Left = 258
        Top = 11
        Width = 57
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          682.625000000000000000
          29.104166666666670000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21345'  '#21495#65306
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object tmh2: TQRLabel
        Left = 326
        Top = 11
        Width = 26
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          862.541666666666700000
          29.104166666666670000
          68.791666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'tmh'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRSysData2: TQRSysData
        Left = 568
        Top = 11
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1502.833333333333000000
          29.104166666666670000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Text = #32493#31532
        Transparent = False
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 656
        Top = 11
        Width = 17
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1735.666666666667000000
          29.104166666666670000
          44.979166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39029
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object QuickRep2: TQuickRep
    Left = 8
    Top = 1000
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = sp_zyyymx
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      100.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      2160.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    object QRBand4: TQRBand
      Left = 38
      Top = 220
      Width = 740
      Height = 12
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        31.750000000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText9: TQRDBText
        Left = 132
        Top = -1
        Width = 195
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          349.250000000000000000
          -2.645833333333330000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_zyyymx
        DataField = 'ypmc'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 552
        Top = -1
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1460.500000000000000000
          -2.645833333333333000
          76.729166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_zyyymx
        DataField = 'cfje'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRDBText4Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 502
        Top = -1
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1328.208333333333000000
          -2.645833333333333000
          76.729166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_zyyymx
        DataField = 'ypsl'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 446
        Top = -1
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1180.041666666667000000
          -2.645833333333333000
          76.729166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_zyyymx
        DataField = 'ypdj'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = QRDBText4Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 402
        Top = -1
        Width = 31
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1063.625000000000000000
          -2.645833333333330000
          82.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_zyyymx
        DataField = 'ypdw'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText14: TQRDBText
        Left = 331
        Top = -1
        Width = 69
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          875.770833333333000000
          -2.645833333333330000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_zyyymx
        DataField = 'ypgg'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText15: TQRDBText
        Left = 627
        Top = -1
        Width = 36
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1658.937500000000000000
          -2.645833333333333000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_zyyymx
        DataField = 'jylyp'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText16: TQRDBText
        Left = 3
        Top = -1
        Width = 125
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          7.937500000000000000
          -2.645833333333330000
          330.729166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = sp_zyyymx
        DataField = 'hjrq'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText17: TQRDBText
        Left = 683
        Top = -1
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1807.104166666667000000
          -2.645833333333333000
          76.729166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = sp_zyyymx
        DataField = 'cfjl'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand5: TQRBand
      Left = 38
      Top = 193
      Width = 740
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        63.500000000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel15: TQRLabel
        Left = 160
        Top = 3
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          423.333333333333300000
          7.937500000000000000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #33647#21697#21517#31216
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 348
        Top = 3
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          920.750000000000000000
          7.937500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35268#26684
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 402
        Top = 3
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1063.625000000000000000
          7.937500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21333#20301
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 449
        Top = 3
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1187.979166666667000000
          7.937500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21333#20215
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 503
        Top = 3
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1330.854166666667000000
          7.937500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25968#37327
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel25: TQRLabel
        Left = 555
        Top = 3
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1468.437500000000000000
          7.937500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37329#39069
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 624
        Top = 3
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1651.000000000000000000
          7.937500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31181#31867
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 8
        Top = 3
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          7.937500000000000000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22788#26041#26085#26399
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel30: TQRLabel
        Left = 687
        Top = 3
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1817.687500000000000000
          7.937500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21058#25968
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand6: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 115
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        304.270833333333300000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape2: TQRShape
        Left = 26
        Top = 44
        Width = 688
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666667000000
          68.791666666666700000
          116.416666666667000000
          1820.333333333330000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel28: TQRLabel
        Left = 267
        Top = 14
        Width = 221
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          706.437500000000000000
          37.041666666666670000
          584.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20303#38498#30149#20154#20013#33647#29992#33647#26126#32454
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRLabel29: TQRLabel
        Left = 32
        Top = 51
        Width = 81
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          84.666666666666670000
          134.937500000000000000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#38498#21517#31216#65306
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object yymc3: TQRLabel
        Left = 125
        Top = 50
        Width = 36
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          330.729166666666700000
          132.291666666666700000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'yymc'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel32: TQRLabel
        Left = 496
        Top = 76
        Width = 49
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1312.333333333333000000
          201.083333333333300000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31185#23460#65306
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object ksmc3: TQRLabel
        Left = 556
        Top = 76
        Width = 37
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1471.083333333333000000
          201.083333333333300000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ksmc'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object tmh3: TQRLabel
        Left = 345
        Top = 76
        Width = 26
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          912.812500000000000000
          201.083333333333300000
          68.791666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'tmh'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel35: TQRLabel
        Left = 277
        Top = 76
        Width = 57
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          732.895833333333300000
          201.083333333333300000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21345'  '#21495#65306
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object brxm3: TQRLabel
        Left = 98
        Top = 76
        Width = 34
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          259.291666666666700000
          201.083333333333300000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'brxm'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel37: TQRLabel
        Left = 37
        Top = 76
        Width = 57
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          97.895833333333330000
          201.083333333333300000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995'  '#21517#65306
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object qzsj3: TQRLabel
        Left = 278
        Top = 50
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          735.541666666666700000
          132.291666666666700000
          66.145833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qzsj'
        Color = clWhite
        OnPrint = qzsjPrint
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand7: TQRBand
      Left = 38
      Top = 248
      Width = 740
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel39: TQRLabel
        Left = 16
        Top = 8
        Width = 353
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          42.333333333333330000
          21.166666666666670000
          933.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22791#27880#65306#27492#28165#21333#19981#20316#25253#38144#20351#29992#65292#20197#32467#24080#25968#25454#20026#20934#65281#65281
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel40: TQRLabel
        Left = 448
        Top = 8
        Width = 81
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1185.333333333333000000
          21.166666666666670000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30149#21592#31614#23383#65306
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
    end
    object QRGroup2: TQRGroup
      Left = 38
      Top = 217
      Width = 740
      Height = 3
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        7.937500000000000000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'SP_zyyymx.cfbh'
      FooterBand = QRBand8
      Master = QuickRep2
      ReprintOnNewPage = False
    end
    object QRBand8: TQRBand
      Left = 38
      Top = 232
      Width = 740
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        42.333333333333330000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
    end
    object QRBand9: TQRBand
      Left = 38
      Top = 288
      Width = 740
      Height = 55
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        145.520833333333300000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
    end
    object QRBand10: TQRBand
      Left = 38
      Top = 153
      Width = 740
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel41: TQRLabel
        Left = 18
        Top = 11
        Width = 57
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          47.625000000000000000
          29.104166666666670000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995'  '#21517#65306
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object brxm4: TQRLabel
        Left = 79
        Top = 11
        Width = 34
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          209.020833333333300000
          29.104166666666670000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'brxm'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel43: TQRLabel
        Left = 258
        Top = 11
        Width = 57
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          682.625000000000000000
          29.104166666666670000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21345'  '#21495#65306
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object tmh4: TQRLabel
        Left = 326
        Top = 11
        Width = 26
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          862.541666666666700000
          29.104166666666670000
          68.791666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'tmh'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRSysData4: TQRSysData
        Left = 568
        Top = 11
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1502.833333333333000000
          29.104166666666670000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Text = #32493#31532
        Transparent = False
        FontSize = 10
      end
      object QRLabel45: TQRLabel
        Left = 656
        Top = 11
        Width = 17
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1735.666666666667000000
          29.104166666666670000
          44.979166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39029
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object QuickRep3: TQuickRep
    Left = -16
    Top = 1000
    Width = 794
    Height = 374
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep3BeforePrint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      100.000000000000000000
      990.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    object QRBand11: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object bt: TQRLabel
        Left = 225
        Top = 11
        Width = 267
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          595.312500000000000000
          29.104166666666670000
          706.437500000000000000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #20303#38498#30149#21592#36153#29992#28165#21333#65288#25910#25454#38468#20214#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
    end
    object QRBand12: TQRBand
      Left = 38
      Top = 78
      Width = 718
      Height = 27
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        71.437500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText18: TQRDBText
        Left = 16
        Top = 6
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          42.333333333333300000
          15.875000000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_zydj
        DataField = 'brxm'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText19: TQRDBText
        Left = 96
        Top = 6
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          254.000000000000000000
          15.875000000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_zydj
        DataField = 'BRXB'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText20: TQRDBText
        Left = 361
        Top = 6
        Width = 25
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          955.145833333334000000
          15.875000000000000000
          66.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_zydj
        DataField = 'ZFY'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object brnl: TQRLabel
        Left = 133
        Top = 6
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          351.895833333333000000
          15.875000000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'brnl'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = brnlPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object rcysj: TQRLabel
        Left = 176
        Top = 6
        Width = 31
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          465.666666666667000000
          15.875000000000000000
          82.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'rcysj'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        OnPrint = rcysjPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel33: TQRLabel
        Left = 309
        Top = 6
        Width = 51
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          817.562500000000000000
          15.875000000000000000
          134.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24635#36153#29992':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel34: TQRLabel
        Left = 437
        Top = 6
        Width = 51
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1156.229166666670000000
          15.875000000000000000
          134.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24635#39044#20132':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText21: TQRDBText
        Left = 489
        Top = 6
        Width = 49
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1293.812500000000000000
          15.875000000000000000
          129.645833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM_data.sp_zydj
        DataField = 'sjyjze'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel46: TQRLabel
        Left = 575
        Top = 6
        Width = 73
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1521.354166666670000000
          15.875000000000000000
          193.145833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel46'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        OnPrint = QRLabel46Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 105
      Width = 718
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = QRBand12
      Size.Values = (
        55.562500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep3
      FooterBand = QRBand13
      OnNeedData = QRSubDetail1NeedData
      PrintBefore = False
      PrintIfEmpty = True
      object dl01: TQRLabel
        Left = 16
        Top = 2
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          42.333333333333300000
          5.291666666666670000
          66.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'dl01'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object dl02: TQRLabel
        Left = 115
        Top = 2
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          304.270833333333000000
          5.291666666666670000
          66.145833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'dl02'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object dl03: TQRLabel
        Left = 207
        Top = 2
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          547.687500000000000000
          5.291666666666670000
          66.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'dl03'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object dl04: TQRLabel
        Left = 306
        Top = 2
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          809.625000000000000000
          5.291666666666670000
          66.145833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'dl04'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object dl05: TQRLabel
        Left = 398
        Top = 2
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1053.041666666670000000
          5.291666666666670000
          66.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'dl05'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object dl06: TQRLabel
        Left = 497
        Top = 2
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1314.979166666670000000
          5.291666666666670000
          66.145833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'dl06'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object dl07: TQRLabel
        Left = 589
        Top = 2
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1558.395833333330000000
          5.291666666666670000
          66.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'dl05'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object dl08: TQRLabel
        Left = 688
        Top = 2
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1820.333333333330000000
          5.291666666666670000
          66.145833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'dl06'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand13: TQRBand
      Left = 38
      Top = 126
      Width = 718
      Height = 76
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = QRSubDetail1
      Size.Values = (
        201.083333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel36: TQRLabel
        Left = 104
        Top = 35
        Width = 509
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          275.166666666666700000
          92.604166666666670000
          1346.729166666667000000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 
          '---------------'#35831'-------'#27839'-------'#27492'------'#35009'------'#19979'-----'#20316'------'#25910'-----' +
          '-'#25454'------'#38468'------'#20214'-----------------'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel50: TQRLabel
        Left = 16
        Top = 2
        Width = 73
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          42.333333333333300000
          5.291666666666670000
          193.145833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32467#31639#26102#22686#20943':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel51: TQRLabel
        Left = 344
        Top = 2
        Width = 60
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          910.166666666667000000
          5.291666666666670000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26368#32456#21512#35745':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel52: TQRLabel
        Left = 496
        Top = 2
        Width = 88
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1312.333333333330000000
          5.291666666666670000
          232.833333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20803'   '#24212#34917'('#36864')'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel53: TQRLabel
        Left = 680
        Top = 3
        Width = 14
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1799.166666666670000000
          7.937500000000000000
          37.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20803
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object qry_bafy: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'zy_zyh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'sjbh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 9
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from zysf_dljsz where zyh=:zy_zyh and sjbh=:sjbh order ' +
        'by kmdm')
    Left = 392
    Top = 310
  end
  object sp_sebrqk: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_cx_cybrdj;1'
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
    Left = 152
    Top = 309
  end
  object ds_sebrqk: TDataSource
    DataSet = sp_sebrqk
    Left = 93
    Top = 307
  end
  object ds_yjmxcx: TDataSource
    DataSet = sp_yjmxcx
    Left = 198
    Top = 311
  end
  object sp_yjmxcx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zysf_cx_cyyjmx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 244
    Top = 309
  end
  object sp_fymx: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_cx_cyfymx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 290
    Top = 309
  end
  object ds_fymx: TDataSource
    DataSet = sp_fymx
    Left = 332
    Top = 312
  end
  object ds_tj_fydl: TDataSource
    DataSet = sp_cx_fydl
    Left = 433
    Top = 310
  end
  object SP_yymx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zysf_cx_cybryymx;1'
    Parameters = <
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@jsdh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@lb'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@SFSB'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 546
    Top = 312
    object SP_yymxcfbh: TStringField
      FieldName = 'cfbh'
      FixedChar = True
      Size = 12
    end
    object SP_yymxypdm: TStringField
      FieldName = 'ypdm'
      FixedChar = True
      Size = 14
    end
    object SP_yymxypmc: TStringField
      FieldName = 'ypmc'
      FixedChar = True
      Size = 30
    end
    object SP_yymxypgg: TStringField
      FieldName = 'ypgg'
      FixedChar = True
    end
    object SP_yymxypdw: TStringField
      FieldName = 'ypdw'
      FixedChar = True
      Size = 10
    end
    object SP_yymxypsl: TBCDField
      FieldName = 'ypsl'
      Precision = 9
      Size = 2
    end
    object SP_yymxypdj: TBCDField
      FieldName = 'ypdj'
      Precision = 9
      Size = 2
    end
    object SP_yymxcfje: TBCDField
      FieldName = 'cfje'
      Precision = 9
      Size = 2
    end
    object SP_yymxsfjlyp: TBooleanField
      FieldName = 'sfjlyp'
    end
    object SP_yymxsfylyp: TBooleanField
      FieldName = 'sfylyp'
    end
    object SP_yymxhjrq: TDateTimeField
      FieldName = 'hjrq'
    end
    object SP_yymxjylyp: TStringField
      FieldKind = fkCalculated
      FieldName = 'jylyp'
      Calculated = True
    end
    object SP_yymxyplb: TStringField
      FieldName = 'yplb'
      FixedChar = True
      Size = 12
    end
  end
  object DS_yymx: TDataSource
    DataSet = SP_yymx
    Left = 642
    Top = 313
  end
  object sp_cx_fydl: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zysf_cx_cybafy;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = ' '
      end
      item
        Name = '@sjbh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 9
        Value = ' '
      end>
    Left = 486
    Top = 313
    object sp_cx_fydlid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object sp_cx_fydlsjbh: TStringField
      FieldName = 'sjbh'
      FixedChar = True
      Size = 9
    end
    object sp_cx_fydlzyh: TStringField
      FieldName = 'zyh'
      FixedChar = True
      Size = 16
    end
    object sp_cx_fydlkmmc: TStringField
      FieldName = 'kmmc'
      FixedChar = True
      Size = 30
    end
    object sp_cx_fydlkmdm: TStringField
      FieldName = 'kmdm'
      FixedChar = True
      Size = 4
    end
    object sp_cx_fydlfyje: TBCDField
      FieldName = 'fyje'
      Precision = 18
      Size = 2
    end
    object sp_cx_fydlzkje: TBCDField
      FieldName = 'zkje'
      Precision = 18
      Size = 2
    end
    object sp_cx_fydlzfje: TBCDField
      FieldName = 'zfje'
      Precision = 18
      Size = 2
    end
    object sp_cx_fydlssje: TBCDField
      FieldName = 'ssje'
      Precision = 18
      Size = 2
    end
    object sp_cx_fydljsbz: TBooleanField
      FieldName = 'jsbz'
    end
    object sp_cx_fydljylyp: TStringField
      FieldKind = fkCalculated
      FieldName = 'jylyp'
      Calculated = True
    end
  end
  object sp_zyyymx: TADOStoredProc
    Connection = DM_data.ado_mydata
    OnCalcFields = sp_zyyymxCalcFields
    ProcedureName = 'zysf_cx_cybrzyyymx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@jsdh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@lb'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@SFSB'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 593
    Top = 313
    object sp_zyyymxcfbh: TStringField
      FieldName = 'cfbh'
      FixedChar = True
      Size = 12
    end
    object sp_zyyymxypdm: TStringField
      FieldName = 'ypdm'
      FixedChar = True
      Size = 14
    end
    object sp_zyyymxypmc: TStringField
      FieldName = 'ypmc'
      FixedChar = True
      Size = 30
    end
    object sp_zyyymxypgg: TStringField
      FieldName = 'ypgg'
      FixedChar = True
    end
    object sp_zyyymxypdw: TStringField
      FieldName = 'ypdw'
      FixedChar = True
      Size = 10
    end
    object sp_zyyymxypsl: TBCDField
      FieldName = 'ypsl'
      Precision = 9
      Size = 2
    end
    object sp_zyyymxypdj: TBCDField
      FieldName = 'ypdj'
      Precision = 9
      Size = 2
    end
    object sp_zyyymxcfje: TBCDField
      FieldName = 'cfje'
      Precision = 9
      Size = 2
    end
    object sp_zyyymxsfjlyp: TBooleanField
      FieldName = 'sfjlyp'
    end
    object sp_zyyymxsfylyp: TBooleanField
      FieldName = 'sfylyp'
    end
    object sp_zyyymxhjrq: TDateTimeField
      FieldName = 'hjrq'
    end
    object sp_zyyymxcfjl: TIntegerField
      FieldName = 'cfjl'
    end
    object sp_zyyymxjylyp: TStringField
      FieldKind = fkCalculated
      FieldName = 'jylyp'
      Calculated = True
    end
  end
  object ds_zyyymx: TDataSource
    DataSet = sp_zyyymx
    Left = 685
    Top = 313
  end
end
