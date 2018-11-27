object frm_bqbqtz: Tfrm_bqbqtz
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #26102#38388#36136#25511#26465#20214
  ClientHeight = 570
  ClientWidth = 1100
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 1100
    Height = 570
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
      DataController.DataSource = ds_bqtz
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1tmh: TcxGridDBColumn
        Caption = #21345#21495
        DataBinding.FieldName = 'tmh'
        Options.Editing = False
        Options.Moving = False
        Width = 108
      end
      object cxGrid1DBTableView1brxm: TcxGridDBColumn
        Caption = #30149#20154#22995#21517
        DataBinding.FieldName = 'brxm'
        Options.Editing = False
        Options.Moving = False
        Width = 68
      end
      object cxGrid1DBTableView1brxb: TcxGridDBColumn
        Caption = #24615#21035
        DataBinding.FieldName = 'brxb'
        Options.Editing = False
        Options.Moving = False
        Width = 52
      end
      object cxGrid1DBTableView1bch: TcxGridDBColumn
        Caption = #24202#21495
        DataBinding.FieldName = 'bch'
        Width = 59
      end
      object cxGrid1DBTableView1rybq: TcxGridDBColumn
        Caption = #20837#38498#30149#24773
        DataBinding.FieldName = 'rybq'
        Options.Editing = False
        Options.Moving = False
        Width = 83
      end
      object cxGrid1DBTableView1brbq: TcxGridDBColumn
        Caption = #22312#38498#30149#24773
        DataBinding.FieldName = 'brbq'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          #30149#21361#30149#20154
          #30149#37325#30149#20154
          #30149#24773#31283#23450)
        Properties.OnCloseUp = cxGrid1DBTableView1brbqPropertiesCloseUp
        Width = 87
      end
      object cxGrid1DBTableView1sssj: TcxGridDBColumn
        Caption = #25163#26415#26102#38388
        DataBinding.FieldName = 'sssj'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Kind = ckDateTime
        Properties.MaxDate = 43831.000000000000000000
        Properties.MinDate = 40360.000000000000000000
        Properties.OnCloseUp = cxGrid1DBTableView1sssjPropertiesCloseUp
        Width = 184
      end
      object cxGrid1DBTableView1ycczsj: TcxGridDBColumn
        Caption = #26377#21019#25805#20316#26102#38388
        DataBinding.FieldName = 'ycczsj'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Kind = ckDateTime
        Properties.MaxDate = 43831.000000000000000000
        Properties.MinDate = 40360.000000000000000000
        Properties.OnCloseUp = cxGrid1DBTableView1ycczsjPropertiesCloseUp
        Width = 199
      end
      object cxGrid1DBTableView1qjsj: TcxGridDBColumn
        Caption = #25250#25937#26102#38388
        DataBinding.FieldName = 'qjsj'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Kind = ckDateTime
        Properties.MaxDate = 43831.000000000000000000
        Properties.MinDate = 40360.000000000000000000
        Properties.OnCloseUp = cxGrid1DBTableView1qjsjPropertiesCloseUp
        Width = 232
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object qry_brbq: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'bqdm'
        DataType = ftString
        Size = 2
        Value = '00'
      end>
    SQL.Strings = (
      
        'select tmh,zyh,brxm,brxb,brnl,bch ,rybq from zysf_zydj where ksd' +
        'm in (select bqzydm from sys_bqzyfl where bqdm =:bqdm) ')
    Left = 248
    Top = 144
  end
  object ds_brbq: TDataSource
    DataSet = qry_brbq
    Left = 208
    Top = 144
  end
  object ds_bqtz: TDataSource
    DataSet = qry_bqtz
    Left = 336
    Top = 144
  end
  object qry_bqtz: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'bqdm'
        DataType = ftString
        Size = 2
        Value = #39#39
      end>
    SQL.Strings = (
      
        'select zyh,brbq,sssj,ycczsj,qjsj from zydzbl_sjjkjbxx where zyh ' +
        'in (select zyh from zysf_zydj where cybz=0 and ksdm in (select b' +
        'qzydm from sys_bqzyfl where bqdm  =:bqdm) )')
    Left = 384
    Top = 144
    object qry_bqtzzyh: TStringField
      FieldName = 'zyh'
      Size = 16
    end
    object qry_bqtztmh: TStringField
      FieldKind = fkLookup
      FieldName = 'tmh'
      LookupDataSet = qry_brbq
      LookupKeyFields = 'zyh'
      LookupResultField = 'tmh'
      KeyFields = 'zyh'
      Lookup = True
    end
    object qry_bqtzbrxm: TStringField
      FieldKind = fkLookup
      FieldName = 'brxm'
      LookupDataSet = qry_brbq
      LookupKeyFields = 'zyh'
      LookupResultField = 'brxm'
      KeyFields = 'zyh'
      Lookup = True
    end
    object qry_bqtzbrxb: TStringField
      FieldKind = fkLookup
      FieldName = 'brxb'
      LookupDataSet = qry_brbq
      LookupKeyFields = 'zyh'
      LookupResultField = 'brxb'
      KeyFields = 'zyh'
      Lookup = True
    end
    object qry_bqtzbch: TStringField
      FieldKind = fkLookup
      FieldName = 'bch'
      LookupDataSet = qry_brbq
      LookupKeyFields = 'zyh'
      LookupResultField = 'bch'
      KeyFields = 'zyh'
      Lookup = True
    end
    object qry_bqtzrybq: TStringField
      FieldKind = fkLookup
      FieldName = 'rybq'
      LookupDataSet = qry_brbq
      LookupKeyFields = 'zyh'
      LookupResultField = 'rybq'
      KeyFields = 'zyh'
      Lookup = True
    end
    object qry_bqtzbrbq: TStringField
      FieldName = 'brbq'
      Size = 10
    end
    object qry_bqtzsssj: TDateTimeField
      FieldName = 'sssj'
    end
    object qry_bqtzycczsj: TDateTimeField
      FieldName = 'ycczsj'
    end
    object qry_bqtzqjsj: TDateTimeField
      FieldName = 'qjsj'
    end
  end
end
