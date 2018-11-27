object frm_jytmcd: Tfrm_jytmcd
  Left = 254
  Top = 53
  Caption = #26465#30721#37325#25171
  ClientHeight = 454
  ClientWidth = 846
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 846
    Height = 45
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object bt_can: TButton
      Left = 380
      Top = 9
      Width = 80
      Height = 30
      Caption = #37325#25171
      TabOrder = 0
      OnClick = bt_canClick
    end
    object Button1: TButton
      Left = 524
      Top = 9
      Width = 80
      Height = 30
      Caption = #36864#20986
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 45
    Width = 846
    Height = 409
    Align = alClient
    TabOrder = 1
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DS_brxx
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGridDBTableView1yzbz: TcxGridDBColumn
        Caption = #21307#22065#22791#27880
        DataBinding.FieldName = 'yzbz'
        HeaderAlignmentHorz = taCenter
        MinWidth = 60
        Options.Editing = False
        Options.Filtering = False
        Width = 73
      end
      object cxGridDBTableView1sfcd: TcxGridDBColumn
        Caption = #26159#21542#37325#25171
        DataBinding.FieldName = 'sfcd'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 80
        Options.Filtering = False
        Options.Moving = False
        Width = 80
      end
      object cxGridDBTableView1cysj: TcxGridDBColumn
        Caption = #37319#26679#26102#38388
        DataBinding.FieldName = 'cysj'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 100
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Options.IncSearch = False
        Options.Moving = False
        Width = 100
      end
      object cxGridDBTableView1tmh: TcxGridDBColumn
        Caption = #26465#30721#21495
        DataBinding.FieldName = 'tmh'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 100
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Options.IncSearch = False
        Options.Moving = False
      end
      object cxGridDBTableView1brxm: TcxGridDBColumn
        Caption = #22995#21517
        DataBinding.FieldName = 'brxm'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 100
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Options.IncSearch = False
        Options.Moving = False
        Width = 100
      end
      object cxGridDBTableView1brxb: TcxGridDBColumn
        Caption = #24615#21035
        DataBinding.FieldName = 'brxb'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Options.IncSearch = False
        Options.Moving = False
        Width = 50
      end
      object cxGridDBTableView1brnl: TcxGridDBColumn
        Caption = #24180#40836
        DataBinding.FieldName = 'brnl'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 80
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Options.IncSearch = False
        Options.Moving = False
        Width = 80
      end
      object cxGridDBTableView1jyxmmc: TcxGridDBColumn
        Caption = #39033#30446#21517#31216
        DataBinding.FieldName = 'jyxmmc'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 200
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Options.IncSearch = False
        Options.Moving = False
        Width = 200
      end
      object cxGridDBTableView1ybmc: TcxGridDBColumn
        Caption = #26679#26412
        DataBinding.FieldName = 'yb'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        MinWidth = 100
        Options.Filtering = False
        Options.Moving = False
        Width = 100
      end
      object cxGridDBTableView1yb: TcxGridDBColumn
        Caption = #26679#26412
        DataBinding.FieldName = 'yb'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 100
        Options.Filtering = False
        Options.Moving = False
        Width = 100
      end
      object cxGridDBTableView1jyfzbh: TcxGridDBColumn
        Caption = #20998#32452#32534#21495
        DataBinding.FieldName = 'jyfzbh'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        MinWidth = 100
        Options.Editing = False
        Options.Filtering = False
        Options.Moving = False
        Width = 100
      end
      object cxGridDBTableView1kdysmc: TcxGridDBColumn
        Caption = #24320#21333#21307#29983
        DataBinding.FieldName = 'kdysmc'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 100
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Options.IncSearch = False
        Options.Moving = False
        Width = 100
      end
      object cxGridDBTableView1yszd: TcxGridDBColumn
        Caption = #21307#29983#35786#26029
        DataBinding.FieldName = 'yszd'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 120
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Options.IncSearch = False
        Options.Moving = False
        Width = 120
      end
      object cxGridDBTableView1kdksmc: TcxGridDBColumn
        Caption = #24320#21333#31185#23460
        DataBinding.FieldName = 'kdksmc'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 100
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Options.IncSearch = False
        Options.Moving = False
        Width = 100
      end
      object cxGridDBTableView1cyry: TcxGridDBColumn
        Caption = #37319#26679#20154#21592
        DataBinding.FieldName = 'cyry'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 100
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Options.IncSearch = False
        Options.Moving = False
        Width = 100
      end
      object cxGridDBTableView1cdry: TcxGridDBColumn
        Caption = #37325#25171#20154#21592
        DataBinding.FieldName = 'cdry'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        MinWidth = 100
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Options.IncSearch = False
        Options.Moving = False
      end
      object cxGridDBTableView1cdrq: TcxGridDBColumn
        Caption = ' '#37325#25171#26102#38388
        DataBinding.FieldName = 'cdrq'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        MinWidth = 100
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Options.IncSearch = False
        Options.Moving = False
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object DS_brxx: TDataSource
    DataSet = qry_brxx
    Left = 152
    Top = 88
  end
  object qry_brxx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select t.*,e.mc cdry,d.cdrq from '
      '( select a.*,b.brxm brxm1,b.brnl brnl1,b.brxb brxb1 '
      '  from DZBL_CYJL_zy a,zysf_zydj b,dzbl_jysqd c '
      
        '  where a.zyh=b.zyh and a.zyh=c.zyh and a.jyfzbh=c.fzbh and a.zy' +
        'h='#39'5266201404017574'#39' and c.jsbz=0 ) t '
      
        'left join zybl_jycdjl d on t.tmh=  d.tmh and t.jyxmmc=d.jyxmmc a' +
        'nd t.jyfzbh=d.jyfzbh'
      '  left join sys_czy e on d.cdry=e.dm order by t.yb asc')
    Left = 111
    Top = 90
    object qry_brxxID: TAutoIncField
      Alignment = taCenter
      FieldName = 'ID'
      ReadOnly = True
    end
    object qry_brxxfyid: TIntegerField
      Alignment = taCenter
      FieldName = 'fyid'
    end
    object qry_brxxtmh: TStringField
      Alignment = taCenter
      FieldName = 'tmh'
      Size = 12
    end
    object qry_brxxbrxm: TStringField
      Alignment = taCenter
      FieldName = 'brxm'
    end
    object qry_brxxbrxb: TStringField
      Alignment = taCenter
      FieldName = 'brxb'
      Size = 4
    end
    object qry_brxxbrnl: TStringField
      Alignment = taCenter
      FieldName = 'brnl'
      Size = 10
    end
    object qry_brxxkdysdm: TStringField
      Alignment = taCenter
      FieldName = 'kdysdm'
      FixedChar = True
      Size = 4
    end
    object qry_brxxkdysmc: TStringField
      Alignment = taCenter
      FieldName = 'kdysmc'
    end
    object qry_brxxkdksdm: TStringField
      Alignment = taCenter
      FieldName = 'kdksdm'
      FixedChar = True
      Size = 4
    end
    object qry_brxxkdksmc: TStringField
      Alignment = taCenter
      FieldName = 'kdksmc'
    end
    object qry_brxxyszd: TStringField
      Alignment = taCenter
      FieldName = 'yszd'
      Size = 100
    end
    object qry_brxxjyxmdm: TStringField
      Alignment = taCenter
      FieldName = 'jyxmdm'
      FixedChar = True
      Size = 4
    end
    object qry_brxxjyxmmc: TStringField
      Alignment = taCenter
      FieldName = 'jyxmmc'
      Size = 100
    end
    object qry_brxxjyfzbh: TStringField
      Alignment = taCenter
      FieldName = 'jyfzbh'
      FixedChar = True
      Size = 12
    end
    object qry_brxxjyfzxh: TIntegerField
      Alignment = taCenter
      FieldName = 'jyfzxh'
    end
    object qry_brxxcysj: TDateTimeField
      Alignment = taCenter
      FieldName = 'cysj'
    end
    object qry_brxxsqrq: TDateTimeField
      Alignment = taCenter
      FieldName = 'sqrq'
    end
    object qry_brxxcyry: TStringField
      Alignment = taCenter
      FieldName = 'cyry'
    end
    object qry_brxxsfdy: TBooleanField
      Alignment = taCenter
      FieldName = 'sfjy'
    end
    object qry_brxxdyrq: TDateTimeField
      Alignment = taCenter
      FieldName = 'dyrq'
    end
    object qry_brxxma: TStringField
      Alignment = taCenter
      FieldName = 'ma'
      Size = 8
    end
    object qry_brxxyb: TStringField
      Alignment = taCenter
      FieldName = 'yb'
      Size = 14
    end
    object qry_brxxsfrq: TDateTimeField
      Alignment = taCenter
      FieldName = 'sfrq'
    end
    object qry_brxxfyzje: TBCDField
      Alignment = taCenter
      FieldName = 'fyzje'
      Precision = 18
      Size = 2
    end
    object qry_brxxsszje: TBCDField
      Alignment = taCenter
      FieldName = 'sszje'
      Precision = 18
      Size = 2
    end
    object qry_brxxsjbh: TIntegerField
      Alignment = taCenter
      FieldName = 'sjbh'
    end
    object qry_brxxdldm: TStringField
      FieldName = 'dldm'
      Size = 10
    end
    object qry_brxxsfcd: TBooleanField
      FieldName = 'sfcd'
    end
    object qry_brxxjydlpx: TStringField
      FieldName = 'jydlpx'
      FixedChar = True
      Size = 6
    end
    object qry_brxxyzbz: TStringField
      FieldName = 'yzbz'
      Size = 100
    end
    object qry_brxxbrxm1: TStringField
      FieldName = 'brxm1'
      Size = 12
    end
    object qry_brxxbrnl1: TStringField
      FieldName = 'brnl1'
    end
    object qry_brxxbrxb1: TStringField
      FieldName = 'brxb1'
      Size = 2
    end
    object qry_brxxcdrq: TDateTimeField
      FieldName = 'cdrq'
    end
    object qry_brxxcdry: TStringField
      FieldName = 'cdry'
      Size = 10
    end
  end
  object qry_ydy: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      'select DISTINCT  barcode from dzbl_jyjg_pt'
      'union all'
      'select DISTINCT barcode from dzbl_jyjg_wsw')
    Left = 200
    Top = 88
  end
  object qry_cdjl: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'tmh'
        DataType = ftWideString
        Size = 9
        Value = '0'
      end>
    SQL.Strings = (
      'select * from zybl_jycdjl where tmh:= :tmh')
    Left = 248
    Top = 96
  end
end
