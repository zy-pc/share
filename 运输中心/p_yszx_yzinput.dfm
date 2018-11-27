object frm_yszx_yzinput: Tfrm_yszx_yzinput
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #26816#39564#35814#24773
  ClientHeight = 244
  ClientWidth = 485
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 56
    Width = 60
    Height = 13
    Caption = #27880#24847#20107#39033#65306
  end
  object Label3: TLabel
    Left = 24
    Top = 122
    Width = 60
    Height = 13
    Caption = #26816#26597#35201#27714#65306
  end
  object Label4: TLabel
    Left = 24
    Top = 163
    Width = 60
    Height = 13
    Caption = #26159#21542#32039#24613#65306
  end
  object Label5: TLabel
    Left = 24
    Top = 16
    Width = 60
    Height = 13
    Caption = #26816#39564#39033#30446#65306
  end
  object Label2: TLabel
    Left = 24
    Top = 89
    Width = 60
    Height = 13
    Caption = #36816#36755#26041#24335#65306
  end
  object edt_zysx: TEdit
    Left = 82
    Top = 53
    Width = 367
    Height = 21
    TabOrder = 0
    Text = 'edt_zysx'
  end
  object edt_sfjj: TComboBox
    Left = 82
    Top = 160
    Width = 103
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 1
    Text = #21542
    Items.Strings = (
      #21542
      #26159)
  end
  object edt_xmmc: TEdit
    Left = 82
    Top = 12
    Width = 367
    Height = 21
    Enabled = False
    TabOrder = 2
    Text = 'edt_xmmc'
  end
  object Button1: TButton
    Left = 161
    Top = 190
    Width = 75
    Height = 25
    Caption = #30830#23450
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 276
    Top = 190
    Width = 75
    Height = 25
    Caption = #21462#28040
    TabOrder = 4
    OnClick = Button2Click
  end
  object edt_jcyq: TComboBox
    Left = 82
    Top = 119
    Width = 154
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 5
    Text = #26080
    Items.Strings = (
      #26080
      #31354#33145
      #20805#30408#33152#33009
      #27927#22836)
  end
  object edt_ysfs: TComboBox
    Left = 82
    Top = 86
    Width = 193
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 6
    Text = #24179#36710
    Items.Strings = (
      #24179#36710
      #36718#26885
      #25512#24202
      #20854#23427)
  end
  object Button3: TButton
    Left = 348
    Top = 159
    Width = 101
    Height = 25
    Caption = #22635#20889#30149#21382#26816#26597#21333
    TabOrder = 7
    Visible = False
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 256
    Top = 160
    Width = 81
    Height = 21
    Enabled = False
    TabOrder = 8
    Visible = False
  end
end
