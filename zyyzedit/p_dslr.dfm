object frm_dslr: Tfrm_dslr
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = #35831#36755#20837#28404#36895
  ClientHeight = 139
  ClientWidth = 319
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object lbl1: TLabel
    Left = 35
    Top = 49
    Width = 38
    Height = 15
    Caption = #28404#36895':'
  end
  object lbl2: TLabel
    Left = 219
    Top = 49
    Width = 63
    Height = 15
    Caption = 'gtt/min'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt_1: TEdit
    Left = 88
    Top = 45
    Width = 115
    Height = 23
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    TabOrder = 0
    OnKeyDown = edt_1KeyDown
    OnKeyPress = edt_1KeyPress
  end
  object btn1: TButton
    Left = 104
    Top = 96
    Width = 75
    Height = 25
    Caption = #30830' '#23450'(&O)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 206
    Top = 96
    Width = 75
    Height = 25
    Caption = #21462' '#28040'(C)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btn2Click
  end
  object ComboBox1: TComboBox
    Left = 209
    Top = 45
    Width = 102
    Height = 23
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ItemHeight = 15
    TabOrder = 1
    Text = 'gtt/min'
    Visible = False
  end
end
