object frm_zybrqfcx: Tfrm_zybrqfcx
  Left = 146
  Top = 115
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #20303#38498#30149#20154#20986#38498#30331#35760#26597#35810#65306
  ClientHeight = 498
  ClientWidth = 1057
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 7
    Top = 8
    Width = 48
    Height = 16
    Caption = #21345#21495#65306
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object b_close: TBitBtn
    Left = 633
    Top = 3
    Width = 75
    Height = 25
    Caption = #36864#20986
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Kind = bkClose
  end
  object tmh: TEdit
    Left = 64
    Top = 4
    Width = 105
    Height = 24
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    MaxLength = 9
    TabOrder = 0
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 1057
    Height = 457
    Align = alClient
    AllowedOperations = []
    AutoFitColWidths = True
    DataGrouping.GroupLevels = <>
    DataSource = ds_cxdj
    EditActions = [geaCopyEh]
    Flat = True
    FooterColor = clWindow
    FooterFont.Charset = GB2312_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -16
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    TabOrder = 3
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'tmh'
        Footers = <>
        Title.Caption = #21345#21495
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'brxm'
        Footers = <>
        Title.Caption = #22995#21517
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'cyrq'
        Footers = <>
        Title.Caption = #30331#35760#26085#26399
        Width = 84
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'yjze'
        Footers = <>
        Title.Caption = #24635#39044#20132
        Width = 74
        WordWrap = True
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'zfy'
        Footers = <>
        Title.Caption = #24635#36153#29992
        Width = 59
        WordWrap = True
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'zfze'
        Footers = <>
        Title.Caption = #24635#33258#20184
        Width = 68
        WordWrap = True
      end
      item
        EditButtons = <>
        FieldName = 'cyczy'
        Footers = <>
        Title.Caption = #30331#35760#20154#21592
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'lbmc'
        Footers = <>
        Title.Caption = #36153#29992#31867#21035
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'brxb'
        Footers = <>
        Title.Caption = #24615#21035
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'ksmc'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #31185#23460
        Width = 60
      end
      item
        Alignment = taCenter
        EditButtons = <>
        FieldName = 'ryrq'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #20837#38498#26085#26399
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'jsrq'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #32467#31639#26085#26399
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'cyrq'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #20986#38498#26085#26399
        Width = 120
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1057
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    ExplicitWidth = 738
    object BitBtn1: TBitBtn
      Left = 548
      Top = 8
      Width = 75
      Height = 25
      Caption = #25171#21360
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 656
      Top = 8
      Width = 75
      Height = 25
      Caption = #36820#22238
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object ds_cxdj: TDataSource
    DataSet = sp_cxdj
    Left = 448
    Top = 6
  end
  object sp_cxdj: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zysf_cx_zybr_qf;1'
    Parameters = <>
    Left = 482
    Top = 6
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = [pghRowAutoStretch, pghFitingByColWidths, pghOptimalColWidths]
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 414
    Top = 6
  end
  object qry_pub: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 331
    Top = 8
  end
end
