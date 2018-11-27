object frm_jyjscx: Tfrm_jyjscx
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #26816#39564#25298#25910#26597#35810
  ClientHeight = 478
  ClientWidth = 1107
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
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
    Width = 1107
    Height = 44
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 14
      Top = 14
      Width = 32
      Height = 15
      Caption = #26085#26399
    end
    object dtp_zxsj: TDateTimePicker
      Left = 56
      Top = 10
      Width = 105
      Height = 23
      Date = 40564.658693032400000000
      Time = 40564.658693032400000000
      TabOrder = 0
    end
    object Button1: TButton
      Left = 187
      Top = 9
      Width = 75
      Height = 25
      Caption = #26597#35810
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 515
      Top = 9
      Width = 75
      Height = 25
      Caption = #36864#20986
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 44
    Width = 1107
    Height = 434
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 1105
      Height = 432
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
        DataController.DataSource = ds_cx_jsyb
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = #30149#20154#21345#21495
          DataBinding.FieldName = 'tmh'
          Width = 114
        end
        object cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = #30149#20154#22995#21517
          DataBinding.FieldName = 'brxm'
          Width = 76
        end
        object cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = #24615#21035
          DataBinding.FieldName = 'brxb'
          Width = 53
        end
        object cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn
          Caption = #24180#40836
          DataBinding.FieldName = 'brnl'
          Width = 81
        end
        object cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn
          Caption = #24202#21495
          DataBinding.FieldName = 'bch'
        end
        object cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn
          Caption = #29366#24577
          DataBinding.FieldName = 'zt'
          Width = 60
        end
        object cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn
          Caption = #26679#26412
          DataBinding.FieldName = 'ybmc'
          Width = 73
        end
        object cxgrdbclmnGrid1DBTableView1Column11: TcxGridDBColumn
          Caption = #31614#25910'/'#25298#25910#26102#38388
          DataBinding.FieldName = 'jsrq'
          Width = 114
        end
        object cxgrdbclmnGrid1DBTableView1Column12: TcxGridDBColumn
          Caption = #31614#25910'/'#25298#25910#20154
          DataBinding.FieldName = 'qsr'
          Width = 98
        end
        object cxgrdbclmnGrid1DBTableView1Column8: TcxGridDBColumn
          Caption = #20998#32452#21495
          DataBinding.FieldName = 'fzbh'
          Width = 103
        end
        object cxgrdbclmnGrid1DBTableView1Column9: TcxGridDBColumn
          Caption = #25298#25910#21407#22240
          DataBinding.FieldName = 'jsyy'
          Width = 163
        end
        object cxgrdbclmnGrid1DBTableView1Column10: TcxGridDBColumn
          Caption = #22788#29702#24847#35265
          DataBinding.FieldName = 'clyj'
          Width = 155
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object sp_cx_jsyb: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'dzbl_cx_jsyb'
    Parameters = <>
    Left = 256
    Top = 192
  end
  object ds_cx_jsyb: TDataSource
    DataSet = sp_cx_jsyb
    Left = 296
    Top = 192
  end
end
