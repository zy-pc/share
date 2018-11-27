object frm_xhy_hymm: Tfrm_xhy_hymm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #26032#27880#20876#29992#25143#21021#22987#23494#30721#35774#32622
  ClientHeight = 271
  ClientWidth = 489
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
    Width = 489
    Height = 73
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    ExplicitWidth = 619
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 441
      Height = 36
      Caption = #26032#27880#20876#29992#25143#23494#30721#35774#32622':'#35813#21151#33021#21482#29992#20110#27880#20876#26032#20250#21592#29992#25143#21518#36827#13#10#34892#23494#30721#30340#35774#32622#12290#22312#20197#21518#30340#28040#36153#20013#36755#20837#23494#30721#36827#34892#28040#36153#25805#20316
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 73
    Width = 489
    Height = 198
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    ExplicitLeft = 232
    ExplicitTop = 120
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Lb_tmh: TLabel
      Left = 24
      Top = 24
      Width = 81
      Height = 18
      Caption = #26032#24314#21345#21495':'
    end
    object Lb_brxm: TLabel
      Left = 224
      Top = 24
      Width = 117
      Height = 18
      Caption = #26032#24314#20250#21592#22995#21517':'
    end
    object Label4: TLabel
      Left = 24
      Top = 64
      Width = 117
      Height = 18
      Caption = #21021#22987#23494#30721#35774#32622':'
    end
    object Label5: TLabel
      Left = 60
      Top = 104
      Width = 81
      Height = 18
      Caption = #30830#35748#23494#30721':'
    end
    object e_hycsmm: TEdit
      Left = 147
      Top = 63
      Width = 294
      Height = 26
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      PasswordChar = '*'
      TabOrder = 0
      OnKeyDown = e_hycsmmKeyDown
    end
    object e_hycsmmqr: TEdit
      Left = 147
      Top = 101
      Width = 294
      Height = 26
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      PasswordChar = '*'
      TabOrder = 1
      OnKeyDown = e_hycsmmqrKeyDown
    end
    object cxbut_OK: TcxButton
      Left = 168
      Top = 152
      Width = 137
      Height = 33
      Caption = #30830#35748
      TabOrder = 2
      OnClick = cxbut_OKClick
    end
  end
end
