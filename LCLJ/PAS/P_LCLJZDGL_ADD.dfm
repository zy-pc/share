object Frm_ZDGL_ADD: TFrm_ZDGL_ADD
  Left = 0
  Top = 0
  ActiveControl = edtMC
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #20998#31867
  ClientHeight = 233
  ClientWidth = 391
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  object pnlpym: TPanel
    Left = 0
    Top = 0
    Width = 391
    Height = 146
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lbl1: TLabel
      Left = 27
      Top = 14
      Width = 45
      Height = 15
      Caption = #32534#30721#65306
    end
    object lbl2: TLabel
      Left = 27
      Top = 86
      Width = 45
      Height = 15
      Caption = #31616#30721#65306
    end
    object lbl3: TLabel
      Left = 27
      Top = 51
      Width = 45
      Height = 15
      Caption = #21517#31216#65306
    end
    object lbl4: TLabel
      Left = 27
      Top = 122
      Width = 45
      Height = 15
      Caption = #19978#32423#65306
    end
    object edtBM: TEdit
      Left = 74
      Top = 14
      Width = 94
      Height = 23
      ReadOnly = True
      TabOrder = 0
    end
    object edtMC: TEdit
      Left = 74
      Top = 51
      Width = 294
      Height = 23
      TabOrder = 1
      OnChange = edtMCChange
    end
    object edtPym: TEdit
      Left = 74
      Top = 86
      Width = 214
      Height = 23
      ReadOnly = True
      TabOrder = 2
    end
    object edtSJ: TEdit
      Left = 74
      Top = 122
      Width = 94
      Height = 23
      ReadOnly = True
      TabOrder = 3
    end
    object btnCode: TButton
      Left = 171
      Top = 121
      Width = 35
      Height = 25
      Caption = '...'
      TabOrder = 4
      OnClick = btnCodeClick
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 188
    Width = 391
    Height = 45
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object bvl1: TBevel
      Left = 21
      Top = -8
      Width = 358
      Height = 15
      Shape = bsBottomLine
    end
    object btnSave: TBitBtn
      Left = 74
      Top = 12
      Width = 75
      Height = 25
      Caption = #30830#23450
      TabOrder = 0
      OnClick = btnSaveClick
      Kind = bkOK
    end
    object btnCancel: TBitBtn
      Left = 213
      Top = 12
      Width = 75
      Height = 25
      Caption = #25918#24323
      TabOrder = 1
      OnClick = btnCancelClick
      Kind = bkCancel
    end
  end
  object pnlPropper: TPanel
    Left = 0
    Top = 146
    Width = 391
    Height = 42
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object lbl5: TLabel
      Left = 27
      Top = 10
      Width = 45
      Height = 15
      Caption = #24615#36136#65306
    end
    object cbbXZ: TComboBox
      Left = 74
      Top = 10
      Width = 145
      Height = 23
      Style = csDropDownList
      ItemHeight = 0
      TabOrder = 0
    end
    object chkBase: TCheckBox
      Left = 225
      Top = 11
      Width = 97
      Height = 17
      Caption = #22522#26412
      TabOrder = 1
    end
  end
end
