object frm_sjth: Tfrm_sjth
  Left = 315
  Top = 242
  BorderIcons = []
  Caption = #25910#36153#21592#21457#31080#35843#21495
  ClientHeight = 237
  ClientWidth = 429
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 24
    Top = 13
    Width = 80
    Height = 16
    Caption = #25910'  '#36153'  '#21592
  end
  object Label2: TLabel
    Left = 24
    Top = 131
    Width = 80
    Height = 16
    Caption = #24494#26426#24403#21069#21495
  end
  object Label3: TLabel
    Left = 24
    Top = 190
    Width = 80
    Height = 16
    Caption = #25163#24037#32467#26463#21495
  end
  object Label4: TLabel
    Left = 40
    Top = 72
    Width = 64
    Height = 16
    Caption = #25910#25454#31867#22411
  end
  object sfy: TEdit
    Left = 128
    Top = 8
    Width = 121
    Height = 24
    TabOrder = 0
    OnKeyPress = sfyKeyPress
  end
  object wjdqh: TEdit
    Left = 128
    Top = 125
    Width = 121
    Height = 24
    TabOrder = 1
  end
  object sgjsh: TEdit
    Left = 128
    Top = 184
    Width = 121
    Height = 24
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 305
    Top = 101
    Width = 75
    Height = 25
    Caption = #30830#23450
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 305
    Top = 150
    Width = 75
    Height = 25
    Caption = #25918#24323
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object sjlb: TDBLookupComboBox
    Left = 128
    Top = 64
    Width = 122
    Height = 24
    KeyField = 'dm'
    ListField = 'dm;mc'
    ListSource = ds_sjlb
    TabOrder = 6
    OnExit = sjlbExit
    OnKeyPress = sjlbKeyPress
  end
  object dbgridczy: TDBGrid
    Left = 125
    Top = 86
    Width = 174
    Height = 175
    DataSource = ds_czy
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnKeyPress = dbgridczyKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'dm'
        Title.Caption = #20195#30721
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mc'
        Title.Caption = #22995#21517
        Visible = True
      end>
  end
  object sp_cx_dqsj: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'sys_cx_dqsj;1'
    Parameters = <
      item
        Name = '@czy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@sjlb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end>
    Left = 152
    Top = 160
  end
  object sp_in_sjth: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'sys_in_sjth;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@lydh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@sjlb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@sjqh'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@sjzh'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@thrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@thczy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 1
        Value = Null
      end>
    Left = 184
    Top = 160
  end
  object ad_cx_czy: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 'select dm,mc from sys_czy'
    Parameters = <>
    Left = 224
    Top = 160
  end
  object ds_czy: TDataSource
    DataSet = ad_cx_czy
    Left = 72
    Top = 160
  end
  object ad_sjlx: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 'select * from sys_sjlb order by dm'
    Parameters = <>
    Left = 272
    Top = 48
  end
  object ds_sjlb: TDataSource
    DataSet = ad_sjlx
    Left = 256
    Top = 40
  end
end
