object frm_ssmz_kssh: Tfrm_ssmz_kssh
  Left = 0
  Top = 0
  Caption = #25163#26415#23457#26680
  ClientHeight = 428
  ClientWidth = 947
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 947
    Height = 57
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 192
      Top = 17
      Width = 75
      Height = 25
      Caption = #26597#35810
      TabOrder = 0
      OnClick = Button1Click
    end
    object dtp: TDateTimePicker
      Left = 24
      Top = 16
      Width = 137
      Height = 26
      Date = 41021.939370486110000000
      Time = 41021.939370486110000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object btn_save: TButton
      Left = 496
      Top = 17
      Width = 75
      Height = 25
      Caption = #20445#23384
      TabOrder = 2
      OnClick = btn_saveClick
    end
    object btn_edit: TButton
      Left = 408
      Top = 17
      Width = 75
      Height = 25
      Caption = #20462#25913
      TabOrder = 3
      OnClick = btn_editClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 57
    Width = 947
    Height = 371
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      PopupMenu = PopupMenu1
      NavigatorButtons.ConfirmDelete = False
      OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
      DataController.DataSource = ds_ssap
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Column12: TcxGridDBColumn
        Caption = #23457#26680
        DataBinding.FieldName = 'xsbz'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Options.Filtering = False
        Width = 30
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #26085#26399
        DataBinding.FieldName = 'sssj'
        Options.Editing = False
        Options.Filtering = False
        Width = 74
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #24202#21495
        DataBinding.FieldName = 'bch'
        Options.Editing = False
        Width = 46
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = #22995#21517
        DataBinding.FieldName = 'brxm'
        Options.Editing = False
        Width = 68
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = #24615#21035
        DataBinding.FieldName = 'brxb'
        Options.Editing = False
        Width = 45
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = #24180#40836
        DataBinding.FieldName = 'brnl'
        Options.Editing = False
        Width = 52
      end
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = #20303#38498#21495
        DataBinding.FieldName = 'tmh'
        Options.Editing = False
        Width = 85
      end
      object cxGrid1DBTableView1Column7: TcxGridDBColumn
        Caption = #35786#26029
        DataBinding.FieldName = 'sqzd'
        Width = 124
      end
      object cxGrid1DBTableView1Column8: TcxGridDBColumn
        Caption = #25163#26415#21517#31216
        DataBinding.FieldName = 'ssmc'
        Width = 132
      end
      object cxGrid1DBTableView1Column9: TcxGridDBColumn
        Caption = #21307#29983
        DataBinding.FieldName = 'zdys'
        Options.Editing = False
        Width = 65
      end
      object cxGrid1DBTableView1Column10: TcxGridDBColumn
        Caption = #30003#35831#22791#27880
        DataBinding.FieldName = 'sssqbz'
        Width = 171
      end
      object cxgrdbclmnGrid1DBTableView1Column11: TcxGridDBColumn
        Caption = #23433#25490#22791#27880
        DataBinding.FieldName = 'bz'
        Width = 127
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object qry_sssq: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from bqgl_ssap ')
    Left = 648
    Top = 312
  end
  object ds_ssap: TDataSource
    DataSet = qry_sssq
    Left = 680
    Top = 312
  end
  object PopupMenu1: TPopupMenu
    Left = 592
    Top = 192
    object N1: TMenuItem
      Caption = #21333#20010#36890#36807#23457#26680
      OnClick = N1Click
    end
    object N3: TMenuItem
      Caption = #20840#37096#36890#36807
      OnClick = N3Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Caption = #21462#28040#23457#26680
      OnClick = N4Click
    end
  end
end
