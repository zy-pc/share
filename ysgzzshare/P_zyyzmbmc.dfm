object frm_zyyzmbmc: Tfrm_zyyzmbmc
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = #21307#22065#27169#26495#21517#31216
  ClientHeight = 192
  ClientWidth = 346
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 15
    Top = 35
    Width = 72
    Height = 16
    Caption = #27169#26495#21517#31216':'
  end
  object Label2: TLabel
    Left = 15
    Top = 83
    Width = 72
    Height = 16
    Caption = #27169#26495#31867#22411':'
  end
  object edit_mbmc: TEdit
    Left = 93
    Top = 29
    Width = 230
    Height = 24
    Color = clWhite
    TabOrder = 0
  end
  object b_ok: TBitBtn
    Left = 69
    Top = 143
    Width = 75
    Height = 25
    Caption = #30830#23450
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = b_okClick
  end
  object b_close: TBitBtn
    Left = 181
    Top = 143
    Width = 75
    Height = 25
    Caption = #36864#20986
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = b_closeClick
  end
  object cmb_mblb: TcxComboBox
    Left = 93
    Top = 78
    Properties.Alignment.Horz = taCenter
    Properties.Items.Strings = (
      #20010#20154#27169#26495
      #20844#29992#27169#26495)
    Properties.ReadOnly = False
    Style.BorderColor = clWindowText
    Style.BorderStyle = ebsFlat
    Style.ButtonStyle = btsDefault
    TabOrder = 1
    Text = #20010#20154#27169#26495
    Width = 124
  end
  object chkzy: TcxCheckBox
    Left = 229
    Top = 79
    Caption = #20303#38498
    Enabled = False
    ParentBackground = False
    ParentColor = False
    Style.BorderStyle = ebsFlat
    Style.Color = clBtnFace
    TabOrder = 2
    Width = 59
  end
  object chkmz: TcxCheckBox
    Left = 287
    Top = 79
    Caption = #38376#35786
    Enabled = False
    ParentBackground = False
    ParentColor = False
    Style.BorderStyle = ebsFlat
    Style.Color = clBtnFace
    TabOrder = 3
    Width = 60
  end
  object qry_yzmbmx: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from zybl_ztmx where 1=2')
    Left = 17
    Top = 7
  end
end
