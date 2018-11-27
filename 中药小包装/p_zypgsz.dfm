object frm_zypgsz: Tfrm_zypgsz
  Left = 130
  Top = 113
  Caption = #20013#33647#21697#35268#35774#32622
  ClientHeight = 519
  ClientWidth = 740
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 740
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = #20013#33647#21697#35268#35774#32622
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = #40657#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 740
    Height = 147
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 21
      Top = 21
      Width = 60
      Height = 15
      Caption = #33647#21697#21517#31216
    end
    object Label2: TLabel
      Left = 421
      Top = 21
      Width = 60
      Height = 15
      Caption = #33647#21697#35268#26684
    end
    object Label5: TLabel
      Left = 615
      Top = 21
      Width = 30
      Height = 15
      Caption = #21333#20301
    end
    object Label3: TLabel
      Left = 196
      Top = 57
      Width = 60
      Height = 15
      Caption = #33647#21697#21697#35268
    end
    object Label4: TLabel
      Left = 21
      Top = 57
      Width = 60
      Height = 15
      Caption = #21697#35268#26631#35782
    end
    object Label6: TLabel
      Left = 343
      Top = 57
      Width = 60
      Height = 15
      Caption = #25152#23646#33647#25151
      Transparent = True
    end
    object Label7: TLabel
      Left = 631
      Top = 57
      Width = 60
      Height = 15
      Caption = #35760#24405#25968#65306
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 83
      Top = 86
      Width = 580
      Height = 15
      Caption = #24403#33647#21697#21697#35268#35774#20026'0'#26102#65292#31995#32479#23558#33258#21160#21024#38500#35813#21697#35268#35774#32622#35760#24405#12290#21697#35268#26631#35782#35774#20026'A'#12289'B'#12289'C'#31561#12290
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object yp: TEdit
      Left = 86
      Top = 16
      Width = 328
      Height = 23
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 0
      OnKeyPress = ypKeyPress
    end
    object gg: TEdit
      Left = 485
      Top = 16
      Width = 121
      Height = 23
      TabStop = False
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 9
    end
    object dw: TEdit
      Left = 649
      Top = 16
      Width = 81
      Height = 23
      TabStop = False
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 10
    end
    object e_yppg: TEdit
      Left = 267
      Top = 52
      Width = 72
      Height = 23
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 2
      OnChange = e_yppgChange
      OnExit = e_yppgExit
      OnKeyPress = e_yppgKeyPress
    end
    object e_pgbs: TEdit
      Left = 86
      Top = 52
      Width = 104
      Height = 23
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 1
      OnChange = e_pgbsChange
      OnKeyPress = e_pgbsKeyPress
    end
    object bt_save: TBitBtn
      Left = 388
      Top = 107
      Width = 75
      Height = 29
      Caption = #20445#23384'(&S)'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = bt_saveClick
    end
    object bt_close: TBitBtn
      Left = 651
      Top = 107
      Width = 75
      Height = 29
      Caption = #20851#38381'(&X)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = bt_closeClick
    end
    object cb_sybz: TCheckBox
      Left = 544
      Top = 56
      Width = 85
      Height = 17
      Caption = #21551#29992#26631#24535
      Checked = True
      State = cbChecked
      TabOrder = 4
      OnKeyUp = cb_sybzKeyUp
      OnMouseUp = cb_sybzMouseUp
    end
    object DBL_yf: TDBLookupComboBox
      Left = 408
      Top = 53
      Width = 122
      Height = 23
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      KeyField = 'dm'
      ListField = 'mc'
      ListSource = ds_ksdm
      TabOrder = 3
      OnCloseUp = DBL_yfCloseUp
      OnKeyPress = DBL_yfKeyPress
    end
    object CheckBox2: TCheckBox
      Left = 182
      Top = 113
      Width = 132
      Height = 17
      Caption = #21482#26174#31034#35774#23450#21697#35268
      Checked = True
      State = cbChecked
      TabOrder = 7
      OnKeyUp = CheckBox2KeyUp
      OnMouseUp = CheckBox2MouseUp
    end
    object bt_cancel: TBitBtn
      Left = 518
      Top = 107
      Width = 75
      Height = 29
      Caption = #25918#24323'(&C)'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = bt_cancelClick
    end
    object CheckBox1: TCheckBox
      Left = 41
      Top = 113
      Width = 84
      Height = 17
      Caption = #33647#21697#36807#28388
      TabOrder = 11
      OnKeyUp = CheckBox1KeyUp
      OnMouseUp = CheckBox1MouseUp
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 188
    Width = 740
    Height = 331
    Align = alClient
    AllowedOperations = []
    DataSource = ds_yppgsz
    EditActions = [geaCopyEh, geaSelectAllEh]
    Flat = True
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ypmc'
        Footers = <>
        Title.Caption = #33647#21697#21517#31216
        Width = 269
      end
      item
        EditButtons = <>
        FieldName = 'ypgg'
        Footers = <>
        Title.Caption = #33647#21697#35268#26684
        Width = 178
      end
      item
        EditButtons = <>
        FieldName = 'ypdw'
        Footers = <>
        Title.Caption = #21333#20301
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'pgbs'
        Footers = <>
        Title.Caption = #21697#35268#26631#35782
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'yppg'
        Footers = <>
        Title.Caption = #21697#35268
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'sybz'
        Footers = <>
        Title.Caption = #21551#29992#26631#24535
        Width = 65
      end>
  end
  object DBGrid1: TDBGrid
    Left = 240
    Top = 272
    Width = 393
    Height = 193
    DataSource = ds_ypdm
    ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = DBGrid1Exit
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'ypmc'
        Title.Caption = #21517#31216
        Width = 155
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ypgg'
        Title.Caption = #35268#26684
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ypdw'
        Title.Caption = #21333#20301
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
      'b.pgbs pgbs,b.yppg yppg,b.sybz sybz,b.yfdm yfdm '
      'from sys_ypdm a,xyf_yppgsz b '
      'where a.ypdm*=b.ypdm '
      'order by a.ypdm')
    Left = 112
    Top = 264
  end
  object qry_ypdm: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 112
    Top = 304
  end
  object ds_yppgsz: TDataSource
    DataSet = qry_yppgsz
    Left = 144
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
    Left = 112
    Top = 384
  end
  object ds_ksdm: TDataSource
    DataSet = qry_ksdm
    Left = 144
    Top = 384
  end
  object ds_ypdm: TDataSource
    DataSet = qry_ypdm
    Left = 144
    Top = 304
  end
  object sp_save: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'xyf_up_yppgsz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@yfdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ypdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 14
        Value = Null
      end
      item
        Name = '@pgbs'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end
      item
        Name = '@yppg'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@sybz'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@sc_zt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 1
        Value = Null
      end>
    Left = 112
    Top = 344
  end
end
