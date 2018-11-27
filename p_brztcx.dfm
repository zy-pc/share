object frm_brztcx: Tfrm_brztcx
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #30149#20154#29366#24577#26597#35810
  ClientHeight = 439
  ClientWidth = 831
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 831
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 23
      Top = 16
      Width = 105
      Height = 15
      Caption = #35831#36873#25321#26597#35810#31867#21035
    end
    object ComboBox1: TComboBox
      Left = 136
      Top = 10
      Width = 201
      Height = 23
      ItemHeight = 15
      TabOrder = 0
      Text = #25252#29702#32423#21035
      OnChange = ComboBox1Change
      Items.Strings = (
        #25252#29702#32423#21035
        #30149#21361#20154#25968
        #21508#31185#23460#20303'ICU'#20154#25968
        #24403#26085#25163#26415#20154#25968
        #30149#37325#20154#25968)
    end
    object Button1: TButton
      Left = 527
      Top = 9
      Width = 75
      Height = 25
      Caption = #26597#35810
      TabOrder = 1
      OnClick = Button1Click
    end
    object ComboBox2: TComboBox
      Left = 353
      Top = 10
      Width = 145
      Height = 23
      ItemHeight = 15
      TabOrder = 2
    end
    object Button2: TButton
      Left = 623
      Top = 9
      Width = 75
      Height = 25
      Caption = #36864#20986
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 831
    Height = 398
    Align = alClient
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 409
      Top = 1
      Width = 408
      Height = 396
      Align = alLeft
      Caption = #30149#20154#20449#24687
      TabOrder = 0
      object cxGrid2: TcxGrid
        Left = 2
        Top = 17
        Width = 404
        Height = 377
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_cx_brzt_mx
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = #26465#30721#21495
            DataBinding.FieldName = 'tmh'
            Width = 95
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = #30149#20154#22995#21517
            DataBinding.FieldName = 'brxm'
            Width = 80
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = #24615#21035
            DataBinding.FieldName = 'brxb'
            Width = 53
          end
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = #24180#40836
            DataBinding.FieldName = 'brnl'
            Width = 70
          end
          object cxGridDBTableView1Column2: TcxGridDBColumn
            Caption = #30149#24202#21495
            DataBinding.FieldName = 'bch'
            Width = 83
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 408
      Height = 396
      Align = alLeft
      Caption = #20154#21592#31185#23460#20998#24067
      TabOrder = 1
      object cxGrid1: TcxGrid
        Left = 2
        Top = 17
        Width = 404
        Height = 377
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCellDblClick = cxGrid1DBTableView1CellDblClick
          DataController.DataSource = ds_cx_brzt
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = #31185#23460#21517#31216
            DataBinding.FieldName = 'ksmc'
            Width = 123
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            Caption = #26597#35810#39033#30446
            DataBinding.FieldName = 'xmmc'
            Width = 128
          end
          object cxGrid1DBTableView1Column3: TcxGridDBColumn
            Caption = #20154#25968
            DataBinding.FieldName = 'rs'
            Width = 111
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object sp_cx_brzt: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'bqgl_cx_brzt'
    Parameters = <>
    Left = 272
    Top = 168
  end
  object ds_cx_brzt: TDataSource
    DataSet = sp_cx_brzt
    Left = 272
    Top = 216
  end
  object ds_cx_brzt_mx: TDataSource
    DataSet = sp_cx_brzt_mx
    Left = 536
    Top = 208
  end
  object sp_cx_brzt_mx: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'bqgl_cx_brzt_mx'
    Parameters = <>
    Left = 536
    Top = 160
  end
end
