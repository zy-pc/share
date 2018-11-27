object frm_xhy_tyyylr: Tfrm_xhy_tyyylr
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = #20572#29992#21407#22240#24405#20837
  ClientHeight = 195
  ClientWidth = 595
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
    Width = 595
    Height = 57
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object lb_sm: TLabel
      Left = 16
      Top = 19
      Width = 522
      Height = 18
      Caption = #35831#36755#20837#26412#27425#20572#29992#35813#20250#21592#30340#20855#20307#21407#22240#12290#26412#27425#20572#29992#23558#34987#35745#20837#20572#29992#35760#24405#20013
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 57
    Width = 595
    Height = 138
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object lb_tmh: TLabel
      Left = 40
      Top = 16
      Width = 81
      Height = 18
      Caption = #20250#21592#21345#21495':'
    end
    object lb_brxm: TLabel
      Left = 272
      Top = 16
      Width = 81
      Height = 18
      Caption = #20250#21592#22995#21517':'
    end
    object Label1: TLabel
      Left = 40
      Top = 56
      Width = 81
      Height = 18
      Caption = #20572#29992#21407#22240':'
    end
    object e_tyyy: TEdit
      Left = 127
      Top = 53
      Width = 411
      Height = 26
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 0
    end
    object cxButton1: TcxButton
      Left = 200
      Top = 96
      Width = 193
      Height = 30
      Caption = #20572#29992
      TabOrder = 1
      OnClick = cxButton1Click
    end
  end
  object sp_in_tykyh: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'hy_in_tykyh'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 9
        Value = Null
      end
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@czlb'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@tyyy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
        Value = Null
      end
      item
        Name = '@zt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 50
        Value = Null
      end>
    Left = 496
    Top = 72
  end
end
