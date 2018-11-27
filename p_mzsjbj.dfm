object Frm_mzsjBjdr: TFrm_mzsjBjdr
  Left = 413
  Top = 325
  Caption = #38376#35786#36153#29992#26631#35760#23548#20837#20303#38498
  ClientHeight = 407
  ClientWidth = 776
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 41
    Width = 776
    Height = 366
    Align = alClient
    DataGrouping.GroupLevels = <>
    DataSource = ds_mzmx
    Flat = True
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    RowDetailPanel.Color = clBtnFace
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 776
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 11
      Width = 36
      Height = 13
      Caption = #38376#35786#21495
    end
    object Edit1: TEdit
      Left = 80
      Top = 8
      Width = 121
      Height = 21
      Hint = #36755#20837#38376#35786#21495#25110#30149#20154#22995#21517#26816#32034
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = 'Edit1'
      OnKeyDown = Edit1KeyDown
    end
    object Button1: TButton
      Left = 207
      Top = 6
      Width = 75
      Height = 25
      Caption = #26597#35810
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 656
      Top = 6
      Width = 97
      Height = 25
      Caption = #23548#20837#36873#20013#36153#29992
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 80
    Top = 37
    Width = 393
    Height = 169
    DataGrouping.GroupLevels = <>
    DataSource = ds_cxbr
    Flat = True
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDblClickOptimizeColWidth, dghDialogFind, dghColumnResize, dghColumnMove]
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnKeyDown = DBGridEh1KeyDown
    Columns = <
      item
        EditButtons = <>
        FieldName = 'tmh'
        Footers = <>
        Title.Caption = #38376#35786#21495
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'brxm'
        Footers = <>
        Title.Caption = #22995#21517
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'brxb'
        Footers = <>
        Title.Caption = #24615#21035
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'jzrq'
        Footers = <>
        Title.Caption = #23601#35786#26085#26399
        Width = 95
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ds_cxbr: TDataSource
    DataSet = qry_cxbr
    Left = 160
    Top = 24
  end
  object qry_cxbr: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 120
    Top = 24
  end
  object ds_mzmx: TDataSource
    DataSet = qry_mzmx
    Left = 568
    Top = 168
  end
  object qry_mzmx: TADOQuery
    Connection = DM_data.ado_mydata
    AfterOpen = qry_mzmxAfterOpen
    Parameters = <>
    Left = 600
    Top = 168
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 672
    Top = 24
  end
end
