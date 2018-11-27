object frm_psjg: Tfrm_psjg
  Left = 0
  Top = 0
  Caption = #30382#35797#32467#26524#20462#25913
  ClientHeight = 66
  ClientWidth = 493
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 493
    Height = 66
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 13
      Width = 64
      Height = 15
      Caption = #30382#35797#39033#30446
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #26032#23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 83
      Top = 9
      Width = 379
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #26032#23435#20307
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 159
      Top = 37
      Width = 75
      Height = 25
      Caption = #20462#25913
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 274
      Top = 37
      Width = 75
      Height = 25
      Caption = #25918#24323
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object qry_cxyz: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 368
    Top = 32
  end
  object qry_tzyz: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 416
    Top = 32
  end
end
