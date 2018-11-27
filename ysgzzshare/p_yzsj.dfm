object frm_yzsj: Tfrm_yzsj
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = #21307#22065#25191#34892#26102#38388
  ClientHeight = 195
  ClientWidth = 379
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 18
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 135
    Height = 18
    Caption = #35831#36755#20837#21307#22065#25191#34892#26102#38388
  end
  object yzzxsj: TcxDateEdit
    Left = 56
    Top = 64
    Properties.Kind = ckDateTime
    TabOrder = 0
    Width = 193
  end
  object btnOK: TBitBtn
    Left = 152
    Top = 152
    Width = 75
    Height = 25
    Caption = #30830#35748
    TabOrder = 1
    OnClick = btnOKClick
  end
  object btnCancle: TBitBtn
    Left = 240
    Top = 152
    Width = 75
    Height = 25
    Caption = #25918#24323
    TabOrder = 2
    OnClick = btnCancleClick
  end
end
