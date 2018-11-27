object Frm_BMSelect: TFrm_BMSelect
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Frm_BMSelect'
  ClientHeight = 296
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 15
  object spl1: TSplitter
    Left = 129
    Top = 0
    Height = 296
    ExplicitLeft = 152
    ExplicitTop = 104
    ExplicitHeight = 100
  end
  object tvBM: TTreeView
    Left = 0
    Top = 0
    Width = 129
    Height = 296
    Align = alLeft
    Indent = 19
    ReadOnly = True
    TabOrder = 0
    Visible = False
    OnChange = tvBMChange
    OnKeyPress = cxgrdbtblvwBMKeyPress
  end
  object cxgrd1: TcxGrid
    Left = 132
    Top = 0
    Width = 389
    Height = 296
    Align = alClient
    TabOrder = 1
    object cxgrdbtblvwBM: TcxGridDBTableView
      OnDblClick = cxgrdbtblvwBMDblClick
      OnKeyPress = cxgrdbtblvwBMKeyPress
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsBm
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnHorzSizing = False
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 40
      OnCustomDrawIndicatorCell = cxgrdbtblvwBMCustomDrawIndicatorCell
    end
    object cxgrdlvlGrid1Level1: TcxGridLevel
      GridView = cxgrdbtblvwBM
    end
  end
  object qryBM: TADOQuery
    CacheSize = 40
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      
        'Select  BM,MC,pym,SJ,isnull(MJ,0) as MJ  From LCLJ_BYCJYY Where ' +
        'XZ = 1')
    Left = 320
    Top = 48
  end
  object dsBm: TDataSource
    DataSet = qryBM
    Left = 288
    Top = 48
  end
  object dsJGXZ: TDataSource
    DataSet = qryJGXZ
    Left = 160
    Top = 40
  end
  object qryJGXZ: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select BM,MC from LCLJ_LJJGXZ')
    Left = 200
    Top = 40
  end
end
