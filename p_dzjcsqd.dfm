object frm_dzjcsqd: Tfrm_dzjcsqd
  Left = 0
  Top = 0
  Caption = #30005#23376#26816#26597#30003#35831#21333
  ClientHeight = 497
  ClientWidth = 740
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 740
    Height = 65
    Align = alTop
    Caption = #30149#20154#22522#26412#20449#24687
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 18
      Width = 24
      Height = 13
      Caption = #21345#21495
    end
    object Label2: TLabel
      Left = 10
      Top = 40
      Width = 24
      Height = 13
      Caption = #22995#21517
    end
    object Label3: TLabel
      Left = 186
      Top = 41
      Width = 24
      Height = 13
      Caption = #24615#21035
    end
    object Label4: TLabel
      Left = 321
      Top = 41
      Width = 24
      Height = 13
      Caption = #24180#40836
    end
    object Label5: TLabel
      Left = 186
      Top = 16
      Width = 24
      Height = 13
      Caption = #22320#22336
    end
    object edt_tmh: TcxTextEdit
      Left = 40
      Top = 15
      Enabled = False
      StyleDisabled.TextColor = clWindowText
      TabOrder = 0
      Text = 'edt_tmh'
      Width = 121
    end
    object edt_xm: TcxTextEdit
      Left = 40
      Top = 37
      Enabled = False
      StyleDisabled.TextColor = clWindowText
      TabOrder = 1
      Text = 'edt_xm'
      Width = 121
    end
    object edt_xb: TcxTextEdit
      Left = 216
      Top = 38
      Enabled = False
      StyleDisabled.TextColor = clWindowText
      TabOrder = 2
      Text = 'edt_xb'
      Width = 60
    end
    object edt_nl: TcxTextEdit
      Left = 351
      Top = 38
      Enabled = False
      StyleDisabled.TextColor = clWindowText
      TabOrder = 3
      Text = 'edt_nl'
      Width = 121
    end
    object edt_dz: TcxTextEdit
      Left = 216
      Top = 13
      Enabled = False
      StyleDisabled.TextColor = clWindowText
      TabOrder = 4
      Text = 'edt_dz'
      Width = 391
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 65
    Width = 740
    Height = 250
    Align = alClient
    Caption = #29616#30149#21490
    TabOrder = 1
    object Panel4: TPanel
      Left = 2
      Top = 189
      Width = 736
      Height = 58
      Align = alTop
      Caption = 'Panel1'
      TabOrder = 0
      object edt_fzjc: TcxMemo
        Left = 73
        Top = 1
        Align = alClient
        Lines.Strings = (
          'edt_fzjc')
        TabOrder = 0
        Height = 56
        Width = 662
      end
      object cxLabel4: TcxLabel
        Left = 1
        Top = 1
        Align = alLeft
        AutoSize = False
        Caption = #36741#21161#26816#26597#65306
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Height = 56
        Width = 72
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 131
      Width = 736
      Height = 58
      Align = alTop
      Caption = 'Panel1'
      TabOrder = 1
      object edt_zljg: TcxMemo
        Left = 73
        Top = 1
        Align = alClient
        Lines.Strings = (
          'edt_zljg')
        TabOrder = 0
        ExplicitLeft = 38
        ExplicitTop = -31
        Height = 56
        Width = 662
      end
      object cxLabel1: TcxLabel
        Left = 1
        Top = 1
        Align = alLeft
        AutoSize = False
        Caption = #27835#30103#32463#36807#65306
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Height = 56
        Width = 72
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 73
      Width = 736
      Height = 58
      Align = alTop
      Caption = 'Panel1'
      TabOrder = 2
      object edt_ct: TcxMemo
        Left = 73
        Top = 1
        Align = alClient
        Lines.Strings = (
          'edt_ct')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Height = 56
        Width = 662
      end
      object cxLabel2: TcxLabel
        Left = 1
        Top = 1
        Align = alLeft
        AutoSize = False
        Caption = #26597#20307#65306
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Height = 56
        Width = 72
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 15
      Width = 736
      Height = 58
      Align = alTop
      Caption = 'Panel1'
      TabOrder = 3
      object edt_zs: TcxMemo
        Left = 73
        Top = 1
        Align = alClient
        Lines.Strings = (
          'edt_zs')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Height = 56
        Width = 662
      end
      object cxLabel3: TcxLabel
        Left = 1
        Top = 1
        Align = alLeft
        AutoSize = False
        Caption = #20027#35785#65306
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Height = 56
        Width = 72
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 315
    Width = 740
    Height = 75
    Align = alBottom
    Caption = #26816#26597#30446#30340
    TabOrder = 2
    object edt_jcmd: TcxMemo
      Left = 2
      Top = 15
      Align = alClient
      Lines.Strings = (
        'edt_jcmd')
      TabOrder = 0
      Height = 58
      Width = 736
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 390
    Width = 740
    Height = 65
    Align = alBottom
    Caption = #26816#26597#37096#20301
    TabOrder = 3
    object Label8: TLabel
      Left = 10
      Top = 16
      Width = 48
      Height = 13
      Caption = #39033#30446#21517#31216
    end
    object Label9: TLabel
      Left = 10
      Top = 38
      Width = 48
      Height = 13
      Caption = #26816#26597#37096#20301
    end
    object edt_xmmc: TcxTextEdit
      Left = 64
      Top = 13
      Enabled = False
      StyleDisabled.TextColor = clWindowText
      TabOrder = 0
      Text = 'edt_xmmc'
      Width = 481
    end
    object edt_jcbw: TcxTextEdit
      Left = 64
      Top = 35
      StyleDisabled.TextColor = clWindowText
      TabOrder = 1
      Text = 'edt_jcbw'
      Width = 481
    end
  end
  object GroupBox5: TGroupBox
    Left = 0
    Top = 455
    Width = 740
    Height = 42
    Align = alBottom
    TabOrder = 4
    object Label7: TLabel
      Left = 10
      Top = 15
      Width = 48
      Height = 13
      Caption = #30003#35831#21307#29983
    end
    object Label6: TLabel
      Left = 307
      Top = 15
      Width = 48
      Height = 13
      Caption = #26816#26597#26102#38388
    end
    object edt_sqys: TcxTextEdit
      Left = 64
      Top = 12
      StyleDisabled.TextColor = clWindowText
      TabOrder = 0
      Text = 'edt_sqys'
      Width = 129
    end
    object Button1: TButton
      Left = 559
      Top = 11
      Width = 75
      Height = 25
      Caption = #20445#23384
      TabOrder = 1
      OnClick = Button1Click
    end
    object dtp_jcrq: TDateTimePicker
      Left = 365
      Top = 12
      Width = 121
      Height = 21
      Hint = #20256#36755#21040#26816#26597#31185#23460#30340#26102#38388
      Date = 42002.656959432870000000
      Time = 42002.656959432870000000
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object Button2: TButton
      Left = 647
      Top = 11
      Width = 75
      Height = 25
      Caption = #21462#28040
      ModalResult = 2
      TabOrder = 3
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 32
    Top = 16
  end
end
