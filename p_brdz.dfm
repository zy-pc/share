object frm_brdz: Tfrm_brdz
  Left = 277
  Top = 165
  BorderIcons = [biSystemMenu, biHelp]
  Caption = #30149#20154#22320#22336
  ClientHeight = 438
  ClientWidth = 422
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 422
    Height = 397
    Align = alClient
    DataGrouping.GroupLevels = <>
    DataSource = ds_brdz
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'dm'
        Footers = <>
        Title.Caption = #20195#30721
      end
      item
        EditButtons = <>
        FieldName = 'mc'
        Footers = <>
        Title.Caption = #22320#22336
        Width = 264
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 422
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 10
      Width = 60
      Height = 15
      Caption = #30149#20154#22320#22336
    end
    object brdz: TEdit
      Left = 88
      Top = 4
      Width = 121
      Height = 23
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 0
      OnKeyPress = brdzKeyPress
    end
    object Button2: TButton
      Left = 359
      Top = 7
      Width = 55
      Height = 25
      Caption = #36864#20986
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object qry_brdz: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from sys_brdz')
    Left = 144
    Top = 88
  end
  object ds_brdz: TDataSource
    DataSet = qry_brdz
    Left = 96
    Top = 88
  end
end
