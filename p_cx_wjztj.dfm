object frm_cx_wjztj: Tfrm_cx_wjztj
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #21361#24613#20540#22788#29702#26597#35810
  ClientHeight = 566
  ClientWidth = 1053
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1053
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 60
      Height = 15
      Caption = #24320#22987#26085#26399
    end
    object Label2: TLabel
      Left = 241
      Top = 16
      Width = 60
      Height = 15
      Caption = #32467#26463#26085#26399
    end
    object Label3: TLabel
      Left = 472
      Top = 16
      Width = 60
      Height = 15
      Caption = #30149#21306#36873#25321
    end
    object DateTimePicker1: TDateTimePicker
      Left = 88
      Top = 8
      Width = 137
      Height = 23
      Date = 41465.609846805560000000
      Time = 41465.609846805560000000
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 309
      Top = 8
      Width = 149
      Height = 23
      Date = 41465.609846805560000000
      Time = 41465.609846805560000000
      TabOrder = 1
    end
    object Button1: TButton
      Left = 737
      Top = 8
      Width = 75
      Height = 25
      Caption = #26597#35810
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 916
      Top = 8
      Width = 75
      Height = 25
      Caption = #36864#20986
      TabOrder = 3
      OnClick = Button2Click
    end
    object ComboBox1: TComboBox
      Left = 549
      Top = 8
      Width = 182
      Height = 23
      ItemHeight = 15
      TabOrder = 4
    end
    object Button3: TButton
      Left = 830
      Top = 8
      Width = 75
      Height = 25
      Caption = #26126#32454#23548#20986
      TabOrder = 5
      OnClick = Button3Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 41
    Width = 1053
    Height = 280
    Align = alTop
    Caption = #27719#24635#32479#35745
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 2
      Top = 17
      Width = 1049
      Height = 261
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCellDblClick = cxGrid1DBTableView1CellDblClick
        DataController.DataSource = ds_cx_wjzhz
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsView.GroupByBox = False
        object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = #31185#23460
          DataBinding.FieldName = 'ksmc'
          Width = 137
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = #22788#29702#20154#21592#20195#30721
          DataBinding.FieldName = 'dm'
          Width = 155
        end
        object cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = #22788#29702#20154#21592#22995#21517
          DataBinding.FieldName = 'mc'
          Width = 152
        end
        object cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = #22788#29702#21361#24613#20540#30149#20154#20154#27425
          DataBinding.FieldName = 'clrc'
          Width = 172
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 321
    Width = 1053
    Height = 245
    Align = alClient
    Caption = #22788#29702#30149#20154#26126#32454
    TabOrder = 2
    object cxGrid2: TcxGrid
      Left = 2
      Top = 17
      Width = 1049
      Height = 226
      Align = alClient
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCustomDrawCell = cxGridDBTableView1CustomDrawCell
        DataController.DataSource = ds_cx_brmx
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsView.GroupByBox = False
        object cxGridDBColumn1: TcxGridDBColumn
          Caption = #30149#20154#21345#21495
          DataBinding.FieldName = 'tmh'
          Width = 137
        end
        object cxGridDBColumn3: TcxGridDBColumn
          Caption = #30149#20154#22995#21517
          DataBinding.FieldName = 'brxm'
          Width = 101
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Caption = #30149#20154#24615#21035
          DataBinding.FieldName = 'brxb'
          Width = 90
        end
        object cxGridDBTableView1Column1: TcxGridDBColumn
          Caption = #30149#20154#24180#40836
          DataBinding.FieldName = 'brnl'
          Width = 85
        end
        object cxGridDBTableView1Column2: TcxGridDBColumn
          Caption = #30149#24202#21495
          DataBinding.FieldName = 'bch'
          Width = 83
        end
        object cxGridDBTableView1Column3: TcxGridDBColumn
          Caption = #20027#31649#21307#29983
          DataBinding.FieldName = 'zgys'
          Width = 97
        end
        object cxGridDBTableView1Column4: TcxGridDBColumn
          Caption = #21457#29983#26102#38388
          DataBinding.FieldName = 'jsrq'
          Width = 177
        end
        object cxgrdbclmnGridDBTableView1Column5: TcxGridDBColumn
          Caption = #22788#29702#26102#38388
          DataBinding.FieldName = 'clsj'
          Width = 169
        end
        object cxGridDBTableView1Column5: TcxGridDBColumn
          Caption = #38388#38548#20998#38047
          DataBinding.FieldName = 'jgsj'
          Width = 88
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object sp_cx_wjzhz: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 120
    ProcedureName = 'zyyz_cx_wjzhz'
    Parameters = <>
    Left = 368
    Top = 176
  end
  object ds_cx_wjzhz: TDataSource
    DataSet = sp_cx_wjzhz
    Left = 368
    Top = 216
  end
  object ds_cx_brmx: TDataSource
    DataSet = qry_cx_brmx
    Left = 368
    Top = 472
  end
  object qry_cx_brmx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 416
    Top = 472
  end
end
