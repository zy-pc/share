object frm_srfsz: Tfrm_srfsz
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #36755#20837#27861#35774#32622#31383#21475
  ClientHeight = 112
  ClientWidth = 313
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Panel2: TPanel
    Left = 0
    Top = 76
    Width = 313
    Height = 36
    Align = alBottom
    TabOrder = 0
    object btn_ok: TButton
      Left = 134
      Top = 5
      Width = 75
      Height = 25
      Caption = #30830#23450'(&O)'
      TabOrder = 0
      OnClick = btn_okClick
    end
    object btn_cancel: TButton
      Left = 220
      Top = 5
      Width = 75
      Height = 25
      Caption = #21462#28040'(&C)'
      TabOrder = 1
      OnClick = btn_cancelClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 313
    Height = 76
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 232
      Height = 16
      Caption = #35831#36873#25321#24744#20064#24815#20351#29992#30340#20013#25991#36755#20837#27861':'
    end
    object cb_srf: TComboBox
      Left = 18
      Top = 35
      Width = 279
      Height = 24
      Hint = #36873#25321#36755#20837#27861
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  object qry_srf: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 56
    Top = 64
  end
end
