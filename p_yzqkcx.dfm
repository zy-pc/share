object frm_yzqkcx: Tfrm_yzqkcx
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #21307#22065#25191#34892#35745#36153#21464#21160#26597#35810
  ClientHeight = 690
  ClientWidth = 1357
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #26032#23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1357
    Height = 690
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 296
      Height = 688
      Align = alLeft
      Caption = 'Panel2'
      TabOrder = 0
      object DBGridEh1: TDBGridEh
        Left = 1
        Top = 49
        Width = 294
        Height = 638
        Align = alClient
        DataGrouping.GroupLevels = <>
        DataSource = ds_cx_bqbr
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = #26032#23435#20307
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        RowDetailPanel.Color = clBtnFace
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #26032#23435#20307
        TitleFont.Style = []
        OnCellClick = DBGridEh1CellClick
        OnDrawColumnCell = DBGridEh1DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'yybch'
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
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'jfbz'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'tmh'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #21345#21495
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'ksmc'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #31185#23460
            Width = 76
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 294
        Height = 48
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 13
          Top = 27
          Width = 192
          Height = 15
          Caption = #32418#33394#23383#20307#34920#31034#26377#21307#22065#26410#25191#34892
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = #26032#23435#20307
          Font.Style = []
          ParentFont = False
        end
        object DateTimePicker1: TDateTimePicker
          Left = 13
          Top = -2
          Width = 244
          Height = 23
          Date = 41432.660527569450000000
          Time = 41432.660527569450000000
          TabOrder = 0
          OnChange = DateTimePicker1Change
        end
      end
    end
    object Panel3: TPanel
      Left = 297
      Top = 1
      Width = 1059
      Height = 688
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 1
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 1057
        Height = 686
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        OnChange = PageControl1Change
        object TabSheet1: TTabSheet
          Caption = #26410#25191#34892#21307#22065
          object ScrollBox1: TScrollBox
            Left = 0
            Top = 0
            Width = 1049
            Height = 655
            Align = alClient
            TabOrder = 0
            object DBGridEh4: TDBGridEh
              Left = 0
              Top = 0
              Width = 2301
              Height = 900
              DataGrouping.GroupLevels = <>
              DataSource = ds_dryz_yzzx
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -15
              FooterFont.Name = #26032#23435#20307
              FooterFont.Style = []
              HorzScrollBar.Visible = False
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              ReadOnly = True
              RowDetailPanel.Color = clBtnFace
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -15
              TitleFont.Name = #26032#23435#20307
              TitleFont.Style = []
              UseMultiTitle = True
              VertScrollBar.VisibleMode = sbNeverShowEh
              OnColWidthsChanged = DBGridEh4ColWidthsChanged
              OnDrawColumnCell = DBGridEh4DrawColumnCell
              OnEnter = DBGridEh4Enter
              OnExit = DBGridEh4Exit
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'kdrq'
                  Footers = <>
                  Title.Caption = #24320#22987'|'#24320#22987#26102#38388
                  Width = 156
                end
                item
                  EditButtons = <>
                  FieldName = 'syczxrmc'
                  Footers = <>
                  Title.Caption = #24320#22987'|'#25191#34892#32773
                  Width = 48
                end
                item
                  EditButtons = <>
                  FieldName = 'syczxsj'
                  Footers = <>
                  Title.Caption = #24320#22987'|'#25191#34892#26102#38388
                  Width = 168
                end
                item
                  EditButtons = <>
                  FieldName = 'lb'
                  Footers = <>
                  Title.Caption = #31867#21035
                  Width = 38
                end
                item
                  EditButtons = <>
                  FieldName = 'yzsx'
                  Footers = <>
                  Title.Caption = #23646#24615
                  Width = 42
                end
                item
                  EditButtons = <>
                  FieldName = 'kdrq'
                  Footers = <>
                  Title.Caption = #24320#22987#26102#38388
                  Visible = False
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
                  Width = 206
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
                  Width = 38
                end
                item
                  EditButtons = <>
                  FieldName = 'yytj'
                  Footers = <>
                  Title.Caption = #29992#33647#36884#24452
                  Width = 40
                end
                item
                  EditButtons = <>
                  FieldName = 'bz'
                  Footers = <>
                  Title.Caption = #35828#26126
                  Width = 46
                end
                item
                  EditButtons = <>
                  FieldName = 'tzrq'
                  Footers = <>
                  Title.Caption = #20572#27490'|'#21307#22065#20572#27490#26102#38388
                  Width = 176
                end
                item
                  EditButtons = <>
                  FieldName = 'zxtzrymc'
                  Footers = <>
                  Title.Caption = #20572#27490'|'#25191#34892#20572#27490#32773
                end
                item
                  EditButtons = <>
                  FieldName = 'tzzxsj'
                  Footers = <>
                  Title.Caption = #20572#27490'|'#25191#34892#20572#27490#26102#38388
                end
                item
                  EditButtons = <>
                  FieldName = 'tzrymc'
                  Footers = <>
                  Title.Caption = #20572#27490'|'#21307#22065#20572#27490#32773
                end
                item
                  EditButtons = <>
                  FieldName = 'sftz'
                  Footers = <>
                  Title.Caption = #20572#27490'|'#20572#27490#65311
                  Width = 50
                end
                item
                  EditButtons = <>
                  FieldName = 'yjzxcs'
                  Footers = <>
                  Title.Caption = #38656#25191#34892#27425#25968
                  Visible = False
                  Width = 41
                end
                item
                  EditButtons = <>
                  FieldName = 'zxcs'
                  Footers = <>
                  Title.Caption = #24050#32463#25191#34892#27425#25968
                  Visible = False
                  Width = 37
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
                  FieldName = 'gg'
                  Footers = <>
                  Title.Caption = #35268#26684
                  Width = 78
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
                  FieldName = 'yplsj'
                  Footers = <>
                  Title.Caption = #21333#20215
                  Width = 52
                end
                item
                  EditButtons = <>
                  FieldName = 'xgrq'
                  Footers = <>
                  Title.Caption = #25552#20132#26085#26399
                  Width = 114
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
          object DBGridEh2: TDBGridEh
            Left = 0
            Top = 0
            Width = 1834
            Height = 66
            DataGrouping.GroupLevels = <>
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -15
            FooterFont.Name = #26032#23435#20307
            FooterFont.Style = []
            HorzScrollBar.Visible = False
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = #26032#23435#20307
            TitleFont.Style = []
            UseMultiTitle = True
            VertScrollBar.VisibleMode = sbNeverShowEh
            OnColWidthsChanged = DBGridEh2ColWidthsChanged
            Columns = <
              item
                EditButtons = <>
                FieldName = 'kdrq'
                Footers = <>
                Title.Caption = #24320#22987'|'#24320#22987#26102#38388
                Width = 127
              end
              item
                EditButtons = <>
                FieldName = 'syczxrmc'
                Footers = <>
                Title.Caption = #24320#22987'|'#25191#34892#32773
                Width = 47
              end
              item
                EditButtons = <>
                FieldName = 'syczxsj'
                Footers = <>
                Title.Caption = #24320#22987'|'#25191#34892#26102#38388
                Width = 168
              end
              item
                EditButtons = <>
                FieldName = 'lb'
                Footers = <>
                Title.Caption = #31867#21035
                Width = 39
              end
              item
                EditButtons = <>
                FieldName = 'yzsx'
                Footers = <>
                Title.Caption = #23646#24615
                Width = 39
              end
              item
                EditButtons = <>
                FieldName = 'kdrq'
                Footers = <>
                Title.Caption = #24320#22987#26102#38388
                Visible = False
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
                Width = 206
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
                Width = 38
              end
              item
                EditButtons = <>
                FieldName = 'yytj'
                Footers = <>
                Title.Caption = #29992#33647#36884#24452
                Width = 40
              end
              item
                EditButtons = <>
                FieldName = 'bz'
                Footers = <>
                Title.Caption = #35828#26126
                Width = 46
              end
              item
                EditButtons = <>
                FieldName = 'tzrq'
                Footers = <>
                Title.Caption = #20572#27490'|'#21307#22065#20572#27490#26102#38388
                Width = 176
              end
              item
                EditButtons = <>
                FieldName = 'zxtzrymc'
                Footers = <>
                Title.Caption = #20572#27490'|'#25191#34892#20572#27490#32773
              end
              item
                EditButtons = <>
                FieldName = 'tzzxsj'
                Footers = <>
                Title.Caption = #20572#27490'|'#25191#34892#20572#27490#26102#38388
              end
              item
                EditButtons = <>
                FieldName = 'tzrymc'
                Footers = <>
                Title.Caption = #20572#27490'|'#21307#22065#20572#27490#32773
              end
              item
                EditButtons = <>
                FieldName = 'sftz'
                Footers = <>
                Title.Caption = #20572#27490'|'#20572#27490#65311
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'yjzxcs'
                Footers = <>
                Title.Caption = #38656#25191#34892#27425#25968
                Visible = False
                Width = 41
              end
              item
                EditButtons = <>
                FieldName = 'zxcs'
                Footers = <>
                Title.Caption = #24050#32463#25191#34892#27425#25968
                Visible = False
                Width = 37
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
                FieldName = 'gg'
                Footers = <>
                Title.Caption = #35268#26684
                Width = 78
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
                FieldName = 'yplsj'
                Footers = <>
                Title.Caption = #21333#20215
                Width = 52
              end
              item
                EditButtons = <>
                FieldName = 'xgrq'
                Footers = <>
                Title.Caption = #25552#20132#26085#26399
                Width = 245
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = #26410#35745#36153#21307#22065
          ImageIndex = 1
          object groupbox2: TPanel
            Left = 0
            Top = 0
            Width = 1049
            Height = 655
            Align = alClient
            TabOrder = 0
            object ScrollBox2: TScrollBox
              Left = 1
              Top = 1
              Width = 1047
              Height = 653
              Align = alClient
              TabOrder = 0
              object DBGridEh3: TDBGridEh
                Left = -1
                Top = 1
                Width = 2400
                Height = 1500
                DataGrouping.GroupLevels = <>
                DataSource = ds_dryz_yzjf
                Flat = False
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -15
                FooterFont.Name = #26032#23435#20307
                FooterFont.Style = []
                HorzScrollBar.Visible = False
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                RowDetailPanel.Color = clBtnFace
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -15
                TitleFont.Name = #26032#23435#20307
                TitleFont.Style = []
                UseMultiTitle = True
                VertScrollBar.VisibleMode = sbNeverShowEh
                OnColWidthsChanged = DBGridEh3ColWidthsChanged
                OnDrawColumnCell = DBGridEh3DrawColumnCell
                OnEnter = DBGridEh3Enter
                OnExit = DBGridEh3Exit
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
                    Width = 70
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
                    FieldName = 'tzrq'
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
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
            end
            object DBGridEh5: TDBGridEh
              Left = 3
              Top = 2
              Width = 1227
              Height = 44
              DataGrouping.GroupLevels = <>
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -15
              FooterFont.Name = #26032#23435#20307
              FooterFont.Style = []
              HorzScrollBar.Visible = False
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              RowDetailPanel.Color = clBtnFace
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -15
              TitleFont.Name = #26032#23435#20307
              TitleFont.Style = []
              UseMultiTitle = True
              VertScrollBar.VisibleMode = sbNeverShowEh
              OnColWidthsChanged = DBGridEh5ColWidthsChanged
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
                  Width = 70
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
                  FieldName = 'tzrq'
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
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = #21464#21160#21307#22065
          ImageIndex = 2
          object GroupBox1: TGroupBox
            Left = 0
            Top = 428
            Width = 1049
            Height = 227
            Align = alClient
            Caption = #24403#26085#20462#25913#21307#22065
            TabOrder = 0
            object DBGridEh8: TDBGridEh
              Left = 2
              Top = 17
              Width = 1045
              Height = 208
              Align = alClient
              DataGrouping.GroupLevels = <>
              DataSource = ds_cx_yzxg
              EditActions = [geaCopyEh, geaSelectAllEh]
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -15
              FooterFont.Name = #26032#23435#20307
              FooterFont.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              RowDetailPanel.Color = clBtnFace
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -15
              TitleFont.Name = #26032#23435#20307
              TitleFont.Style = []
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'xgsj'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #20462#25913#26102#38388
                  Width = 128
                end
                item
                  EditButtons = <>
                  FieldName = 'yyznr'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #21407#21307#22065#20869#23481
                  Width = 492
                end
                item
                  EditButtons = <>
                  FieldName = 'xyznr'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #20462#25913#21518#21307#22065#20869#23481
                  Width = 729
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
          object GroupBox3: TGroupBox
            Left = 0
            Top = 0
            Width = 1049
            Height = 217
            Align = alTop
            Caption = #24403#26085#26032#22686#21307#22065
            TabOrder = 1
            object ScrollBox3: TScrollBox
              Left = 2
              Top = 17
              Width = 1045
              Height = 198
              Align = alClient
              TabOrder = 0
              object DBGridEh6: TDBGridEh
                Left = 0
                Top = 0
                Width = 2000
                Height = 800
                DataGrouping.GroupLevels = <>
                DataSource = ds_dryz_xz
                Flat = False
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -15
                FooterFont.Name = #26032#23435#20307
                FooterFont.Style = []
                HorzScrollBar.Visible = False
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                ReadOnly = True
                RowDetailPanel.Color = clBtnFace
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -15
                TitleFont.Name = #26032#23435#20307
                TitleFont.Style = []
                UseMultiTitle = True
                VertScrollBar.VisibleMode = sbNeverShowEh
                OnColWidthsChanged = DBGridEh6ColWidthsChanged
                OnDrawColumnCell = DBGridEh6DrawColumnCell
                OnEnter = DBGridEh6Enter
                OnExit = DBGridEh6Exit
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
                    Width = 151
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
                    Width = 152
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
                    Visible = False
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
                    Title.Caption = #25552#20132#26102#38388
                    Width = 166
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
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
            end
          end
          object GroupBox4: TGroupBox
            Left = 0
            Top = 217
            Width = 1049
            Height = 211
            Align = alTop
            Caption = #24403#26085#26032#20572#38271#26399#21307#22065
            TabOrder = 2
            object ScrollBox4: TScrollBox
              Left = 2
              Top = 17
              Width = 1045
              Height = 192
              Align = alClient
              TabOrder = 0
              object DBGridEh7: TDBGridEh
                Left = 2
                Top = 0
                Width = 2000
                Height = 800
                DataGrouping.GroupLevels = <>
                DataSource = ds_dryz_xt
                Flat = False
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -15
                FooterFont.Name = #26032#23435#20307
                FooterFont.Style = []
                HorzScrollBar.Visible = False
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                ReadOnly = True
                RowDetailPanel.Color = clBtnFace
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -15
                TitleFont.Name = #26032#23435#20307
                TitleFont.Style = []
                UseMultiTitle = True
                VertScrollBar.VisibleMode = sbNeverShowEh
                OnColWidthsChanged = DBGridEh7ColWidthsChanged
                OnDrawColumnCell = DBGridEh7DrawColumnCell
                OnEnter = DBGridEh7Enter
                OnExit = DBGridEh7Exit
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
                    Width = 151
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
                    Width = 152
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
                    Visible = False
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
                    Title.Caption = #25552#20132#26102#38388
                    Width = 166
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
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = #38750#26412#31185#23460#25152#24320#21307#22065#25191#34892#24773#20917
          ImageIndex = 3
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 1049
            Height = 655
            Align = alClient
            TabOrder = 0
            object Panel6: TPanel
              Left = 1
              Top = 620
              Width = 1047
              Height = 34
              Align = alBottom
              BevelInner = bvLowered
              TabOrder = 0
              object zxyz: TSpeedButton
                Left = 281
                Top = 7
                Width = 91
                Height = 22
                Caption = #25191#34892#21307#22065
              end
              object SpeedButton1: TSpeedButton
                Left = 232
                Top = 7
                Width = 43
                Height = 22
                Caption = #21047#26032
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -15
                Font.Name = #23435#20307
                Font.Style = []
                ParentFont = False
              end
              object cxButton1: TcxButton
                Left = 804
                Top = 8
                Width = 82
                Height = 23
                Caption = #26816#26597#30003#35831#21333'(&P)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #23435#20307
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object cxButton6: TcxButton
                Left = 890
                Top = 8
                Width = 52
                Height = 23
                Caption = #36820#22238'(&B)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #23435#20307
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object cxButton2: TcxButton
                Left = 723
                Top = 8
                Width = 75
                Height = 23
                Caption = #26816#39564#26465#30721'(&L)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #23435#20307
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
              object xzzx: TcxCheckBox
                Left = 86
                Top = 3000
                Caption = #36873#25321#21363#25191#34892
                TabOrder = 3
                Width = 121
              end
              object srsj: TcxCheckBox
                Left = 11
                Top = 8
                Caption = #36755#20837#25191#34892#26102#38388
                TabOrder = 4
                Width = 121
              end
              object xzzxr: TcxCheckBox
                Left = 134
                Top = 8
                Caption = #36873#25321#25191#34892#20154
                TabOrder = 5
                Width = 96
              end
              object cxButton7: TcxButton
                Left = 436
                Top = 7
                Width = 46
                Height = 23
                Caption = #20840#19981#36873
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #23435#20307
                Font.Style = []
                ParentFont = False
                TabOrder = 6
              end
              object cxButton8: TcxButton
                Left = 490
                Top = 7
                Width = 59
                Height = 23
                Caption = #20840#37096#36755#28082
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #23435#20307
                Font.Style = []
                ParentFont = False
                TabOrder = 7
              end
              object cxButton9: TcxButton
                Left = 384
                Top = 7
                Width = 44
                Height = 23
                Caption = #20840#36873
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #23435#20307
                Font.Style = []
                ParentFont = False
                TabOrder = 8
              end
              object cxBtn_kfbq: TcxButton
                Left = 553
                Top = 8
                Width = 67
                Height = 23
                Caption = #21475#26381#33647#26631#31614
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #23435#20307
                Font.Style = []
                ParentFont = False
                TabOrder = 9
              end
              object cxBtn_qbkfbq: TcxButton
                Left = 626
                Top = 8
                Width = 92
                Height = 23
                Caption = #20840#37096#21475#26381#33647#26631#31614
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #23435#20307
                Font.Style = []
                ParentFont = False
                TabOrder = 10
              end
              object btn_sypq: TcxButton
                Left = 1023
                Top = 8
                Width = 73
                Height = 23
                Caption = #36755#28082#29942#31614
                TabOrder = 11
              end
              object cxButton4: TcxButton
                Left = 1102
                Top = 8
                Width = 73
                Height = 23
                Caption = #36755#28082#35745#21010
                TabOrder = 12
                Visible = False
                DropDownMenu = frm_yzinput.PopupMenu3
                Kind = cxbkDropDownButton
              end
              object cxBt1: TcxButton
                Left = 944
                Top = 8
                Width = 76
                Height = 23
                Caption = #25191#34892#21333#25171#21360'(&P)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #23435#20307
                Font.Style = []
                ParentFont = False
                TabOrder = 13
              end
              object Button4: TButton
                Left = 1099
                Top = 7
                Width = 75
                Height = 25
                Caption = #21307#22065#35745#36153
                TabOrder = 14
              end
            end
            object ScrollBox5: TScrollBox
              Left = 1
              Top = 1
              Width = 1047
              Height = 619
              Align = alClient
              TabOrder = 1
              object DBGridEh9: TDBGridEh
                Left = 3
                Top = -1
                Width = 2300
                Height = 1500
                DataGrouping.GroupLevels = <>
                DataSource = ds_dryz
                Flat = False
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -15
                FooterFont.Name = #26032#23435#20307
                FooterFont.Style = []
                HorzScrollBar.Visible = False
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                ReadOnly = True
                RowDetailPanel.Color = clBtnFace
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -15
                TitleFont.Name = #26032#23435#20307
                TitleFont.Style = []
                UseMultiTitle = True
                VertScrollBar.VisibleMode = sbNeverShowEh
                OnColWidthsChanged = DBGridEh9ColWidthsChanged
                OnDrawColumnCell = DBGridEh9DrawColumnCell
                OnEnter = DBGridEh9Enter
                OnExit = DBGridEh9Exit
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'kdrq'
                    Footers = <>
                    Title.Caption = #24320#22987'|'#24320#22987#26102#38388
                    Width = 150
                  end
                  item
                    EditButtons = <>
                    FieldName = 'syczxrmc'
                    Footers = <>
                    Title.Caption = #24320#22987'|'#25191#34892#32773
                    Width = 48
                  end
                  item
                    EditButtons = <>
                    FieldName = 'syczxsj'
                    Footers = <>
                    Title.Caption = #24320#22987'|'#25191#34892#26102#38388
                    Width = 152
                  end
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
                    Visible = False
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
                    Width = 206
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
                    Width = 38
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yytj'
                    Footers = <>
                    Title.Caption = #29992#33647#36884#24452
                    Width = 40
                  end
                  item
                    EditButtons = <>
                    FieldName = 'bz'
                    Footers = <>
                    Title.Caption = #35828#26126
                    Width = 88
                  end
                  item
                    EditButtons = <>
                    FieldName = 'tzrq'
                    Footers = <>
                    Title.Caption = #20572#27490'|'#21307#22065#20572#27490#26102#38388
                    Width = 176
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zxtzrymc'
                    Footers = <>
                    Title.Caption = #20572#27490'|'#25191#34892#20572#27490#32773
                  end
                  item
                    EditButtons = <>
                    FieldName = 'tzzxsj'
                    Footers = <>
                    Title.Caption = #20572#27490'|'#25191#34892#20572#27490#26102#38388
                  end
                  item
                    EditButtons = <>
                    FieldName = 'tzrymc'
                    Footers = <>
                    Title.Caption = #20572#27490'|'#21307#22065#20572#27490#32773
                  end
                  item
                    EditButtons = <>
                    FieldName = 'sftz'
                    Footers = <>
                    Title.Caption = #20572#27490'|'#20572#27490#65311
                    Width = 50
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yjzxcs'
                    Footers = <>
                    Title.Caption = #38656#25191#34892#27425#25968
                    Visible = False
                    Width = 41
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zxcs'
                    Footers = <>
                    Title.Caption = #24050#32463#25191#34892#27425#25968
                    Visible = False
                    Width = 37
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
                    FieldName = 'gg'
                    Footers = <>
                    Title.Caption = #35268#26684
                    Width = 78
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
                    FieldName = 'yplsj'
                    Footers = <>
                    Title.Caption = #21333#20215
                    Width = 52
                  end
                  item
                    EditButtons = <>
                    FieldName = 'xgrq'
                    Footers = <>
                    Title.Caption = #25552#20132#26085#26399
                    Width = 114
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
            end
            object DBGridEh10: TDBGridEh
              Left = 6
              Top = 1
              Width = 1834
              Height = 66
              DataGrouping.GroupLevels = <>
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -15
              FooterFont.Name = #26032#23435#20307
              FooterFont.Style = []
              HorzScrollBar.Visible = False
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              ReadOnly = True
              RowDetailPanel.Color = clBtnFace
              TabOrder = 2
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -15
              TitleFont.Name = #26032#23435#20307
              TitleFont.Style = []
              UseMultiTitle = True
              VertScrollBar.VisibleMode = sbNeverShowEh
              OnColWidthsChanged = DBGridEh10ColWidthsChanged
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'kdrq'
                  Footers = <>
                  Title.Caption = #24320#22987'|'#24320#22987#26102#38388
                  Width = 150
                end
                item
                  EditButtons = <>
                  FieldName = 'syczxrmc'
                  Footers = <>
                  Title.Caption = #24320#22987'|'#25191#34892#32773
                  Width = 48
                end
                item
                  EditButtons = <>
                  FieldName = 'syczxsj'
                  Footers = <>
                  Title.Caption = #24320#22987'|'#25191#34892#26102#38388
                  Width = 152
                end
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
                  Visible = False
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
                  Width = 206
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
                  Width = 38
                end
                item
                  EditButtons = <>
                  FieldName = 'yytj'
                  Footers = <>
                  Title.Caption = #29992#33647#36884#24452
                  Width = 40
                end
                item
                  EditButtons = <>
                  FieldName = 'bz'
                  Footers = <>
                  Title.Caption = #35828#26126
                  Width = 88
                end
                item
                  EditButtons = <>
                  FieldName = 'tzrq'
                  Footers = <>
                  Title.Caption = #20572#27490'|'#21307#22065#20572#27490#26102#38388
                  Width = 176
                end
                item
                  EditButtons = <>
                  FieldName = 'zxtzrymc'
                  Footers = <>
                  Title.Caption = #20572#27490'|'#25191#34892#20572#27490#32773
                end
                item
                  EditButtons = <>
                  FieldName = 'tzzxsj'
                  Footers = <>
                  Title.Caption = #20572#27490'|'#25191#34892#20572#27490#26102#38388
                end
                item
                  EditButtons = <>
                  FieldName = 'tzrymc'
                  Footers = <>
                  Title.Caption = #20572#27490'|'#21307#22065#20572#27490#32773
                end
                item
                  EditButtons = <>
                  FieldName = 'sftz'
                  Footers = <>
                  Title.Caption = #20572#27490'|'#20572#27490#65311
                  Width = 50
                end
                item
                  EditButtons = <>
                  FieldName = 'yjzxcs'
                  Footers = <>
                  Title.Caption = #38656#25191#34892#27425#25968
                  Visible = False
                  Width = 41
                end
                item
                  EditButtons = <>
                  FieldName = 'zxcs'
                  Footers = <>
                  Title.Caption = #24050#32463#25191#34892#27425#25968
                  Visible = False
                  Width = 37
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
                  FieldName = 'gg'
                  Footers = <>
                  Title.Caption = #35268#26684
                  Width = 78
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
                  FieldName = 'yplsj'
                  Footers = <>
                  Title.Caption = #21333#20215
                  Width = 52
                end
                item
                  EditButtons = <>
                  FieldName = 'xgrq'
                  Footers = <>
                  Title.Caption = #25552#20132#26085#26399
                  Width = 217
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
        end
        object TabSheet5: TTabSheet
          Caption = #30149#20154#25152#26377#26410#35745#36153#21307#22065
          ImageIndex = 4
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 1049
            Height = 655
            Align = alClient
            TabOrder = 0
            object ScrollBox6: TScrollBox
              Left = 1
              Top = 1
              Width = 1047
              Height = 653
              Align = alClient
              TabOrder = 0
              object DBGridEh11: TDBGridEh
                Left = -1
                Top = 1
                Width = 2400
                Height = 1500
                DataGrouping.GroupLevels = <>
                DataSource = ds_qbwjf
                Flat = False
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -15
                FooterFont.Name = #26032#23435#20307
                FooterFont.Style = []
                HorzScrollBar.Visible = False
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                RowDetailPanel.Color = clBtnFace
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -15
                TitleFont.Name = #26032#23435#20307
                TitleFont.Style = []
                UseMultiTitle = True
                VertScrollBar.VisibleMode = sbNeverShowEh
                OnColWidthsChanged = DBGridEh11ColWidthsChanged
                OnDrawColumnCell = DBGridEh11DrawColumnCell
                OnEnter = DBGridEh11Enter
                OnExit = DBGridEh11Exit
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'jlrq'
                    Footers = <>
                    Title.Caption = #35760#24405#26085#26399
                    Width = 80
                  end
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
                    Width = 70
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
                    FieldName = 'tzrq'
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
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
            end
            object DBGridEh12: TDBGridEh
              Left = 3
              Top = 2
              Width = 1227
              Height = 44
              DataGrouping.GroupLevels = <>
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -15
              FooterFont.Name = #26032#23435#20307
              FooterFont.Style = []
              HorzScrollBar.Visible = False
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              RowDetailPanel.Color = clBtnFace
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -15
              TitleFont.Name = #26032#23435#20307
              TitleFont.Style = []
              UseMultiTitle = True
              VertScrollBar.VisibleMode = sbNeverShowEh
              OnColWidthsChanged = DBGridEh12ColWidthsChanged
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'jlrq'
                  Footers = <>
                  Title.Caption = #35760#24405#26085#26399
                  Width = 80
                end
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
                  Width = 70
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
                  FieldName = 'tzrq'
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
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
        end
      end
    end
  end
  object qry_cx_bqbr: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 88
    Top = 128
  end
  object ds_cx_bqbr: TDataSource
    DataSet = qry_cx_bqbr
    Left = 88
    Top = 168
  end
  object sp_dryz_yzzx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_zyyz_cx_zxqd;1'
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
        Value = '1'
      end
      item
        Name = '@zxsj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '20100811'
      end
      item
        Name = '@ksdm'
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@sssbz'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    Left = 408
    Top = 176
  end
  object ds_dryz_yzzx: TDataSource
    DataSet = sp_dryz_yzzx
    Left = 408
    Top = 224
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 216
    Top = 144
  end
  object sp_dryz_yzjf: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_cx_dryzxm_zx;1'
    Parameters = <>
    Left = 520
    Top = 176
  end
  object ds_dryz_yzjf: TDataSource
    DataSet = sp_dryz_yzjf
    Left = 520
    Top = 224
  end
  object sp_dryz_xz: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_cx_dryzxm;1'
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
        Size = 4
        Value = Null
      end
      item
        Name = '@vkdks'
        Attributes = [paNullable]
        DataType = ftString
        Value = Null
      end>
    Left = 592
    Top = 176
  end
  object ds_dryz_xz: TDataSource
    DataSet = sp_dryz_xz
    Left = 600
    Top = 224
  end
  object sp_dryz_xt: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
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
      end
      item
        Name = '@vkdks'
        Attributes = [paNullable]
        DataType = ftString
        Value = Null
      end>
    Left = 672
    Top = 176
  end
  object ds_dryz_xt: TDataSource
    DataSet = sp_dryz_xt
    Left = 680
    Top = 224
  end
  object qry_cx_yzxg: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 544
    Top = 536
  end
  object ds_cx_yzxg: TDataSource
    DataSet = qry_cx_yzxg
    Left = 544
    Top = 576
  end
  object sp_dryz: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_zyyz_cx_zxqd_fbks'
    Parameters = <>
    Left = 656
    Top = 400
  end
  object ds_dryz: TDataSource
    DataSet = sp_dryz
    Left = 656
    Top = 432
  end
  object qry_qbwjf: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 648
    Top = 360
  end
  object ds_qbwjf: TDataSource
    DataSet = qry_qbwjf
    Left = 640
    Top = 456
  end
end
