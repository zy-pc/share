object Filter_frm: TFilter_frm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #26465#20214#32534#36753
  ClientHeight = 337
  ClientWidth = 529
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 15
  object lbl1: TLabel
    Left = 111
    Top = 13
    Width = 50
    Height = 19
    AutoSize = False
    Caption = #21015#21517
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 267
    Top = 13
    Width = 74
    Height = 19
    AutoSize = False
    Caption = #27604#36739#20851#31995
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 421
    Top = 13
    Width = 62
    Height = 19
    AutoSize = False
    Caption = #27604#36739#20540
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cbbField1: TcxComboBox
    Left = 111
    Top = 40
    Properties.OnChange = cbbField1PropertiesChange
    TabOrder = 0
    Width = 121
  end
  object cbbField2: TcxComboBox
    Left = 111
    Top = 88
    Enabled = False
    Properties.OnChange = cbbField1PropertiesChange
    TabOrder = 4
    Width = 121
  end
  object cbbField3: TcxComboBox
    Left = 111
    Top = 144
    Enabled = False
    Properties.OnChange = cbbField1PropertiesChange
    TabOrder = 8
    Width = 121
  end
  object cbbField4: TcxComboBox
    Left = 111
    Top = 200
    Enabled = False
    Properties.OnChange = cbbField1PropertiesChange
    TabOrder = 12
    Width = 121
  end
  object cbbField5: TcxComboBox
    Left = 111
    Top = 256
    Enabled = False
    Properties.OnChange = cbbField1PropertiesChange
    TabOrder = 16
    Width = 121
  end
  object cbbCom1: TcxComboBox
    Left = 255
    Top = 40
    Enabled = False
    Properties.Items.Strings = (
      #31561#20110
      #19981#31561#20110
      #22823#20110#31561#20110
      #23567#20110#31561#20110
      #22823#20110
      #23567#20110
      #21253#21547)
    TabOrder = 1
    Text = #21253#21547
    Width = 101
  end
  object cbbCom2: TcxComboBox
    Left = 255
    Top = 88
    Enabled = False
    Properties.Items.Strings = (
      #31561#20110
      #19981#31561#20110
      #22823#20110#31561#20110
      #23567#20110#31561#20110
      #22823#20110
      #23567#20110
      #21253#21547)
    TabOrder = 5
    Width = 101
  end
  object cbbCom3: TcxComboBox
    Left = 255
    Top = 144
    Enabled = False
    Properties.Items.Strings = (
      #31561#20110
      #19981#31561#20110
      #22823#20110#31561#20110
      #23567#20110#31561#20110
      #22823#20110
      #23567#20110
      #21253#21547)
    TabOrder = 9
    Width = 101
  end
  object cbbCom4: TcxComboBox
    Left = 255
    Top = 200
    Enabled = False
    Properties.Items.Strings = (
      #31561#20110
      #19981#31561#20110
      #22823#20110#31561#20110
      #23567#20110#31561#20110
      #22823#20110
      #23567#20110
      #21253#21547)
    TabOrder = 13
    Width = 101
  end
  object cbbCom5: TcxComboBox
    Left = 255
    Top = 256
    Enabled = False
    Properties.Items.Strings = (
      #31561#20110
      #19981#31561#20110
      #22823#20110#31561#20110
      #23567#20110#31561#20110
      #22823#20110
      #23567#20110
      #21253#21547)
    TabOrder = 17
    Width = 101
  end
  object cxtxtdtValue1: TcxTextEdit
    Left = 382
    Top = 40
    Properties.OnChange = cxtxtdtValue1PropertiesChange
    TabOrder = 2
    OnKeyPress = cxtxtdtValue1KeyPress
    Width = 121
  end
  object cxtxtdtValue2: TcxTextEdit
    Left = 382
    Top = 88
    Enabled = False
    Properties.OnChange = cxtxtdtValue1PropertiesChange
    TabOrder = 6
    OnKeyPress = cxtxtdtValue1KeyPress
    Width = 121
  end
  object cxtxtdtValue3: TcxTextEdit
    Left = 382
    Top = 144
    Enabled = False
    Properties.OnChange = cxtxtdtValue1PropertiesChange
    TabOrder = 10
    OnKeyPress = cxtxtdtValue1KeyPress
    Width = 121
  end
  object cxtxtdtValue4: TcxTextEdit
    Left = 382
    Top = 200
    Enabled = False
    Properties.OnChange = cxtxtdtValue1PropertiesChange
    TabOrder = 14
    OnKeyPress = cxtxtdtValue1KeyPress
    Width = 121
  end
  object cxtxtdtValue5: TcxTextEdit
    Left = 382
    Top = 256
    Enabled = False
    TabOrder = 18
    OnKeyPress = cxtxtdtValue1KeyPress
    Width = 121
  end
  object cbbAnd1: TcxComboBox
    Left = 14
    Top = 88
    Enabled = False
    Properties.Items.Strings = (
      #24182#19988
      #25110#32773)
    TabOrder = 3
    Width = 73
  end
  object cbbAnd2: TcxComboBox
    Left = 14
    Top = 144
    Enabled = False
    Properties.Items.Strings = (
      #24182#19988
      #25110#32773)
    TabOrder = 7
    Width = 73
  end
  object cbbAnd3: TcxComboBox
    Left = 14
    Top = 200
    Enabled = False
    Properties.Items.Strings = (
      #24182#19988
      #25110#32773)
    TabOrder = 11
    Width = 73
  end
  object cbbAnd4: TcxComboBox
    Left = 14
    Top = 256
    Enabled = False
    Properties.Items.Strings = (
      #24182#19988
      #25110#32773)
    TabOrder = 15
    Width = 73
  end
  object btnClear: TBitBtn
    Left = 255
    Top = 293
    Width = 75
    Height = 25
    Caption = #28165#38500'&C'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 19
    OnClick = btnClearClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object btnEnter: TBitBtn
    Left = 342
    Top = 293
    Width = 75
    Height = 25
    Caption = #30830#23450'&E'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 20
    OnClick = btnEnterClick
    Kind = bkOK
  end
  object btnCancel: TBitBtn
    Left = 428
    Top = 293
    Width = 75
    Height = 25
    Caption = #21462#28040'&N'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 21
    Kind = bkNo
  end
  object cxdtdt1: TcxDateEdit
    Tag = 1
    Left = 382
    Top = 40
    Properties.OnChange = cxdtdtCommPropertiesChange
    TabOrder = 22
    Visible = False
    Width = 121
  end
  object cxdtdt2: TcxDateEdit
    Tag = 2
    Left = 382
    Top = 88
    Properties.OnChange = cxdtdtCommPropertiesChange
    TabOrder = 23
    Visible = False
    Width = 121
  end
  object cxdtdt3: TcxDateEdit
    Tag = 3
    Left = 382
    Top = 144
    Properties.OnChange = cxdtdtCommPropertiesChange
    TabOrder = 24
    Visible = False
    Width = 121
  end
  object cxdtdt4: TcxDateEdit
    Tag = 4
    Left = 382
    Top = 200
    Properties.OnChange = cxdtdtCommPropertiesChange
    TabOrder = 25
    Visible = False
    Width = 121
  end
  object cxdtdt5: TcxDateEdit
    Tag = 5
    Left = 382
    Top = 257
    Properties.OnChange = cxdtdtCommPropertiesChange
    TabOrder = 26
    Visible = False
    Width = 121
  end
end
