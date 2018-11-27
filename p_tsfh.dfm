object frm_tsfh: Tfrm_tsfh
  Left = 0
  Top = 0
  Caption = #29305#27530#31526#21495
  ClientHeight = 366
  ClientWidth = 615
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TntSpeedButton1: TTntSpeedButton
    Left = 272
    Top = 56
    Width = 23
    Height = 22
    Caption = #12294
  end
  object TntStringGrid1: TTntStringGrid
    Left = 0
    Top = 41
    Width = 615
    Height = 325
    Align = alClient
    BevelEdges = []
    BevelInner = bvNone
    ColCount = 14
    DefaultColWidth = 40
    FixedCols = 0
    RowCount = 30
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #23435#20307
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
    ParentFont = False
    TabOrder = 0
    OnClick = TntStringGrid1Click
    OnDblClick = TntStringGrid1DblClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 615
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 272
      Top = 10
      Width = 49
      Height = 25
      Caption = #25554#20837
      OnClick = SpeedButton1Click
    end
    object BitBtn1: TBitBtn
      Left = 520
      Top = 10
      Width = 75
      Height = 25
      Caption = #36864#20986
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object TntEdit1: TTntEdit
      Left = 16
      Top = 8
      Width = 121
      Height = 27
      TabOrder = 1
    end
  end
  object ADODataSet1: TADODataSet
    Connection = DM_data.ado_mydata
    CommandText = 'select * from sys_tsfh'
    Parameters = <>
    Left = 144
    Top = 24
  end
end
