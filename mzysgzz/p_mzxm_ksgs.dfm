object frm_mzxm_ksgs: Tfrm_mzxm_ksgs
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #25910#36153#36153#29992#24402#23646#35774#32622
  ClientHeight = 525
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 225
    Height = 525
    Align = alLeft
    Caption = #39033#30446#21015#34920
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Panel1: TPanel
      Left = 2
      Top = 17
      Width = 221
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 1
        Top = 8
        Width = 38
        Height = 15
        Caption = #39033#30446':'
      end
      object edt_xm: TEdit
        Left = 41
        Top = 5
        Width = 176
        Height = 23
        TabOrder = 0
        OnKeyDown = edt_xmKeyDown
      end
    end
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 46
      Width = 221
      Height = 477
      Align = alClient
      DataSource = ds_kjsfxm
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = ANSI_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      OnCellClick = DBGridEh1CellClick
      OnKeyDown = DBGridEh1KeyDown
      Columns = <
        item
          EditButtons = <>
          FieldName = 'fydm'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #20195#30721
          Width = 41
        end
        item
          EditButtons = <>
          FieldName = 'fymc'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #21517#31216
          Width = 112
        end
        item
          EditButtons = <>
          FieldName = 'pym'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #25340#38899#30721
          Width = 80
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 225
    Top = 0
    Width = 304
    Height = 525
    Align = alLeft
    Caption = #39033#30446#24050#23545#24212
    TabOrder = 1
    object DBGridEh2: TDBGridEh
      Left = 2
      Top = 17
      Width = 300
      Height = 506
      Align = alClient
      DataSource = ds_dyxm
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = ANSI_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ksmc'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #21517#31216
          Width = 198
        end
        item
          EditButtons = <>
          FieldName = 'sl'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #39057#29575
          Width = 57
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 529
    Top = 0
    Width = 36
    Height = 525
    Align = alLeft
    TabOrder = 2
    object BBtn_add: TBitBtn
      Left = 7
      Top = 192
      Width = 25
      Height = 25
      Caption = '<'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BBtn_addClick
    end
    object BBtn_add_all: TBitBtn
      Left = 7
      Top = 230
      Width = 25
      Height = 25
      Caption = '<<'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BBtn_add_allClick
    end
    object BBtn_remove_all: TBitBtn
      Left = 7
      Top = 310
      Width = 25
      Height = 25
      Caption = '>>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BBtn_remove_allClick
    end
    object BBtn_remove: TBitBtn
      Left = 7
      Top = 272
      Width = 25
      Height = 25
      Caption = '>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BBtn_removeClick
    end
  end
  object GroupBox4: TGroupBox
    Left = 565
    Top = 0
    Width = 219
    Height = 525
    Align = alClient
    Caption = #26410#23545#24212#31185#23460
    TabOrder = 3
    object DBGridEh3: TDBGridEh
      Left = 2
      Top = 17
      Width = 215
      Height = 506
      Align = alClient
      DataSource = ds_wglks
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = ANSI_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'dm'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #20195#30721
          Width = 41
        end
        item
          EditButtons = <>
          FieldName = 'mc'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #21517#31216
          Width = 133
        end>
    end
  end
  object DBGridEh4: TDBGridEh
    Left = 67
    Top = 51
    Width = 382
    Height = 227
    DataSource = ds_xm_locate
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    OnExit = DBGridEh4Exit
    OnKeyDown = DBGridEh4KeyDown
    OnMouseDown = DBGridEh4MouseDown
    Columns = <
      item
        EditButtons = <>
        FieldName = 'fydm'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #20195#30721
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'fymc'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #21517#31216
        Width = 208
      end
      item
        EditButtons = <>
        FieldName = 'pym'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #25340#38899#30721
        Width = 74
      end>
  end
  object qry_dyxm: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'fydm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from sys_kjsfxm_mzksgs where fydm=:fydm'
      '  order by sl')
    Left = 360
    Top = 280
    object qry_dyxmfydm: TStringField
      FieldName = 'fydm'
      FixedChar = True
      Size = 4
    end
    object qry_dyxmksdm: TStringField
      FieldName = 'ksdm'
      FixedChar = True
      Size = 4
    end
    object qry_dyxmsl: TIntegerField
      FieldName = 'sl'
    end
    object qry_dyxmksmc: TStringField
      FieldKind = fkLookup
      FieldName = 'ksmc'
      LookupDataSet = qry_ksdm
      LookupKeyFields = 'dm'
      LookupResultField = 'mc'
      KeyFields = 'ksdm'
      Size = 50
      Lookup = True
    end
  end
  object qry_kjsfxm: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select * from sys_kjsfxm where qybz=1 and mzfy=1')
    Left = 120
    Top = 248
  end
  object qry_wglks: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'fydm'
        DataType = ftString
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select * from sys_ksdm where dm not in('
      '  select ksdm from sys_kjsfxm_mzksgs where fydm=:fydm)')
    Left = 656
    Top = 216
  end
  object ds_kjsfxm: TDataSource
    DataSet = qry_kjsfxm
    Left = 120
    Top = 296
  end
  object ds_dyxm: TDataSource
    DataSet = qry_dyxm
    Left = 360
    Top = 312
  end
  object ds_wglks: TDataSource
    DataSet = qry_wglks
    Left = 656
    Top = 256
  end
  object qry_xm_locate: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'pym'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'fydm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from sys_kjsfxm where pym like :pym or fydm=:fydm')
    Left = 104
    Top = 48
  end
  object ds_xm_locate: TDataSource
    DataSet = qry_xm_locate
    Left = 104
    Top = 88
  end
  object qry_ksdm: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select * from sys_ksdm')
    Left = 424
    Top = 280
  end
end
