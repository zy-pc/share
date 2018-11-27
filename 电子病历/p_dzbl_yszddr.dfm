object frm_dzbl_yszddr: Tfrm_dzbl_yszddr
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #30005#23376#30149#21382#20803#32032#24405#20837
  ClientHeight = 495
  ClientWidth = 811
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 265
    Height = 454
    Align = alLeft
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 263
      Height = 452
      Align = alClient
      Caption = #20803#32032#36873#25321
      TabOrder = 0
      object DBGridEh1: TDBGridEh
        Left = 2
        Top = 17
        Width = 259
        Height = 433
        Align = alClient
        DataGrouping.GroupLevels = <>
        DataSource = ds_cx
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        RowDetailPanel.Color = clBtnFace
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        OnDblClick = DBGridEh1DblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ysmc'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #20803#32032#21517#31216
            Width = 147
          end
          item
            EditButtons = <>
            FieldName = 'sflr'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #26159#21542#24405#20837
            Width = 73
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 265
    Top = 41
    Width = 546
    Height = 454
    Align = alClient
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 811
    Height = 41
    Align = alTop
    TabOrder = 2
  end
  object qry_cx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from sys_ksdm')
    Left = 47
    Top = 218
  end
  object ds_cx: TDataSource
    DataSet = qry_cx
    Left = 87
    Top = 218
  end
end
