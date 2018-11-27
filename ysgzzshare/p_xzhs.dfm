object frm_xzhs: Tfrm_xzhs
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = #36873#25321#25191#34892#25252#22763
  ClientHeight = 188
  ClientWidth = 459
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 15
  object labe1: TLabel
    Left = 117
    Top = 8
    Width = 200
    Height = 20
    Caption = #35831#30830#35748#35813#27425#21307#22065#25191#34892#32773
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object dbComboBox1: TComboBox
    Left = 104
    Top = 47
    Width = 233
    Height = 23
    Style = csDropDownList
    Ctl3D = False
    DragMode = dmAutomatic
    ItemHeight = 0
    ParentCtl3D = False
    TabOrder = 0
  end
  object BitBtn2: TBitBtn
    Left = 242
    Top = 104
    Width = 75
    Height = 25
    Caption = #25918#24323
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn1: TBitBtn
    Left = 117
    Top = 104
    Width = 75
    Height = 25
    Caption = #30830#23450
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object ad_ysdm: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 
      'select dm+'#39'_'#39'+mc mc  from sys_czy a,sys_bqzyfl b'#13#10' where a.ksdm=' +
      'b.bqzydm and a.txbz=0 and'#13#10' b.bqdm=:bqdm and a.ksdm=:ksdm and a.' +
      'sybz=1'#13#10'union '#13#10'select a.dm+'#39'_'#39'+a.mc mc  from sys_czy a,sys_bqzy' +
      'fl b,sys_czy_ks c'#13#10' where a.dm=c.czydm and c.ksdm=b.bqzydm and a' +
      '.txbz=0 and'#13#10' b.bqdm=:bqdm1 and c.ksdm=:ksdm1 and a.sybz=1'
    Parameters = <
      item
        Name = 'bqdm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'ksdm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'bqdm1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'ksdm1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    Left = 360
    Top = 32
  end
  object ds_ysdm: TDataSource
    DataSet = ad_ysdm
    Left = 360
    Top = 80
  end
end
