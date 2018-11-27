object Login_frm: TLogin_frm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #25968#25454#24211#30331#24405#31383#21475
  ClientHeight = 189
  ClientWidth = 298
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 15
    Top = 14
    Width = 90
    Height = 15
    Caption = #26381#21153#22120#21517#31216#65306
  end
  object Label2: TLabel
    Left = 15
    Top = 81
    Width = 90
    Height = 15
    Caption = #30331#24405#29992#25143#21517#65306
  end
  object Label3: TLabel
    Left = 15
    Top = 116
    Width = 75
    Height = 15
    Caption = #30331#24405#23494#30721#65306
  end
  object lbl1: TLabel
    Left = 15
    Top = 47
    Width = 90
    Height = 15
    Caption = #25968#25454#24211#21517#31216#65306
  end
  object cbbServerName: TComboBox
    Left = 92
    Top = 10
    Width = 179
    Height = 23
    ItemHeight = 15
    TabOrder = 0
  end
  object LoginNameEdt: TEdit
    Left = 92
    Top = 77
    Width = 179
    Height = 23
    TabOrder = 2
  end
  object LoginPassEdt: TEdit
    Left = 92
    Top = 112
    Width = 179
    Height = 23
    PasswordChar = '*'
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 56
    Top = 148
    Width = 75
    Height = 25
    Caption = #30830#23450'(&Y)'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn1Click
    Kind = bkYes
  end
  object BitBtn2: TBitBtn
    Left = 174
    Top = 148
    Width = 75
    Height = 25
    Caption = #25918#24323'(&N)'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Kind = bkNo
  end
  object edtDatabase: TEdit
    Left = 92
    Top = 43
    Width = 179
    Height = 23
    TabOrder = 1
  end
end
