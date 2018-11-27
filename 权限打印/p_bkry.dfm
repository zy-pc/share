object frm_bkry: Tfrm_bkry
  Left = 104
  Top = 119
  Caption = #26412#31185#23460#20154#21592#26597#35810
  ClientHeight = 505
  ClientWidth = 721
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 721
    Height = 456
    Align = alClient
    DataSource = ds1
    Flat = True
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    FooterRowCount = 1
    ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'dm'
        Footers = <>
        Title.Caption = #32534#30721
      end
      item
        EditButtons = <>
        FieldName = 'mc'
        Footers = <
          item
            FieldName = 'mc'
            Value = #20154#21592#25968#65306
            ValueType = fvtStaticText
          end>
        Title.Caption = #22995#21517
      end
      item
        EditButtons = <>
        FieldName = 'pym'
        Footers = <
          item
            DisplayFormat = '0'#20154
            FieldName = 'pym'
            ValueType = fvtCount
          end>
        Title.Caption = #25340#38899
      end
      item
        EditButtons = <>
        FieldName = 'czje'
        Footers = <>
        Title.Caption = #36229#35760#38480#39069
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'sybz'
        Footers = <>
        Title.Caption = #25805#20316#21592
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'ysbz'
        Footers = <>
        Title.Caption = #21307#29983
      end
      item
        EditButtons = <>
        FieldName = 'cfbz'
        Footers = <>
        Title.Caption = #22788#26041#26435
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'mzcfbz'
        Footers = <>
        Title.Caption = #40635#37257#22788#26041#26435
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'zcmc'
        Footers = <>
        Title.Caption = #32844#31216
      end
      item
        EditButtons = <>
        FieldName = 'zwmc'
        Footers = <>
        Title.Caption = #32844#21153
        Width = 68
      end>
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 721
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 32
      Top = 16
      Width = 121
      Height = 15
      Caption = #32534#21495'/'#22995#21517'/'#25340#38899#65306
      Transparent = True
    end
    object Edit1: TEdit
      Left = 151
      Top = 12
      Width = 138
      Height = 23
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object bt_cx: TBitBtn
      Left = 295
      Top = 10
      Width = 75
      Height = 27
      Caption = #26597#35810'(&F)'
      TabOrder = 1
      OnClick = bt_cxClick
    end
    object bt_print: TBitBtn
      Left = 416
      Top = 10
      Width = 101
      Height = 27
      Caption = #20154#21592#26435#38480'(&P)'
      TabOrder = 2
      OnClick = bt_printClick
    end
    object bt_close: TBitBtn
      Left = 576
      Top = 10
      Width = 75
      Height = 27
      Caption = #20851#38381'(&X)'
      TabOrder = 3
      OnClick = bt_closeClick
    end
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 136
    Top = 160
  end
  object qry1: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select a.dm,a.mc,a.pym,isnull(a.czje,0.00) czje,a.sybz,a.ysbz,a.' +
        'cfbz,a.mzcfbz,RTRIM(b.mc) zwmc,RTRIM(c.mc) zcmc from sys_czy a,s' +
        'ys_zwdm b,sys_zcdm c'
      'where a.txbz=0 and a.zwbm*=b.dm and a.zcdm*=c.dm')
    Left = 136
    Top = 120
  end
  object qry_ksdm: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'dm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select ksdm from sys_czy where dm=:dm')
    Left = 360
    Top = 152
  end
end
