object frm_zxypyz: Tfrm_zxypyz
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #21307#22065#35745#36153
  ClientHeight = 735
  ClientWidth = 1770
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  ShowHint = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 57
    Width = 1770
    Height = 678
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = #21307#22065#35760#36153
      OnShow = TabSheet1Show
      object groupbox8: TPanel
        Left = 0
        Top = 35
        Width = 179
        Height = 591
        Align = alLeft
        BevelInner = bvLowered
        TabOrder = 0
        object DBGridEh1: TDBGridEh
          Left = 2
          Top = 2
          Width = 175
          Height = 587
          Align = alClient
          DataGrouping.GroupLevels = <>
          DataSource = ds_brxx
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = ANSI_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          RowDetailPanel.Color = clBtnFace
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          OnCellClick = DBGridEh1CellClick
          OnDrawColumnCell = DBGridEh1DrawColumnCell
          OnKeyPress = DBGridEh1KeyPress
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
              Width = 65
            end
            item
              EditButtons = <>
              FieldName = 'ksmc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #31185#23460
            end
            item
              EditButtons = <>
              FieldName = 'jfbz'
              Footers = <>
              Visible = False
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object groupbox2: TPanel
        Left = 179
        Top = 35
        Width = 1583
        Height = 591
        Align = alClient
        TabOrder = 1
        object Panel6: TPanel
          Left = 1
          Top = 556
          Width = 1581
          Height = 34
          Align = alBottom
          BevelInner = bvLowered
          TabOrder = 0
          object SpeedButton1: TSpeedButton
            Left = 730
            Top = 6
            Width = 38
            Height = 22
            Caption = #21047#26032
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton1Click
          end
          object cxButton6: TcxButton
            Left = 774
            Top = 6
            Width = 61
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
            Left = 647
            Top = 6
            Width = 78
            Height = 23
            Caption = #35760#36153#35760#24405'(&T)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = cxButton3Click
          end
          object bt_jf: TcxButton
            Left = 5
            Top = 7
            Width = 73
            Height = 22
            Caption = #21307#22065#35745#36153
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = bt_jfClick
          end
          object cxButton5: TcxButton
            Left = 561
            Top = 6
            Width = 80
            Height = 23
            Caption = #33647#21697#25209#37327#36890#30693
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = cxButton5Click
          end
          object cxButton1: TcxButton
            Left = 352
            Top = 6
            Width = 110
            Height = 22
            Caption = #21475#26381#33647#35760#36153
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Visible = False
            OnClick = cxButton1Click
          end
          object cxButton2: TcxButton
            Left = 476
            Top = 6
            Width = 73
            Height = 22
            Caption = #26448#26009#35745#36153
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = cxButton2Click
          end
          object cxButton7: TcxButton
            Left = 168
            Top = 6
            Width = 73
            Height = 22
            Caption = #34917#24405#36153#29992
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnClick = cxButton7Click
          end
          object cxButton8: TcxButton
            Left = 253
            Top = 6
            Width = 86
            Height = 22
            Caption = #36864#33647#21010#20215
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnClick = cxButton8Click
          end
          object cxButton9: TcxButton
            Left = 89
            Top = 6
            Width = 73
            Height = 22
            Caption = #25209#37327#35745#36153
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnClick = cxButton9Click
          end
          object Button5: TButton
            Left = 841
            Top = 6
            Width = 75
            Height = 25
            Caption = #21307#22065#25191#34892
            TabOrder = 9
            OnClick = Button5Click
          end
        end
        object ScrollBox1: TScrollBox
          Left = 1
          Top = 1
          Width = 1581
          Height = 555
          Align = alClient
          TabOrder = 1
          object DBGridEh4: TDBGridEh
            Left = 0
            Top = 0
            Width = 1577
            Height = 551
            Align = alClient
            DataGrouping.GroupLevels = <>
            DataSource = ds_dryz
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = ANSI_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -15
            FooterFont.Name = #23435#20307
            FooterFont.Style = []
            HorzScrollBar.Visible = False
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            RowDetailPanel.Color = clBtnFace
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = #23435#20307
            TitleFont.Style = []
            UseMultiTitle = True
            OnCellClick = DBGridEh4CellClick
            OnColWidthsChanged = DBGridEh4ColWidthsChanged
            OnDrawColumnCell = DBGridEh4DrawColumnCell
            OnExit = DBGridEh4Exit
            Columns = <
              item
                EditButtons = <>
                FieldName = 'sfjf'
                Footers = <>
                Title.Caption = #26159#21542#35745#36153
                Width = 39
              end
              item
                EditButtons = <>
                FieldName = 'lb'
                Footers = <>
                ReadOnly = True
                Title.Caption = #31867#21035
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'yzsx'
                Footers = <>
                ReadOnly = True
                Title.Caption = #23646#24615
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'kdrq'
                Footers = <>
                ReadOnly = True
                Title.Caption = #24320#22987#26102#38388
                Width = 151
              end
              item
                EditButtons = <>
                FieldName = 'ph'
                Footers = <>
                ReadOnly = True
                Title.Caption = #25209#21495
                Visible = False
                Width = 95
              end
              item
                EditButtons = <>
                FieldName = 'xmmc'
                Footers = <>
                ReadOnly = True
                Title.Caption = #39033#30446#21517#31216
                Width = 221
              end
              item
                EditButtons = <>
                FieldName = 'sl'
                Footers = <>
                ReadOnly = True
                Title.Caption = #25968#37327
                Width = 45
              end
              item
                EditButtons = <>
                FieldName = 'dw'
                Footers = <>
                ReadOnly = True
                Title.Caption = #21333#20301
                Width = 35
              end
              item
                EditButtons = <>
                FieldName = 'ypyl'
                Footers = <>
                ReadOnly = True
                Title.Caption = #29992#37327
                Width = 41
              end
              item
                EditButtons = <>
                FieldName = 'yldw'
                Footers = <>
                ReadOnly = True
                Title.Caption = '  '
                Width = 17
              end
              item
                EditButtons = <>
                FieldName = 'ypyf'
                Footers = <>
                ReadOnly = True
                Title.Caption = #29992#27861
                Width = 41
              end
              item
                EditButtons = <>
                FieldName = 'yytj'
                Footers = <>
                ReadOnly = True
                Title.Caption = #29992#33647#36884#24452
                Width = 40
              end
              item
                EditButtons = <>
                FieldName = 'tzrq'
                Footers = <>
                ReadOnly = True
                Width = 128
              end
              item
                EditButtons = <>
                FieldName = 'yplsj'
                Footers = <>
                ReadOnly = True
                Title.Caption = #21333#20215
                Width = 52
              end
              item
                EditButtons = <>
                FieldName = 'jyyb'
                Footers = <>
                ReadOnly = True
                Title.Caption = #26816#39564#26679#26412
                Width = 38
              end
              item
                EditButtons = <>
                FieldName = 'bz'
                Footers = <>
                ReadOnly = True
                Title.Caption = #35828#26126
                Width = 58
              end
              item
                EditButtons = <>
                FieldName = 'gg'
                Footers = <>
                ReadOnly = True
                Title.Caption = #35268#26684
                Width = 78
              end
              item
                EditButtons = <>
                FieldName = 'kdysmc'
                Footers = <>
                ReadOnly = True
                Title.Caption = #24320#21333
                Width = 48
              end
              item
                EditButtons = <>
                FieldName = 'czksmc'
                Footers = <>
                ReadOnly = True
                Title.Caption = #22788#32622#31185#23460
                Width = 69
              end
              item
                EditButtons = <>
                FieldName = 'zhzxsj'
                Footers = <>
                ReadOnly = True
                Title.Caption = #35745#36153#26102#38388
                Width = 72
              end
              item
                EditButtons = <>
                FieldName = 'tzfs'
                Footers = <>
                ReadOnly = True
                Title.Caption = #32467#26463#26102#38388
                Visible = False
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'xmdm'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'drzx'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'ypdwid'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'zyh'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'id'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'ypbzbl'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'ypcgj'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'yplb'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'jcmd'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'tmh'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'tzbz'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'zfbz'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'zxbz'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'fzbz'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'tzry'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'zfrq'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'zfry'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'zxrq'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'zxry'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'xgrq'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'xgry'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'czks'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'kdks'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'kdys'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'yzrq'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'shbz'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'shry'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'jcbw'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'jcff'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'ypkcbz'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'czys'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'fzph'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'drzxcs'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'yjjssj'
                Footers = <>
                ReadOnly = True
                Visible = False
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'srsl'
                Footers = <>
                ReadOnly = True
                Visible = False
                Width = 47
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'mrsl'
                Footers = <>
                ReadOnly = True
                Visible = False
                Width = 42
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object DBGridEh2: TDBGridEh
          Left = 3
          Top = 1
          Width = 1406
          Height = 44
          DataGrouping.GroupLevels = <>
          DataSource = ds_dryz
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = ANSI_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          HorzScrollBar.Visible = False
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          RowDetailPanel.Color = clBtnFace
          TabOrder = 2
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          VertScrollBar.VisibleMode = sbNeverShowEh
          OnColWidthsChanged = DBGridEh2ColWidthsChanged
          Columns = <
            item
              EditButtons = <>
              FieldName = 'sfjf'
              Footers = <>
              Title.Caption = #26159#21542#35745#36153
              Width = 39
            end
            item
              EditButtons = <>
              FieldName = 'lb'
              Footers = <>
              ReadOnly = True
              Title.Caption = #31867#21035
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'yzsx'
              Footers = <>
              ReadOnly = True
              Title.Caption = #23646#24615
              Width = 54
            end
            item
              EditButtons = <>
              FieldName = 'kdrq'
              Footers = <>
              ReadOnly = True
              Title.Caption = #24320#22987#26102#38388
              Width = 151
            end
            item
              EditButtons = <>
              FieldName = 'ph'
              Footers = <>
              ReadOnly = True
              Title.Caption = #25209#21495
              Visible = False
              Width = 95
            end
            item
              EditButtons = <>
              FieldName = 'xmmc'
              Footers = <>
              ReadOnly = True
              Title.Caption = #39033#30446#21517#31216
              Width = 221
            end
            item
              EditButtons = <>
              FieldName = 'sl'
              Footers = <>
              ReadOnly = True
              Title.Caption = #25968#37327
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'dw'
              Footers = <>
              ReadOnly = True
              Title.Caption = #21333#20301
              Width = 35
            end
            item
              EditButtons = <>
              FieldName = 'ypyl'
              Footers = <>
              ReadOnly = True
              Title.Caption = #29992#37327
              Width = 41
            end
            item
              EditButtons = <>
              FieldName = 'yldw'
              Footers = <>
              ReadOnly = True
              Title.Caption = '  '
              Width = 17
            end
            item
              EditButtons = <>
              FieldName = 'ypyf'
              Footers = <>
              ReadOnly = True
              Title.Caption = #29992#27861
              Width = 41
            end
            item
              EditButtons = <>
              FieldName = 'yytj'
              Footers = <>
              ReadOnly = True
              Title.Caption = #29992#33647#36884#24452
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'tzrq'
              Footers = <>
              ReadOnly = True
              Title.Caption = #20572#27490#26085#26399
              Width = 128
            end
            item
              EditButtons = <>
              FieldName = 'yplsj'
              Footers = <>
              ReadOnly = True
              Title.Caption = #21333#20215
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = 'jyyb'
              Footers = <>
              ReadOnly = True
              Title.Caption = #26816#39564#26679#26412
              Width = 38
            end
            item
              EditButtons = <>
              FieldName = 'bz'
              Footers = <>
              ReadOnly = True
              Title.Caption = #35828#26126
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'gg'
              Footers = <>
              ReadOnly = True
              Title.Caption = #35268#26684
              Width = 77
            end
            item
              EditButtons = <>
              FieldName = 'kdysmc'
              Footers = <>
              ReadOnly = True
              Title.Caption = #24320#21333
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'czksmc'
              Footers = <>
              ReadOnly = True
              Title.Caption = #22788#32622#31185#23460
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = 'zhzxsj'
              Footers = <>
              ReadOnly = True
              Title.Caption = #35745#36153#26102#38388
              Width = 71
            end
            item
              EditButtons = <>
              FieldName = 'tzfs'
              Footers = <>
              ReadOnly = True
              Title.Caption = #32467#26463#26102#38388
              Visible = False
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'xmdm'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'drzx'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'ypdwid'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'zyh'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'id'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'ypbzbl'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'ypcgj'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'yplb'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'jcmd'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'tmh'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'tzbz'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'zfbz'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'zxbz'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'fzbz'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'tzry'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'zfrq'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'zfry'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'zxrq'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'zxry'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'xgrq'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'xgry'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'czks'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'kdks'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'kdys'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'yzrq'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'shbz'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'shry'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'jcbw'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'jcff'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'ypkcbz'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'czys'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'fzph'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'drzxcs'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'yjjssj'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'srsl'
              Footers = <>
              ReadOnly = True
              Title.Caption = #39318#26085#25968#37327
              Visible = False
              Width = 47
            end
            item
              EditButtons = <>
              FieldName = 'mrsl'
              Footers = <>
              ReadOnly = True
              Title.Caption = #26411#26085#25968#37327
              Visible = False
              Width = 44
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object Panel4: TPanel
          Left = 7
          Top = 165
          Width = 2000
          Height = 390
          Caption = 'Panel3'
          TabOrder = 3
          Visible = False
          object Panel5: TPanel
            Left = 1
            Top = 1
            Width = 1998
            Height = 24
            Align = alTop
            TabOrder = 0
            object Label10: TLabel
              Left = 20
              Top = 5
              Width = 48
              Height = 13
              Caption = #21307#22065#20869#23481
              Color = clWindow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Button4: TButton
              Left = 468
              Top = 1
              Width = 75
              Height = 21
              Caption = #38544#34255
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = Button4Click
            end
          end
          object Panel8: TPanel
            Left = 1
            Top = 25
            Width = 1998
            Height = 364
            Align = alClient
            TabOrder = 1
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 626
        Width = 1762
        Height = 21
        Align = alBottom
        BevelInner = bvLowered
        TabOrder = 2
        object Label5: TLabel
          Left = 100
          Top = 5
          Width = 156
          Height = 13
          Caption = #34920#31034#24403#22825#21307#22065#33258#21160#35760#36153#22833#36133
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 73
          Top = 6
          Width = 25
          Height = 9
          AutoSize = False
          Color = clRed
          ParentColor = False
        end
        object Label4: TLabel
          Left = 10
          Top = 3
          Width = 60
          Height = 15
          Caption = #30149#20154#21015#34920
        end
        object Label6: TLabel
          Left = 268
          Top = 5
          Width = 25
          Height = 13
          AutoSize = False
          Color = clBlue
          ParentColor = False
        end
        object Label7: TLabel
          Left = 301
          Top = 4
          Width = 117
          Height = 13
          Caption = #34920#31034#30149#20154#26377#27424#36153#25346#36153
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object ProgressBar1: TProgressBar
          Left = 1081
          Top = 2
          Width = 679
          Height = 17
          Align = alRight
          Step = 1
          TabOrder = 0
        end
        object cxLabel1: TcxLabel
          Left = 471
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
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1762
        Height = 35
        Align = alTop
        TabOrder = 3
        object Label2: TLabel
          Left = 355
          Top = 12
          Width = 90
          Height = 15
          Caption = #21307#22065#35745#36153#26085#26399
        end
        object Label3: TLabel
          Left = 8
          Top = 10
          Width = 30
          Height = 15
          Caption = #26816#32034
        end
        object dt_zxsj: TDateTimePicker
          Left = 451
          Top = 6
          Width = 186
          Height = 23
          Date = 40401.666157951390000000
          Time = 40401.666157951390000000
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          TabOrder = 0
          OnChange = dt_zxsjChange
        end
        object Edit1: TEdit
          Left = 638
          Top = 6
          Width = 32
          Height = 21
          Ctl3D = False
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentCtl3D = False
          TabOrder = 1
        end
        object Edit2: TEdit
          Left = 41
          Top = 6
          Width = 168
          Height = 23
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          TabOrder = 2
          OnChange = Edit2Change
          OnEnter = Edit2Enter
        end
        object Button1: TButton
          Left = 215
          Top = 5
          Width = 134
          Height = 25
          Caption = #26816#26597#24403#26085#35760#36153#24773#20917
          TabOrder = 3
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 681
          Top = 5
          Width = 146
          Height = 25
          Caption = #25195#25551#26816#39564#30003#35831#21333#35745#36153
          TabOrder = 4
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 846
          Top = 5
          Width = 146
          Height = 25
          Caption = #25195#25551#26816#26597#30003#35831#21333#35745#36153
          TabOrder = 5
          OnClick = Button3Click
        end
        object CheckBox1: TCheckBox
          Left = 1004
          Top = 9
          Width = 97
          Height = 17
          Caption = #20998#23631#26680#23545
          TabOrder = 6
          OnClick = CheckBox1Click
        end
        object CheckBox2: TCheckBox
          Left = 1096
          Top = 8
          Width = 97
          Height = 17
          Caption = #21482#26174#31034#24403#22825
          TabOrder = 7
          OnClick = CheckBox2Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #36153#29992#26126#32454
      ImageIndex = 1
      OnShow = TabSheet2Show
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1762
        Height = 606
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfStandard
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
          DataController.DataSource = ds_fymx
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnMoving = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1tfbz: TcxGridDBColumn
            Caption = #36873#25321
            DataBinding.FieldName = 'tfbz'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Width = 63
          end
          object cxGrid1DBTableView1sfrq: TcxGridDBColumn
            Caption = #25910#36153#26085#26399
            DataBinding.FieldName = 'sfrq'
            Options.Editing = False
            Options.Grouping = False
            Width = 152
          end
          object cxGrid1DBTableView1fymc: TcxGridDBColumn
            Caption = #36153#29992#21517#31216
            DataBinding.FieldName = 'fymc'
            Options.Editing = False
            Options.Grouping = False
            Width = 191
          end
          object cxGrid1DBTableView1dw: TcxGridDBColumn
            Caption = #21333#20301
            DataBinding.FieldName = 'dw'
            Options.Editing = False
            Width = 61
          end
          object cxGrid1DBTableView1sl: TcxGridDBColumn
            Caption = #25968#37327
            DataBinding.FieldName = 'fysl'
          end
          object cxGrid1DBTableView1fyje: TcxGridDBColumn
            Caption = #36153#29992#37329#39069
            DataBinding.FieldName = 'fyje'
            Options.Editing = False
            Options.Grouping = False
            Width = 81
          end
          object cxGrid1DBTableView1zfje: TcxGridDBColumn
            Caption = #24320#21333#21307#29983
            DataBinding.FieldName = 'kdys'
            Options.Editing = False
            Options.Grouping = False
            Width = 90
          end
          object cxGrid1DBTableView1czks: TcxGridDBColumn
            Caption = #22788#29702#31185#23460
            DataBinding.FieldName = 'czks'
            Options.Editing = False
            Width = 97
          end
          object cxGrid1DBTableView1mc: TcxGridDBColumn
            Caption = #25805#20316#21592
            DataBinding.FieldName = 'sfczy'
            Options.Editing = False
            Options.Grouping = False
            Width = 80
          end
          object cxGrid1DBTableView1yjqrbz: TcxGridDBColumn
            Caption = #21307#25216#30830#35748
            DataBinding.FieldName = 'yjqrbz'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 60
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 606
        Width = 1762
        Height = 41
        Align = alBottom
        TabOrder = 1
        object cxButton4: TcxButton
          Left = 607
          Top = 11
          Width = 139
          Height = 23
          Caption = #21307#25216#30830#35748#21333#25171#21360
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = cxButton4Click
        end
      end
      object QuickRep1: TQuickRep
        Left = -30
        Top = 24
        Width = 816
        Height = 336
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = qry_yjddy
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
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
        Page.PaperSize = Custom
        Page.Values = (
          100.000000000000000000
          888.000000000000000000
          100.000000000000000000
          2159.000000000000000000
          100.000000000000000000
          100.000000000000000000
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
        SnapToGrid = True
        Units = MM
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PrevShowThumbs = False
        PrevShowSearch = False
        PrevInitialZoom = qrZoomToFit
        PreviewDefaultSaveType = stQRP
        object QRBand4: TQRBand
          Left = 38
          Top = 165
          Width = 740
          Height = 26
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
            68.791666666666670000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbGroupFooter
        end
        object DetailBand1: TQRBand
          Left = 38
          Top = 144
          Width = 740
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            55.562500000000000000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText1: TQRDBText
            Left = 298
            Top = 2
            Width = 225
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              788.458333333333400000
              5.291666666666667000
              595.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qry_yjddy
            DataField = 'fymc'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 10
          end
          object QRDBText2: TQRDBText
            Left = 534
            Top = 1
            Width = 100
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1412.875000000000000000
              2.645833333333333000
              264.583333333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qry_yjddy
            DataField = 'dw'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 10
          end
          object QRDBText4: TQRDBText
            Left = 643
            Top = 3
            Width = 92
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1701.270833333333000000
              7.937500000000000000
              243.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qry_yjddy
            DataField = 'fyje'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 10
          end
          object QRDBText5: TQRDBText
            Left = 123
            Top = 0
            Width = 162
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              325.437500000000000000
              0.000000000000000000
              428.625000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qry_yjddy
            DataField = 'sfrq'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 10
          end
          object QRDBText6: TQRDBText
            Left = 5
            Top = 1
            Width = 116
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              13.229166666666670000
              2.645833333333333000
              306.916666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qry_yjddy
            DataField = 'id'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 10
          end
        end
        object ColumnHeaderBand1: TQRBand
          Left = 38
          Top = 121
          Width = 740
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            60.854166666666670000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbColumnHeader
          object QRLabel19: TQRLabel
            Left = 364
            Top = 2
            Width = 61
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              963.083333333333300000
              5.291666666666667000
              161.395833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #30003#35831#39033#30446
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 11
          end
          object QRLabel20: TQRLabel
            Left = 562
            Top = 2
            Width = 31
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              1486.958333333333000000
              5.291666666666667000
              82.020833333333330000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #21333#20301
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 11
          end
          object QRLabel23: TQRLabel
            Left = 667
            Top = 4
            Width = 31
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              1764.770833333333000000
              10.583333333333330000
              82.020833333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #37329#39069
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 11
          end
          object QRLabel2: TQRLabel
            Left = 169
            Top = 2
            Width = 61
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              447.145833333333300000
              5.291666666666667000
              161.395833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #35760#36153#26102#38388
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 11
          end
          object QRLabel3: TQRLabel
            Left = 17
            Top = 2
            Width = 46
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              44.979166666666670000
              5.291666666666667000
              121.708333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #27969#27700#21495
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 11
          end
        end
        object PageHeaderBand1: TQRBand
          Left = 38
          Top = 38
          Width = 740
          Height = 83
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            219.604166666666700000
            1957.916666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRLabel22: TQRLabel
            Left = 22
            Top = 4
            Width = 683
            Height = 27
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              71.437500000000000000
              58.208333333333320000
              10.583333333333330000
              1807.104166666667000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #21307#25216#30830#35748#21333
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = #23435#20307
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 16
          end
          object QRLabel18: TQRLabel
            Left = 20
            Top = 40
            Width = 69
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              52.916666666666670000
              105.833333333333300000
              182.562500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #22788#32622#31185#23460':'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 11
          end
          object QRLabel17: TQRLabel
            Left = 223
            Top = 40
            Width = 69
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              590.020833333333300000
              105.833333333333300000
              182.562500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #25171#21360#26085#26399':'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 11
          end
          object QRLabel24: TQRLabel
            Left = 500
            Top = 40
            Width = 54
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              1322.916666666667000000
              105.833333333333300000
              142.875000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #25805#20316#21592':'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 11
          end
          object QRDBText14: TQRDBText
            Left = 576
            Top = 40
            Width = 123
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1524.000000000000000000
              105.833333333333300000
              325.437500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = qry_fymx
            DataField = 'sfczy'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 10
          end
          object QRLabel13: TQRLabel
            Left = 22
            Top = 61
            Width = 54
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              58.208333333333330000
              161.395833333333300000
              142.875000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #20303#38498#21495':'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 11
          end
          object QRDBText12: TQRDBText
            Left = 95
            Top = 61
            Width = 100
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              251.354166666666700000
              161.395833333333300000
              264.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = sp_brxx
            DataField = 'tmh'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 10
          end
          object QRLabel1: TQRLabel
            Left = 220
            Top = 61
            Width = 39
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              582.083333333333300000
              161.395833333333300000
              103.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #22995#21517':'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 11
          end
          object QRDBText13: TQRDBText
            Left = 265
            Top = 61
            Width = 102
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              701.145833333333200000
              161.395833333333300000
              269.875000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = sp_brxx
            DataField = 'brxm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 10
          end
          object QRLabel14: TQRLabel
            Left = 373
            Top = 61
            Width = 54
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              986.895833333333300000
              161.395833333333300000
              142.875000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #24202#20301#21495':'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 11
          end
          object QRDBText3: TQRDBText
            Left = 433
            Top = 61
            Width = 51
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              1145.645833333333000000
              161.395833333333300000
              134.937500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = sp_brxx
            DataField = 'bch'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 10
          end
          object QRLabel16: TQRLabel
            Left = 501
            Top = 62
            Width = 39
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              1325.562500000000000000
              164.041666666666700000
              103.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #30149#21306':'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 11
          end
          object qrl_bqmc: TQRLabel
            Left = 573
            Top = 61
            Width = 39
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              1516.062500000000000000
              161.395833333333300000
              103.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #30149#21306':'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 11
          end
          object rtl_czks: TQRLabel
            Left = 95
            Top = 41
            Width = 41
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              251.354166666666700000
              108.479166666666700000
              108.479166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'czks:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 11
          end
          object rtl_sfrq: TQRLabel
            Left = 306
            Top = 38
            Width = 33
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              809.625000000000000000
              100.541666666666700000
              87.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'sfrq'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 11
          end
        end
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 1770
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
    object Label8: TLabel
      Left = 886
      Top = 8
      Width = 53
      Height = 15
      Caption = #30149#26696#21495':'
      Visible = False
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
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
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
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
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
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
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
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
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
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      OnChange = DBEdit14Change
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
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
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
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
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
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
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
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
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
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object DBEdit1: TDBEdit
      Left = 621
      Top = 4
      Width = 87
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'zgysmc'
      DataSource = ds_brxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object bah: TDBEdit
      Left = 942
      Top = 4
      Width = 121
      Height = 23
      DataField = 'bah'
      DataSource = ds_brxx
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 11
      Visible = False
    end
  end
  object qry_pub: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 484
    Top = 331
  end
  object ds_jbxx: TDataSource
    DataSet = sp_jbxx
    Left = 408
    Top = 369
  end
  object ds_brxx: TDataSource
    DataSet = sp_brxx
    OnDataChange = ds_brxxDataChange
    Left = 370
    Top = 369
  end
  object sp_ysdm: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_yzcx_bcjfyz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@phlist'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2000
        Value = #39#39
      end
      item
        Name = '@yzlb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = #39#39
      end>
    Left = 636
    Top = 331
  end
  object ds_yf: TDataSource
    Left = 484
    Top = 369
  end
  object ad_plcl: TADODataSet
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 370
    Top = 331
  end
  object sp_brxx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_cx_wzxyzbr;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@sr_bqdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
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
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 522
    Top = 331
  end
  object ds_fymx: TDataSource
    DataSet = qry_fymx
    Left = 446
    Top = 369
  end
  object qry_fymx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'zyh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = #8216#8217
      end>
    SQL.Strings = (
      
        'select fymx.id,fymx.tmh,fymx.zyh,fymx.fyje,czks.mc czks,kdks.mc ' +
        'kdks,sfxm.dw,'
      
        #9'   case when fymx.fyje<0 then -abs(fymx.fysl) ELSE abs(fymx.fys' +
        'l) END fysl ,'
      '       fymx.sfrq,czy.mc sfczy,fymx.sjbh,fymx.jsdh,'
      '       fymx.jsbz tfbz,fymx.tfrq,fymx.tfczy,zydj.brxm,'
      '       kdys.mc kdys,czys.mc czys,sfxm.fymc,'
      '       case when fymx.bz='#39#30830#35748#39' then '#39#26159#39' else '#39#21542#39' end yjqrbz'
      
        '   from zysf_zyfymx fymx ,sys_czy czy,sys_czy kdys ,sys_czy czys' +
        ','
      
        '        sys_ksdm  czks, sys_ksdm kdks,zysf_zydj zydj,sys_kjsfxm ' +
        'sfxm'
      '   where fymx.sfczy=czy.dm   and'
      '         fymx.czks=czks.dm   and'
      '         fymx.kdks=kdks.dm   and'
      '         fymx.kdys*=kdys.dm  and'
      '         fymx.czys*=czys.dm  and'
      '         fymx.fydm=sfxm.fydm and'
      '         fymx.zyh=zydj.zyh   and'
      '         fymx.zyh = :zyh'
      '  order by sfrq desc')
    Left = 446
    Top = 331
  end
  object sp_jbxx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_cx_zybrdj;1'
    Parameters = <
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 560
    Top = 331
  end
  object qry_yjddy: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      
        'select  fymc id, fymc ,  dw , sfbz fyje,  dymc sfrq  from sys_kj' +
        'sfxm where 1=2')
    Left = 408
    Top = 331
  end
  object sp_dryz: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = sp_dryzAfterOpen
    ProcedureName = 'zybl_cx_dryzxm_zx;1'
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
        Name = '@zxsj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end
      item
        Name = '@ksdm'
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 674
    Top = 331
  end
  object ds_dryz: TDataSource
    DataSet = sp_dryz
    Left = 712
    Top = 331
  end
  object sp_yzsj: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = sp_dryzAfterOpen
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
    Left = 598
    Top = 331
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 560
    Top = 369
  end
  object pm1: TPopupMenu
    Left = 522
    Top = 369
    object N1: TMenuItem
      Caption = #26631#35760#24050#35745#36153
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #27424#36153#25346#36134#37325#35760
      OnClick = N2Click
    end
  end
end
