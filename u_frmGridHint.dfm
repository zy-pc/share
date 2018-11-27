object frmGridHint: TfrmGridHint
  Left = 0
  Top = 0
  Caption = #26410#25910#36153#26410#20572#27490#20020#26102#21307#22065#25552#31034
  ClientHeight = 445
  ClientWidth = 723
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblHint: TLabel
    Left = 13
    Top = 10
    Width = 390
    Height = 18
    Caption = #27880#24847#65306#27492#30149#20154#26377#26410#25910#36153#26410#20572#27490#30340#20020#26102#21307#22065#65292#26159#21542#32487#32493#20986#38498#12290
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnOK: TBitBtn
    Left = 491
    Top = 7
    Width = 75
    Height = 25
    Caption = #26159
    ModalResult = 1
    TabOrder = 0
  end
  object btnCancel: TBitBtn
    Left = 587
    Top = 7
    Width = 75
    Height = 25
    Caption = #21542
    ModalResult = 2
    TabOrder = 1
  end
  object pnl1: TPanel
    Left = 0
    Top = 39
    Width = 723
    Height = 406
    Align = alBottom
    Caption = 'pnl1'
    TabOrder = 2
    object cxgrdHint: TcxGrid
      Left = 1
      Top = 1
      Width = 721
      Height = 404
      Align = alClient
      TabOrder = 0
      object tvHint: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dshint
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object lvHint: TcxGridLevel
        GridView = tvHint
      end
    end
  end
  object dshint: TDataSource
    DataSet = qryHint
    Left = 272
    Top = 112
  end
  object qryHint: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 192
    Top = 112
  end
end
