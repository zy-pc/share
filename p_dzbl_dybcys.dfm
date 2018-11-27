object frm_dzbl_dybcys: Tfrm_dzbl_dybcys
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = #35843#29992#24050#20445#23384#30340#20803#32032
  ClientHeight = 215
  ClientWidth = 553
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #26032#23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 553
    Height = 215
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 40
      Width = 160
      Height = 15
      Caption = #35831#36873#25321#38656#35201#23548#20837#30340#20803#32032
    end
    object ComboBox1: TComboBox
      Left = 174
      Top = 35
      Width = 363
      Height = 23
      ItemHeight = 15
      TabOrder = 0
    end
    object Button1: TButton
      Left = 128
      Top = 160
      Width = 75
      Height = 25
      Caption = #30830#23450
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 352
      Top = 160
      Width = 75
      Height = 25
      Caption = #21462#28040
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object qry_cx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'zyh'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from zydzbl_ysbc where zyh=:zyh and 1<>1')
    Left = 55
    Top = 65
  end
end
