object frm_yzjcbw: Tfrm_yzjcbw
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #26816#26597#37096#20301
  ClientHeight = 82
  ClientWidth = 391
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 30
    Top = 34
    Width = 60
    Height = 16
    Caption = #26816#26597#37096#20301
    FocusControl = ComboBox1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ComboBox1: TComboBox
    Left = 96
    Top = 30
    Width = 145
    Height = 24
    AutoComplete = False
    ItemHeight = 0
    TabOrder = 0
    Text = 'ComboBox1'
  end
  object Button1: TButton
    Left = 254
    Top = 29
    Width = 75
    Height = 25
    Caption = #30830#23450
    ModalResult = 1
    TabOrder = 1
  end
end
