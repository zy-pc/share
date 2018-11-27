object frm_pub_sj: Tfrm_pub_sj
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #26102#38388#36873#25321
  ClientHeight = 158
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object yzzxsj: TcxDateEdit
    Left = 96
    Top = 48
    Properties.Kind = ckDateTime
    TabOrder = 0
    Width = 193
  end
  object Button1: TButton
    Left = 78
    Top = 112
    Width = 75
    Height = 25
    Caption = #30830#23450
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 232
    Top = 112
    Width = 75
    Height = 25
    Caption = #21462#28040
    TabOrder = 2
    OnClick = Button2Click
  end
end
