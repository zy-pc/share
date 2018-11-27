object frm_hspbb_main: Tfrm_hspbb_main
  Left = 0
  Top = 0
  Caption = #25490#29677#31995#32479
  ClientHeight = 741
  ClientWidth = 1362
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Frm_hspbb_main'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 11
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1362
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Frm_hspbb_main'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object SpeedButton5: TSpeedButton
      Left = 882
      Top = 1
      Width = 110
      Height = 50
      Caption = #19978#19968#21608'(F10)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton5Click
    end
    object SpeedButton6: TSpeedButton
      Left = 992
      Top = 1
      Width = 110
      Height = 50
      Caption = #19979#19968#21608'(F11)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton6Click
    end
    object SpeedButton7: TSpeedButton
      Left = 1102
      Top = 1
      Width = 110
      Height = 50
      Caption = #38145#23450#25490#29677
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton7Click
    end
    object SpeedButton8: TSpeedButton
      Left = 1211
      Top = 1
      Width = 110
      Height = 50
      Caption = #23548#20986'excle'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton8Click
    end
    object Label6: TLabel
      Left = 4
      Top = 14
      Width = 96
      Height = 21
      Caption = #36873#25321#25490#29677#26102#38388
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 227
      Top = 14
      Width = 72
      Height = 16
      Caption = #65288#31532#20960#21608')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Frm_hspbb_main'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 302
      Top = 10
      Width = 64
      Height = 21
      Caption = #25490#29677#20174#65306
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton9: TSpeedButton
      Left = 772
      Top = 1
      Width = 110
      Height = 50
      Caption = #21047#26032#25490#29677
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton9Click
    end
    object Label31: TLabel
      Left = 596
      Top = 13
      Width = 32
      Height = 16
      Caption = #19987#19994
    end
    object pbsj: TComboBox
      Left = 106
      Top = 7
      Width = 115
      Height = 29
      BevelInner = bvLowered
      BevelKind = bkFlat
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ItemHeight = 0
      ParentFont = False
      TabOrder = 0
      OnChange = pbsjChange
    end
    object zyxz: TComboBox
      Left = 634
      Top = 10
      Width = 139
      Height = 24
      Style = csDropDownList
      ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 16
      TabOrder = 1
      TabStop = False
      OnChange = zyxzChange
      Items.Strings = (
        #25298#27979
        #22806#20986
        #35831#20551)
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 1362
    Height = 684
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 113
      Height = 682
      Align = alLeft
      TabOrder = 0
      object SpeedButton1: TSpeedButton
        Left = 1
        Top = 1
        Width = 111
        Height = 80
        Align = alTop
        Caption = #20154#21592#31649#29702
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = #26999#20307
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton1Click
        ExplicitLeft = -4
        ExplicitTop = -5
      end
      object SpeedButton2: TSpeedButton
        Left = 1
        Top = 241
        Width = 111
        Height = 80
        Align = alTop
        Caption = #32479#35745#25253#34920
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = #26999#20307
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton3: TSpeedButton
        Left = 1
        Top = 161
        Width = 111
        Height = 80
        Align = alTop
        Caption = #25490#29677#31649#29702
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = #26999#20307
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton3Click
        ExplicitTop = 211
      end
      object SpeedButton4: TSpeedButton
        Left = 1
        Top = 81
        Width = 111
        Height = 80
        Align = alTop
        Caption = #29677#27425#31649#29702
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = #26999#20307
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton4Click
        ExplicitTop = 106
      end
    end
    object pmain: TPanel
      Left = 114
      Top = 1
      Width = 1247
      Height = 682
      Align = alClient
      Caption = 'pmain'
      TabOrder = 1
      ExplicitLeft = -214
      ExplicitTop = -20
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 384
    Top = 80
    object N1: TMenuItem
      Caption = #32452#21512#25490#29677
    end
  end
  object qry_hspbb_rq: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'ksdm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from zybl_hspbb_rq where ksdm=:ksdm order by ksrq')
    Left = 384
    Top = 128
  end
  object qry_hspbb_xzrq: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'ksdm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT * FROM dbo.zybl_hspbb_rq WHERE CONVERT(VARCHAR(10),GETDAT' +
        'E(),112)>=ksrq AND CONVERT(VARCHAR(10),GETDATE(),112)<=jsrq and ' +
        'ksdm=:ksdm')
    Left = 272
    Top = 24
  end
  object ActionList1: TActionList
    Left = 408
    Top = 176
    object Action1: TAction
      Caption = #19978#19968#21608
      ShortCut = 121
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = #19979#19968#21608
      ShortCut = 122
      OnExecute = Action2Execute
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 696
    Top = 128
  end
  object sp_xzbc: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_hspbb_xzbc'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 648
    Top = 248
  end
  object qry_bcjc: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 952
    Top = 144
  end
  object qry_del: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 728
    Top = 264
  end
  object ad_bqks: TADODataSet
    Connection = DM_data.ado_mydata
    CommandText = 
      'declare @sfqyhldy bit'#13#10'select @sfqyhldy=sfhldyczgl from sys_xt_k' +
      'g'#13#10'if @sfqyhldy=1'#13#10'select @sfqyhldy=:hsgzz'#13#10#13#10'if @sfqyhldy=0'#13#10'se' +
      'lect dm,mc  from sys_ksdm a,sys_bqzyfl b where a.dm=b.bqzydm and' +
      ' b.bqdm=:bqdm'#13#10'order by dm'#13#10'else'#13#10'select dm,mc  from sys_ksdm a,' +
      'sys_hlqjdy b where a.dm=b.hldydm and b.qjdm=:bqdm1'#13#10'order by dm'
    Parameters = <
      item
        Name = 'hsgzz'
        Size = -1
        Value = Null
      end
      item
        Name = 'bqdm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'bqdm1'
        Size = -1
        Value = Null
      end>
    Left = 408
    Top = 24
  end
end
