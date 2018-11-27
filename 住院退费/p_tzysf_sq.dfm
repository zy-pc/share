object Frm_tzysf_sq: TFrm_tzysf_sq
  Left = 439
  Top = 329
  Caption = #36864#36153#30003#35831#21015#34920
  ClientHeight = 395
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 793
    Height = 395
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      PopupMenu = PopupMenu1
      NavigatorButtons.ConfirmDelete = False
      OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Column8: TcxGridDBColumn
        Caption = #20303#38498#21495
        DataBinding.FieldName = 'tmh'
        Options.Editing = False
        Options.Moving = False
        Width = 79
      end
      object cxGrid1DBTableView1Column9: TcxGridDBColumn
        Caption = #22995#21517
        DataBinding.FieldName = 'brxm'
        Options.Editing = False
        Options.Moving = False
        Width = 81
      end
      object cxGrid1DBTableView1Column10: TcxGridDBColumn
        Caption = #31185#23460
        DataBinding.FieldName = 'bqmc'
        Options.Editing = False
        Options.Moving = False
        Width = 79
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #29366#24577
        DataBinding.FieldName = 'zt'
        Options.Moving = False
        Width = 51
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #36153#29992#21517#31216
        DataBinding.FieldName = 'fymc'
        Width = 123
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = #25968#37327
        DataBinding.FieldName = 'Fysl'
        Options.Filtering = False
        Width = 35
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = #30003#35831#20154
        DataBinding.FieldName = 'SQr'
        Width = 65
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = #30003#35831#26102#38388
        DataBinding.FieldName = 'sqrq'
        Width = 83
      end
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = #23457#25209#20154
        DataBinding.FieldName = 'pzr'
        Width = 71
      end
      object cxGrid1DBTableView1Column7: TcxGridDBColumn
        Caption = #23457#25209#26102#38388
        DataBinding.FieldName = 'pzrq'
        Width = 83
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 104
    Top = 72
  end
  object ADOQuery1: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 232
    Top = 128
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 472
    Top = 64
    object N2: TMenuItem
      Caption = #23457#26680#36890#36807
      OnClick = N2Click
    end
    object N1: TMenuItem
      Caption = #20316#24223
      OnClick = N1Click
    end
  end
  object sp_in_tzysf: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_in_tzysf_cwk'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
      end
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
      end
      item
        Name = '@fydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
      end
      item
        Name = '@fysl'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@tfje'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 12
      end
      item
        Name = '@zfje'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 12
      end
      item
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 100
      end>
    Left = 280
    Top = 64
  end
end
