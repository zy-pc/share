object Frm_Dyjgl: TFrm_Dyjgl
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #25171#21360#26426#20851#32852
  ClientHeight = 400
  ClientWidth = 429
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 367
    Width = 264
    Height = 13
    Caption = #25302#21160#31080#25454#21040#25171#21360#26426#21517#31216#23545#24212#30340#32593#26684#23436#25104#25171#21360#26426#20851#32852
  end
  object ScrollBox1: TScrollBox
    Left = 8
    Top = 8
    Width = 201
    Height = 353
    HorzScrollBar.Visible = False
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    TabOrder = 0
    object cxGroupBox1: TcxGroupBox
      Left = 5
      Top = 5
      Caption = 'cxGroupBox1'
      TabOrder = 0
      Visible = False
      Height = 132
      Width = 172
    end
  end
  object gb_Pjlb: TcxGroupBox
    Tag = -1
    Left = 215
    Top = 8
    Caption = #21487#29992#31080#25454#21015#34920
    TabOrder = 1
    OnDragDrop = gb_PjlbDragDrop
    OnDragOver = gb_PjlbDragOver
    Height = 353
    Width = 201
  end
  object Btn_Save: TButton
    Left = 341
    Top = 367
    Width = 75
    Height = 25
    Caption = #20445#23384
    TabOrder = 2
    OnClick = Btn_SaveClick
  end
  object Button1: TButton
    Left = 278
    Top = 367
    Width = 63
    Height = 25
    Caption = #35835#21462#37197#32622
    TabOrder = 3
    Visible = False
    OnClick = Button1Click
  end
end
