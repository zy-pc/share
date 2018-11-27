object frm_cqyzxdsz: Tfrm_cqyzxdsz
  Left = 0
  Top = 0
  Caption = #38271#26399#21307#22065#32493#25171#35774#32622
  ClientHeight = 368
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 152
    Width = 135
    Height = 33
    Caption = #24320#22987#34892#21495#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 72
    Top = 211
    Width = 135
    Height = 33
    Caption = #32467#26463#34892#21495#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 527
    Height = 113
    TabStop = False
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Lines.Strings = (
      #35831#36873#25321#24320#22987#34892#21495#21644#32467#26463#34892#21495#65292#24320#22987#34892#21495#23567
      #20110'2'#26102#65292#35831#36873#25321#20020#26102#21307#22065#25171#21360#32780#19981#26159#20020#26102#21307
      #22065#32493#25171#65281#32467#26463#34892#21495#20026'0 '#34920#31034#25171#21360#21040#32467#26463#65281
      #65281)
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object cxMaskEdit1: TcxMaskEdit
    Left = 206
    Top = 149
    BeepOnEnter = False
    ParentFont = False
    Properties.MaskKind = emkRegExpr
    Properties.EditMask = '\d+'
    Properties.MaxLength = 0
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -27
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    Text = '1'
    Width = 121
  end
  object cxMaskEdit2: TcxMaskEdit
    Left = 206
    Top = 208
    ParentFont = False
    Properties.MaskKind = emkRegExprEx
    Properties.EditMask = '\d+'
    Properties.MaxLength = 0
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -27
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    Text = '0'
    Width = 121
  end
  object BitBtn1: TBitBtn
    Left = 208
    Top = 296
    Width = 100
    Height = 35
    Caption = #30830#23450
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 392
    Top = 296
    Width = 100
    Height = 35
    Caption = #25918#24323
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn2Click
  end
end
