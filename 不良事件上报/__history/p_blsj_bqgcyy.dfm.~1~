object frm_blsj_bqgcyy: Tfrm_blsj_bqgcyy
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #19981#33391#20107#20214#27169#26495#35789#24211
  ClientHeight = 345
  ClientWidth = 848
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 848
    Height = 345
    Align = alClient
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 129
      Top = 1
      Width = 718
      Height = 343
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = ds_yygf
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Tahoma'
      FooterFont.Style = []
      ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ReadOnly = True
      RowDetailPanel.Color = clBtnFace
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGridEh1DblClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'txxm'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #20851#38190#35789
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'yy'
          Footers = <>
          Title.Caption = #20869#23481
          Width = 583
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 128
      Height = 343
      Align = alLeft
      TabOrder = 1
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 126
        Height = 41
        Align = alTop
        TabOrder = 0
        object RadioButton1: TRadioButton
          Left = 7
          Top = 13
          Width = 50
          Height = 17
          Caption = #20840#31185
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = RadioButton1Click
        end
        object RadioButton2: TRadioButton
          Left = 63
          Top = 13
          Width = 120
          Height = 17
          Caption = #20840#38498
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = RadioButton2Click
        end
      end
      object TreeView1: TTreeView
        Left = 1
        Top = 42
        Width = 126
        Height = 300
        Align = alClient
        Indent = 19
        ReadOnly = True
        TabOrder = 1
        OnChange = TreeView1Change
      end
    end
  end
  object qry_yygf: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from blsj_ctmb where sx=2 and 1=2')
    Left = 512
    Top = 48
  end
  object ds_yygf: TDataSource
    DataSet = qry_yygf
    Left = 568
    Top = 72
  end
  object ADOQuery1: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 304
    Top = 160
  end
end
