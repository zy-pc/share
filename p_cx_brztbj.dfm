object frm_cx_brztbj: Tfrm_cx_brztbj
  Left = 0
  Top = 0
  Caption = #27599#26085#30149#20154#29366#24577#26597#35810
  ClientHeight = 434
  ClientWidth = 843
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
    Width = 843
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 22
      Top = 13
      Width = 60
      Height = 15
      Caption = #24320#22987#26085#26399
    end
    object Label2: TLabel
      Left = 262
      Top = 13
      Width = 60
      Height = 15
      Caption = #32467#26463#26085#26399
    end
    object DateTimePicker1: TDateTimePicker
      Left = 88
      Top = 8
      Width = 161
      Height = 23
      Date = 41040.488778206020000000
      Time = 41040.488778206020000000
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 328
      Top = 8
      Width = 161
      Height = 23
      Date = 41040.488778206020000000
      Time = 41040.488778206020000000
      TabOrder = 1
    end
    object Button1: TButton
      Left = 520
      Top = 7
      Width = 75
      Height = 25
      Caption = #26597#35810
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 616
      Top = 7
      Width = 75
      Height = 25
      Caption = #36820#22238
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 843
    Height = 393
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 841
      Height = 391
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = #20998#31185#23460#27719#24635#32479#35745'('#21452#20987#26597#30475#30149#20154#26126#32454')'
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 833
          Height = 360
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnCellDblClick = cxGrid1DBTableView1CellDblClick
            DataController.DataSource = ds_cx_hz
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Editing = False
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = #30149#20154#26126#32454
        ImageIndex = 1
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 833
          Height = 360
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ds_cx_mx
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cxGridDBTableView1Column1: TcxGridDBColumn
              Caption = #22995#21517
              DataBinding.FieldName = 'brxm'
              Width = 83
            end
            object cxGridDBTableView1Column2: TcxGridDBColumn
              Caption = #26465#30721#21495
              DataBinding.FieldName = 'tmh'
              Width = 92
            end
            object cxGridDBTableView1Column3: TcxGridDBColumn
              Caption = #24202#20301#21495
              DataBinding.FieldName = 'bch'
              Width = 68
            end
            object cxGridDBTableView1Column4: TcxGridDBColumn
              Caption = #29366#24577
              DataBinding.FieldName = 'ztmc'
              Width = 73
            end
            object cxGridDBTableView1Column5: TcxGridDBColumn
              Caption = #35760#24405#26102#38388
              DataBinding.FieldName = 'jlsj'
              Width = 89
            end
            object cxGridDBTableView1Column6: TcxGridDBColumn
              Caption = #31185#23460#21517#31216
              DataBinding.FieldName = 'ksmc'
              Width = 83
            end
            object cxGridDBTableView1Column7: TcxGridDBColumn
              Caption = #20303#38498#24635#36153#29992
              DataBinding.FieldName = 'zfy'
              Width = 94
            end
            object cxGridDBTableView1Column8: TcxGridDBColumn
              Caption = #20837#38498#35786#26029
              DataBinding.FieldName = 'ryzd'
              Width = 104
            end
            object cxGridDBTableView1Column9: TcxGridDBColumn
              Caption = #20837#38498#26085#26399
              DataBinding.FieldName = 'ryrq'
              Width = 109
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 344
    Top = 192
  end
  object sp_cx_hz: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'yzcx_wzbrtj_day_hz'
    Parameters = <>
    Left = 392
    Top = 192
  end
  object ds_cx_hz: TDataSource
    DataSet = sp_cx_hz
    Left = 464
    Top = 192
  end
  object sp_cx_mx: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'yzcx_wzbrtj_day'
    Parameters = <>
    Left = 392
    Top = 280
  end
  object ds_cx_mx: TDataSource
    DataSet = sp_cx_mx
    Left = 464
    Top = 280
  end
end
