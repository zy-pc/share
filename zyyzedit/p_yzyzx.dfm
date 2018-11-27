object frm_yzyzx: Tfrm_yzyzx
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #21307#22065#36873#25321#25191#34892
  ClientHeight = 242
  ClientWidth = 354
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
  object Panel1: TPanel
    Left = 0
    Top = 201
    Width = 354
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 0
    object Button1: TButton
      Left = 53
      Top = 6
      Width = 75
      Height = 25
      Caption = #25191' '#34892
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 207
      Top = 6
      Width = 75
      Height = 25
      Caption = #36820' '#22238
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 354
    Height = 201
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 26
      Top = 74
      Width = 68
      Height = 15
      Caption = #25191#34892#26085#26399':'
    end
    object Label2: TLabel
      Left = 27
      Top = 40
      Width = 68
      Height = 15
      Caption = #21462#33647#33647#25151':'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 101
      Top = 71
      Width = 186
      Height = 23
      Date = 39925.499184386570000000
      Time = 39925.499184386570000000
      TabOrder = 0
      OnChange = DateTimePicker1Change
    end
    object ComboBox1: TComboBox
      Left = 101
      Top = 37
      Width = 186
      Height = 23
      Style = csDropDownList
      ItemHeight = 0
      TabOrder = 1
    end
    object cxMemo1: TcxMemo
      Left = 2
      Top = 135
      Align = alBottom
      Lines.Strings = (
        '     '#27491#24120#19978#29677#26102#38388#35831#36873#25321#20303#38498#20013#24515#33647#25151#12290
        ''
        '     '#38750#27491#24120#19978#29677#26102#38388#35831#36873#25321#24613#35786#33647#25151#12290
        '')
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -16
      Style.Font.Name = #23435#20307
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 2
      ExplicitLeft = 4
      ExplicitTop = 137
      Height = 64
      Width = 350
    end
  end
end
