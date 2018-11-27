object frm_fygsys: Tfrm_fygsys
  Left = 0
  Top = 0
  Caption = #30149#20154#36153#29992#24402#23646#36131#20219#21307#29983
  ClientHeight = 206
  ClientWidth = 420
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -27
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 33
  object labe1: TLabel
    Left = 64
    Top = 8
    Width = 297
    Height = 33
    Caption = #35831#30830#35748#35813#27425#35745#36153#21307#29983#24402#23646
  end
  object Label5: TLabel
    Left = 10
    Top = 117
    Width = 60
    Height = 15
    Caption = #35199#33647#33647#25151
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label8: TLabel
    Left = 223
    Top = 117
    Width = 45
    Height = 15
    Caption = #20013#33647#25151
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label1: TLabel
    Left = 24
    Top = 91
    Width = 300
    Height = 18
    Caption = #29616#22312#26159#22812#38388#25910#36153#26102#38388#65292#35831#36873#25321#30456#24212#30340#21457#33647#33647#25151
    Font.Charset = GB2312_CHARSET
    Font.Color = clRed
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 157
    Top = 144
    Width = 75
    Height = 25
    Caption = #30830#23450
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 238
    Top = 144
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
  object dbComboBox1: TComboBox
    Left = 104
    Top = 47
    Width = 233
    Height = 41
    Style = csDropDownList
    Ctl3D = False
    DragMode = dmAutomatic
    ItemHeight = 0
    ParentCtl3D = False
    TabOrder = 2
  end
  object ComboBox1: TComboBox
    Left = 76
    Top = 115
    Width = 135
    Height = 23
    Style = csDropDownList
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ItemHeight = 0
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  object ComboBox2: TComboBox
    Left = 277
    Top = 115
    Width = 136
    Height = 23
    Style = csDropDownList
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ItemHeight = 0
    ParentFont = False
    TabOrder = 4
    Visible = False
  end
  object ad_ysdm: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 
      'select dm+'#39'_'#39'+mc mc  from sys_czy a,sys_bqzyfl b'#13#10' where a.ksdm=' +
      'b.bqzydm and a.txbz=0 and'#13#10' b.bqdm=:bqdm and a.ksdm=:ksdm and ys' +
      'bz=1'#13#10'union all'#13#10'select :zgysmc'
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
        Name = 'zgysmc'
        Size = 20
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
