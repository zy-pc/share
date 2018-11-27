object frm_blsj_gwyspf: Tfrm_blsj_gwyspf
  Left = 0
  Top = 0
  Caption = '      '
  ClientHeight = 384
  ClientWidth = 465
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 465
    Height = 384
    Align = alClient
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 41
      Width = 463
      Height = 342
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = ds_pf
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
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 463
      Height = 40
      Align = alTop
      TabOrder = 1
      object Label1: TLabel
        Left = 104
        Top = 13
        Width = 24
        Height = 18
        Caption = '111'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object ds_pf: TDataSource
    DataSet = ado_pf
    Left = 288
    Top = 136
  end
  object ado_pf: TADODataSet
    Connection = DM_data.ado_mydata
    CommandText = 'select * from zybl_hljld_pf where zyh=:zyh'
    Parameters = <
      item
        Name = 'zyh'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    Left = 256
    Top = 136
  end
  object qry_bc: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 344
    Top = 136
  end
end
