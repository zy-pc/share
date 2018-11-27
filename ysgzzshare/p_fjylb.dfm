object frm_fjylb: Tfrm_fjylb
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #36741#26816#19968#35272#34920
  ClientHeight = 718
  ClientWidth = 1014
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  ShowHint = True
  WindowState = wsMaximized
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 57
    Width = 1014
    Height = 661
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = #21307#22065#25191#34892
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object groupbox8: TPanel
        Left = 0
        Top = 0
        Width = 146
        Height = 609
        Align = alLeft
        BevelInner = bvLowered
        TabOrder = 0
        ExplicitHeight = 610
        object DBGridEh1: TDBGridEh
          Left = 2
          Top = 2
          Width = 142
          Height = 606
          Align = alClient
          DataSource = ds_brxx
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = ANSI_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          OnCellClick = DBGridEh1CellClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'bch'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #24202#21495
              Width = 37
            end
            item
              EditButtons = <>
              FieldName = 'brxm'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #22995#21517
              Width = 75
            end>
        end
      end
      object groupbox2: TPanel
        Left = 146
        Top = 0
        Width = 860
        Height = 609
        Align = alClient
        TabOrder = 1
        ExplicitHeight = 610
        object Panel6: TPanel
          Left = 1
          Top = 574
          Width = 858
          Height = 34
          Align = alBottom
          BevelInner = bvLowered
          TabOrder = 0
          ExplicitTop = 575
          object cxButton6: TcxButton
            Left = 766
            Top = 8
            Width = 75
            Height = 23
            Caption = #36820#22238'(&B)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = cxButton6Click
          end
          object cxButton3: TcxButton
            Left = 682
            Top = 8
            Width = 78
            Height = 23
            Caption = #25191#34892#35760#24405'(&T)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = cxButton3Click
          end
        end
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 858
          Height = 35
          Align = alTop
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          object Label2: TLabel
            Left = 129
            Top = 10
            Width = 90
            Height = 15
            Caption = #25191#34892#21307#22065#26085#26399
          end
          object dt_zxsj: TDateTimePicker
            Left = 228
            Top = 5
            Width = 186
            Height = 23
            Date = 40401.666157951390000000
            Time = 40401.666157951390000000
            TabOrder = 0
            OnChange = dt_zxsjChange
          end
          object Edit1: TEdit
            Left = 672
            Top = 5
            Width = 161
            Height = 21
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
          end
        end
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 36
          Width = 858
          Height = 538
          Align = alClient
          DataSource = ds_dryz
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = ANSI_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 2
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'tmh'
              Footers = <>
              Title.Caption = #20303#38498#21495
              Width = 84
            end
            item
              EditButtons = <>
              FieldName = 'brxm'
              Footers = <>
              Title.Caption = #30149#20154#22995#21517
              Width = 74
            end
            item
              EditButtons = <>
              FieldName = 'brxb'
              Footers = <>
              Title.Caption = #24615#21035
            end
            item
              EditButtons = <>
              FieldName = 'brnl'
              Footers = <>
              Title.Caption = #24180#40836
              Width = 35
            end
            item
              EditButtons = <>
              FieldName = 'bch'
              Footers = <>
              Title.Caption = #30149#24202
              Width = 43
            end
            item
              EditButtons = <>
              FieldName = 'yzsx'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'lb'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'xmmc'
              Footers = <>
              Title.Caption = #39033#30446
              Width = 205
            end
            item
              EditButtons = <>
              FieldName = 'dw'
              Footers = <>
              Title.Caption = #21333#20301
              Width = 56
            end
            item
              EditButtons = <>
              FieldName = 'gg'
              Footers = <>
              Visible = False
              Width = 123
            end
            item
              EditButtons = <>
              FieldName = 'jyyb'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'bz'
              Footers = <>
              Title.Caption = #35828#26126
              Width = 116
            end
            item
              EditButtons = <>
              FieldName = 'yzid'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'jyflbh'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'jyfzbh'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'ksmc'
              Footers = <>
              Title.Caption = #24320#21333#31185#23460
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'ryzd'
              Footers = <>
              Title.Caption = #20837#38498#35786#26029
              Width = 137
            end>
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 609
        Width = 1006
        Height = 21
        Align = alBottom
        BevelInner = bvLowered
        TabOrder = 2
        ExplicitTop = 610
        object Label5: TLabel
          Left = 41
          Top = 4
          Width = 105
          Height = 15
          Caption = #24403#22825#24050#25191#34892#21307#22065
        end
        object Label1: TLabel
          Left = 10
          Top = 6
          Width = 25
          Height = 9
          AutoSize = False
          Color = 8421440
          ParentColor = False
        end
        object ProgressBar1: TProgressBar
          Left = 325
          Top = 2
          Width = 679
          Height = 17
          Align = alRight
          Step = 1
          TabOrder = 0
        end
        object cxLabel1: TcxLabel
          Left = 398
          Top = 3
          Caption = #25968#25454#20934#22791#36827#24230'(0%)'
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clLime
          Style.Font.Height = -15
          Style.Font.Name = #23435#20307
          Style.Font.Style = []
          Style.TextColor = clFuchsia
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          StyleHot.BorderStyle = ebsNone
          Transparent = True
        end
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 1014
    Height = 57
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label39: TLabel
      Left = 4
      Top = 8
      Width = 69
      Height = 15
      Caption = #20303' '#38498' '#21495':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label40: TLabel
      Left = 371
      Top = 8
      Width = 46
      Height = 15
      Caption = #24615' '#21035':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label41: TLabel
      Left = 456
      Top = 8
      Width = 46
      Height = 15
      Caption = #24180' '#40836':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label42: TLabel
      Left = 4
      Top = 31
      Width = 68
      Height = 15
      Caption = #20837#38498#26085#26399':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label43: TLabel
      Left = 190
      Top = 31
      Width = 68
      Height = 15
      Caption = #20837#38498#35786#26029':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label45: TLabel
      Left = 371
      Top = 31
      Width = 68
      Height = 15
      Caption = #39044#20132#37329#39069':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label46: TLabel
      Left = 552
      Top = 31
      Width = 68
      Height = 15
      Caption = #36153#29992#37329#39069':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label47: TLabel
      Left = 724
      Top = 31
      Width = 38
      Height = 15
      Caption = #31867#21035':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label48: TLabel
      Left = 552
      Top = 8
      Width = 68
      Height = 15
      Caption = #20027#31649#21307#29983':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label49: TLabel
      Left = 724
      Top = 8
      Width = 38
      Height = 15
      Caption = #22791#27880':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label50: TLabel
      Left = 190
      Top = 8
      Width = 68
      Height = 15
      Caption = #30149#20154#22995#21517':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object DBEdit9: TDBEdit
      Left = 73
      Top = 29
      Width = 110
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'ryrq'
      DataSource = ds_brxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit10: TDBEdit
      Left = 257
      Top = 29
      Width = 95
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'ryzd'
      DataSource = ds_brxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit11: TDBEdit
      Left = 619
      Top = 5
      Width = 88
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'zgys'
      DataSource = ds_brxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit12: TDBEdit
      Left = 440
      Top = 29
      Width = 91
      Height = 21
      TabStop = False
      Color = clMoneyGreen
      Ctl3D = False
      DataField = 'yjze'
      DataSource = ds_brxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit13: TDBEdit
      Left = 620
      Top = 29
      Width = 88
      Height = 21
      Color = clMoneyGreen
      Ctl3D = False
      DataField = 'zfy'
      DataSource = ds_brxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit14: TDBEdit
      Left = 257
      Top = 5
      Width = 95
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'brxm'
      DataSource = ds_brxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit15: TDBEdit
      Left = 504
      Top = 5
      Width = 28
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'brnl'
      DataSource = ds_brxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit16: TDBEdit
      Left = 419
      Top = 5
      Width = 23
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'brxb'
      DataSource = ds_brxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit17: TDBEdit
      Left = 764
      Top = 29
      Width = 104
      Height = 21
      Color = clMoneyGreen
      Ctl3D = False
      DataField = 'lbmc'
      DataSource = ds_brxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit18: TDBEdit
      Left = 764
      Top = 5
      Width = 104
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'bz'
      DataSource = ds_brxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object DBEdit19: TDBEdit
      Left = 73
      Top = 4
      Width = 110
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'tmh'
      DataSource = ds_brxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
  end
  object CheckBox1: TCheckBox
    Left = 595
    Top = 96
    Width = 97
    Height = 17
    Caption = #20840#37096#36741#26816
    TabOrder = 2
    OnClick = CheckBox1Click
  end
  object ds_brxx: TDataSource
    DataSet = sp_brxx
    Left = 40
    Top = 128
  end
  object sp_brxx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = sp_brxxAfterOpen
    AfterScroll = sp_brxxAfterScroll
    ProcedureName = 'zybl_cx_yzyjfbr_fj;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@sr_bqdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@yzzxsj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 48
    Top = 168
  end
  object sp_dryz: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_zyyz_cx_fjylb;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = ' '
      end
      item
        Name = '@zxsj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '20101027'
      end
      item
        Name = '@bqdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '0001'
      end>
    Left = 736
    Top = 480
  end
  object ds_dryz: TDataSource
    DataSet = sp_dryz
    Left = 680
    Top = 480
  end
  object sp_yzsj: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zyyz_yzsj;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@scyzsj'
        Attributes = [paNullable]
        DataType = ftDateTime
        Direction = pdInputOutput
        Value = Null
      end>
    Left = 712
    Top = 408
  end
  object ad_yzzx: TADOCommand
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 352
    Top = 248
  end
end
