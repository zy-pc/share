object frm_lcljsjtj: Tfrm_lcljsjtj
  Left = 0
  Top = 0
  Caption = #20020#24202#36335#24452#31185#23460#27719#24635#25968#25454#32479#35745
  ClientHeight = 486
  ClientWidth = 1072
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #26032#23435#20307
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1072
    Height = 486
    Align = alClient
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 1070
      Height = 484
      Align = alClient
      Caption = #31185#23460#27719#24635
      TabOrder = 0
      object Panel2: TPanel
        Left = 2
        Top = 17
        Width = 1066
        Height = 41
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 6
          Top = 11
          Width = 64
          Height = 15
          Caption = #24320#22987#26085#26399
        end
        object Label2: TLabel
          Left = 215
          Top = 11
          Width = 64
          Height = 15
          Caption = #32467#26463#26085#26399
        end
        object DateTimePicker1: TDateTimePicker
          Left = 81
          Top = 8
          Width = 120
          Height = 23
          Date = 41421.405307754630000000
          Time = 41421.405307754630000000
          TabOrder = 0
        end
        object DateTimePicker2: TDateTimePicker
          Left = 288
          Top = 8
          Width = 120
          Height = 23
          Date = 41421.405307754630000000
          Time = 41421.405307754630000000
          TabOrder = 1
        end
        object Button1: TButton
          Left = 440
          Top = 10
          Width = 75
          Height = 25
          Caption = #32479#35745
          TabOrder = 2
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 537
          Top = 8
          Width = 75
          Height = 25
          Caption = #23548#20986
          TabOrder = 3
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 633
          Top = 8
          Width = 75
          Height = 25
          Caption = #36864#20986
          TabOrder = 4
          OnClick = Button3Click
        end
      end
      object Panel3: TPanel
        Left = 2
        Top = 58
        Width = 1066
        Height = 424
        Align = alClient
        TabOrder = 1
        object cxGrid1: TcxGrid
          Left = 1
          Top = 1
          Width = 1064
          Height = 422
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 0
          ExplicitTop = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ds_lcljtj
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
              Caption = #30149#21306
              DataBinding.FieldName = 'bqmc'
              Width = 137
            end
            object cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn
              Caption = #36827#20837#36335#24452#20154#25968
              DataBinding.FieldName = 'jrljrs'
              Width = 125
            end
            object cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn
              Caption = #23436#25104#36335#24452#25968
              DataBinding.FieldName = 'wcrs'
              Width = 124
            end
            object cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn
              Caption = #36335#24452#27491#24615#21464#24322#25968
              DataBinding.FieldName = 'byrs_z'
              Width = 155
            end
            object cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn
              Caption = #36335#24452#36127#24615#21464#24322#25968
              DataBinding.FieldName = 'byrs_f'
              Width = 140
            end
            object cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn
              Caption = #36864#20986#36335#24452#25968
              DataBinding.FieldName = 'tcljs'
              Width = 141
            end
            object cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn
              Caption = #24050#36827#20837#26410#23436#25104#20154#25968
              DataBinding.FieldName = 'jrljwwcrs'
              Width = 121
            end
            object cxgrdbclmnGrid1DBTableView1Column8: TcxGridDBColumn
              Caption = #24212#20837#36335#24452#30149#20154#25968
              DataBinding.FieldName = 'yrljrs'
              Width = 146
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
    end
  end
  object sp_lcljtj: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 120
    ProcedureName = 'lclj_cx_ljhztj'
    Parameters = <>
    Left = 368
    Top = 176
  end
  object ds_lcljtj: TDataSource
    DataSet = sp_lcljtj
    Left = 368
    Top = 216
  end
end
