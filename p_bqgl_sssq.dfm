object frm_sssq: Tfrm_sssq
  Left = 243
  Top = 193
  BorderIcons = []
  BorderWidth = 4
  Caption = #30149#21592#25163#26415#30003#35831
  ClientHeight = 490
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 601
    Height = 145
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 209
      Top = 18
      Width = 64
      Height = 16
      Caption = #30149#20154#22995#21517
    end
    object Label2: TLabel
      Left = 9
      Top = 82
      Width = 64
      Height = 16
      Caption = #36153#29992#31867#21035
    end
    object Label3: TLabel
      Left = 9
      Top = 113
      Width = 64
      Height = 16
      Caption = #36153#29992#24635#35745
    end
    object Label4: TLabel
      Left = 409
      Top = 79
      Width = 64
      Height = 16
      Caption = #39044#20132#37329#39069
    end
    object Label5: TLabel
      Left = 409
      Top = 18
      Width = 64
      Height = 16
      Caption = #30149' '#24202' '#21495
    end
    object Label11: TLabel
      Left = 209
      Top = 113
      Width = 64
      Height = 16
      Caption = #33258#36153#37329#39069
    end
    object Label12: TLabel
      Left = 409
      Top = 113
      Width = 64
      Height = 16
      Caption = #21097#20313#37329#39069
    end
    object Label13: TLabel
      Left = 9
      Top = 50
      Width = 64
      Height = 16
      Caption = #20837#38498#26085#26399
    end
    object Label14: TLabel
      Left = 209
      Top = 50
      Width = 64
      Height = 16
      Caption = #20837#38498#35786#26029
    end
    object Label19: TLabel
      Left = 209
      Top = 82
      Width = 64
      Height = 16
      Caption = #35760#36153#38480#39069
    end
    object Label20: TLabel
      Left = 9
      Top = 18
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
      Left = 76
      Top = 13
      Width = 100
      Height = 24
      Hint = #30149#20154#22995#21517#12289#20303#38498#21345#21495#12289#30149#24202#21495
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnEnter = tmhEnter
      OnExit = tmhExit
    end
    object fylb: TEdit
      Left = 76
      Top = 77
      Width = 100
      Height = 24
      TabStop = False
      ReadOnly = True
      TabOrder = 2
    end
    object zfy: TEdit
      Left = 76
      Top = 108
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
    object zyj: TEdit
      Left = 474
      Top = 77
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
      TabOrder = 4
      Text = '0'
    end
    object bch: TEdit
      Left = 474
      Top = 13
      Width = 100
      Height = 24
      TabStop = False
      ReadOnly = True
      TabOrder = 1
    end
    object zzf: TEdit
      Left = 273
      Top = 108
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
      TabOrder = 5
      Text = '0'
    end
    object syje: TEdit
      Left = 474
      Top = 108
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
      TabOrder = 6
      Text = '0'
    end
    object RYRQ: TEdit
      Left = 76
      Top = 45
      Width = 100
      Height = 24
      TabOrder = 7
    end
    object bz: TEdit
      Left = 273
      Top = 45
      Width = 302
      Height = 24
      TabStop = False
      TabOrder = 8
    end
    object zdqf: TEdit
      Left = 273
      Top = 77
      Width = 100
      Height = 24
      TabStop = False
      TabOrder = 9
    end
    object Edit1: TEdit
      Left = 273
      Top = 13
      Width = 100
      Height = 24
      TabStop = False
      ReadOnly = True
      TabOrder = 10
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 465
    Width = 601
    Height = 25
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 1
    object Label16: TLabel
      Left = 110
      Top = 8
      Width = 78
      Height = 13
      Caption = #25163#26415#40635#37257#30830#35748
      Color = clLime
      ParentColor = False
    end
    object Label17: TLabel
      Left = 54
      Top = 8
      Width = 52
      Height = 13
      Caption = #25163#26415#30830#35748
      Color = clAqua
      ParentColor = False
    end
    object Label18: TLabel
      Left = -2
      Top = 8
      Width = 52
      Height = 13
      Caption = #40635#37257#30830#35748
      Color = clYellow
      ParentColor = False
    end
    object B_ENTER: TBitBtn
      Left = 343
      Top = 0
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
      Left = 515
      Top = 0
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
      Left = 429
      Top = 0
      Width = 85
      Height = 25
      Caption = #25918#24323'(F12)'
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
    object b_zj: TBitBtn
      Left = 267
      Top = 0
      Width = 75
      Height = 25
      Caption = #26032#22686'(F8)'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = b_zjClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 145
    Width = 601
    Height = 232
    Align = alTop
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label8: TLabel
      Left = 9
      Top = 11
      Width = 64
      Height = 16
      Caption = #36890#30693#26085#26399
    end
    object Label9: TLabel
      Left = 9
      Top = 45
      Width = 64
      Height = 16
      Caption = #25163#26415#21517#31216
    end
    object Label10: TLabel
      Left = 409
      Top = 45
      Width = 64
      Height = 16
      Caption = #20027#20992#21307#29983
    end
    object Label21: TLabel
      Left = 9
      Top = 80
      Width = 32
      Height = 16
      Caption = #19968#21161
    end
    object Label22: TLabel
      Left = 209
      Top = 80
      Width = 32
      Height = 16
      Caption = #20108#21161
    end
    object Label25: TLabel
      Left = 376
      Top = 80
      Width = 96
      Height = 16
      Caption = #30003#35831#25163#26415#26085#26399
    end
    object Label26: TLabel
      Left = 9
      Top = 114
      Width = 48
      Height = 16
      Caption = #40635#37257#24072
    end
    object Label27: TLabel
      Left = 209
      Top = 114
      Width = 64
      Height = 16
      Caption = #40635#37257#26041#24335
    end
    object Label28: TLabel
      Left = 409
      Top = 114
      Width = 64
      Height = 16
      Caption = #21462#28040#26085#26399
    end
    object Label29: TLabel
      Left = 9
      Top = 148
      Width = 48
      Height = 16
      Caption = #21462#28040#20154
    end
    object Label31: TLabel
      Left = 409
      Top = 148
      Width = 64
      Height = 16
      Caption = #25163#26415#21462#28040
    end
    object Label15: TLabel
      Left = 209
      Top = 11
      Width = 64
      Height = 16
      Caption = #26415#21069#35786#26029
    end
    object Label6: TLabel
      Left = 209
      Top = 148
      Width = 48
      Height = 16
      Caption = #36890#30693#20154
    end
    object Label7: TLabel
      Left = 208
      Top = 192
      Width = 96
      Height = 16
      Caption = #25209#20934#25163#26415#26085#26399
    end
    object ssmc: TEdit
      Left = 76
      Top = 41
      Width = 297
      Height = 24
      TabOrder = 2
      OnExit = ssmcExit
      OnKeyPress = ssmcKeyPress
    end
    object zdys: TEdit
      Left = 474
      Top = 41
      Width = 100
      Height = 24
      TabOrder = 3
      OnExit = zdysExit
      OnKeyPress = ssmcKeyPress
    end
    object yz: TEdit
      Left = 76
      Top = 75
      Width = 100
      Height = 24
      TabOrder = 4
      OnExit = zdysExit
      OnKeyPress = ssmcKeyPress
    end
    object ez: TEdit
      Left = 273
      Top = 75
      Width = 100
      Height = 24
      TabOrder = 5
      OnExit = zdysExit
      OnKeyPress = ssmcKeyPress
    end
    object mzs: TEdit
      Left = 76
      Top = 108
      Width = 100
      Height = 24
      TabStop = False
      TabOrder = 7
      OnExit = zdysExit
      OnKeyPress = ssmcKeyPress
    end
    object mzfs: TEdit
      Left = 273
      Top = 108
      Width = 100
      Height = 24
      TabOrder = 8
      OnExit = mzfsExit
      OnKeyPress = ssmcKeyPress
    end
    object qxpzr: TEdit
      Left = 76
      Top = 141
      Width = 100
      Height = 24
      TabStop = False
      TabOrder = 10
      OnExit = zdysExit
      OnKeyPress = ssmcKeyPress
    end
    object qxrq: TMaskEdit
      Left = 474
      Top = 108
      Width = 100
      Height = 24
      TabStop = False
      EditMask = '!0000/99/99;1;_'
      MaxLength = 10
      TabOrder = 9
      Text = '    -  -  '
    end
    object sqzd: TEdit
      Left = 273
      Top = 8
      Width = 303
      Height = 24
      TabOrder = 1
      OnExit = sqzdExit
      OnKeyPress = ssmcKeyPress
    end
    object tzr: TEdit
      Left = 273
      Top = 141
      Width = 100
      Height = 24
      TabOrder = 11
      OnExit = zdysExit
      OnKeyPress = ssmcKeyPress
    end
    object sqrq: TMaskEdit
      Left = 76
      Top = 8
      Width = 97
      Height = 21
      EditMask = '!0000/99/99 00:00;1;_'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 16
      ParentFont = False
      TabOrder = 0
      Text = '    -  -     :  '
    end
    object ssrq: TMaskEdit
      Left = 474
      Top = 75
      Width = 100
      Height = 21
      EditMask = '!0000/99/99 00:00;1;_'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 16
      ParentFont = False
      TabOrder = 6
      Text = '    -  -     :  '
    end
    object sslx: TRadioGroup
      Left = 11
      Top = 178
      Width = 177
      Height = 45
      Caption = #25163#26415#31867#22411
      Columns = 3
      Items.Strings = (
        #22823#22411
        #20013#22411
        #23567#22411)
      TabOrder = 12
    end
    object pzsj: TMaskEdit
      Left = 314
      Top = 190
      Width = 135
      Height = 21
      TabStop = False
      EditMask = '!0000/99/99 00:00;1;_'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 16
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
      Text = '    -  -     :  '
    end
    object ssqx: TComboBox
      Left = 474
      Top = 144
      Width = 49
      Height = 24
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 14
      Text = #21542
      OnExit = ssqxExit
      OnKeyPress = ssmcKeyPress
      Items.Strings = (
        #21542
        #26159)
    end
  end
  object ksys_grid: TDBGrid
    Left = 144
    Top = 40
    Width = 225
    Height = 113
    DataSource = ds_czy
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
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
    OnExit = ksys_gridExit
    OnKeyPress = ksys_gridKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'dm'
        Title.Caption = #20195#30721
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mc'
        Title.Caption = #21517#31216
        Width = 80
        Visible = True
      end>
  end
  object tempgrid1: TDBGrid
    Left = 76
    Top = 19
    Width = 285
    Height = 124
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
    OnDblClick = tempgrid1DblClick
    OnExit = tempgrid1Exit
    OnKeyDown = tempgrid1KeyDown
  end
  object DBGrid1: TDBGrid
    Left = 68
    Top = 210
    Width = 285
    Height = 124
    DataSource = ds_ssmc
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
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
    OnExit = DBGrid1Exit
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = #20195#30721
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = #25163#26415#21517#31216
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = #21161#35760#30721
        Width = 60
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 255
    Top = 177
    Width = 285
    Height = 124
    DataSource = ds_sqzd
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
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
        FieldName = #20195#30721
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = #30142#30149#21517#31216
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = #21161#35760#30721
        Width = 60
        Visible = True
      end>
  end
  object Panel4: TPanel
    Left = 0
    Top = 377
    Width = 601
    Height = 88
    Align = alClient
    Caption = 'Panel4'
    TabOrder = 8
    object DBGrid4: TDBGrid
      Left = 1
      Top = 1
      Width = 599
      Height = 86
      Align = alClient
      DataSource = ds_ssap
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = GB2312_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid4DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'tmh'
          Title.Alignment = taCenter
          Title.Caption = #20303#38498#21495
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'brxm'
          Title.Alignment = taCenter
          Title.Caption = #22995#21517
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'brxb'
          Title.Alignment = taCenter
          Title.Caption = #24615#21035
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'brnl'
          Title.Alignment = taCenter
          Title.Caption = #24180#40836
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ksmc'
          Title.Alignment = taCenter
          Title.Caption = #31185#23460
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sqzd'
          Title.Alignment = taCenter
          Title.Caption = #26415#21069#35786#26029
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ssmc'
          Title.Alignment = taCenter
          Title.Caption = #25163#26415
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'zdys'
          Title.Alignment = taCenter
          Title.Caption = #20027#20992
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'yzys'
          Title.Alignment = taCenter
          Title.Caption = #19968#21161
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ezys'
          Title.Alignment = taCenter
          Title.Caption = #20108#21161
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'zghs'
          Title.Alignment = taCenter
          Title.Caption = #27927#25163#25252#22763
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'xhhs'
          Title.Caption = #24033#22238#25252#22763
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ssj'
          Title.Alignment = taCenter
          Title.Caption = #25163#26415#38388
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sssx'
          Title.Alignment = taCenter
          Title.Caption = #39034#24207
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pzsssj'
          Title.Alignment = taCenter
          Title.Caption = #25163#26415#26102#38388
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'mzsxm'
          Title.Alignment = taCenter
          Title.Caption = #40635#37257
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'mzfs'
          Title.Alignment = taCenter
          Title.Caption = #40635#37257#26041#24335
          Width = 130
          Visible = True
        end>
    end
  end
  object DBGrid2: TDBGrid
    Left = 49
    Top = 230
    Width = 285
    Height = 124
    DataSource = ds_mzmc
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
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
    OnExit = DBGrid2Exit
    OnKeyPress = DBGrid2KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = #20195#30721
        Visible = True
      end
      item
        Expanded = False
        FieldName = #40635#37257#26041#24335
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = #21161#35760#30721
        Visible = True
      end>
  end
  object ad_czy: TADODataSet
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    CommandText = 'select * from sys_czy where mc+pym like :pym'
    Parameters = <
      item
        Name = 'pym'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    Left = 96
    Top = 169
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
    Left = 56
    Top = 169
  end
  object ds_czy: TDataSource
    DataSet = ad_czy
    Left = 160
    Top = 169
  end
  object ds_zybrjbqk: TDataSource
    DataSet = sp_cx_zybrjbqk
    Left = 120
    Top = 169
  end
  object ActionList1: TActionList
    Left = 184
    Top = 136
    object createbatch: TAction
      Caption = 'scpl'
      ShortCut = 119
      OnExecute = b_zjClick
    end
    object jshj: TAction
      Caption = 'jshj'
      ShortCut = 115
      OnExecute = B_FINALClick
    end
    object jf: TAction
      Caption = 'jf'
      ShortCut = 121
      OnExecute = B_ENTERClick
    end
    object zf: TAction
      Caption = 'zf'
      ShortCut = 123
      OnExecute = B_giveupClick
    end
    object xg: TAction
      Caption = 'xg'
      ShortCut = 120
      OnExecute = b_xgClick
    end
  end
  object ad_ssap: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 'select * from bqgl_ssap where id=:id'#13#10
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 16
    Top = 176
  end
  object ds_ssmc: TDataSource
    DataSet = ad_ssmc
    Left = 65504
    Top = 112
  end
  object sp_cx_ssqk: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    AfterScroll = sp_cx_ssqkAfterScroll
    ProcedureName = 'bqgl_cx_ssap'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ZYH'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 224
    Top = 176
  end
  object ad_ssmc: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 
      'select fydm '#20195#30721', Fymc '#25163#26415#21517#31216',pym '#21161#35760#30721' from sys_kjsfxm where fydm+fym' +
      'c+pym like :pym and dldm like '#39'33%'#39
    Parameters = <
      item
        Name = 'pym'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 154
        Value = 'fqj'
      end>
    Left = 184
    Top = 162
  end
  object ds_sqzd: TDataSource
    DataSet = ad_sqzd
    Left = 240
    Top = 160
  end
  object ad_mzmc: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 
      'select dm '#20195#30721', mc '#40635#37257#26041#24335',pym '#21161#35760#30721' from sys_mzfs where dm+mc+pym like' +
      ' :pym'
    Parameters = <
      item
        Name = 'pym'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 64
        Value = 'fqj'
      end>
    Left = 280
    Top = 292
  end
  object ds_mzmc: TDataSource
    DataSet = ad_mzmc
    Left = 248
    Top = 298
  end
  object ad_sqzd: TADODataSet
    Connection = DM_data.ado_mydata
    CommandText = 
      'select jbbm '#20195#30721', jbmc '#30142#30149#21517#31216',pym '#21161#35760#30721' from sys_jbbm where jbbm=:jbbm' +
      ' or jbmc+pym like :pym'
    Parameters = <
      item
        Name = 'jbbm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'pym'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 60
        Value = ' '
      end>
    Left = 288
    Top = 168
  end
  object ds_ssap: TDataSource
    DataSet = sp_cx_ssqk
    Left = 96
    Top = 224
  end
end
