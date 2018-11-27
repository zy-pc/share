object frm_kstj: Tfrm_kstj
  Left = 190
  Top = 98
  BorderIcons = [biSystemMenu]
  Caption = #30149#21306#31185#23460#25968#25454#26597#35810
  ClientHeight = 553
  ClientWidth = 932
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
  object PageControl1: TPageControl
    Left = 0
    Top = 142
    Width = 932
    Height = 411
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = #31185#23460#25910#20837
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 924
        Height = 209
        Align = alTop
        Caption = #27719#24635
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object DBGridEh1: TDBGridEh
          Left = 2
          Top = 18
          Width = 920
          Height = 189
          Align = alClient
          DataSource = ds_srhz
          EditActions = [geaCopyEh]
          Flat = False
          FooterColor = clAqua
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clBlue
          FooterFont.Height = -16
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -16
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'mc'
              Footers = <>
              Title.Caption = #31185#23460#21517#31216
              Width = 162
            end
            item
              EditButtons = <>
              FieldName = 'mzzjsr'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #38376#35786#25910#20837'|'#30452#25509#25910#20837
              Width = 94
            end
            item
              EditButtons = <>
              FieldName = 'mzjjsr'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #38376#35786#25910#20837'|'#38388#25509#25910#20837
              Width = 97
            end
            item
              DisplayFormat = '0.00'
              EditButtons = <>
              FieldName = 'mzkdsr'
              Footer.DisplayFormat = '0.00'
              Footer.ValueType = fvtSum
              Footers = <>
              MRUList.Active = True
              Title.Caption = #38376#35786#25910#20837'|'#24320#21333#25910#20837
              Width = 132
            end
            item
              EditButtons = <>
              FieldName = 'zyzjsr'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #20303#38498#25910#20837'|'#30452#25509#25910#20837
              Width = 90
            end
            item
              EditButtons = <>
              FieldName = 'zyjjsr'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #20303#38498#25910#20837'|'#38388#25509#25910#20837
              Width = 85
            end
            item
              EditButtons = <>
              FieldName = 'zykdsr'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #20303#38498#25910#20837'|'#24320#21333#25910#20837
              Width = 126
            end>
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 209
        Width = 924
        Height = 170
        Align = alClient
        Caption = #26126#32454
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object DBGridEh2: TDBGridEh
          Left = 2
          Top = 18
          Width = 920
          Height = 150
          Align = alClient
          DataSource = ds_srmx
          EditActions = [geaCopyEh]
          Flat = False
          FooterColor = clAqua
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clBlue
          FooterFont.Height = -16
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -16
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ksmc'
              Footer.Value = #21512#35745
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = #31185#23460#21517#31216
              Width = 155
            end
            item
              EditButtons = <>
              FieldName = 'fymc'
              Footers = <>
              Title.Caption = #36153#29992#21517#31216
              Width = 218
            end
            item
              EditButtons = <>
              FieldName = 'mzsr'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #38376#35786#25910#20837
              Width = 202
            end
            item
              EditButtons = <>
              FieldName = 'zysr'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #20303#38498#25910#20837
              Width = 192
            end>
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #31185#23460#25903#20986
      ImageIndex = 2
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 924
        Height = 209
        Align = alTop
        Caption = #27719#24635
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object DBGridEh3: TDBGridEh
          Left = 2
          Top = 18
          Width = 920
          Height = 189
          Align = alClient
          DataSource = ds_zchz
          EditActions = [geaCopyEh]
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clBlue
          FooterFont.Height = -16
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -16
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ksmc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #39046#29992#31185#23460
              Width = 177
            end
            item
              EditButtons = <>
              FieldName = 'ckdw'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #21457#36135#31185#23460
              Width = 175
            end
            item
              EditButtons = <>
              FieldName = 'zje'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #21512#35745#36153#29992
              Width = 163
            end>
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 209
        Width = 924
        Height = 170
        Align = alClient
        Caption = #26126#32454
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object DBGridEh4: TDBGridEh
          Left = 2
          Top = 18
          Width = 920
          Height = 150
          Align = alClient
          DataSource = ds_zcmx
          EditActions = [geaCopyEh]
          Flat = False
          FooterColor = clYellow
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clBlue
          FooterFont.Height = -16
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -16
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = #21697#21517
              Footer.Value = #21512#35745
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Alignment = taCenter
              Width = 148
            end
            item
              EditButtons = <>
              FieldName = #35268#26684
              Footers = <>
              Title.Alignment = taCenter
              Width = 90
            end
            item
              EditButtons = <>
              FieldName = #21333#20301
              Footers = <>
              Title.Alignment = taCenter
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = #25968#37327
              Footers = <>
              Title.Alignment = taCenter
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = #21333#20215
              Footers = <>
              Title.Alignment = taCenter
              Width = 56
            end
            item
              EditButtons = <>
              FieldName = #37329#39069
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Alignment = taCenter
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = #39046#29992#26085#26399
              Footers = <>
              Title.Alignment = taCenter
              Width = 93
            end
            item
              EditButtons = <>
              FieldName = #22791#27880
              Footers = <>
              Title.Alignment = taCenter
              Width = 60
            end>
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = #22266#23450#36164#20135#25240#26087
      ImageIndex = 5
      object DBGridEh5: TDBGridEh
        Left = 0
        Top = 0
        Width = 924
        Height = 379
        Align = alClient
        DataSource = ds_sbzj
        Flat = False
        FooterColor = clYellow
        FooterFont.Charset = GB2312_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -16
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        FooterRowCount = 1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'syks'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #20351#29992#31185#23460
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'sbmc'
            Footer.Value = #21512#35745
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #35774#22791#21517#31216
            Width = 256
          end
          item
            EditButtons = <>
            FieldName = 'sbxh'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #35268#26684
            Width = 77
          end
          item
            EditButtons = <>
            FieldName = 'yzj'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #26376#25240#26087
            Width = 86
          end
          item
            EditButtons = <>
            FieldName = 'nzj'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #24180#25240#26087
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'qyrq'
            Footers = <>
            Title.Caption = #36215#29992#26085#26399
            Width = 115
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = #26412#31185#21307#29983#25910#27835#30149#20154
      ImageIndex = 4
      object DBCtrlGrid1: TDBCtrlGrid
        Left = 0
        Top = 0
        Width = 924
        Height = 379
        Align = alClient
        ColCount = 3
        DataSource = ds_szbr
        PanelHeight = 37
        PanelWidth = 302
        TabOrder = 0
        RowCount = 10
        object DBText1: TDBText
          Left = 8
          Top = 8
          Width = 65
          Height = 17
          DataField = 'mc'
          DataSource = ds_szbr
        end
        object DBText2: TDBText
          Left = 144
          Top = 8
          Width = 65
          Height = 17
          DataField = 'szrs'
          DataSource = ds_szbr
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #31185#23460#21307#29983#24037#20316#37327#65288#24320#21333#65289
      ImageIndex = 4
      object dbgrid1: TDBGridEh
        Left = 0
        Top = 0
        Width = 924
        Height = 379
        Align = alClient
        AllowedOperations = []
        DataSource = ds_tjdl
        EditActions = [geaCopyEh, geaSelectAllEh]
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = GB2312_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -16
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        TabOrder = 0
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 932
    Height = 38
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label9: TLabel
      Left = 8
      Top = 13
      Width = 64
      Height = 16
      Caption = #24320#22987#26102#38388
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 299
      Top = 13
      Width = 64
      Height = 16
      Caption = #32467#26463#26102#38388
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object dtp1: TDateTimePicker
      Left = 73
      Top = 8
      Width = 183
      Height = 24
      Date = 37457.369681273200000000
      Time = 37457.369681273200000000
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object dtp2: TDateTimePicker
      Left = 368
      Top = 8
      Width = 193
      Height = 24
      Date = 37457.369723344900000000
      Time = 37457.369723344900000000
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 649
      Top = 7
      Width = 75
      Height = 25
      Caption = #35745#31639
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 732
      Top = 7
      Width = 75
      Height = 25
      Caption = #32467#26463'(&X)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn2Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 0
    Top = 38
    Width = 932
    Height = 104
    Align = alTop
    Caption = #20303#38498#24773#20917
    TabOrder = 2
    object Label1: TLabel
      Left = 15
      Top = 35
      Width = 60
      Height = 15
      Caption = #20837#38498#20154#25968
    end
    object Label2: TLabel
      Left = 233
      Top = 35
      Width = 60
      Height = 15
      Caption = #20986#38498#20154#25968
    end
    object Label3: TLabel
      Left = 455
      Top = 35
      Width = 60
      Height = 15
      Caption = #20182#31185#36716#20837
    end
    object Label4: TLabel
      Left = 675
      Top = 35
      Width = 60
      Height = 15
      Caption = #36716#24448#20182#31185
    end
    object Label5: TLabel
      Left = 17
      Top = 73
      Width = 60
      Height = 15
      Caption = #24320#21333#33647#21697
    end
    object Label6: TLabel
      Left = 457
      Top = 73
      Width = 60
      Height = 15
      Caption = #25903#20986#21512#35745
    end
    object Label7: TLabel
      Left = 678
      Top = 73
      Width = 60
      Height = 15
      Caption = #27424#36153#21512#35745
    end
    object Label8: TLabel
      Left = 233
      Top = 73
      Width = 60
      Height = 15
      Caption = #33647#21697#27604#29575
    end
    object Label11: TLabel
      Left = 80
      Top = 10
      Width = 98
      Height = 15
      Caption = #20303#38498#24320#21333#21512#35745':'
    end
    object DBText3: TDBText
      Left = 182
      Top = 10
      Width = 151
      Height = 17
      DataField = 'srhj'
      DataSource = ds_cryrs
    end
    object DBEdit1: TDBEdit
      Left = 80
      Top = 31
      Width = 121
      Height = 23
      DataField = 'ryrs'
      DataSource = ds_cryrs
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 298
      Top = 31
      Width = 127
      Height = 23
      DataField = 'cyrs'
      DataSource = ds_cryrs
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 520
      Top = 31
      Width = 126
      Height = 23
      DataField = 'zrrs'
      DataSource = ds_cryrs
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 740
      Top = 31
      Width = 120
      Height = 23
      DataField = 'zcrs'
      DataSource = ds_cryrs
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 80
      Top = 69
      Width = 121
      Height = 23
      DataField = 'yphj'
      DataSource = ds_cryrs
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 522
      Top = 69
      Width = 124
      Height = 23
      DataField = 'zchj'
      DataSource = ds_cryrs
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 743
      Top = 69
      Width = 117
      Height = 23
      DataField = 'qfhj'
      DataSource = ds_cryrs
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 298
      Top = 69
      Width = 127
      Height = 23
      DataField = 'hzhj'
      DataSource = ds_cryrs
      ReadOnly = True
      TabOrder = 7
    end
  end
  object sp_cx_srhz: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'cwk_tj_kssr_hz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 410
    Top = 234
  end
  object sp_cx_srmx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'cwk_tj_kssr_mx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 352
    Top = 305
  end
  object sp_cx_zchz: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'bqgl_cx_kszchz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '0013'
      end
      item
        Name = '@kssj'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 37742d
      end
      item
        Name = '@jssj'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 37772d
      end>
    Left = 425
    Top = 306
    object sp_cx_zchzksmc: TStringField
      FieldName = 'ksmc'
    end
    object sp_cx_zchzckdw: TStringField
      FieldName = 'ckdw'
    end
    object sp_cx_zchzzje: TBCDField
      FieldName = 'zje'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
  end
  object sp_cx_zcmx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'bqgl_cx_kszcmx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '0007'
      end
      item
        Name = '@kssj'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 37258d
      end
      item
        Name = '@jssj'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 37257d
      end>
    Left = 514
    Top = 299
  end
  object sp_cx_szbr: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'bqgl_cx_ysszbr;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '0007'
      end
      item
        Name = '@kssj'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 37257d
      end
      item
        Name = '@jssj'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 37438d
      end>
    Left = 491
    Top = 236
  end
  object sp_cx_rcyrs: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    ProcedureName = 'bqgl_cx_rcyrskssr;1'
    Parameters = <
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@kssj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end
      item
        Name = '@jssj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end>
    Left = 268
    Top = 307
  end
  object ds_srhz: TDataSource
    DataSet = sp_cx_srhz
    Left = 134
    Top = 236
  end
  object ds_srmx: TDataSource
    DataSet = sp_cx_srmx
    Left = 183
    Top = 236
  end
  object ds_zchz: TDataSource
    DataSet = sp_cx_zchz
    Left = 232
    Top = 238
  end
  object ds_zcmx: TDataSource
    DataSet = sp_cx_zcmx
    Left = 288
    Top = 237
  end
  object ds_cryrs: TDataSource
    DataSet = sp_cx_rcyrs
    Left = 208
    Top = 304
  end
  object ds_szbr: TDataSource
    DataSet = sp_cx_szbr
    Left = 343
    Top = 235
  end
  object sp_cx_sbzj: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'bqgl_cx_sbzj;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@bqdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '0001'
      end
      item
        Name = '@VarDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 38200d
      end
      item
        Name = '@VarYzj'
        Attributes = [paNullable]
        DataType = ftBCD
        Direction = pdInputOutput
        Precision = 19
        Value = 34636700c
      end
      item
        Name = '@VarNzj'
        Attributes = [paNullable]
        DataType = ftBCD
        Direction = pdInputOutput
        Precision = 19
        Value = 415627500c
      end>
    Left = 566
    Top = 238
  end
  object ds_sbzj: TDataSource
    DataSet = sp_cx_sbzj
    Left = 86
    Top = 236
  end
  object ds_tjdl: TDataSource
    DataSet = sp_tjdl
    Left = 128
    Top = 304
  end
  object sp_tjdl: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    ProcedureName = 'cwk_kdyshz_zy_hsz;1'
    Parameters = <>
    Left = 92
    Top = 307
  end
end
