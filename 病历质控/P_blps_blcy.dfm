object frm_blps_blcy: Tfrm_blps_blcy
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #30149#21382#25277#26679
  ClientHeight = 548
  ClientWidth = 860
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
    Width = 860
    Height = 44
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object spb_select: TSpeedButton
      Left = 643
      Top = 4
      Width = 49
      Height = 38
      Caption = #26597#35810
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      OnClick = spb_selectClick
    end
    object SpeedButton1: TSpeedButton
      Left = 697
      Top = 4
      Width = 63
      Height = 38
      Caption = #20303#38498#21495#25277#26679
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 764
      Top = 4
      Width = 93
      Height = 38
      Caption = #25353#20986#38498#26085#26399#25277#26679
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 641
      Height = 44
      Align = alLeft
      Caption = #26465#20214#36873#25321
      TabOrder = 0
      object Label3: TLabel
        Left = 290
        Top = 20
        Width = 38
        Height = 15
        Caption = #31185#23460':'
      end
      object Label4: TLabel
        Left = 491
        Top = 20
        Width = 38
        Height = 15
        Caption = #21307#29983':'
      end
      object Label1: TLabel
        Left = 4
        Top = 20
        Width = 30
        Height = 15
        Caption = #24320#22987
      end
      object Label2: TLabel
        Left = 146
        Top = 20
        Width = 30
        Height = 15
        Caption = #32467#26463
      end
      object ComboBox1: TComboBox
        Left = 331
        Top = 15
        Width = 157
        Height = 23
        Style = csDropDownList
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ItemHeight = 15
        TabOrder = 0
        OnChange = ComboBox1Change
      end
      object ComboBox2: TComboBox
        Left = 535
        Top = 15
        Width = 103
        Height = 23
        Style = csDropDownList
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ItemHeight = 15
        TabOrder = 1
      end
      object DateTimePicker1: TDateTimePicker
        Left = 38
        Top = 15
        Width = 107
        Height = 23
        Date = 40914.700335046300000000
        Time = 40914.700335046300000000
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 2
      end
      object DateTimePicker2: TDateTimePicker
        Left = 177
        Top = 15
        Width = 107
        Height = 23
        Date = 40914.700335046300000000
        Time = 40914.700335046300000000
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 3
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 220
    Width = 860
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Lab_sl: TLabel
      Left = 355
      Top = 16
      Width = 45
      Height = 15
      Caption = #25277#26816#25968
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object edt_sl: TEdit
      Left = 403
      Top = 12
      Width = 72
      Height = 23
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 1
      Text = '0'
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 0
      Width = 345
      Height = 37
      Align = alLeft
      Caption = #36873#25321#26041#24335
      TabOrder = 0
      object rb1: TRadioButton
        Left = 5
        Top = 17
        Width = 100
        Height = 17
        Caption = '&1.'#38543#26426#25277#26679
        Checked = True
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = rb1Click
      end
      object rb2: TRadioButton
        Left = 141
        Top = 17
        Width = 100
        Height = 17
        Caption = '&2.'#25163#21160#25277#26679
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = rb1Click
      end
      object rb3: TRadioButton
        Left = 269
        Top = 17
        Width = 70
        Height = 17
        Caption = '&3.'#20840#37096
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = rb1Click
      end
    end
    object UpDown1: TUpDown
      Left = 475
      Top = 12
      Width = 16
      Height = 23
      Associate = edt_sl
      TabOrder = 2
    end
    object BBtn_cy: TBitBtn
      Left = 533
      Top = 11
      Width = 72
      Height = 25
      Caption = #25277#26679
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BBtn_cyClick
    end
    object BBtn_save: TBitBtn
      Left = 604
      Top = 11
      Width = 72
      Height = 25
      Caption = #20445#23384
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BBtn_saveClick
    end
    object BBtn_Clear: TBitBtn
      Left = 700
      Top = 11
      Width = 72
      Height = 25
      Caption = #28165#38500
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BBtn_ClearClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 44
    Width = 860
    Height = 176
    Align = alTop
    DataSource = ds_bl_list
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'tmh'
        Title.Alignment = taCenter
        Title.Caption = #26465#30721#21495
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brxm'
        Title.Alignment = taCenter
        Title.Caption = #30149#20154#22995#21517
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'blmc'
        Title.Alignment = taCenter
        Title.Caption = #30149#21382#21517#31216
        Width = 149
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'blys'
        Title.Alignment = taCenter
        Title.Caption = #30149#21382#21307#29983
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'blrq'
        Title.Alignment = taCenter
        Title.Caption = #30149#21382#20070#20889#26085#26399
        Width = 154
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zgys'
        Title.Alignment = taCenter
        Title.Caption = #31185#23460#20027#31649
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zzys'
        Title.Alignment = taCenter
        Title.Caption = #20027#27835#21307#29983
        Width = 70
        Visible = True
      end>
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 257
    Width = 860
    Height = 291
    Align = alClient
    Caption = #25277#26679#35760#24405
    TabOrder = 3
    object DBGrid2: TDBGrid
      Left = 2
      Top = 17
      Width = 856
      Height = 272
      Align = alClient
      DataSource = ds_cy
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'tmh'
          Title.Alignment = taCenter
          Title.Caption = #26465#30721#21495
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'xm'
          Title.Alignment = taCenter
          Title.Caption = #22995#21517
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'blmc'
          Title.Alignment = taCenter
          Title.Caption = #30149#21382#21517#31216
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'blid'
          Title.Alignment = taCenter
          Title.Caption = #30149#21382'ID'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ksdm'
          Title.Alignment = taCenter
          Title.Caption = #31185#23460
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cyry'
          Title.Alignment = taCenter
          Title.Caption = #25277#26679#20154#21592
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cylx'
          Title.Alignment = taCenter
          Title.Caption = #25277#26679#31867#22411
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bz'
          Title.Alignment = taCenter
          Title.Caption = #35780#23457#26631#24535
          Width = 73
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 36
    Top = 192
    Width = 361
    Height = 193
    TabOrder = 4
    Visible = False
    object Label5: TLabel
      Left = 13
      Top = 80
      Width = 75
      Height = 15
      Caption = #36755#20837#26465#30721#21495
    end
    object tmh: TEdit
      Left = 93
      Top = 76
      Width = 219
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 0
    end
    object Button1: TButton
      Left = 110
      Top = 120
      Width = 75
      Height = 25
      Caption = #30830#23450
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 210
      Top = 120
      Width = 75
      Height = 25
      Caption = #21462#28040
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object Panel4: TPanel
    Left = 427
    Top = 192
    Width = 361
    Height = 193
    TabOrder = 5
    Visible = False
    object Label6: TLabel
      Left = 33
      Top = 58
      Width = 30
      Height = 15
      Caption = #24320#22987
    end
    object Label7: TLabel
      Left = 187
      Top = 58
      Width = 30
      Height = 15
      Caption = #32467#26463
    end
    object Label8: TLabel
      Left = 113
      Top = 19
      Width = 135
      Height = 15
      Caption = #35831#36873#25321#20986#38498#26085#26399#21306#38388
    end
    object Button3: TButton
      Left = 99
      Top = 120
      Width = 75
      Height = 25
      Caption = #30830#23450
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 208
      Top = 120
      Width = 75
      Height = 25
      Caption = #21462#28040
      TabOrder = 1
      OnClick = Button4Click
    end
    object DateTimePicker3: TDateTimePicker
      Left = 67
      Top = 53
      Width = 107
      Height = 23
      Date = 40914.700335046300000000
      Time = 40914.700335046300000000
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 2
    end
    object DateTimePicker4: TDateTimePicker
      Left = 220
      Top = 53
      Width = 107
      Height = 23
      Date = 40914.700335046300000000
      Time = 40914.700335046300000000
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 3
    end
  end
  object ds_bl_list: TDataSource
    DataSet = sp_bl_list
    Left = 232
    Top = 168
  end
  object qry_cy: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'cyry'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from zydzbl_blps_cy where bz=0 and cyry=:cyry')
    Left = 320
    Top = 128
  end
  object ds_cy: TDataSource
    DataSet = qry_cy
    Left = 320
    Top = 168
  end
  object qry_ksdm: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ksdm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select dm,mc from sys_ksdm where kssx='#39'09'#39'  and dm like :ksdm or' +
        'der by mc')
    Left = 384
    Top = 128
  end
  object sp_bl_list: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = sp_bl_listAfterOpen
    ProcedureName = 'zydzbl_cx_blcy;1'
    Parameters = <
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 9
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ysdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@date1'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@date2'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@lx'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 232
    Top = 128
  end
  object qry_ys: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ksdm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select dm,mc from sys_czy where sybz=1 and ysbz=1 and ksdm like ' +
        ':ksdm'
      ' order by mc')
    Left = 432
    Top = 128
  end
  object cmd_exec: TADOCommand
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 480
    Top = 128
  end
  object qry_cyid: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select max(cyid) + 1 cyid from zydzbl_blps_cy')
    Left = 528
    Top = 128
  end
end
