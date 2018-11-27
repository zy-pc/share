object frm_dzbl_bcys: Tfrm_dzbl_bcys
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = #20445#23384#20803#32032
  ClientHeight = 157
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #26032#23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 157
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 40
      Width = 96
      Height = 15
      Caption = #22635#20889#20803#32032#21517#23383
    end
    object Edit1: TEdit
      Left = 136
      Top = 36
      Width = 249
      Height = 23
      TabOrder = 0
    end
    object Button1: TButton
      Left = 264
      Top = 96
      Width = 75
      Height = 25
      Caption = #21462#28040
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 136
      Top = 96
      Width = 75
      Height = 25
      Caption = #20445#23384
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object EMRPad302: TEMRPad30
    Left = 247
    Top = 1000
    Width = 200
    Height = 200
    TabOrder = 1
    ControlData = {00000100AC140000AC14000000000000}
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
