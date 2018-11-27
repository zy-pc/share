object frm_fyxmdb: Tfrm_fyxmdb
  Left = 133
  Top = 106
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #36153#29992#39033#30446#25171#21253#31243#24207
  ClientHeight = 514
  ClientWidth = 723
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 723
    Height = 169
    Align = alTop
    DataSource = ds_dbdx
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'fydm'
        Title.Alignment = taCenter
        Title.Caption = #36153#29992#20195#30721
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fymc'
        Title.Alignment = taCenter
        Title.Caption = #36153#29992#21517#31216
        Width = 199
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pym'
        Title.Alignment = taCenter
        Title.Caption = #25340#38899#30721
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hotkey'
        Title.Alignment = taCenter
        Title.Caption = #28909#38190
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dymc'
        Title.Alignment = taCenter
        Title.Caption = #25171#21360#21517#31216
        Width = 141
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dw'
        Title.Alignment = taCenter
        Title.Caption = #21333#20301
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sfbz'
        Title.Alignment = taCenter
        Title.Caption = #25910#36153#26631#20934
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 723
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 13
      Top = 13
      Width = 72
      Height = 16
      Caption = #25171#21253#39033#30446':'
    end
    object Button1: TButton
      Left = 643
      Top = 8
      Width = 75
      Height = 26
      Caption = #36864#20986
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 93
      Top = 9
      Width = 121
      Height = 24
      TabOrder = 1
      OnKeyPress = Edit1KeyPress
    end
    object b_deldl: TBitBtn
      Left = 541
      Top = 8
      Width = 75
      Height = 26
      Caption = #21024#38500
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = b_deldlClick
    end
    object b_adddl: TBitBtn
      Left = 456
      Top = 8
      Width = 75
      Height = 26
      Caption = #26032#21152
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = b_adddlClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 210
    Width = 723
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object Label2: TLabel
      Left = 9
      Top = 16
      Width = 160
      Height = 16
      Caption = #25171#21253#30340#26126#32454#39033#30446'......'
    end
    object b_addmx: TBitBtn
      Left = 456
      Top = 8
      Width = 75
      Height = 26
      Caption = #26032#21152
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = b_addmxClick
    end
    object b_delmx: TBitBtn
      Left = 541
      Top = 8
      Width = 75
      Height = 26
      Caption = #21024#38500
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = b_delmxClick
    end
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 251
    Width = 723
    Height = 263
    Align = alClient
    DataSource = ds_dbmx
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'fydm'
        Title.Alignment = taCenter
        Title.Caption = #36153#29992#20195#30721
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fymc'
        Title.Alignment = taCenter
        Title.Caption = #36153#29992#21517#31216
        Width = 197
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pym'
        Title.Alignment = taCenter
        Title.Caption = #25340#38899#30721
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dymc'
        Title.Alignment = taCenter
        Title.Caption = #25171#21360#21517#31216
        Width = 141
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dw'
        Title.Alignment = taCenter
        Title.Caption = #21333#20301
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fysl'
        Title.Caption = #27425#25968
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sfbz'
        Title.Alignment = taCenter
        Title.Caption = #25910#36153#26631#20934
        Width = 81
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 8
    Top = 40
    Width = 644
    Height = 165
    Color = clInfoBk
    DataSource = DS_fyxm
    DefaultDrawing = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'System'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'System'
    TitleFont.Style = []
    Visible = False
    OnDrawColumnCell = DBGrid3DrawColumnCell
    OnExit = DBGrid3Exit
    OnKeyPress = DBGrid3KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'fymc'
        Title.Alignment = taCenter
        Title.Caption = #36153#29992#21517#31216
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fydm'
        Title.Alignment = taCenter
        Title.Caption = #36153#29992#20195#30721
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pym'
        Title.Alignment = taCenter
        Title.Caption = #21161#35760#30721
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dw'
        Title.Alignment = taCenter
        Title.Caption = #21333#20301
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sfbz'
        Title.Alignment = taCenter
        Title.Caption = #25910#36153#26631#20934
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mc'
        Title.Alignment = taCenter
        Title.Caption = #22788#32622#31185#23460
        Width = 100
        Visible = True
      end>
  end
  object SP_fyxm: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'sys_cx_sfxm;1'
    Parameters = <
      item
        Name = '@pym'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = '123'
      end>
    Left = 287
    Top = 80
  end
  object DS_fyxm: TDataSource
    DataSet = SP_fyxm
    Left = 319
    Top = 80
  end
  object ds_dbmx: TDataSource
    DataSet = qry_dbmx
    Left = 248
    Top = 80
  end
  object ds_dbdx: TDataSource
    DataSet = qry_dbdx
    Left = 136
    Top = 80
  end
  object qry_dbdx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    AfterScroll = qry_dbdxAfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'select * from sys_kjsfxm where fydm in (select distinct dxdm fyd' +
        'm from sys_kjsfxm_db) ')
    Left = 173
    Top = 80
  end
  object qry_dbmx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'dxdm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select a.*,b.fysl from sys_kjsfxm a,sys_kjsfxm_db b where'
      'a.fydm=b.fydm and b.dxdm=:dxdm')
    Left = 216
    Top = 80
  end
  object sp_infyxmdb: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'sys_in_kjsfdb;1'
    Parameters = <
      item
        Name = '@dxdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
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
        Name = '@szdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 9
        Value = Null
      end
      item
        Name = '@fysl'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@zt'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 368
    Top = 80
  end
end
