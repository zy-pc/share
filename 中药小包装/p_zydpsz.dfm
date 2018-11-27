object frm_zydpsz: Tfrm_zydpsz
  Left = 130
  Top = 88
  Width = 778
  Height = 629
  Caption = '中药斗谱设置'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = '宋体'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 217
    Width = 770
    Height = 378
    Align = alClient
    AllowedOperations = []
    DataSource = ds_yppgsz
    EditActions = [geaCopyEh, geaSelectAllEh]
    Flat = True
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = '宋体'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = '宋体'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ypmc'
        Footers = <>
        Title.Caption = '药品名称'
        Width = 230
      end
      item
        EditButtons = <>
        FieldName = 'ypgg'
        Footers = <>
        Title.Caption = '药品规格'
        Width = 145
      end
      item
        EditButtons = <>
        FieldName = 'ypdw'
        Footers = <>
        Title.Caption = '单位'
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'pgsl'
        Footers = <>
        Title.Caption = '存量'
        Title.ToolTips = True
        ToolTips = True
        Width = 59
      end
      item
        Checkboxes = False
        EditButtons = <>
        FieldName = 'zydp'
        Footers = <>
        Title.Caption = '斗谱'
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'pgbs'
        Footers = <>
        Title.Caption = '品规标识'
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'yppg'
        Footers = <>
        Title.Caption = '品规'
        Width = 53
      end
      item
        Checkboxes = True
        EditButtons = <>
        FieldName = 'sybz'
        Footers = <>
        Title.Caption = '启用标志'
        Width = 83
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 35
    Width = 770
    Height = 182
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label8: TLabel
      Left = 198
      Top = 114
      Width = 45
      Height = 15
      Caption = '架号：'
      Transparent = True
    end
    object Label9: TLabel
      Left = 286
      Top = 114
      Width = 45
      Height = 15
      Caption = '层号：'
      Transparent = True
    end
    object Label10: TLabel
      Left = 382
      Top = 114
      Width = 45
      Height = 15
      Caption = '斗号：'
      Transparent = True
    end
    object Label11: TLabel
      Left = 41
      Top = 114
      Width = 45
      Height = 15
      Caption = '斗谱：'
      Transparent = True
    end
    object Label13: TLabel
      Left = 480
      Top = 114
      Width = 45
      Height = 15
      Caption = '存量：'
      Transparent = True
    end
    object bt_save: TBitBtn
      Left = 428
      Top = 142
      Width = 75
      Height = 29
      Caption = '保存(&S)'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '宋体'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = bt_saveClick
    end
    object bt_close: TBitBtn
      Left = 651
      Top = 142
      Width = 75
      Height = 29
      Caption = '关闭(&X)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '宋体'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = bt_closeClick
    end
    object bt_cancel: TBitBtn
      Left = 542
      Top = 142
      Width = 75
      Height = 29
      Caption = '放弃(&C)'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '宋体'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = bt_cancelClick
    end
    object CheckBox1: TCheckBox
      Left = 31
      Top = 148
      Width = 84
      Height = 17
      Caption = '品种过滤'
      TabOrder = 3
      OnKeyUp = CheckBox1KeyUp
      OnMouseUp = CheckBox1MouseUp
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 770
      Height = 103
      Align = alTop
      Caption = '药品信息'
      Enabled = False
      TabOrder = 4
      object Label1: TLabel
        Left = 21
        Top = 21
        Width = 60
        Height = 15
        Caption = '药品名称'
      end
      object Label2: TLabel
        Left = 421
        Top = 21
        Width = 60
        Height = 15
        Caption = '药品规格'
      end
      object Label5: TLabel
        Left = 615
        Top = 21
        Width = 30
        Height = 15
        Caption = '单位'
      end
      object Label7: TLabel
        Left = 631
        Top = 57
        Width = 60
        Height = 15
        Caption = '记录数：'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = '宋体'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 343
        Top = 57
        Width = 60
        Height = 15
        Caption = '所属药房'
        Transparent = True
      end
      object Label3: TLabel
        Left = 196
        Top = 57
        Width = 60
        Height = 15
        Caption = '药品品规'
      end
      object Label4: TLabel
        Left = 21
        Top = 57
        Width = 60
        Height = 15
        Caption = '品规标识'
      end
      object Label12: TLabel
        Left = 2
        Top = 86
        Width = 766
        Height = 15
        Align = alBottom
        Alignment = taCenter
        Caption = 
          '注意：斗谱为4位，分解为2位架号，层号和斗号各1位。存量为0或启用标' +
          '志没有选择将不在医生工作站显示。'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = '宋体'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object gg: TEdit
        Left = 485
        Top = 16
        Width = 121
        Height = 23
        TabStop = False
        ReadOnly = True
        TabOrder = 0
      end
      object dw: TEdit
        Left = 649
        Top = 16
        Width = 81
        Height = 23
        TabStop = False
        ReadOnly = True
        TabOrder = 1
      end
      object cb_sybz: TCheckBox
        Left = 544
        Top = 56
        Width = 85
        Height = 17
        Caption = '启用标志'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object DBL_yf: TDBLookupComboBox
        Left = 408
        Top = 53
        Width = 122
        Height = 23
        KeyField = 'dm'
        ListField = 'mc'
        ListSource = ds_ksdm
        TabOrder = 3
      end
      object e_yppg: TEdit
        Left = 267
        Top = 52
        Width = 72
        Height = 23
        TabOrder = 4
      end
      object e_pgbs: TEdit
        Left = 86
        Top = 52
        Width = 104
        Height = 23
        TabOrder = 5
      end
    end
    object yp: TEdit
      Left = 86
      Top = 16
      Width = 328
      Height = 23
      TabOrder = 5
      OnKeyPress = ypKeyPress
    end
    object Edit1: TEdit
      Left = 239
      Top = 110
      Width = 42
      Height = 23
      Enabled = False
      ReadOnly = True
      TabOrder = 6
    end
    object Edit2: TEdit
      Left = 329
      Top = 110
      Width = 41
      Height = 23
      Enabled = False
      ReadOnly = True
      TabOrder = 7
    end
    object Edit3: TEdit
      Left = 423
      Top = 110
      Width = 40
      Height = 23
      Enabled = False
      ReadOnly = True
      TabOrder = 8
    end
    object Edit4: TEdit
      Left = 87
      Top = 110
      Width = 103
      Height = 23
      TabOrder = 9
      OnChange = Edit4Change
      OnKeyPress = Edit4KeyPress
    end
    object Edit5: TEdit
      Left = 522
      Top = 110
      Width = 103
      Height = 23
      TabOrder = 10
      Text = '0'
      OnChange = Edit5Change
      OnExit = Edit5Exit
      OnKeyPress = Edit5KeyPress
    end
    object RadioGroup1: TRadioGroup
      Left = 122
      Top = 135
      Width = 281
      Height = 42
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        '显示品规'
        '显示斗谱'
        '全部显示')
      TabOrder = 11
      OnClick = RadioGroup1Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 770
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Caption = '中药斗谱设置'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = '黑体'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 88
    Top = 336
    Width = 393
    Height = 193
    DataSource = ds_ypdm
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = '宋体'
    TitleFont.Style = []
    Visible = False
    OnExit = DBGrid1Exit
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'ypmc'
        Title.Caption = '名称'
        Width = 155
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ypgg'
        Title.Caption = '规格'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ypdw'
        Title.Caption = '单位'
        Width = 46
        Visible = True
      end>
  end
  object qry_yppgsz: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    AfterOpen = qry_yppgszAfterScroll
    AfterScroll = qry_yppgszAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select a.ypdm ypdm,a.ypmc ypmc,a.ypgg ypgg,a.mzyfdw ypdw,'
      'b.pgbs pgbs,b.yppg yppg,b.sybz sybz,b.yfdm yfdm,c.pgsl,c.zydp '
      'from sys_ypdm a,ch_yppgsz b,ch_ypdpsz c '
      'where a.ypdm*=c.ypdm and a.ypdm*=b.ypdm and b.pgbs=c.pgbs'
      'order by a.ypdm')
    Left = 48
    Top = 224
  end
  object ds_yppgsz: TDataSource
    DataSet = qry_yppgsz
    Left = 80
    Top = 224
  end
  object qry_ypdm: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 48
    Top = 264
  end
  object ds_ypdm: TDataSource
    DataSet = qry_ypdm
    Left = 80
    Top = 264
  end
  object qry_ksdm: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select a.dm,a.mc from sys_ksdm a,sys_xt_kgks b'
      'where a.dm =b.mzzyfksdm or a.dm=b.zyzyfksdm'
      ''
      ''
      ' ')
    Left = 48
    Top = 344
  end
  object ds_ksdm: TDataSource
    DataSet = qry_ksdm
    Left = 80
    Top = 344
  end
  object Qry_save: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 48
    Top = 304
  end
end
