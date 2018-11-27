object frm_gwyspf: Tfrm_gwyspf
  Left = 0
  Top = 0
  Caption = 'frm_gwyspf'
  ClientHeight = 384
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 384
    Height = 384
    Align = alClient
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 73
      Width = 382
      Height = 310
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = DataSource1
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Tahoma'
      FooterFont.Style = []
      ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      RowDetailPanel.Color = clBtnFace
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGridEh1CellClick
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 382
      Height = 72
      Align = alTop
      TabOrder = 1
      object Label1: TLabel
        Left = 104
        Top = 15
        Width = 31
        Height = 13
        Caption = 'Label1'
      end
      object Panel3: TPanel
        Left = 1
        Top = 41
        Width = 380
        Height = 30
        Align = alBottom
        TabOrder = 0
        object Label2: TLabel
          Left = 8
          Top = 12
          Width = 31
          Height = 13
          Caption = 'Label2'
        end
        object Label3: TLabel
          Left = 144
          Top = 12
          Width = 31
          Height = 13
          Caption = 'Label3'
        end
        object Label4: TLabel
          Left = 232
          Top = 12
          Width = 31
          Height = 13
          Caption = 'Label4'
        end
        object Label5: TLabel
          Left = 320
          Top = 12
          Width = 31
          Height = 13
          Caption = 'Label5'
        end
      end
      object Button1: TButton
        Left = 298
        Top = 2
        Width = 75
        Height = 37
        Caption = #20445#23384
        TabOrder = 1
        OnClick = Button1Click
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from zybl_hljld_pf where name is not null')
    Left = 264
    Top = 240
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    OnDataChange = DataSource1DataChange
    Left = 328
    Top = 240
  end
  object qry_bc: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 344
    Top = 120
  end
  object ADOQuery2: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 344
    Top = 200
  end
  object ADODataSet1: TADODataSet
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
  object ADOQuery3: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 296
    Top = 192
  end
end
