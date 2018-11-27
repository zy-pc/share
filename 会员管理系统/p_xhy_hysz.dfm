object frm_xhy_hysz: Tfrm_xhy_hysz
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #20250#21592#31649#29702#31995#32479#35774#32622
  ClientHeight = 318
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = #40657#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 18
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 416
    Height = 49
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 369
      Height = 36
      Caption = #31995#32479#35774#32622':'#29992#20110#25511#21046#20250#21592#31649#29702#30340#22522#26412#35774#32622#21151#33021#12290#13#10
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 49
    Width = 416
    Height = 269
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object Label2: TLabel
      Left = 24
      Top = 24
      Width = 108
      Height = 18
      Caption = #21457#21345#37319#29992#31080#25454
    end
    object Label3: TLabel
      Left = 24
      Top = 64
      Width = 108
      Height = 18
      Caption = #20805#20540#37319#29992#31080#25454
    end
    object Label4: TLabel
      Left = 24
      Top = 104
      Width = 108
      Height = 18
      Caption = #21457#21345#25910#25454#31867#21035
    end
    object Label5: TLabel
      Left = 24
      Top = 144
      Width = 108
      Height = 18
      Caption = #20805#20540#25910#25454#31867#21035
    end
    object pnl3: TPanel
      Left = 2
      Top = 190
      Width = 412
      Height = 77
      Align = alBottom
      BevelInner = bvLowered
      TabOrder = 0
      object cxbut_save: TcxButton
        Left = 128
        Top = 24
        Width = 150
        Height = 33
        Caption = #20445#23384
        TabOrder = 0
        OnClick = cxbut_saveClick
      end
    end
    object cbb_fkcypj: TComboBox
      Left = 160
      Top = 21
      Width = 145
      Height = 26
      Style = csDropDownList
      Enabled = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 18
      ItemIndex = 0
      TabOrder = 1
      Text = #30333#31080
      OnKeyDown = cbb_fkcypjKeyDown
      Items.Strings = (
        #30333#31080
        #27491#24335#31080)
    end
    object cbb_czcypj: TComboBox
      Left = 160
      Top = 53
      Width = 145
      Height = 26
      Style = csDropDownList
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 18
      ItemIndex = 0
      TabOrder = 2
      Text = #30333#31080
      OnKeyDown = cbb_czcypjKeyDown
      Items.Strings = (
        #30333#31080
        #27491#24335#31080)
    end
    object e_fksjlb: TEdit
      Left = 160
      Top = 101
      Width = 49
      Height = 26
      Enabled = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      MaxLength = 2
      TabOrder = 3
      OnKeyDown = e_fksjlbKeyDown
    end
    object e_czsjlb: TEdit
      Left = 160
      Top = 141
      Width = 49
      Height = 26
      Enabled = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      MaxLength = 2
      TabOrder = 4
      OnKeyDown = e_czsjlbKeyDown
    end
  end
  object qry_pub: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 288
    Top = 152
  end
end
