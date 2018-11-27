object frm_bryzcx: Tfrm_bryzcx
  Left = 0
  Top = 0
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderStyle = bsSingle
  Caption = #30149#20154#21307#22065#26597#35810
  ClientHeight = 610
  ClientWidth = 1018
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
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object ZZ: TcxPageControl
    Left = 0
    Top = 135
    Width = 1018
    Height = 439
    ActivePage = cxTabSheet1
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = [fsBold]
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    ParentFont = False
    Style = 6
    TabOrder = 1
    ClientRectBottom = 439
    ClientRectRight = 1018
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = #24403#26085#21307#22065'(F2)'
      ImageIndex = 6
      OnShow = cxTabSheet1Show
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 1018
        Height = 25
        Align = alTop
        BevelInner = bvLowered
        Caption = #30149#20154#24403#21069#27491#22312#25191#34892#21307#22065
        TabOrder = 0
        object Label2: TLabel
          Left = 10
          Top = 10
          Width = 25
          Height = 9
          AutoSize = False
          Color = clSkyBlue
          ParentColor = False
        end
        object Label3: TLabel
          Left = 41
          Top = 6
          Width = 98
          Height = 13
          Caption = #24403#22825#24050#25191#34892#21307#22065
        end
      end
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 25
        Width = 1018
        Height = 390
        Align = alClient
        TabOrder = 1
        object DBGridEh4: TDBGridEh
          Left = -1
          Top = 0
          Width = 1300
          Height = 468
          DataSource = ds_dryz
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = ANSI_CHARSET
          FooterFont.Color = clNavy
          FooterFont.Height = -13
          FooterFont.Name = #23435#20307
          FooterFont.Style = [fsBold]
          HorzScrollBar.Visible = False
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          PopupMenu = PopupMenu1
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -13
          TitleFont.Name = #23435#20307
          TitleFont.Style = [fsBold]
          UseMultiTitle = True
          VertScrollBar.VisibleMode = sbNeverShowEh
          OnColWidthsChanged = DBGridEh4ColWidthsChanged
          OnDrawColumnCell = DBGridEh4DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'lb'
              Footers = <>
              Title.Caption = #31867#21035
            end
            item
              EditButtons = <>
              FieldName = 'yzsx'
              Footers = <>
              Title.Caption = #23646#24615
            end
            item
              EditButtons = <>
              FieldName = 'kdrq'
              Footers = <>
              Title.Caption = #24320#22987#26102#38388
              Width = 79
            end
            item
              EditButtons = <>
              FieldName = 'ph'
              Footers = <>
              Title.Caption = #25209#21495
              Visible = False
              Width = 95
            end
            item
              EditButtons = <>
              FieldName = 'xmmc'
              Footers = <>
              Title.Caption = #39033#30446#21517#31216
              Width = 243
            end
            item
              EditButtons = <>
              FieldName = 'sl'
              Footers = <>
              Title.Caption = #25968#37327
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'dw'
              Footers = <>
              Title.Caption = #21333#20301
              Width = 35
            end
            item
              EditButtons = <>
              FieldName = 'ypyl'
              Footers = <>
              Title.Caption = #29992#37327
              Width = 41
            end
            item
              EditButtons = <>
              FieldName = 'yldw'
              Footers = <>
              Title.Caption = '  '
              Width = 17
            end
            item
              EditButtons = <>
              FieldName = 'ypyf'
              Footers = <>
              Title.Caption = #29992#27861
              Width = 41
            end
            item
              EditButtons = <>
              FieldName = 'yytj'
              Footers = <>
              Title.Caption = #29992#33647#36884#24452
              Width = 62
            end
            item
              EditButtons = <>
              FieldName = 'yplsj'
              Footers = <>
              Title.Caption = #21333#20215
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = 'jyyb'
              Footers = <>
              Title.Caption = #26816#39564#26679#26412
              Width = 38
            end
            item
              EditButtons = <>
              FieldName = 'bz'
              Footers = <>
              Title.Caption = #35828#26126
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'gg'
              Footers = <>
              Title.Caption = #35268#26684
              Width = 78
            end
            item
              EditButtons = <>
              FieldName = 'kdysmc'
              Footers = <>
              Title.Caption = #24320#21333
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'czksmc'
              Footers = <>
              Title.Caption = #22788#32622#31185#23460
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = 'zhzxsj'
              Footers = <>
              Title.Caption = #35745#36153#26102#38388
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'tzfs'
              Footers = <>
              Title.Caption = #32467#26463#26102#38388
              Width = 103
            end
            item
              EditButtons = <>
              FieldName = 'xmdm'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'ypdwid'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'zyh'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'id'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'ypbzbl'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'ypcgj'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'yplb'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'jcmd'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'tmh'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'tzbz'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'zfbz'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'zxbz'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'fzbz'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'tzrq'
              Footers = <>
              Title.Caption = #20572#27490#26085#26399
            end
            item
              EditButtons = <>
              FieldName = 'tzry'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'zfrq'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'zfry'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'zxrq'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'zxry'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'xgrq'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'xgry'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'czks'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'kdks'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'kdys'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'yzrq'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'shbz'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'shry'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'jcbw'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'jcff'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'ypkcbz'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'czys'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'fzph'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'drzxcs'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'yjjssj'
              Footers = <>
              Visible = False
            end>
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #27835#30103#35760#24405#65288'F3'#65289
      ImageIndex = 2
      OnShow = cxTabSheet2Show
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object PageControl1: TPageControl
        Left = 0
        Top = 41
        Width = 1018
        Height = 374
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = '  '#38271#26399#21307#22065'  '
          OnShow = TabSheet1Show
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object ScrollBox2: TScrollBox
            Left = 0
            Top = 0
            Width = 1010
            Height = 346
            Align = alClient
            TabOrder = 0
            object DBGridEh1: TDBGridEh
              Left = -1
              Top = -1
              Width = 1006
              Height = 420
              DataSource = ds_zxjl_cq
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = ANSI_CHARSET
              FooterFont.Color = clNavy
              FooterFont.Height = -13
              FooterFont.Name = #23435#20307
              FooterFont.Style = [fsBold]
              HorzScrollBar.Visible = False
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clNavy
              TitleFont.Height = -13
              TitleFont.Name = #23435#20307
              TitleFont.Style = [fsBold]
              UseMultiTitle = True
              VertScrollBar.VisibleMode = sbNeverShowEh
              OnColWidthsChanged = DBGridEh1ColWidthsChanged
              OnDrawColumnCell = DBGridEh1DrawColumnCell
              Columns = <
                item
                  Color = clWhite
                  EditButtons = <>
                  FieldName = 'ksrq'
                  Footers = <>
                  Title.Caption = #24320#22987#26085#26399
                  Width = 128
                end
                item
                  EditButtons = <>
                  FieldName = 'kdysmc'
                  Footers = <>
                  Title.Caption = #21307#29983
                  Width = 80
                end
                item
                  EditButtons = <>
                  FieldName = 'zxhsmc'
                  Footers = <>
                  Title.Caption = #25252#22763
                  Width = 80
                end
                item
                  EditButtons = <>
                  FieldName = 'xmmc'
                  Footers = <>
                  Title.Caption = #27835#30103#26041#27861
                  Width = 260
                end
                item
                  EditButtons = <>
                  FieldName = 'ypyf'
                  Footers = <>
                  Title.Caption = #29992#27861
                  Width = 57
                end
                item
                  EditButtons = <>
                  FieldName = 'yytj'
                  Footers = <>
                  Title.Caption = #29992#33647#36884#24452
                  Width = 66
                end
                item
                  EditButtons = <>
                  FieldName = 'sl'
                  Footers = <>
                  Title.Caption = #25968#37327
                  Width = 60
                end
                item
                  EditButtons = <>
                  FieldName = 'dw'
                  Footers = <>
                  Title.Caption = #21333#20301
                  Width = 60
                end
                item
                  EditButtons = <>
                  FieldName = 'tzrq'
                  Footers = <>
                  Title.Caption = #20572#27490#26085#26399
                  Width = 119
                end
                item
                  EditButtons = <>
                  FieldName = 'tzysmc'
                  Footers = <>
                  Title.Caption = #20572#27490#21307#29983
                  Width = 70
                end
                item
                  EditButtons = <>
                  FieldName = 'zhhsmc'
                  Footers = <>
                  Title.Caption = #20572#27490#25252#22763
                  Width = 65
                end>
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = '  '#20020#26102#21307#22065'  '
          ImageIndex = 1
          OnShow = TabSheet2Show
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object ScrollBox3: TScrollBox
            Left = 0
            Top = 0
            Width = 1010
            Height = 346
            Align = alClient
            TabOrder = 0
            object DBGridEh3: TDBGridEh
              Left = 5
              Top = 15
              Width = 1006
              Height = 407
              DataSource = ds_zxjl_ls
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = ANSI_CHARSET
              FooterFont.Color = clNavy
              FooterFont.Height = -13
              FooterFont.Name = #23435#20307
              FooterFont.Style = [fsBold]
              HorzScrollBar.Visible = False
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clNavy
              TitleFont.Height = -13
              TitleFont.Name = #23435#20307
              TitleFont.Style = [fsBold]
              VertScrollBar.VisibleMode = sbNeverShowEh
              OnColWidthsChanged = DBGridEh3ColWidthsChanged
              OnDrawColumnCell = DBGridEh3DrawColumnCell
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'ksrq'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #24320#22987#26085#26399
                  Width = 123
                end
                item
                  EditButtons = <>
                  FieldName = 'kdysmc'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #21307#29983
                  Width = 95
                end
                item
                  EditButtons = <>
                  FieldName = 'zxhsmc'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #25252#22763
                  Width = 80
                end
                item
                  EditButtons = <>
                  FieldName = 'xmmc'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #27835#30103#26041#27861
                  Width = 282
                end
                item
                  EditButtons = <>
                  FieldName = 'sl'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #25968#37327
                  Width = 60
                end
                item
                  EditButtons = <>
                  FieldName = 'dw'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #21333#20301
                  Width = 60
                end
                item
                  EditButtons = <>
                  FieldName = 'ypyf'
                  Footers = <>
                  Title.Caption = #29992#27861
                  Width = 56
                end
                item
                  EditButtons = <>
                  FieldName = 'yytj'
                  Footers = <>
                  Title.Caption = #29992#33647#36884#24452
                  Width = 67
                end
                item
                  EditButtons = <>
                  FieldName = 'gysj'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #32473#19982#26102#38388
                  Width = 70
                end>
            end
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1018
        Height = 41
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 1
        object Label5: TLabel
          Left = 24
          Top = 13
          Width = 56
          Height = 13
          Caption = #26465#30721#21495#65306
        end
        object edt_tmh: TEdit
          Left = 80
          Top = 7
          Width = 145
          Height = 21
          TabOrder = 0
          OnKeyDown = edt_tmhKeyDown
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 330
        Top = 152
        Width = 425
        Height = 215
        DataSource = ds_dj
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clNavy
        FooterFont.Height = -13
        FooterFont.Name = #23435#20307
        FooterFont.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -13
        TitleFont.Name = #23435#20307
        TitleFont.Style = [fsBold]
        Visible = False
        OnDblClick = DBGridEh2DblClick
        OnExit = DBGridEh2Exit
        OnKeyDown = DBGridEh2KeyDown
        Columns = <
          item
            EditButtons = <>
            FieldName = 'tmh'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #26465#30721#21495
            Width = 104
          end
          item
            EditButtons = <>
            FieldName = 'brxm'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #30149#20154#22995#21517
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'brxb'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #24615#21035
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'brnl'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #24180#40836
            Width = 80
          end>
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 1018
    Height = 50
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object Label39: TLabel
      Left = 2
      Top = 6
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
      Left = 645
      Top = 7
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
      Left = 809
      Top = 9
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
      Top = 29
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
      Left = 164
      Top = 29
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
      Left = 330
      Top = 29
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
      Left = 489
      Top = 29
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
      Left = 644
      Top = 29
      Width = 46
      Height = 15
      Caption = #20313' '#39069':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label48: TLabel
      Left = 330
      Top = 7
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
      Left = 809
      Top = 29
      Width = 46
      Height = 15
      Caption = #22791' '#27880':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label50: TLabel
      Left = 489
      Top = 10
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
    object Label1: TLabel
      Left = 164
      Top = 6
      Width = 68
      Height = 15
      Caption = #21307#22065#21307#29983':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object DBEdit9: TDBEdit
      Left = 73
      Top = 26
      Width = 87
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'ryrq'
      DataSource = ds_jbxx
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
      Left = 234
      Top = 26
      Width = 87
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'ryzd'
      DataSource = ds_jbxx
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
      Left = 399
      Top = 4
      Width = 83
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'ysxm'
      DataSource = ds_jbxx
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
      Left = 399
      Top = 26
      Width = 83
      Height = 21
      TabStop = False
      Color = clMoneyGreen
      Ctl3D = False
      DataField = 'yjze'
      DataSource = ds_jbxx
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
      Left = 557
      Top = 26
      Width = 81
      Height = 21
      Color = clMoneyGreen
      Ctl3D = False
      DataField = 'zfy'
      DataSource = ds_jbxx
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
      Left = 557
      Top = 4
      Width = 81
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'brxm'
      DataSource = ds_jbxx
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
      Left = 861
      Top = 3
      Width = 96
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'brnl'
      DataSource = ds_jbxx
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
      Left = 861
      Top = 28
      Width = 96
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'bz'
      DataSource = ds_jbxx
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
      Left = 696
      Top = 26
      Width = 96
      Height = 21
      Color = clMoneyGreen
      Ctl3D = False
      DataField = 'kyje'
      DataSource = ds_jbxx
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
      Left = 597
      Top = 59
      Width = 113
      Height = 23
      TabStop = False
      Color = clCream
      Ctl3D = True
      DataField = 'bz'
      DataSource = ds_jbxx
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
    object DBEdit20: TDBEdit
      Left = 696
      Top = 3
      Width = 96
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'brxb'
      DataSource = ds_jbxx
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
    object e_tmh: TEdit
      Left = 71
      Top = 4
      Width = 87
      Height = 21
      Color = clGradientActiveCaption
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 11
      OnExit = e_tmhExit
      OnKeyDown = e_tmhKeyDown
    end
    object e_yzys: TEdit
      Left = 234
      Top = 4
      Width = 87
      Height = 21
      Color = clCream
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 12
    end
  end
  object Panel12: TPanel
    Left = 0
    Top = 574
    Width = 1018
    Height = 36
    Align = alBottom
    BevelInner = bvLowered
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object BBtn_print_cq: TBitBtn
      Left = 40
      Top = 6
      Width = 92
      Height = 25
      Caption = #38271#26399#21307#22065#25171#21360
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BBtn_print_cqClick
    end
    object BBtn_print_ls: TBitBtn
      Left = 138
      Top = 6
      Width = 92
      Height = 25
      Caption = #20020#26102#21307#22065#25171#21360
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BBtn_print_lsClick
    end
    object bt_lsyz: TBitBtn
      Left = 798
      Top = 6
      Width = 84
      Height = 25
      Caption = #25191#34892#35760#24405'(&J)'
      TabOrder = 2
      OnClick = bt_lsyzClick
    end
    object bt_exit: TBitBtn
      Left = 935
      Top = 6
      Width = 75
      Height = 25
      Caption = #32467#26463'(&Q)'
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object QuickRep2: TQuickRep
    Left = 220
    Top = 1000
    Width = 688
    Height = 971
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep2BeforePrint
    DataSet = sp_zxjl_ls_dy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = B5
    Page.Values = (
      100.000000000000000000
      2570.000000000000000000
      100.000000000000000000
      1820.000000000000000000
      50.000000000000000000
      50.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    ShowProgress = False
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    object QRBand1: TQRBand
      Left = 19
      Top = 134
      Width = 650
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        74.083333333333330000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel15: TQRLabel
        Left = 520
        Top = 7
        Width = 28
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1375.833333333333000000
          18.520833333333330000
          74.083333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31614#21517':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRSysData2: TQRSysData
        Left = 331
        Top = 7
        Width = 27
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          875.770833333333300000
          18.520833333333330000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Transparent = False
        FontSize = 8
      end
      object QRLabel16: TQRLabel
        Left = 318
        Top = 7
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          841.375000000000000000
          18.520833333333330000
          34.395833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31532
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel17: TQRLabel
        Left = 353
        Top = 7
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          933.979166666666700000
          18.520833333333330000
          34.395833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39029
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRL_ys_ls: TQRLabel
        Left = 274
        Top = 7
        Width = 41
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          724.958333333333400000
          18.520833333333330000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_ys_ls'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRL_dysj_ls: TQRLabel
        Left = 8
        Top = 7
        Width = 52
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          21.166666666666670000
          18.520833333333330000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25171#21360#26102#38388':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand2: TQRBand
      Left = 19
      Top = 38
      Width = 650
      Height = 75
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        198.437500000000000000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape4: TQRShape
        Left = 0
        Top = 44
        Width = 650
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333330000
          0.000000000000000000
          116.416666666666700000
          1719.791666666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRL_yymc_ls: TQRLabel
        Left = 260
        Top = 2
        Width = 129
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          687.916666666666700000
          5.291666666666667000
          341.312500000000000000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_yymc_ls'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRL_brxm_ls: TQRLabel
        Left = 8
        Top = 30
        Width = 96
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          21.166666666666670000
          79.375000000000000000
          254.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_brxm_ls'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRL_tmh_ls: TQRLabel
        Left = 436
        Top = 30
        Width = 87
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1153.583333333333000000
          79.375000000000000000
          230.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_tmh_ls'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel22: TQRLabel
        Left = 12
        Top = 55
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          145.520833333333300000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26085#26399#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel23: TQRLabel
        Left = 94
        Top = 55
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          248.708333333333300000
          145.520833333333300000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#22065#32773
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel24: TQRLabel
        Left = 601
        Top = 55
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1590.145833333333000000
          145.520833333333300000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25191#34892#32773
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel25: TQRLabel
        Left = 298
        Top = 55
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          788.458333333333300000
          145.520833333333300000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307'  '#22065'  '#20869'  '#23481
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel27: TQRLabel
        Left = 526
        Top = 55
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1391.708333333333000000
          145.520833333333300000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32473#19982#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape16: TQRShape
        Left = -5
        Top = 49
        Width = 10
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          -13.229166666666670000
          129.645833333333300000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 137
        Top = 48
        Width = 10
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          362.479166666666700000
          127.000000000000000000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 78
        Top = 48
        Width = 10
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          206.375000000000000000
          127.000000000000000000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 581
        Top = 48
        Width = 10
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1537.229166666667000000
          127.000000000000000000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 510
        Top = 48
        Width = 10
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1349.375000000000000000
          127.000000000000000000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 644
        Top = 49
        Width = 10
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1703.916666666667000000
          129.645833333333300000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRL_bch_ls: TQRLabel
        Left = 548
        Top = 30
        Width = 87
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1449.916666666667000000
          79.375000000000000000
          230.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_bch_ls'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object xb_ls: TQRLabel
        Left = 136
        Top = 30
        Width = 38
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          359.833333333333300000
          79.375000000000000000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'xb_ls'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object nl_ls: TQRLabel
        Left = 192
        Top = 30
        Width = 34
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          508.000000000000000000
          79.375000000000000000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'nl_ls'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object zd_ls: TQRLabel
        Left = 255
        Top = 30
        Width = 177
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          674.687500000000000000
          79.375000000000000000
          468.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'zd_ls'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
    end
    object QRSubDetail2: TQRSubDetail
      Left = 19
      Top = 113
      Width = 650
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRSubDetail2BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        55.562500000000000000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep2
      OnNeedData = QRSubDetail2NeedData
      PrintBefore = False
      PrintIfEmpty = True
      object ksrq_ls: TQRLabel
        Left = 9
        Top = 3
        Width = 57
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          23.812500000000000000
          7.937500000000000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdys_ls: TQRLabel
        Left = 86
        Top = 3
        Width = 51
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          227.541666666666700000
          7.937500000000000000
          134.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object zxryxm_ls: TQRLabel
        Left = 591
        Top = 3
        Width = 54
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1563.687500000000000000
          7.937500000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'zxhsmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object zxsj_ls: TQRLabel
        Left = 522
        Top = 0
        Width = 53
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1381.125000000000000000
          0.000000000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'zxzxsj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc_ls: TQRLabel
        Left = 149
        Top = 3
        Width = 292
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          394.229166666666700000
          7.937500000000000000
          772.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ypyf_ls: TQRLabel
        Left = 447
        Top = 3
        Width = 60
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1182.687500000000000000
          7.937500000000000000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRImage1: TQRImage
        Left = 428
        Top = -2
        Width = 18
        Height = 20
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          1132.416666666667000000
          -5.291666666666667000
          47.625000000000000000)
        Picture.Data = {
          07544269746D6170DA010000424DDA010000000000003E000000280000001F00
          00006700000001000100000000009C0100000000000000000000020000000000
          000000000000FFFFFF001FFFFFFE1FFFFFFE1FFFFFFE0FFFFFFE0FFFFFFE0FFF
          FFFE0FFFFFFE07FFFFFE07FFFFFE87FFFFFE83FFFFFE83FFFFFEC3FFFFFEC1FF
          FFFEC1FFFFFEE1FFFFFEE1FFFFFEE0FFFFFEE0FFFFFEF0FFFFFEF07FFFFEF07F
          FFFEF87FFFFEF87FFFFEF83FFFFEF83FFFFEFC3FFFFEFC1FFFFEFC1FFFFEFE1F
          FFFEFE0FFFFEFE0FFFFEFF0FFFFEFF0FFFFEFF07FFFEFF07FFFEFF87FFFEFF83
          FFFEFF83FFFEFFC3FFFEFFC3FFFEFFC1FFFEFFC1FFFEFFE1FFFEFFE0FFFEFFE0
          FFFEFFF0FFFEFFF07FFEFFF07FFEFFF87FFEFFF87FFEFFF83FFEFFF83FFEFFFC
          3FFEFFFC1FFEFFFC1FFEFFFE1FFEFFFE0FFEFFFE0FFEFFFF0FFEFFFF0FFEFFFF
          07FEFFFF07FEFFFF87FEFFFF83FEFFFF83FEFFFFC3FEFFFFC3FEFFFFC1FEFFFF
          C1FEFFFFE1FEFFFFE0FEFFFFE0FEFFFFF0FEFFFFF07EFFFFF07EFFFFF87EFFFF
          F87EFFFFF83EFFFFF83EFFFFFC3EFFFFFC1EFFFFFC1EFFFFFE1EFFFFFE1EFFFF
          FE0EFFFFFE0EFFFFFF0EFFFFFF06FFFFFF06FFFFFF86FFFFFF82FFFFFF82FFFF
          FFC2FFFFFFC2FFFFFFC0FFFFFFC0FFFFFFE0FFFFFFE0FFFFFFE0FFFFFFF0FFFF
          FFF0FFFFFFF0}
        Stretch = True
      end
    end
  end
  object QuickRep1: TQuickRep
    Left = -5
    Top = 1000
    Width = 688
    Height = 971
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep1BeforePrint
    DataSet = sp_zxjl_cq_dy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = B5
    Page.Values = (
      100.000000000000000000
      2570.000000000000000000
      100.000000000000000000
      1820.000000000000000000
      50.000000000000000000
      50.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    ShowProgress = False
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    object PageFooterBand1: TQRBand
      Left = 19
      Top = 163
      Width = 650
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        82.020833333333330000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel13: TQRLabel
        Left = 520
        Top = 7
        Width = 28
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1375.833333333333000000
          18.520833333333330000
          74.083333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31614#21517':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRSysData1: TQRSysData
        Left = 331
        Top = 6
        Width = 27
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          875.770833333333300000
          15.875000000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Transparent = False
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 318
        Top = 6
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          841.375000000000000000
          15.875000000000000000
          34.395833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31532
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 353
        Top = 6
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          933.979166666666700000
          15.875000000000000000
          34.395833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39029
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRL_ys_cq: TQRLabel
        Left = 274
        Top = 6
        Width = 41
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          724.958333333333400000
          15.875000000000000000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_ys_cq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRL_dysj_cq: TQRLabel
        Left = 8
        Top = 7
        Width = 52
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          21.166666666666670000
          18.520833333333330000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25171#21360#26102#38388':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 19
      Top = 38
      Width = 650
      Height = 102
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        269.875000000000000000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape1: TQRShape
        Left = 0
        Top = 44
        Width = 650
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333330000
          0.000000000000000000
          116.416666666666700000
          1719.791666666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRL_yymc_cq: TQRLabel
        Left = 257
        Top = 0
        Width = 136
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          679.979166666666700000
          0.000000000000000000
          359.833333333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_yymc_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRL_brxm_cq: TQRLabel
        Left = 8
        Top = 30
        Width = 101
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          21.166666666666670000
          79.375000000000000000
          267.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_brxm_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRL_tmh_cq: TQRLabel
        Left = 427
        Top = 30
        Width = 92
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1129.770833333333000000
          79.375000000000000000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_tmh_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object sj1: TQRLabel
        Left = 11
        Top = 72
        Width = 31
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          29.104166666666670000
          190.500000000000000000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #26085#26399#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 54
        Top = 79
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          142.875000000000000000
          209.020833333333300000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#22065#32773
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 102
        Top = 79
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          269.875000000000000000
          209.020833333333300000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #25191#34892#32773
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 258
        Top = 60
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          682.625000000000000000
          158.750000000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38271'   '#26399'  '#21307'   '#22065
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object sj3: TQRLabel
        Left = 460
        Top = 72
        Width = 33
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          1217.083333333333000000
          190.500000000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #26085#26399#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape2: TQRShape
        Left = -2
        Top = 64
        Width = 191
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          -5.291666666666667000
          169.333333333333300000
          505.354166666666700000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel8: TQRLabel
        Left = 91
        Top = 51
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          240.770833333333300000
          134.937500000000000000
          66.145833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24320#22987
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape3: TQRShape
        Left = -4
        Top = 49
        Width = 5
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          -10.583333333333330000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 185
        Top = 49
        Width = 5
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          489.479166666666700000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 501
        Top = 71
        Width = 5
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666670000
          1325.562500000000000000
          187.854166666666700000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel9: TQRLabel
        Left = 543
        Top = 55
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1436.687500000000000000
          145.520833333333300000
          66.145833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20572#27490
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape9: TQRShape
        Left = 449
        Top = 66
        Width = 199
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          1187.979166666667000000
          174.625000000000000000
          526.520833333333300000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel10: TQRLabel
        Left = 512
        Top = 79
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1354.666666666667000000
          209.020833333333300000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#22065#32773
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 559
        Top = 79
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1479.020833333333000000
          209.020833333333300000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25191#34892#32773
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape10: TQRShape
        Left = 46
        Top = 71
        Width = 5
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666670000
          121.708333333333300000
          187.854166666666700000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 92
        Top = 71
        Width = 5
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666670000
          243.416666666666700000
          187.854166666666700000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 447
        Top = 49
        Width = 5
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          1182.687500000000000000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 646
        Top = 49
        Width = 5
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          1709.208333333333000000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 552
        Top = 71
        Width = 5
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666670000
          1460.500000000000000000
          187.854166666666700000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRL_bch_cq: TQRLabel
        Left = 556
        Top = 30
        Width = 92
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1471.083333333333000000
          79.375000000000000000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_bch_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape6: TQRShape
        Left = 141
        Top = 71
        Width = 5
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666670000
          373.062500000000000000
          187.854166666666700000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object sj2: TQRLabel
        Left = 151
        Top = 72
        Width = 31
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          399.520833333333300000
          190.500000000000000000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #25191#34892#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape7: TQRShape
        Left = 599
        Top = 69
        Width = 5
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666670000
          1584.854166666667000000
          182.562500000000000000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object sj4: TQRLabel
        Left = 610
        Top = 72
        Width = 31
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          1613.958333333333000000
          190.500000000000000000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #25191#34892#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xb_cq: TQRLabel
        Left = 136
        Top = 30
        Width = 43
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          359.833333333333300000
          79.375000000000000000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'xb_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object nl_cq: TQRLabel
        Left = 192
        Top = 30
        Width = 39
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          508.000000000000000000
          79.375000000000000000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'nl_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object zd_cq: TQRLabel
        Left = 248
        Top = 30
        Width = 177
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          656.166666666666700000
          79.375000000000000000
          468.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'zd_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 19
      Top = 140
      Width = 650
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRSubDetail1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        60.854166666666670000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      OnNeedData = QRSubDetail1NeedData
      PrintBefore = False
      PrintIfEmpty = True
      object ksrq: TQRLabel
        Left = 3
        Top = 2
        Width = 46
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          5.291666666666667000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object zxhsmc: TQRLabel
        Left = 99
        Top = 2
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          261.937500000000000000
          5.291666666666667000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'zxhsmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc: TQRLabel
        Left = 193
        Top = 2
        Width = 183
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          510.645833333333300000
          5.291666666666667000
          484.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object tzrq: TQRLabel
        Left = 456
        Top = 2
        Width = 46
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1206.500000000000000000
          5.291666666666667000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'tzrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object tzysmc: TQRLabel
        Left = 508
        Top = 2
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1344.083333333333000000
          5.291666666666667000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'tzysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object zhhsmc: TQRLabel
        Left = 554
        Top = 2
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1465.791666666667000000
          5.291666666666667000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'zhhsmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ypyf: TQRLabel
        Left = 394
        Top = 2
        Width = 60
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1042.458333333333000000
          5.291666666666667000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object zxzxsj: TQRLabel
        Left = 143
        Top = 2
        Width = 46
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          378.354166666666700000
          5.291666666666667000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'zxzxsj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object zhzxsj: TQRLabel
        Left = 601
        Top = 3
        Width = 46
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1590.145833333333000000
          7.937500000000000000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'zhzxsj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc: TQRLabel
        Left = 49
        Top = 2
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          129.645833333333300000
          5.291666666666667000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRgrImage1: TQRImage
        Left = 382
        Top = 2
        Width = 16
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          1010.708333333333000000
          5.291666666666667000
          42.333333333333330000)
        Picture.Data = {
          07544269746D6170DA010000424DDA010000000000003E000000280000001F00
          00006700000001000100000000009C0100000000000000000000020000000000
          000000000000FFFFFF001FFFFFFE1FFFFFFE1FFFFFFE0FFFFFFE0FFFFFFE0FFF
          FFFE0FFFFFFE07FFFFFE07FFFFFE87FFFFFE83FFFFFE83FFFFFEC3FFFFFEC1FF
          FFFEC1FFFFFEE1FFFFFEE1FFFFFEE0FFFFFEE0FFFFFEF0FFFFFEF07FFFFEF07F
          FFFEF87FFFFEF87FFFFEF83FFFFEF83FFFFEFC3FFFFEFC1FFFFEFC1FFFFEFE1F
          FFFEFE0FFFFEFE0FFFFEFF0FFFFEFF0FFFFEFF07FFFEFF07FFFEFF87FFFEFF83
          FFFEFF83FFFEFFC3FFFEFFC3FFFEFFC1FFFEFFC1FFFEFFE1FFFEFFE0FFFEFFE0
          FFFEFFF0FFFEFFF07FFEFFF07FFEFFF87FFEFFF87FFEFFF83FFEFFF83FFEFFFC
          3FFEFFFC1FFEFFFC1FFEFFFE1FFEFFFE0FFEFFFE0FFEFFFF0FFEFFFF0FFEFFFF
          07FEFFFF07FEFFFF87FEFFFF83FEFFFF83FEFFFFC3FEFFFFC3FEFFFFC1FEFFFF
          C1FEFFFFE1FEFFFFE0FEFFFFE0FEFFFFF0FEFFFFF07EFFFFF07EFFFFF87EFFFF
          F87EFFFFF83EFFFFF83EFFFFFC3EFFFFFC1EFFFFFC1EFFFFFE1EFFFFFE1EFFFF
          FE0EFFFFFE0EFFFFFF0EFFFFFF06FFFFFF06FFFFFF86FFFFFF82FFFFFF82FFFF
          FFC2FFFFFFC2FFFFFFC0FFFFFFC0FFFFFFE0FFFFFFE0FFFFFFE0FFFFFFF0FFFF
          FFF0FFFFFFF0}
        Stretch = True
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 50
    Width = 1018
    Height = 85
    Align = alTop
    Caption = 'Panel4'
    TabOrder = 5
    object RichEdit1: TRichEdit
      Left = 1
      Top = 1
      Width = 1016
      Height = 83
      Align = alClient
      BorderStyle = bsNone
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
    end
  end
  object RichEdit2: TRichEdit
    Left = 8
    Top = 72
    Width = 1018
    Height = 47
    BorderStyle = bsNone
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 6
    Visible = False
  end
  object ds_ypyf: TDataSource
    DataSet = qry_ypyf
    Left = 480
    Top = 416
  end
  object qry_ypyf: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from sys_ypyf')
    Left = 480
    Top = 456
  end
  object ds_gytj: TDataSource
    DataSet = qry_gytj
    Left = 768
    Top = 416
  end
  object qry_gytj: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from sys_gytj')
    Left = 776
    Top = 456
  end
  object qry_yz: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qry_yzBeforeInsert
    AfterInsert = qry_yzAfterInsert
    AfterScroll = qry_yzAfterScroll
    Parameters = <
      item
        Name = 'cxyzrq'
        Attributes = [paSigned, paNullable]
        DataType = ftDateTime
        Precision = 10
        Size = 4
        Value = 0d
      end
      item
        Name = 'cxzyh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'cxyzsx'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'cxlb'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from zybl_zyyz where datediff(day,yzrq,:cxyzrq)=0 and z' +
        'yh=:cxzyh and yzsx=:cxyzsx and lb=:cxlb and zxbz=0')
    Left = 696
    Top = 456
    object qry_yzid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qry_yzph: TStringField
      FieldName = 'ph'
      Size = 16
    end
    object qry_yztmh: TStringField
      FieldName = 'tmh'
      Size = 9
    end
    object qry_yzzyh: TStringField
      FieldName = 'zyh'
      FixedChar = True
      Size = 16
    end
    object qry_yzxmdm: TStringField
      FieldName = 'xmdm'
      Size = 14
    end
    object qry_yzxmmc: TStringField
      FieldName = 'xmmc'
      Size = 100
    end
    object qry_yzlb: TStringField
      FieldName = 'lb'
      FixedChar = True
      Size = 4
    end
    object qry_yzdw: TStringField
      FieldName = 'dw'
      Size = 10
    end
    object qry_yzypdwid: TIntegerField
      FieldName = 'ypdwid'
    end
    object qry_yzypbzbl: TIntegerField
      FieldName = 'ypbzbl'
    end
    object qry_yzsl: TIntegerField
      FieldName = 'sl'
    end
    object qry_yzyplsj: TBCDField
      FieldName = 'yplsj'
      Precision = 18
    end
    object qry_yzypcgj: TBCDField
      FieldName = 'ypcgj'
      Precision = 18
    end
    object qry_yzypyf: TStringField
      FieldName = 'ypyf'
      FixedChar = True
      Size = 4
    end
    object qry_yzypyl: TStringField
      FieldName = 'ypyl'
      Size = 10
    end
    object qry_yzyldw: TStringField
      FieldName = 'yldw'
      Size = 10
    end
    object qry_yzyytj: TStringField
      DisplayWidth = 8
      FieldName = 'yytj'
      FixedChar = True
      Size = 8
    end
    object qry_yzyplb: TStringField
      FieldName = 'yplb'
      FixedChar = True
      Size = 10
    end
    object qry_yzjcmd: TStringField
      FieldName = 'jcmd'
      Size = 100
    end
    object qry_yztzbz: TBooleanField
      FieldName = 'tzbz'
    end
    object qry_yzzfbz: TBooleanField
      FieldName = 'zfbz'
    end
    object qry_yzzxbz: TBooleanField
      FieldName = 'zxbz'
    end
    object qry_yzfzbz: TIntegerField
      FieldName = 'fzbz'
    end
    object qry_yztzrq: TDateTimeField
      FieldName = 'tzrq'
    end
    object qry_yztzry: TStringField
      FieldName = 'tzry'
      FixedChar = True
      Size = 4
    end
    object qry_yzzfrq: TDateTimeField
      FieldName = 'zfrq'
    end
    object qry_yzzfry: TStringField
      FieldName = 'zfry'
      FixedChar = True
      Size = 4
    end
    object qry_yzzxrq: TDateTimeField
      FieldName = 'zxrq'
    end
    object qry_yzzxry: TStringField
      FieldName = 'zxry'
      FixedChar = True
      Size = 4
    end
    object qry_yzxgrq: TDateTimeField
      FieldName = 'xgrq'
    end
    object qry_yzxgry: TStringField
      FieldName = 'xgry'
      FixedChar = True
      Size = 4
    end
    object qry_yzczks: TStringField
      FieldName = 'czks'
      FixedChar = True
      Size = 4
    end
    object qry_yzkdks: TStringField
      FieldName = 'kdks'
      FixedChar = True
      Size = 4
    end
    object qry_yzkdrq: TDateTimeField
      FieldName = 'kdrq'
    end
    object qry_yzkdys: TStringField
      FieldName = 'kdys'
      FixedChar = True
      Size = 4
    end
    object qry_yzyzrq: TDateTimeField
      FieldName = 'yzrq'
    end
    object qry_yzyzsx: TStringField
      FieldName = 'yzsx'
      FixedChar = True
      Size = 4
    end
    object qry_yzshbz: TBooleanField
      FieldName = 'shbz'
    end
    object qry_yzshry: TStringField
      FieldName = 'shry'
      FixedChar = True
      Size = 4
    end
    object qry_yzjcbw: TStringField
      FieldName = 'jcbw'
      Size = 50
    end
    object qry_yzjcff: TStringField
      FieldName = 'jcff'
      Size = 50
    end
    object qry_yzypkcbz: TBooleanField
      FieldName = 'ypkcbz'
    end
    object qry_yzczys: TStringField
      FieldName = 'czys'
      Size = 4
    end
    object qry_yzgg: TStringField
      FieldName = 'gg'
      Size = 50
    end
    object qry_yzczksmc: TStringField
      FieldKind = fkLookup
      FieldName = 'czksmc'
      LookupDataSet = qry_ks
      LookupKeyFields = 'dm'
      LookupResultField = 'mc'
      KeyFields = 'czks'
      Lookup = True
    end
    object qry_yzfzph: TStringField
      FieldName = 'fzph'
    end
    object qry_yzbz: TStringField
      FieldName = 'bz'
      Size = 100
    end
    object qry_yzjyyb: TStringField
      FieldName = 'jyyb'
      Size = 10
    end
    object qry_yzxh: TIntegerField
      FieldName = 'xh'
    end
    object qry_yzjyflbh: TStringField
      FieldName = 'jyflbh'
    end
  end
  object ds_yz: TDataSource
    DataSet = qry_yz
    Left = 688
    Top = 416
  end
  object ds_cx_yp_yz: TDataSource
    DataSet = sp_cx_yp_yz
    Left = 376
    Top = 416
  end
  object qry_yldw: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select distinct yldw,b.code pym '
      'from sys_ypdm a,sys_pym b'
      
        'where a.yldw *=b.text and yldw is not null and yldw<>'#39#39' order by' +
        ' yldw')
    Left = 592
    Top = 456
  end
  object ds_yldw: TDataSource
    DataSet = qry_yldw
    Left = 592
    Top = 416
  end
  object qry_mb: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'Varid1'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Varid2'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'Select aa.yzlb,aa.sl,bb.xmdm,bb.xmmc,bb.hotkey,bb.dw,bb.bz,bb.qy' +
        'bz,'#39#39' as zydwid,'#39#39' as ypbzbl,0 as ypcgj,0 as yplsj,'#39#39' as yldw fr' +
        'om  zybl_ztmx aa,sys_yzxm bb '
      'where aa.ztid=:Varid1 And aa.yzdm=bb.xmdm'
      'union'
      
        'Select aa.yzlb,aa.sl,aa.yzdm,bb.ypmc,'#39#39' as hotkey,bb.zyyfdw,bb.b' +
        'z,bb.sybz,bb.zydwid,bb.zyyfzhl as ypbzbl,bb.zypfj as ypcgj,bb.zy' +
        'lsj as yplsj,bb.yldw from  zybl_ztmx aa,sys_ypdm bb'
      'where aa.ztid=:Varid2 and aa.yzdm=bb.ypdm '
      'Order by yzlb ')
    Left = 104
    Top = 192
  end
  object qry_ks: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select dm,mc,pym,kssx  from sys_ksdm where sybz=1 and kssx <>'#39'16' +
        #39' ')
    Left = 520
    Top = 456
  end
  object ds_ks: TDataSource
    DataSet = qry_ks
    Left = 520
    Top = 416
  end
  object sp_cx_yzxm: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_yzcx_dryzxm'
    Parameters = <
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@yzsx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 6
        Value = Null
      end>
    Left = 624
    Top = 456
  end
  object ds_cx_yzxm: TDataSource
    DataSet = sp_cx_yzxm
    Left = 624
    Top = 416
  end
  object sp_jbxx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'bqgl_cx_zybrjbqk;1'
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
        Name = '@xm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@bch'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 736
    Top = 456
  end
  object ds_jbxx: TDataSource
    DataSet = sp_jbxx
    Left = 728
    Top = 416
  end
  object qry_pub: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'Varid1'
        Size = -1
        Value = Null
      end
      item
        Name = 'Varid2'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'Select aa.yzlb,aa.sl,bb.xmdm,bb.xmmc,bb.hotkey,bb.dw,bb.bz,bb.qy' +
        'bz,'#39#39' as zydwid,'#39#39' as ypbzbl,0 as ypcgj,0 as yplsj,'#39#39' as yldw fr' +
        'om  zybl_ztmx aa,sys_yzxm bb '
      'where aa.ztid=:Varid1 And aa.yzdm=bb.xmdm'
      'union'
      
        'Select aa.yzlb,aa.sl,aa.yzdm,bb.ypmc,'#39#39' as hotkey,bb.zyyfdw,bb.b' +
        'z,bb.sybz,bb.zydwid,bb.zyyfzhl as ypbzbl,bb.zypfj as ypcgj,bb.zy' +
        'lsj as yplsj,bb.yldw from  zybl_ztmx aa,sys_ypdm bb'
      'where aa.ztid=:Varid2 and aa.yzdm=bb.ypdm '
      'Order by yzlb ')
    Left = 136
    Top = 192
  end
  object ds_brxx: TDataSource
    Left = 608
    Top = 312
  end
  object sp_dryz: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = sp_dryzAfterOpen
    ProcedureName = 'zybl_cx_dryzxm;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@yzsx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 552
    Top = 456
  end
  object ds_dryz: TDataSource
    DataSet = sp_dryz
    Left = 552
    Top = 416
  end
  object qry_yfdm: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'ksdm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select a.*,b.mc xgksmc,c.mc chyfmc,d.mc cyyfmc,e.mc zjyfmc,f.mc ' +
        'clyfmc '
      
        'from sys_ksdm a,sys_ksdm b ,sys_ksdm c,sys_ksdm d,sys_ksdm e ,sy' +
        's_ksdm f  '
      'where a.xgks *= b.dm and'
      '      a.chyf *= c.dm and'
      '      a.cyyf *= d.dm and'
      '      a.zjyf *= e.dm and'
      '      a.clyf *= f.dm and'
      'a.dm =:ksdm')
    Left = 114
    Top = 280
  end
  object qry_yzlist: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from zybl_zyyz_list')
    Left = 168
    Top = 192
  end
  object qry_ypyz: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 72
    Top = 272
  end
  object qry_ys: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = qry_ysAfterScroll
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
      'select dm,mc,ksdm,pym from sys_czy where ysbz= 1 and ksdm= :ksdm')
    Left = 664
    Top = 456
  end
  object ds_ys: TDataSource
    DataSet = qry_ys
    Left = 656
    Top = 416
  end
  object PopupMenu1: TPopupMenu
    Left = 94
    Top = 478
    object N1: TMenuItem
      Caption = #21333#20010#20572#27490#21307#22065
      OnClick = N1Click
    end
    object aptzyz: TMenuItem
      Caption = #25209#37327#20572#27490#21307#22065
      OnClick = aptzyzClick
    end
    object N2: TMenuItem
      Caption = #20462' '#25913'  '#21307' '#22065
      OnClick = N2Click
    end
  end
  object sp_cx_yp_yz: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_cx_ypyz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pym'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@jsfs'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@lb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@ls'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end>
    Left = 376
    Top = 456
  end
  object qry_ztyz: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from zybl_zyyz where 1=2')
    Left = 72
    Top = 192
  end
  object qry_yzsx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from zybl_yzclb where lb = '#39'01'#39)
    Left = 176
    Top = 235
  end
  object ds_yzsx: TDataSource
    DataSet = qry_yzsx
    Left = 144
    Top = 501
  end
  object qry_xmyz: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select xmdm,xmmc,lb  from zybl_zyyz where 1=2')
    Left = 72
    Top = 256
  end
  object qru_yzxg: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 109
    Top = 269
  end
  object sp_yzup_list: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_yzup_list;1'
    Parameters = <
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 50
        Value = Null
      end>
    Left = 144
    Top = 312
  end
  object sp_zxjl_ls: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = sp_zxjl_lsAfterOpen
    ProcedureName = 'zybl_cx_yzzxjl;1'
    Parameters = <
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = ' '
      end
      item
        Name = '@fs'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 336
    Top = 448
  end
  object ds_zxjl_ls: TDataSource
    DataSet = sp_zxjl_ls
    Left = 337
    Top = 416
  end
  object ds_zxjl_cq: TDataSource
    DataSet = sp_zxjl_cq
    Left = 408
    Top = 416
  end
  object sp_zxjl_cq: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = sp_zxjl_cqAfterOpen
    ProcedureName = 'zybl_cx_yzzxjl;1'
    Parameters = <
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = ' '
      end
      item
        Name = '@fs'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 408
    Top = 456
  end
  object qry_dj: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'zyh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'tmh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 9
        Value = Null
      end
      item
        Name = 'ksdm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from zysf_zydj where (zyh=:zyh or tmh like :tmh) and ks' +
        'dm=:ksdm')
    Left = 448
    Top = 456
  end
  object ds_dj: TDataSource
    DataSet = qry_dj
    Left = 448
    Top = 416
  end
  object sp_cx_yzyljssl: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zyyz_cx_ypyljsypsl'
    Parameters = <
      item
        Name = '@ypdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 14
        Value = Null
      end
      item
        Name = '@ypyf'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ypyl'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Value = Null
      end>
    Left = 147
    Top = 265
  end
  object qry_yzmbmx: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from zybl_ztmx where 1=2')
    Left = 145
    Top = 271
  end
  object sp_cx_tzyz_xx: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_cx_yztz'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ph'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@xmdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end>
    Left = 176
    Top = 264
  end
  object PopupMenu2: TPopupMenu
    Left = 62
    Top = 534
    object N3: TMenuItem
      Caption = #36755#28082#20998#32452
    end
    object N4: TMenuItem
      Caption = #21462#28040#20998#32452
    end
  end
  object sp_zxjl_cq_dy: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    ProcedureName = 'zybl_cx_yzzxjl_print;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@fs'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 72
    Top = 304
  end
  object sp_zxjl_ls_dy: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    ProcedureName = 'zybl_cx_yzzxjl_print;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@fs'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 112
    Top = 304
  end
  object sp_get_maxxh: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_zyyz_getmaxxh'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end>
    Left = 312
    Top = 216
  end
  object sp_set_xh: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_zyyz_setxh'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@dqid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@dqxh'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@tzfx'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 368
    Top = 240
  end
  object sp_yzsj: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zyyz_yzsj'
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
    Left = 664
    Top = 240
  end
  object sp_tzyz: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_zyyz_up_tzyz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@zxsj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end
      item
        Name = '@tzyzsj'
        Attributes = [paNullable]
        DataType = ftDateTime
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
        Name = '@id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@fzph'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 752
    Top = 240
  end
  object ADODataSet1: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select * from yzcx_tz Where jssj>=GetDate()-2 and qrfs=1  and id' +
      '=:id order by pxxh ,id'
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 369
    Top = 206
  end
end
