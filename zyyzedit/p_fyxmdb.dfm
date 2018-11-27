object frm_fyxmdb: Tfrm_fyxmdb
  Left = 133
  Top = 106
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #21307#22065#39033#30446'--'#25910#36153#39033#30446#25171#21253#31243#24207
  ClientHeight = 514
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 13
      Top = 13
      Width = 150
      Height = 15
      Caption = #21307#22065#39033#30446#25340#38899#30721#25110#21517#31216
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 166
      Top = 10
      Width = 121
      Height = 21
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object b_deldl: TBitBtn
      Left = 484
      Top = 7
      Width = 75
      Height = 26
      Caption = #21024#38500
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
    object b_adddl: TBitBtn
      Left = 406
      Top = 7
      Width = 75
      Height = 26
      Caption = #26032#21152
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnClick = b_adddlClick
    end
    object BitBtn1: TBitBtn
      Left = 571
      Top = 8
      Width = 87
      Height = 25
      Caption = #36864#20986'[&X]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Kind = bkClose
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 688
    Height = 169
    Align = alTop
    DataSource = ds_dbdx
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'xmdm'
        Title.Alignment = taCenter
        Title.Caption = #39033#30446#20195#30721
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'xmmc'
        Title.Alignment = taCenter
        Title.Caption = #21307#22065#21517#31216
        Width = 199
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pym'
        Title.Alignment = taCenter
        Title.Caption = #25340#38899#30721
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hotkey'
        Title.Alignment = taCenter
        Title.Caption = #28909#38190
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qybz'
        Title.Alignment = taCenter
        Title.Caption = #21551#29992#26631#24535
        Width = 66
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
        FieldName = 'bz'
        Title.Alignment = taCenter
        Title.Caption = #22791#27880
        Width = 142
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 210
    Width = 688
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object Label2: TLabel
      Left = 9
      Top = 13
      Width = 183
      Height = 15
      Caption = #23545#24212#30340#25910#36153#26126#32454#39033#30446'......'
    end
    object b_addmx: TBitBtn
      Left = 504
      Top = 7
      Width = 75
      Height = 26
      Caption = #26032#21152'[&A]'
      Enabled = False
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
      Left = 586
      Top = 7
      Width = 75
      Height = 26
      Caption = #21024#38500'[&D]'
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
  object DBGrid3: TDBGrid
    Left = 7
    Top = 112
    Width = 605
    Height = 56
    Color = clInfoBk
    DefaultDrawing = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDrawColumnCell = DBGrid3DrawColumnCell
    OnExit = DBGrid3Exit
    OnKeyPress = DBGrid3KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'xmmc'
        Title.Alignment = taCenter
        Title.Caption = #21307#22065#21517#31216
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'xmdm'
        Title.Alignment = taCenter
        Title.Caption = #39033#30446#20195#30721
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
        FieldName = 'hotkey'
        Title.Alignment = taCenter
        Title.Caption = #28909#38190
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bz'
        Title.Alignment = taCenter
        Title.Caption = #22791#27880
        Width = 100
        Visible = True
      end>
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 251
    Width = 688
    Height = 263
    Align = alClient
    DataSource = ds_dbmx
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = GB2312_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    FooterRowCount = 1
    TabOrder = 4
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'fydm'
        Footer.Value = ' '#21512' '#35745
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #36153#29992#20195#30721
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'fymc'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #36153#29992#21517#31216
        Width = 218
      end
      item
        EditButtons = <>
        FieldName = 'zyzbz'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #26631#24535
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'pym'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #25340#38899#32534#30721
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'hotkey'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #28909#38190
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'dw'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #21333#20301
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'sl'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #25968#37327
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'fybz'
        Footer.FieldName = 'fybz'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #25910#36153#26631#20934
        Width = 69
      end>
  end
  object SP_fyxm: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zybl_cx_yzxm;1'
    Parameters = <
      item
        Name = '@pym'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 288
    Top = 135
  end
  object DS_fyxm: TDataSource
    DataSet = SP_fyxm
    Left = 319
    Top = 80
  end
  object ds_dbmx: TDataSource
    DataSet = qry_dbmx
    Left = 222
    Top = 294
  end
  object ds_dbdx: TDataSource
    DataSet = qry_dbdx
    Left = 104
    Top = 82
  end
  object qry_dbdx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    AfterScroll = qry_dbdxAfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'select * from sys_yzxm where xmdm in (select distinct xmdm from ' +
        'sys_yzxm_to_fydm) ')
    Left = 158
    Top = 81
  end
  object qry_dbmx: TADOQuery
    Connection = DM_data.ado_mydata
    AfterScroll = qry_dbmxAfterScroll
    Parameters = <
      item
        Name = 'dxdm'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'Select aa.xmdm,aa.fydm,aa.sl,aa.zyzbz,bb.fymc,bb.hotkey,bb.dw,bb' +
        '.sfbz,bb.pym from sys_yzxm_to_fydm aa,sys_kjsfxm bb'
      'Where aa.xmdm=:dxdm And aa.fydm*=bb.fydm')
    Left = 142
    Top = 285
  end
  object sp_infyxmdb: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_in_yzsfdb;1'
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
        Name = '@MyBoo'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@sl'
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
    Left = 483
    Top = 100
  end
end
