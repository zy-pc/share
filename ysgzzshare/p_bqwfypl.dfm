object frm_bqwfypl: Tfrm_bqwfypl
  Left = 0
  Top = 0
  Caption = #24403#21069#30149#20154#26410#21457#33647#25209#37327
  ClientHeight = 467
  ClientWidth = 718
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 718
    Height = 217
    Align = alTop
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 716
      Height = 215
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds_plh
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = #26410#21457#33647#25209#37327#21495
          DataBinding.FieldName = 'pldh'
          HeaderAlignmentHorz = taCenter
          Width = 267
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = #25209#37327#29983#25104#26102#38388
          DataBinding.FieldName = 'kssj'
          HeaderAlignmentHorz = taCenter
          Width = 197
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = #33647#25151#21517#31216
          DataBinding.FieldName = 'yfmc'
          HeaderAlignmentHorz = taCenter
          Width = 133
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 217
    Width = 718
    Height = 208
    Align = alTop
    TabOrder = 1
    object cxGrid2: TcxGrid
      Left = 1
      Top = 1
      Width = 716
      Height = 206
      Align = alClient
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCellDblClick = cxGridDBTableView1CellDblClick
        DataController.DataSource = DS_mx
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxGridDBTableView1Column1: TcxGridDBColumn
          Caption = #33647#21697#21517#31216
          DataBinding.FieldName = 'ypmc'
          HeaderAlignmentHorz = taCenter
          Width = 180
        end
        object cxGridDBTableView1Column2: TcxGridDBColumn
          Caption = #35268#26684
          DataBinding.FieldName = 'ypgg'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBTableView1Column3: TcxGridDBColumn
          Caption = #25968#37327
          DataBinding.FieldName = 'ypsl'
          HeaderAlignmentHorz = taCenter
          Width = 50
        end
        object cxGridDBTableView1Column4: TcxGridDBColumn
          Caption = #29992#33647#36884#24452
          DataBinding.FieldName = 'yytj'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1Column5: TcxGridDBColumn
          Caption = #33647#21697#25209#21495
          DataBinding.FieldName = 'ypph'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1Column6: TcxGridDBColumn
          Caption = #33647#21697#25928#26399
          DataBinding.FieldName = 'ypxq'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1Column7: TcxGridDBColumn
          Caption = #20215#26684
          DataBinding.FieldName = 'lsj'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 80
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 425
    Width = 718
    Height = 42
    Align = alClient
    TabOrder = 2
    object Button1: TButton
      Left = 336
      Top = 6
      Width = 75
      Height = 25
      Caption = #25918#24323
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 200
      Top = 6
      Width = 75
      Height = 25
      Caption = #30830#23450
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object qry_plh: TADOQuery
    Connection = DM_data.ado_mydata
    AfterScroll = qry_plhAfterScroll
    Parameters = <>
    Left = 176
    Top = 136
  end
  object ds_plh: TDataSource
    DataSet = qry_plh
    Left = 240
    Top = 128
  end
  object qry_ypmx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 192
    Top = 352
  end
  object ds_ypmx: TDataSource
    DataSet = qry_ypmx
    Left = 256
    Top = 344
  end
  object qry_mx: TADOQuery
    Connection = DM_data.ado_mydata
    AfterScroll = qry_mxAfterScroll
    Parameters = <>
    Left = 192
    Top = 304
  end
  object DS_mx: TDataSource
    DataSet = qry_mx
    Left = 280
    Top = 296
  end
end
