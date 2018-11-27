object frm_cx_cy: Tfrm_cx_cy
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #25277#26679#26597#35810
  ClientHeight = 523
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 742
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 571
      Height = 81
      Align = alLeft
      Caption = #26597#35810#26465#20214#36873#25321
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 24
        Width = 60
        Height = 15
        Caption = #25277#26679#24320#22987
      end
      object Label4: TLabel
        Left = 8
        Top = 56
        Width = 60
        Height = 15
        Caption = #30149#21382#21307#29983
      end
      object Label2: TLabel
        Left = 192
        Top = 24
        Width = 15
        Height = 15
        Caption = #21040
      end
      object Label3: TLabel
        Left = 360
        Top = 24
        Width = 60
        Height = 15
        Caption = #30149#21382#31185#23460
      end
      object Label5: TLabel
        Left = 360
        Top = 56
        Width = 60
        Height = 15
        Caption = #25277#26679#20154#21592
      end
      object Edit2: TEdit
        Left = 71
        Top = 53
        Width = 111
        Height = 23
        TabOrder = 3
        OnKeyDown = Edit2KeyDown
      end
      object DateTimePicker1: TDateTimePicker
        Left = 71
        Top = 19
        Width = 113
        Height = 23
        Date = 39283.433190462960000000
        Time = 39283.433190462960000000
        TabOrder = 0
      end
      object DateTimePicker2: TDateTimePicker
        Left = 215
        Top = 19
        Width = 113
        Height = 23
        Date = 39283.433190462960000000
        Time = 39283.433190462960000000
        TabOrder = 1
      end
      object Edit3: TEdit
        Left = 424
        Top = 53
        Width = 136
        Height = 23
        TabOrder = 4
        OnKeyDown = Edit3KeyDown
      end
      object ComboBox1: TComboBox
        Left = 424
        Top = 19
        Width = 137
        Height = 23
        Style = csDropDownList
        ItemHeight = 15
        TabOrder = 2
      end
    end
    object BBtn_seek: TBitBtn
      Left = 576
      Top = 24
      Width = 75
      Height = 25
      Caption = #26597#35810
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BBtn_seekClick
    end
    object BBtn_exit: TBitBtn
      Left = 656
      Top = 24
      Width = 75
      Height = 25
      Caption = #36864#20986
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BBtn_exitClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 81
    Width = 742
    Height = 442
    Align = alClient
    Caption = #25277#26679#24773#20917
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 17
      Width = 738
      Height = 423
      Align = alClient
      DataSource = ds_seek
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = ANSI_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      FrozenCols = 2
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
          FieldName = 'tmh'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #26465#30721#21495
          Width = 103
        end
        item
          EditButtons = <>
          FieldName = 'xm'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #22995#21517
          Width = 93
        end
        item
          EditButtons = <>
          FieldName = 'blmc'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #30149#21382#21517#31216
          Width = 169
        end
        item
          EditButtons = <>
          FieldName = 'blid'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #30149#21382'ID'
          Width = 54
        end
        item
          EditButtons = <>
          FieldName = 'blksmc'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #30149#21382#31185#23460
          Width = 85
        end
        item
          EditButtons = <>
          FieldName = 'blysmc'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #30149#21382#21307#29983
          Width = 63
        end
        item
          EditButtons = <>
          FieldName = 'cyksmc'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #25277#26679#31185#23460
          Width = 169
        end
        item
          EditButtons = <>
          FieldName = 'cyrymc'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #25277#26679#20154#21592
          Width = 67
        end
        item
          EditButtons = <>
          FieldName = 'cylx'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #25277#26679#31867#22411
          Width = 68
        end
        item
          EditButtons = <>
          FieldName = 'cysj'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #25277#26679#26102#38388
          Width = 146
        end
        item
          EditButtons = <>
          FieldName = 'cyid'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #25277#26679'ID'
          Width = 61
        end
        item
          EditButtons = <>
          FieldName = 'bz'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #35780#23457#26631#24535
          Width = 60
        end>
    end
  end
  object DBGrid1: TDBGrid
    Left = 55
    Top = 116
    Width = 308
    Height = 197
    DataSource = ds_blys
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnExit = DBGrid1Exit
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'dm'
        Title.Alignment = taCenter
        Title.Caption = #20195#30721
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mc'
        Title.Alignment = taCenter
        Title.Caption = #21517#31216
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pym'
        Title.Alignment = taCenter
        Title.Caption = #25340#38899#30721
        Width = 94
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 426
    Top = 116
    Width = 308
    Height = 197
    DataSource = ds_cyry
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    OnDblClick = DBGrid2DblClick
    OnExit = DBGrid2Exit
    OnKeyDown = DBGrid2KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'dm'
        Title.Alignment = taCenter
        Title.Caption = #20195#30721
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mc'
        Title.Alignment = taCenter
        Title.Caption = #21517#31216
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pym'
        Title.Alignment = taCenter
        Title.Caption = #25340#38899#30721
        Width = 94
        Visible = True
      end>
  end
  object ds_seek: TDataSource
    DataSet = qry_seek
    Left = 528
    Top = 184
  end
  object qry_ks: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select dm,mc from sys_ksdm where kssx='#39'09'#39' order by dm')
    Left = 360
    Top = 144
  end
  object qry_blys: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'dm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'mc'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'pym'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'select dm,mc,pym from sys_czy where dm=:dm or mc like :mc or pym' +
        ' like :pym')
    Left = 416
    Top = 144
  end
  object qry_cyry: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'dm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'mc'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'pym'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'select dm,mc,pym from sys_czy where dm=:dm or mc like :mc or pym' +
        ' like :pym')
    Left = 472
    Top = 144
  end
  object qry_seek: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'blks'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'blys'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'cyry'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'date1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'date2'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select a.*,b.mc blksmc,c.mc blysmc,d.mc cyksmc,e.mc cyrymc'
      '  from zydzbl_blps_cy a Left join sys_ksdm b on a.ksdm=b.dm'
      '                        Left join sys_czy c  on a.blys=c.dm'
      '                        Left join sys_ksdm d on a.cyks=d.dm'
      '                        Left join sys_czy  e on a.cyry=e.dm'
      
        ' where a.ksdm like :blks and a.blys like :blys and a.cyry like :' +
        'cyry'
      '    and Convert(char(10),a.cysj,120)>=:date1'
      '    and Convert(char(10),a.cysj,120)< :date2')
    Left = 528
    Top = 144
  end
  object ds_blys: TDataSource
    DataSet = qry_blys
    Left = 416
    Top = 184
  end
  object ds_cyry: TDataSource
    DataSet = qry_cyry
    Left = 472
    Top = 184
  end
end
