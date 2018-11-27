object frm_pos: Tfrm_pos
  Left = 0
  Top = 0
  Caption = 'POS'#21047#21345
  ClientHeight = 207
  ClientWidth = 453
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 453
    Height = 207
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = -8
    object t_je: TcxTextEdit
      Left = 129
      Top = 54
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -24
      Style.Font.Name = #23435#20307
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Text = '12345678'
      Height = 33
      Width = 209
    end
    object b_sk: TcxButton
      Left = 74
      Top = 114
      Width = 97
      Height = 39
      Caption = #21047#21345'[&S]'
      TabOrder = 1
      OnClick = b_skClick
    end
    object b_tc: TcxButton
      Left = 282
      Top = 114
      Width = 97
      Height = 39
      Caption = #21462#28040'[&C]'
      ModalResult = 2
      TabOrder = 2
    end
    object cxLabel1: TcxLabel
      Left = 34
      Top = 61
      Caption = 'POS'#28040#36153#37329#39069':'
    end
    object cxButton1: TcxButton
      Left = 341
      Top = 54
      Width = 62
      Height = 33
      Caption = #37325#32622
      TabOrder = 4
      OnClick = cxButton1Click
    end
  end
end
