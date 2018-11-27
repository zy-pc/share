object frm_yxsq: Tfrm_yxsq
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #29992#34880#30003#35831
  ClientHeight = 226
  ClientWidth = 773
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 773
    Height = 226
    Align = alClient
    BorderStyle = bsSingle
    TabOrder = 0
    object lblsqdh: TLabel
      Left = 16
      Top = 8
      Width = 91
      Height = 15
      Caption = #30003' '#35831' '#21333#21495#65306
    end
    object lblzyh: TLabel
      Left = 248
      Top = 8
      Width = 76
      Height = 15
      Caption = #20303' '#38498' '#21495#65306
    end
    object lblid: TLabel
      Left = 509
      Top = 8
      Width = 70
      Height = 15
      Caption = 'ID   '#21495#65306
    end
    object lblsxzxm: TLabel
      Left = 16
      Top = 48
      Width = 90
      Height = 15
      Caption = #21463#34880#32773#22995#21517#65306
    end
    object lblxb: TLabel
      Left = 248
      Top = 48
      Width = 77
      Height = 15
      Caption = #24615'    '#21035#65306
    end
    object lblcsny: TLabel
      Left = 504
      Top = 48
      Width = 75
      Height = 15
      Caption = #20986#29983#24180#26376#65306
    end
    object lblsxzxx: TLabel
      Left = 16
      Top = 88
      Width = 90
      Height = 15
      Caption = #21463#34880#32773#34880#22411#65306
    end
    object lblRHxx: TLabel
      Left = 248
      Top = 88
      Width = 77
      Height = 15
      Caption = 'RH  '#34880#22411#65306
    end
    object lblsxzl: TLabel
      Left = 504
      Top = 88
      Width = 75
      Height = 15
      Caption = #36755#34880#24635#37327#65306
    end
    object lblsqcfx: TLabel
      Left = 16
      Top = 128
      Width = 83
      Height = 15
      Caption = #30003#35831#25104#20221#34880':'
    end
    object lblsxdw: TLabel
      Left = 250
      Top = 128
      Width = 75
      Height = 15
      Caption = #36755#34880#21333#20301#65306
    end
    object lblydsxsj: TLabel
      Left = 8
      Top = 168
      Width = 98
      Height = 15
      Caption = #39044#23450#36755#34880#26102#38388':'
    end
    object lblch: TLabel
      Left = 502
      Top = 128
      Width = 77
      Height = 15
      Caption = #24202'    '#21495#65306
    end
    object edtsqdh: TEdit
      Left = 113
      Top = 5
      Width = 121
      Height = 23
      ReadOnly = True
      TabOrder = 0
      OnKeyPress = edtsqdhKeyPress
    end
    object edtzyh: TEdit
      Left = 346
      Top = 5
      Width = 121
      Height = 23
      ReadOnly = True
      TabOrder = 1
      OnKeyPress = edtzyhKeyPress
    end
    object edtidh: TEdit
      Left = 596
      Top = 5
      Width = 141
      Height = 23
      ReadOnly = True
      TabOrder = 2
      OnKeyPress = edtidhKeyPress
    end
    object edtsxzxm: TEdit
      Left = 112
      Top = 45
      Width = 121
      Height = 23
      ReadOnly = True
      TabOrder = 3
      OnKeyPress = edtsxzxmKeyPress
    end
    object edtxb: TEdit
      Left = 346
      Top = 45
      Width = 121
      Height = 23
      ReadOnly = True
      TabOrder = 4
      OnKeyPress = edtxbKeyPress
    end
    object edtcsny: TEdit
      Left = 596
      Top = 45
      Width = 141
      Height = 23
      ReadOnly = True
      TabOrder = 5
      OnKeyPress = edtcsnyKeyPress
    end
    object cbbxx: TComboBox
      Left = 112
      Top = 82
      Width = 121
      Height = 23
      Style = csDropDownList
      ItemHeight = 15
      TabOrder = 6
      OnKeyPress = cbbxxKeyPress
      Items.Strings = (
        'A'
        'B'
        'O'
        'AB'
        #19981#35814)
    end
    object cbbrhxx: TComboBox
      Left = 346
      Top = 82
      Width = 121
      Height = 23
      Style = csDropDownList
      ItemHeight = 15
      TabOrder = 7
      OnKeyPress = cbbrhxxKeyPress
      Items.Strings = (
        #38452
        #38451
        #19981#35814)
    end
    object edtsxzl: TEdit
      Left = 596
      Top = 82
      Width = 141
      Height = 23
      TabOrder = 8
      OnKeyPress = edtsxzlKeyPress
    end
    object cbbsqcfx: TComboBox
      Left = 113
      Top = 125
      Width = 121
      Height = 23
      Style = csDropDownList
      ItemHeight = 15
      TabOrder = 9
      OnKeyPress = cbbsqcfxKeyPress
    end
    object cbbsxdw: TComboBox
      Left = 346
      Top = 125
      Width = 121
      Height = 23
      Style = csDropDownList
      ItemHeight = 15
      TabOrder = 10
      OnKeyPress = cbbsxdwKeyPress
      Items.Strings = (
        'ml'
        'U'
        #27835#30103#37327)
    end
    object edtch: TEdit
      Left = 596
      Top = 125
      Width = 141
      Height = 23
      ReadOnly = True
      TabOrder = 11
      OnKeyPress = edtchKeyPress
    end
    object cxDateEdit1: TDBDateTimeEditEh
      Left = 112
      Top = 165
      Width = 169
      Height = 23
      EditButtons = <>
      TabOrder = 12
      Visible = True
      OnKeyPress = cxDateEdit1KeyPress
      EditFormat = 'YYYY/MM/DD HH:NN'
    end
    object Button1: TButton
      Left = 330
      Top = 164
      Width = 75
      Height = 25
      Caption = #25552#20132
      TabOrder = 13
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 440
      Top = 164
      Width = 75
      Height = 25
      Caption = #21462#28040
      TabOrder = 14
      OnClick = Button2Click
      OnKeyPress = Button2KeyPress
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      'select * from zysf_zydj')
    Left = 552
    Top = 184
  end
  object ds1: TDataSource
    DataSet = ADOQuery1
    Left = 600
    Top = 184
  end
  object ADOQuery2: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 640
    Top = 184
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery2
    Left = 680
    Top = 184
  end
  object sys_get_jyxh: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'sys_get_jyxh'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@jyxh'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 12
        Value = Null
      end>
    Left = 728
    Top = 184
  end
end
