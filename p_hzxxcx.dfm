object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #20250#35786#26597#35810
  ClientHeight = 586
  ClientWidth = 797
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 797
    Height = 35
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 60
      Height = 15
      Caption = #24320#22987#26102#38388
    end
    object Label2: TLabel
      Left = 221
      Top = 8
      Width = 60
      Height = 15
      Caption = #32467#26463#26102#38388
    end
    object DateTimePicker1: TDateTimePicker
      Left = 79
      Top = 4
      Width = 121
      Height = 23
      Date = 41014.687300879630000000
      Time = 41014.687300879630000000
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 288
      Top = 4
      Width = 121
      Height = 23
      Date = 41014.687300879630000000
      Time = 41014.687300879630000000
      TabOrder = 1
    end
    object Button1: TButton
      Left = 443
      Top = 4
      Width = 75
      Height = 25
      Caption = #32479#35745
      TabOrder = 2
    end
    object Button2: TButton
      Left = 539
      Top = 4
      Width = 75
      Height = 25
      Caption = #23548#20986#27719#24635
      TabOrder = 3
    end
    object Button3: TButton
      Left = 635
      Top = 4
      Width = 75
      Height = 25
      Caption = #23548#20986#26126#32454
      TabOrder = 4
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 35
    Width = 797
    Height = 254
    Align = alTop
    Caption = #27719#24635#20449#24687
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 2
      Top = 17
      Width = 793
      Height = 235
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = #30149#21306#21517#31216
          DataBinding.FieldName = 'bqmc'
          Width = 187
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = #30003#35831#20250#35786#25968
          DataBinding.FieldName = 'wtsl'
          Width = 115
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = #22788#29702#20250#35786#25968
          DataBinding.FieldName = 'jssl'
          Width = 113
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 289
    Width = 797
    Height = 297
    Align = alClient
    Caption = #20250#35786#22788#29702#26126#32454
    TabOrder = 2
    object cxGrid2: TcxGrid
      Left = 2
      Top = 17
      Width = 793
      Height = 278
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        object cxGridDBTableView1Column1: TcxGridDBColumn
          Caption = #36136#25511#20154#21592
          DataBinding.FieldName = 'zkry'
          Width = 75
        end
        object cxGridDBTableView1Column2: TcxGridDBColumn
          Caption = #30149#21306
          DataBinding.FieldName = 'bqmc'
          Width = 66
        end
        object cxGridDBTableView1Column3: TcxGridDBColumn
          Caption = #30149#20154#21345#21495
          DataBinding.FieldName = 'tmh'
          Width = 78
        end
        object cxGridDBTableView1Column4: TcxGridDBColumn
          Caption = #30149#20154#22995#21517
          DataBinding.FieldName = 'brxm'
          Width = 73
        end
        object cxGridDBTableView1Column5: TcxGridDBColumn
          Caption = #30149#24202#21495
          DataBinding.FieldName = 'bch'
          Width = 59
        end
        object cxGridDBTableView1Column6: TcxGridDBColumn
          Caption = #30149#21382#21517#31216
          DataBinding.FieldName = 'blmc'
          Width = 120
        end
        object cxGridDBTableView1Column7: TcxGridDBColumn
          Caption = #38382#39064#25551#36848
          DataBinding.FieldName = 'fkyj'
          Width = 182
        end
        object cxGridDBTableView1Column8: TcxGridDBColumn
          Caption = #21453#39304#26102#38388
          DataBinding.FieldName = 'fksj'
          Width = 139
        end
        object cxGridDBTableView1Column9: TcxGridDBColumn
          Caption = #22788#29702#20154
          DataBinding.FieldName = 'clrmc'
          Width = 60
        end
        object cxGridDBTableView1Column10: TcxGridDBColumn
          Caption = #22788#29702#26102#38388
          DataBinding.FieldName = 'clsj'
          Width = 127
        end
        object cxGridDBTableView1Column11: TcxGridDBColumn
          Caption = #38382#39064#29366#24577
          DataBinding.FieldName = 'clqk'
          Width = 87
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
end
