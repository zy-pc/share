object frm_hjcl_tf: Tfrm_hjcl_tf
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = #21010#20215#26448#26009#36864#36153
  ClientHeight = 566
  ClientWidth = 792
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
  object Splitter1: TSplitter
    Left = 185
    Top = 37
    Width = 4
    Height = 529
    ResizeStyle = rsLine
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 37
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 38
      Height = 15
      Caption = #32534#21495':'
      ParentShowHint = False
      ShowHint = False
    end
    object Label11: TLabel
      Left = 256
      Top = 10
      Width = 38
      Height = 15
      Caption = #26085#26399':'
    end
    object Edt_bh: TEdit
      Left = 49
      Top = 4
      Width = 200
      Height = 28
      Hint = #30149#20154#22995#21517#25110#26465#30721#21495
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnChange = Edt_bhChange
      OnKeyDown = Edt_bhKeyDown
    end
    object BBtn_qb: TBitBtn
      Left = 534
      Top = 3
      Width = 75
      Height = 28
      Caption = #25972#36864#26448#26009
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BBtn_qbClick
    end
    object BBtn_txzx: TBitBtn
      Left = 622
      Top = 3
      Width = 75
      Height = 28
      Caption = #36864#36873#25321#39033
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BBtn_txzxClick
    end
    object BBtn_exit: TBitBtn
      Left = 710
      Top = 3
      Width = 75
      Height = 28
      Caption = #36864#20986
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BBtn_exitClick
    end
    object DateTimePicker1: TDateTimePicker
      Left = 296
      Top = 6
      Width = 113
      Height = 23
      Date = 39093.636300972220000000
      Time = 39093.636300972220000000
      TabOrder = 4
    end
    object BBtn_cx: TBitBtn
      Left = 438
      Top = 3
      Width = 75
      Height = 28
      Caption = #26597#35810#26448#26009
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BBtn_cxClick
    end
  end
  object Panel2: TPanel
    Left = 189
    Top = 37
    Width = 603
    Height = 529
    Align = alClient
    TabOrder = 1
    object GroupBox2: TGroupBox
      Left = 1
      Top = 177
      Width = 601
      Height = 351
      Align = alClient
      Caption = #26448#26009#26126#32454#65288'CTRL + '#40736#26631#21333#20987' '#21487#36873#25321#26576#20960#39033#36864#36153#65289
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object DBGridEh2: TDBGridEh
        Left = 2
        Top = 17
        Width = 597
        Height = 332
        Align = alClient
        AllowedOperations = []
        DataSource = ds_mx
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clBlue
        FooterFont.Height = -15
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        FooterRowCount = 1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlue
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        Columns = <
          item
            Color = clAqua
            EditButtons = <>
            FieldName = 'xh'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #24207#21495
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -15
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'ypmc'
            Footer.Value = #21512#35745#26465#25968
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #26448#26009#21517#31216
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -15
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 262
          end
          item
            EditButtons = <>
            FieldName = 'ypdw'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #21333#20301
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -15
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'ypbzbl'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #21253#35013#27604#20363
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -15
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'ypsl'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #25968#37327
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -15
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'ypdj'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #21333#20215
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -15
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 80
          end>
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 601
      Height = 176
      Align = alTop
      Caption = #24635#34920
      TabOrder = 1
      object DBGridEh1: TDBGridEh
        Left = 2
        Top = 17
        Width = 597
        Height = 157
        Align = alClient
        AllowedOperations = []
        DataSource = ds_zb
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
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'cfbh'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #32534#21495
            Width = 202
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'cfzje'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #24635#37329#39069
            Width = 81
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'zfzje'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #33258#36153#24635#37329#39069
            Width = 77
          end
          item
            EditButtons = <>
            FieldName = 'fyrq'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #21457#25918#26085#26399
            Width = 146
          end
          item
            EditButtons = <>
            FieldName = 'sfbz'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #35760#36153#26631#24535
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'fybz'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #21457#25918#26631#24535
            Width = 66
          end>
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 37
    Width = 185
    Height = 529
    Align = alLeft
    TabOrder = 2
    object Label2: TLabel
      Left = 1
      Top = 32
      Width = 69
      Height = 15
      Caption = #26465' '#30721' '#21495':'
    end
    object Label3: TLabel
      Left = 1
      Top = 64
      Width = 68
      Height = 15
      Caption = #30149#20154#22995#21517':'
    end
    object Label4: TLabel
      Left = 1
      Top = 136
      Width = 68
      Height = 15
      Caption = #39044#20132#37329#39069':'
    end
    object Label5: TLabel
      Left = 1
      Top = 168
      Width = 69
      Height = 15
      Caption = #24635' '#36153' '#29992':'
    end
    object Label6: TLabel
      Left = 1
      Top = 200
      Width = 68
      Height = 15
      Caption = #26368#22823#20037#36153':'
    end
    object Label8: TLabel
      Left = 1
      Top = 232
      Width = 70
      Height = 15
      Caption = #31185'    '#23460':'
    end
    object Label9: TLabel
      Left = 1
      Top = 264
      Width = 68
      Height = 15
      Caption = #20027#31649#21307#29983':'
    end
    object Label10: TLabel
      Left = 1
      Top = 304
      Width = 70
      Height = 15
      Caption = #20313'    '#39069':'
    end
    object DBText1: TDBText
      Left = 80
      Top = 30
      Width = 56
      Height = 15
      AutoSize = True
      DataField = 'tmh'
      DataSource = ds_zydj
    end
    object DBText2: TDBText
      Left = 80
      Top = 64
      Width = 56
      Height = 15
      AutoSize = True
      DataField = 'brxm'
      DataSource = ds_zydj
    end
    object DBText3: TDBText
      Left = 80
      Top = 136
      Width = 56
      Height = 15
      AutoSize = True
      DataField = 'yjze'
      DataSource = ds_zydj
    end
    object DBText4: TDBText
      Left = 80
      Top = 168
      Width = 56
      Height = 15
      AutoSize = True
      DataField = 'zfy'
      DataSource = ds_zydj
    end
    object DBText5: TDBText
      Left = 80
      Top = 200
      Width = 56
      Height = 15
      AutoSize = True
      DataField = 'zdjf'
      DataSource = ds_zydj
    end
    object DBText7: TDBText
      Left = 80
      Top = 232
      Width = 56
      Height = 15
      AutoSize = True
      DataField = 'ksmc'
      DataSource = ds_zydj
    end
    object DBText8: TDBText
      Left = 80
      Top = 264
      Width = 56
      Height = 15
      AutoSize = True
      DataField = 'ysmc'
      DataSource = ds_zydj
    end
    object DBText9: TDBText
      Left = 80
      Top = 304
      Width = 56
      Height = 15
      AutoSize = True
      DataField = 'ye'
      DataSource = ds_zydj
    end
    object DBText6: TDBText
      Left = 80
      Top = 96
      Width = 56
      Height = 15
      AutoSize = True
      DataField = 'fylbmc'
      DataSource = ds_zydj
    end
    object Label7: TLabel
      Left = 1
      Top = 96
      Width = 75
      Height = 15
      Caption = #36153#29992#31867#21035#65306
    end
  end
  object DBGrid1: TDBGrid
    Left = 49
    Top = 30
    Width = 417
    Height = 201
    DataSource = ds_zydj
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
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
        FieldName = 'tmh'
        Title.Alignment = taCenter
        Title.Caption = #26465#30721#21495
        Width = 147
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brxm'
        Title.Alignment = taCenter
        Title.Caption = #30149#20154#22995#21517
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fylbmc'
        Title.Alignment = taCenter
        Title.Caption = #36153#29992#31867#21035
        Width = 102
        Visible = True
      end>
  end
  object ds_zb: TDataSource
    DataSet = qry_zb
    Left = 392
    Top = 288
  end
  object ds_mx: TDataSource
    DataSet = qry_mx
    Left = 432
    Top = 288
  end
  object qry_zb: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'zyh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'fyrq'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from bqkf_zycfzb where sfbz=1 and fybz=1 and tybz=0 and' +
        ' cfzje>=0'
      
        '     and zyh=:zyh  and convert(char(8),fyrq,112)=convert(char(8)' +
        ',:fyrq,112)')
    Left = 392
    Top = 256
  end
  object qry_mx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    DataSource = ds_zb
    Parameters = <
      item
        Name = 'cfbh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'select *,ypsl * ypdj zje,ypsl*kccgj*ypbzbl cgje from bqkf_zycfmx'
      '   where cfbh=:cfbh')
    Left = 432
    Top = 256
    object qry_mxcfbh: TStringField
      FieldName = 'cfbh'
      FixedChar = True
      Size = 12
    end
    object qry_mxxh: TIntegerField
      FieldName = 'xh'
    end
    object qry_mxypmc: TStringField
      FieldName = 'ypmc'
      Size = 30
    end
    object qry_mxyplb: TStringField
      FieldName = 'yplb'
      FixedChar = True
      Size = 30
    end
    object qry_mxkccgj: TBCDField
      FieldName = 'kccgj'
      Precision = 18
    end
    object qry_mxypdj: TBCDField
      FieldName = 'ypdj'
      Precision = 18
    end
    object qry_mxypsl: TBCDField
      FieldName = 'ypsl'
      Precision = 18
      Size = 2
    end
    object qry_mxypbzbl: TIntegerField
      FieldName = 'ypbzbl'
    end
    object qry_mxypdw: TStringField
      FieldName = 'ypdw'
      FixedChar = True
      Size = 8
    end
    object qry_mxypdwid: TIntegerField
      FieldName = 'ypdwid'
    end
    object qry_mxypdm: TStringField
      FieldName = 'ypdm'
      FixedChar = True
      Size = 14
    end
    object qry_mxzje: TBCDField
      FieldName = 'zje'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object qry_mxcgje: TBCDField
      FieldName = 'cgje'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object qry_mxhtfybl: TFloatField
      FieldKind = fkLookup
      FieldName = 'htfybl'
      LookupDataSet = qry_ypdm
      LookupKeyFields = 'ypdm'
      LookupResultField = 'htfybl'
      KeyFields = 'ypdm'
      Lookup = True
    end
    object qry_mxbxfybl: TFloatField
      FieldKind = fkLookup
      FieldName = 'bxfybl'
      LookupDataSet = qry_ypdm
      LookupKeyFields = 'ypdm'
      LookupResultField = 'bxfybl'
      KeyFields = 'ypdm'
      Lookup = True
    end
    object qry_mxsbfybl: TFloatField
      FieldKind = fkLookup
      FieldName = 'sbfybl'
      LookupDataSet = qry_ypdm
      LookupKeyFields = 'ypdm'
      LookupResultField = 'sbfybl'
      KeyFields = 'ypdm'
      Lookup = True
    end
  end
  object qry_zydj: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'tmh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 9
        Value = Null
      end
      item
        Name = 'brxm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'select dj.tmh,dj.zyh,dj.brxm,dj.yjze,dj.zfy,dj.zdjf,'
      
        '       ks.mc ksmc,ys.mc ysmc,dj.yjze+dj.zdjf-dj.zfy ye,lb.mc fyl' +
        'bmc,lb.fyxz,'
      '       lb.zfzdmc'
      'from zysf_zydj dj left join sys_ksdm ks on dj.ksdm=ks.dm'
      '                  left join sys_czy ys  on dj.zgys=ys.dm'
      '                  left join sys_fylb lb on dj.fylb=lb.dm '
      'where  (dj.tmh like :tmh or dj.brxm like :brxm)')
    Left = 296
    Top = 256
  end
  object sp_save: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'bqkf_zyzcfty;1'
    Parameters = <
      item
        Name = '@cfbh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
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
        Name = '@fyczy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@sjbh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@cfzje'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@zfzje'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@cgzje'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@xh_list'
        Attributes = [paNullable]
        DataType = ftString
        Size = 300
        Value = Null
      end
      item
        Name = '@sc_cg'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 30
        Value = Null
      end>
    Left = 488
    Top = 256
  end
  object ds_zydj: TDataSource
    DataSet = qry_zydj
    Left = 296
    Top = 288
  end
  object qry_ypdm: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select * from sys_ypdm')
    Left = 344
    Top = 256
  end
  object qry_check_cybz: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'zyh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select cybz from zysf_zydj where zyh=:zyh')
    Left = 248
    Top = 256
  end
end
