object Result_frm: TResult_frm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #26597#35810#32467#26524#39044#35272
  ClientHeight = 617
  ClientWidth = 843
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 15
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 843
    Height = 45
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object btnPrView: TBitBtn
      Left = 20
      Top = 7
      Width = 75
      Height = 29
      Caption = #25253#34920#39044#35272
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnPrViewClick
      Layout = blGlyphTop
    end
    object btnDesign: TBitBtn
      Left = 108
      Top = 7
      Width = 75
      Height = 29
      Caption = #25253#34920#35774#35745
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnDesignClick
      Layout = blGlyphTop
    end
    object btnPrint: TBitBtn
      Left = 196
      Top = 7
      Width = 75
      Height = 29
      Caption = #25253#34920#25171#21360
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnPrintClick
      Layout = blGlyphTop
    end
  end
  object cxgrdResult: TcxGrid
    Left = 0
    Top = 45
    Width = 843
    Height = 572
    Align = alClient
    TabOrder = 1
    object cxgrdbtblvwResult: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsResult
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnMoving = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
    end
    object cxgrdlvlGrid1Level1: TcxGridLevel
      GridView = cxgrdbtblvwResult
    end
  end
  object dsResult: TDataSource
    DataSet = ADOdsResult
    Left = 80
    Top = 152
  end
  object ADOdsResult: TADODataSet
    Parameters = <>
    Left = 96
    Top = 232
  end
end
