object frm_srmbtj: Tfrm_srmbtj
  Left = 0
  Top = 0
  Caption = #36755#20837#27169#26495#28155#21152
  ClientHeight = 565
  ClientWidth = 582
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 582
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object cxRadioGroup1: TcxRadioGroup
      Left = 0
      Top = 0
      Align = alTop
      Caption = #27169#26495#23646#24615
      Properties.Items = <>
      TabOrder = 0
      Height = 49
      Width = 582
    end
    object cxRadioButton1: TcxRadioButton
      Left = 52
      Top = 24
      Width = 81
      Height = 17
      Caption = #20844#29992#27169#26495
      TabOrder = 1
      LookAndFeel.Kind = lfStandard
    end
    object cxRadioButton2: TcxRadioButton
      Left = 228
      Top = 24
      Width = 81
      Height = 17
      Caption = #31185#23460#20844#29992
      TabOrder = 2
      LookAndFeel.Kind = lfStandard
    end
    object cxRadioButton3: TcxRadioButton
      Left = 436
      Top = 24
      Width = 81
      Height = 17
      Caption = #31169#20154#27169#26495
      TabOrder = 3
      LookAndFeel.Kind = lfStandard
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 82
    Width = 582
    Height = 45
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object cxGroupBox1: TcxGroupBox
      Left = 0
      Top = 0
      Align = alLeft
      Caption = #36873#25321#39033#30446
      TabOrder = 0
      Height = 45
      Width = 225
      object cxLookupComboBox1: TcxLookupComboBox
        Left = 8
        Top = 17
        Properties.DropDownListStyle = lsFixedList
        Properties.GridMode = True
        Properties.KeyFieldNames = 'mbdm'
        Properties.ListColumns = <
          item
            Caption = #39033#30446#21517#31216
            FieldName = 'mbmc'
          end>
        Properties.ListSource = ds_xm
        Properties.OnCloseUp = cxLookupComboBox1PropertiesCloseUp
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 0
        OnEnter = cxLookupComboBox1Enter
        Width = 201
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 333
      Top = 0
      Align = alRight
      Caption = #36873#25321#19987#19994
      TabOrder = 1
      Height = 45
      Width = 249
      object cxLookupComboBox2: TcxLookupComboBox
        Left = 8
        Top = 17
        Properties.DropDownListStyle = lsFixedList
        Properties.GridMode = True
        Properties.KeyFieldNames = 'mbdm'
        Properties.ListColumns = <
          item
            Caption = #19987#19994#21517#31216
            FieldName = 'mbmc'
          end>
        Properties.ListSource = ds_bq
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 0
        Width = 209
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 127
    Width = 582
    Height = 438
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object cxGroupBox3: TcxGroupBox
      Left = 0
      Top = 45
      Align = alClient
      Caption = #27169#26495#20869#23481
      TabOrder = 1
      Height = 393
      Width = 582
      object cxDBMemo1: TcxDBMemo
        Left = 2
        Top = 18
        Align = alClient
        DataBinding.DataField = 'dynr'
        DataBinding.DataSource = ds_srmb
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 0
        Height = 373
        Width = 578
      end
    end
    object cxGroupBox4: TcxGroupBox
      Left = 0
      Top = 0
      Align = alTop
      Caption = #27169#26495#26631#39064
      TabOrder = 0
      Height = 45
      Width = 582
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 8
        Top = 18
        DataBinding.DataField = 'mbmc'
        DataBinding.DataSource = ds_srmb
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 0
        Width = 321
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 582
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object cxb_save: TcxButton
      Left = 8
      Top = 3
      Width = 81
      Height = 27
      Caption = #20445#23384
      TabOrder = 0
      OnClick = cxButton1Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00999999999999
        9999990000000000000990330000008803099033000000880309903300000088
        0309903300000000030990333333333333099033000000003309903088888888
        0309903088888888030990308888888803099030888888880309903088888888
        0009903088888888080990000000000000099999999999999999}
      LookAndFeel.Kind = lfStandard
    end
    object cxB_exit: TcxButton
      Left = 112
      Top = 3
      Width = 81
      Height = 27
      Caption = #36864#20986
      TabOrder = 1
      OnClick = cxButton3Click
      Glyph.Data = {
        0E060000424D0E06000000000000360000002800000016000000160000000100
        180000000000D8050000120B0000120B00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
        0000000000000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000000000000090000090
        000090000090000090000090000090000000000000BFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000000000CF0000CF0000
        CF0000CF0000CF0000CF0000CF0000CF000090000090000090000000BFBFBFBF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBF0000900000CF2F00FF2F
        00FF2F00FF2F00FF2F00FF2F00FF0000CF0000CF0000CF0000CF000090000090
        000000BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF0000900000CF0060FF
        2F00FF2F00FF2F00FF2F00FF2F00FF2F00FF2F00FF2F00FF0000CF0000CF0000
        CF000090000090000000BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF0000900060
        FF0060FF2F00FF2F00FF2F00FF2F00FF2F00FF2F00FF2F00FF2F00FF2F00FF2F
        00FF0000CF0000CF000090000000BFBFBFBFBFBF0000BFBFBFBFBFBF00009060
        60FF0060FF2F00FF2F00FFFFFFFFFFFFFFFFFFFF2F00FF2F00FF2F00FFFFFFFF
        FFFFFFFFFFFF0000CF0000CF000090000090000000BFBFBF0000BFBFBFBFBFBF
        0000906060FF2F90FF2F00FF2F00FF2F00FFFFFFFFFFFFFFFFFFFF2F00FFFFFF
        FFFFFFFFFFFFFF2F00FF2F00FF0000CF0000CF000090000000BFBFBF0000BFBF
        BFBFBFBF0000906060FF2F90FF2F00FF2F00FF2F00FF2F00FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF2F00FF2F00FF2F00FF0000CF0000CF000090000000BFBFBF
        0000BFBFBFBFBFBF0000906060FF2F90FF2F00FF2F00FF2F00FF2F00FF2F00FF
        FFFFFFFFFFFFFFFFFF2F00FF2F00FF2F00FF2F00FF2F00FF0000CF0000900000
        00BFBFBF0000BFBFBFBFBFBF0000906060FF2F90FF0060FF2F00FF2F00FF2F00
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F00FF2F00FF2F00FF2F00FF0000CF00
        0090000000BFBFBF0000BFBFBFBFBFBF0000906060FF2F90FF0060FF2F00FF2F
        00FFFFFFFFFFFFFFFFFFFF2F00FFFFFFFFFFFFFFFFFFFF2F00FF2F00FF2F00FF
        0000CF000090000000BFBFBF0000BFBFBFBFBFBF0000906060CF2F90FF2F90FF
        0060FFFFFFFFFFFFFFFFFFFF2F00FF2F00FF2F00FFFFFFFFFFFFFFFFFFFF2F00
        FF2F00FF0000CF000090000000BFBFBF0000BFBFBFBFBFBFBFBFBF0000906060
        FF2F90FF0060FF0060FF2F00FF2F00FF2F00FF2F00FF2F00FF2F00FF2F00FF2F
        00FF2F00FF2F00FF0000CF000000BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF00
        00906060CF2F90FF2F90FF0060FF0060FF2F00FF2F00FF2F00FF2F00FF2F00FF
        2F00FF2F00FF2F00FF2F00FF000090000000BFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBFBFBFBF0000906060FF2F90FF2F90FF0060FF0060FF0060FF2F00FF2F00
        FF2F00FF2F00FF2F00FF2F00FF0000CF000000BFBFBFBFBFBFBFBFBF0000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBF0000906060CF6060FF2F90FF2F90FF2F90FF00
        60FF0060FF2F00FF2F00FF2F00FF0000CF000000BFBFBFBFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000900000906060CF6060FF
        6060FF6060FF6060FF6060FF0000CF000090000090BFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
        90000090000090000090000090000090000090BFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000}
      LookAndFeel.Kind = lfStandard
    end
  end
  object qry_bq: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'czy'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'mbdm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 14
        Value = Null
      end
      item
        Name = 'size'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select mbdm,mbmc,bqdm from zybl_srmb_lbzb'
      'where jlr=:czy and mbdm like :mbdm and bz=0 and len(mbdm)=:size'
      'group by mbdm,mbmc,bqdm'
      'order by mbdm,mbmc,bqdm')
    Left = 176
    Top = 288
  end
  object qry_xm: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'czy'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'mbdm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 14
        Value = Null
      end
      item
        Name = 'size'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select mbdm,mbmc from zybl_srmb_lbzb'
      'where jlr=:czy and mbdm like :mbdm and bz=0 and len(mbdm)=:size'
      'group by mbdm,mbmc'
      'order by mbdm,mbmc')
    Left = 112
    Top = 288
  end
  object ds_xm: TDataSource
    DataSet = qry_xm
    Left = 112
    Top = 320
  end
  object ds_bq: TDataSource
    DataSet = qry_bq
    Left = 176
    Top = 320
  end
  object qry_srmb: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'mbid'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'select * from zybl_srmb_lbmx'
      'where id=:mbid')
    Left = 240
    Top = 288
  end
  object ds_srmb: TDataSource
    DataSet = qry_srmb
    Left = 240
    Top = 320
  end
  object qry_date: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select getdate() jlrq from sysobjects')
    Left = 328
    Top = 288
  end
end
