object frm_ylaq: Tfrm_ylaq
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = #21307#30103#23433#20840#19981#33391#20107#20214#19978#25253
  ClientHeight = 749
  ClientWidth = 1370
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poNone
  Scaled = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 1370
    Height = 749
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 1388
    ExplicitHeight = 755
    object TabSheet1: TTabSheet
      Caption = #20107#20214#26032#22686
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel4: TPanel
        Left = 0
        Top = 36
        Width = 173
        Height = 682
        Align = alLeft
        TabOrder = 0
        ExplicitHeight = 688
        object DBGrid3: TDBGrid
          Left = 1
          Top = 1
          Width = 171
          Height = 686
          Align = alClient
          DataSource = ds_lb
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          OnDblClick = DBGrid3DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'brxm'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = #22995#21517
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fsrq'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = #21457#29983#26085#26399
              Width = 76
              Visible = True
            end>
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 36
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 1380
        object mz: TRadioButton
          Left = 170
          Top = 7
          Width = 65
          Height = 17
          Caption = #38376#35786
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
          OnClick = mzClick
        end
        object zy: TRadioButton
          Left = 241
          Top = 7
          Width = 56
          Height = 17
          Caption = #20303#38498
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = zyClick
        end
        object Button5: TButton
          Left = 494
          Top = 2
          Width = 69
          Height = 29
          Caption = #20445' '#23384
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button5Click
        end
        object Button1: TButton
          Left = 575
          Top = 1
          Width = 62
          Height = 30
          Caption = #25552' '#20132
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 648
          Top = 2
          Width = 63
          Height = 29
          Caption = #23436' '#25104
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = Button2Click
        end
        object Button6: TButton
          Left = 720
          Top = 2
          Width = 77
          Height = 29
          Caption = #36864#21069#32423#31185#23460
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = Button6Click
        end
        object Button3: TButton
          Left = 807
          Top = 4
          Width = 64
          Height = 29
          Caption = #25171' '#21360
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 948
          Top = 2
          Width = 63
          Height = 29
          Caption = #36864#20986
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = Button4Click
        end
        object Button8: TButton
          Left = 877
          Top = 2
          Width = 63
          Height = 29
          Caption = #25918#24323
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = Button8Click
        end
      end
      object ScrollBox1: TScrollBox
        Left = 173
        Top = 36
        Width = 1189
        Height = 682
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 2
        ExplicitWidth = 1207
        ExplicitHeight = 688
        object Panel1: TPanel
          Left = 0
          Top = -1
          Width = 1198
          Height = 692
          TabOrder = 0
          object Label1: TLabel
            Left = 3
            Top = 5
            Width = 58
            Height = 17
            Caption = #26465'  '#30721'  '#21495
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 183
            Top = 5
            Width = 56
            Height = 17
            Caption = #30149#20154#22995#21517
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 339
            Top = 5
            Width = 56
            Height = 17
            Caption = #30149#20154#24180#40836
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 748
            Top = 5
            Width = 76
            Height = 17
            Caption = #30149'  '#20154' '#35786'  '#26029
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 3
            Top = 35
            Width = 56
            Height = 17
            Caption = #22635#25253#31185#23460
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 183
            Top = 34
            Width = 58
            Height = 17
            Caption = #22635'  '#25253'  '#20154
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 339
            Top = 34
            Width = 56
            Height = 17
            Caption = #36865#36798#37096#38376
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 521
            Top = 34
            Width = 77
            Height = 14
            Caption = #21457#29983'/'#21457#29616#26102#38388
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 747
            Top = 34
            Width = 77
            Height = 14
            Caption = #30005#35805'/'#25253#21578#26102#38388
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 3
            Top = 66
            Width = 58
            Height = 17
            Caption = #24403'  '#20107'  '#20154
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 183
            Top = 66
            Width = 56
            Height = 17
            Caption = #20107#20214#31867#21035
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 339
            Top = 66
            Width = 61
            Height = 17
            Caption = #39318#21457'/'#20877#21457
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 521
            Top = 66
            Width = 84
            Height = 17
            Caption = #26377#26080#25439#23475#21518#26524
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 746
            Top = 66
            Width = 84
            Height = 17
            Caption = #25439#23475#21518#26524#31243#24230
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 521
            Top = 5
            Width = 80
            Height = 17
            Caption = #30149'  '#20154'  '#24615'  '#21035
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 970
            Top = 35
            Width = 72
            Height = 14
            Caption = #26412#34920#36865#36798#26102#38388
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object jbmc: TLabel
            Left = 970
            Top = 5
            Width = 24
            Height = 17
            Caption = '      '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edit1: TEdit
            Left = 65
            Top = 4
            Width = 112
            Height = 23
            BevelInner = bvNone
            BevelOuter = bvNone
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeMode = imOpen
            ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
            ParentFont = False
            TabOrder = 0
            OnKeyPress = edit1KeyPress
          end
          object ComboBox2: TComboBox
            Left = 402
            Top = 32
            Width = 115
            Height = 22
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = #23435#20307
            Font.Style = []
            ImeMode = imClose
            ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
            ItemHeight = 0
            ParentFont = False
            TabOrder = 7
            OnExit = ComboBox2Exit
          end
          object ComboBox1: TComboBox
            Left = 245
            Top = 63
            Width = 92
            Height = 23
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeMode = imClose
            ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
            ItemHeight = 0
            ParentFont = False
            TabOrder = 12
            OnExit = ComboBox2Exit
          end
          object ComboBox3: TComboBox
            Left = 402
            Top = 64
            Width = 115
            Height = 23
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeMode = imClose
            ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
            ItemHeight = 15
            ParentFont = False
            TabOrder = 13
            Items.Strings = (
              #39318#21457
              #20877#21457)
          end
          object ComboBox4: TComboBox
            Left = 608
            Top = 64
            Width = 133
            Height = 23
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeMode = imClose
            ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
            ItemHeight = 15
            ParentFont = False
            TabOrder = 14
            Items.Strings = (
              #26080
              #26377)
          end
          object ComboBox5: TComboBox
            Left = 833
            Top = 64
            Width = 132
            Height = 23
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeMode = imClose
            ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
            ItemHeight = 15
            ParentFont = False
            TabOrder = 15
            OnExit = ComboBox5Exit
            OnKeyPress = ComboBox5KeyPress
            Items.Strings = (
              #36731#24494
              #20013#31561
              #20005#37325
              #27515#20129)
          end
          object Editxm: TDBEdit
            Left = 245
            Top = 5
            Width = 92
            Height = 23
            AutoSize = False
            DataField = 'brxm'
            DataSource = ds_jbxx
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeMode = imOpen
            ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit4: TDBEdit
            Left = 402
            Top = 3
            Width = 113
            Height = 23
            AutoSize = False
            DataField = 'brnl'
            DataSource = ds_jbxx
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeMode = imOpen
            ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit5: TDBEdit
            Left = 608
            Top = 4
            Width = 132
            Height = 23
            AutoSize = False
            DataField = 'brxb'
            DataSource = ds_jbxx
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeMode = imOpen
            ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
            ParentFont = False
            TabOrder = 3
          end
          object DBEdit6: TDBEdit
            Left = 833
            Top = 3
            Width = 132
            Height = 23
            Hint = #21452#20987#24377#20986'ICD10'#35786#26029#36873#25321#30028#38754
            AutoSize = False
            DataField = 'brzd'
            DataSource = ds_jbxx
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeMode = imOpen
            ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnDblClick = DBEdit6DblClick
          end
          object ComboBox9: TComboBox
            Left = 65
            Top = 32
            Width = 112
            Height = 22
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = #23435#20307
            Font.Style = []
            ImeMode = imClose
            ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
            ItemHeight = 0
            ParentFont = False
            TabOrder = 5
            OnExit = ComboBox2Exit
          end
          object DBEdit1: TDBEdit
            Left = 245
            Top = 34
            Width = 92
            Height = 23
            AutoSize = False
            DataField = 'sbr'
            DataSource = ds_jbxx
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeMode = imOpen
            ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
            ParentFont = False
            TabOrder = 6
            OnExit = DBEdit1Exit
          end
          object DBEdit2: TDBEdit
            Left = 65
            Top = 64
            Width = 112
            Height = 25
            DataField = 'dsr'
            DataSource = ds_jbxx
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            OnExit = DBEdit1Exit
          end
          object GroupBox1: TGroupBox
            Left = -3
            Top = 91
            Width = 1198
            Height = 157
            Caption = #20107#20214#25688#35201
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 17
            object Memo1: TMemo
              Left = 2
              Top = 19
              Width = 1194
              Height = 136
              Align = alClient
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
          object GroupBox2: TGroupBox
            Left = -3
            Top = 248
            Width = 1198
            Height = 221
            Caption = #31185#23460'/'#22823#37096#22788#29702#24773#20917
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 18
            object Label15: TLabel
              Left = 8
              Top = 196
              Width = 103
              Height = 17
              Caption = #31185#23460#20027#20219'/'#25252#22763#38271
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 283
              Top = 196
              Width = 28
              Height = 17
              Caption = #26102#38388
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label17: TLabel
              Left = 724
              Top = 196
              Width = 131
              Height = 17
              Caption = #37096#20027#20219'/'#31185#25252#22763#38271#31614#23383
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 1022
              Top = 196
              Width = 28
              Height = 17
              Caption = #26102#38388
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Panel2: TPanel
              Left = 2
              Top = 19
              Width = 1194
              Height = 170
              Align = alTop
              TabOrder = 0
              object Memo2: TMemo
                Left = 1
                Top = 1
                Width = 1192
                Height = 168
                Align = alClient
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -14
                Font.Name = #23435#20307
                Font.Style = []
                Lines.Strings = (
                  '')
                ParentFont = False
                ScrollBars = ssVertical
                TabOrder = 0
              end
            end
            object dtpkszr: TcxDBDateEdit
              Left = 326
              Top = 194
              DataBinding.DataField = 'kzrqrrq'
              DataBinding.DataSource = ds_jbxx
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              OnKeyPress = dtpkszrKeyPress
              Width = 114
            end
            object dtpbmzr: TcxDBDateEdit
              Left = 1058
              Top = 194
              DataBinding.DataField = 'bmzrqrrq'
              DataBinding.DataSource = ds_jbxx
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 114
            end
          end
          object GroupBox3: TGroupBox
            Left = -3
            Top = 467
            Width = 1198
            Height = 227
            Caption = #36131#20219#32844#33021#37096#38376#20107#20214#35843#26597#24773#20917
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 19
            object Label20: TLabel
              Left = 7
              Top = 182
              Width = 80
              Height = 17
              Caption = #37096'  '#38376'  '#20027'  '#20219
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label21: TLabel
              Left = 283
              Top = 182
              Width = 28
              Height = 17
              Caption = #26102#38388
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Panel3: TPanel
              Left = 2
              Top = 19
              Width = 1194
              Height = 157
              Align = alTop
              TabOrder = 0
              object Memo3: TMemo
                Left = 1
                Top = 1
                Width = 1192
                Height = 155
                Align = alClient
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -14
                Font.Name = #23435#20307
                Font.Style = []
                ParentFont = False
                ScrollBars = ssVertical
                TabOrder = 0
              end
            end
            object DBEdit8: TDBEdit
              Left = 117
              Top = 181
              Width = 92
              Height = 23
              AutoSize = False
              DataField = 'zrbmzr'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentFont = False
              TabOrder = 1
              OnExit = DBEdit1Exit
            end
            object dtpzrbm: TcxDBDateEdit
              Left = 326
              Top = 181
              DataBinding.DataField = 'zrbmqrrq'
              DataBinding.DataSource = ds_jbxx
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 114
            end
          end
          object DBEdit3: TDBEdit
            Left = 114
            Top = 442
            Width = 92
            Height = 23
            AutoSize = False
            DataField = 'kszr'
            DataSource = ds_jbxx
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeMode = imOpen
            ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
            ParentFont = False
            TabOrder = 22
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit3KeyPress
          end
          object DBEdit7: TDBEdit
            Left = 863
            Top = 442
            Width = 92
            Height = 23
            AutoSize = False
            DataField = 'bmzr'
            DataSource = ds_jbxx
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ImeMode = imOpen
            ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
            ParentFont = False
            TabOrder = 23
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit7KeyPress
          end
          object dtpfsrq: TcxDBDateEdit
            Left = 608
            Top = 34
            DataBinding.DataField = 'fsrq'
            DataBinding.DataSource = ds_jbxx
            ParentFont = False
            Properties.Kind = ckDateTime
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 8
            Width = 133
          end
          object dtpdhtzsj: TcxDBDateEdit
            Left = 833
            Top = 32
            DataBinding.DataField = 'dhtzrq'
            DataBinding.DataSource = ds_jbxx
            ParentFont = False
            Properties.Kind = ckDateTime
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 9
            Width = 134
          end
          object dtpsdrq: TcxDBDateEdit
            Left = 1046
            Top = 32
            DataBinding.DataField = 'bdsdrq'
            DataBinding.DataSource = ds_jbxx
            ParentFont = False
            Properties.Kind = ckDateTime
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 10
            Width = 135
          end
          object DBGrid1: TDBGrid
            Left = 114
            Top = 185
            Width = 256
            Height = 160
            DataSource = ds_xz
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            ReadOnly = True
            TabOrder = 16
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Visible = False
            OnDblClick = DBGrid1DblClick
            OnKeyPress = DBGrid1KeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'mc'
                Title.Alignment = taCenter
                Title.Caption = #21517#31216
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -14
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 104
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dm'
                Title.Alignment = taCenter
                Title.Caption = #20195#30721
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -14
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 112
                Visible = True
              end>
          end
          object DBGrid4: TDBGrid
            Left = 161
            Top = 163
            Width = 472
            Height = 204
            DataSource = ds_cx
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            ReadOnly = True
            TabOrder = 21
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Visible = False
            OnDblClick = DBGrid4DblClick
            OnKeyPress = DBGrid4KeyPress
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'brxm'
                Title.Alignment = taCenter
                Title.Caption = #22995#21517
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -14
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'bybh'
                Title.Alignment = taCenter
                Title.Caption = #26465#30721#21495
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -14
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 92
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'brnl'
                Title.Alignment = taCenter
                Title.Caption = #24180#40836
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -15
                Title.Font.Name = #23435#20307
                Title.Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'brxb'
                Title.Alignment = taCenter
                Title.Caption = #24615#21035
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -15
                Title.Font.Name = #23435#20307
                Title.Font.Style = []
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'jzrq'
                Title.Alignment = taCenter
                Title.Caption = #23601#35786#26085#26399
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -15
                Title.Font.Name = #23435#20307
                Title.Font.Style = []
                Width = 141
                Visible = True
              end>
          end
          object DBGrid2: TDBGrid
            Left = 554
            Top = 173
            Width = 419
            Height = 204
            DataSource = ds_tmh
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            ReadOnly = True
            TabOrder = 20
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Visible = False
            OnDblClick = DBGrid2DblClick
            OnKeyPress = DBGrid2KeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'tmh'
                Title.Alignment = taCenter
                Title.Caption = #26465#30721#21495
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -14
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'brxm'
                Title.Alignment = taCenter
                Title.Caption = #22995#21517
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -14
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 97
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'brnl'
                Title.Alignment = taCenter
                Title.Caption = #24180#40836
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -15
                Title.Font.Name = #23435#20307
                Title.Font.Style = []
                Width = 52
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'fsrq'
                Title.Alignment = taCenter
                Title.Caption = #21457#29983#26085#26399
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -15
                Title.Font.Name = #23435#20307
                Title.Font.Style = []
                Width = 140
                Visible = True
              end>
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #20107#20214#26597#35810
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 36
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 1380
        object Label23: TLabel
          Left = 192
          Top = 10
          Width = 60
          Height = 15
          Caption = #21457#29983#26085#26399
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 382
          Top = 10
          Width = 15
          Height = 15
          Caption = #33267
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object gr: TRadioButton
          Left = 10
          Top = 10
          Width = 65
          Height = 17
          Caption = #20010#20154
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
          OnClick = grClick
        end
        object ks: TRadioButton
          Left = 83
          Top = 10
          Width = 56
          Height = 17
          Caption = #31185#23460
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = ksClick
        end
        object Button9: TButton
          Left = 592
          Top = 2
          Width = 73
          Height = 29
          Caption = #26597'  '#35810
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button9Click
        end
        object dtpksrq: TDateTimePicker
          Left = 264
          Top = 6
          Width = 105
          Height = 23
          Date = 0.000011574074074074
          Time = 0.000011574074074074
          Checked = False
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object dtpjsrq: TDateTimePicker
          Left = 411
          Top = 6
          Width = 105
          Height = 23
          Date = 0.000011574074074074
          Time = 0.000011574074074074
          Checked = False
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object Button7: TButton
          Left = 694
          Top = 2
          Width = 73
          Height = 29
          Caption = #36864'  '#20986
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = Button7Click
        end
      end
      object DBGrid5: TDBGrid
        Left = 0
        Top = 36
        Width = 1362
        Height = 682
        Align = alClient
        DataSource = ds_sjcx
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        OnDblClick = DBGrid5DblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'tmh'
            Title.Alignment = taCenter
            Title.Caption = #26465#30721#21495
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'brxm'
            Title.Alignment = taCenter
            Title.Caption = #30149#20154#22995#21517
            Width = 102
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'brxb'
            Title.Alignment = taCenter
            Title.Caption = #30149#20154#24615#21035
            Width = 101
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'brnl'
            Title.Alignment = taCenter
            Title.Caption = #30149#20154#24180#40836
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fsrq'
            Title.Alignment = taCenter
            Title.Caption = #21457#29983#26085#26399
            Width = 173
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sbr'
            Title.Alignment = taCenter
            Title.Caption = #19978#25253#20154
            Width = 128
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sbksmc'
            Title.Alignment = taCenter
            Title.Caption = #19978#25253#31185#23460
            Width = 123
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'cljb'
            Title.Alignment = taCenter
            Title.Caption = #26368#21518#22788#29702#32423#21035
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'zhclry'
            Title.Alignment = taCenter
            Title.Caption = #26368#21518#22788#29702#20154#21592
            Width = 104
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'zhclks'
            Title.Alignment = taCenter
            Title.Caption = #26368#21518#22788#29702#31185#23460
            Width = 107
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'lcsfwc'
            Title.Alignment = taCenter
            Title.Caption = #22788#29702#27969#31243#26159#21542#23436#25104
            Width = 129
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'brly'
            Title.Alignment = taCenter
            Title.Caption = #30149#20154#26469#28304
            Width = 76
            Visible = True
          end>
      end
    end
  end
  object ds_jbxx: TDataSource
    DataSet = ado_jbxx
    Left = 434
    Top = 24
  end
  object qry_insert: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 582
    Top = 168
  end
  object qry_temp: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 614
    Top = 168
  end
  object qry_pub: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 646
    Top = 168
  end
  object ds_xz: TDataSource
    DataSet = qry_xz
    Left = 349
    Top = 216
  end
  object qry_xz: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  *  from  sys_czy where 1=2')
    Left = 318
    Top = 216
    object qry_xzmc: TStringField
      FieldName = 'mc'
      Size = 10
    end
    object qry_xzdm: TStringField
      FieldName = 'dm'
      FixedChar = True
      Size = 4
    end
  end
  object qry_tmh: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  id,tmh,brxm,brnl,fsrq  from  blsj_ylaq_jbxx  where 1=2')
    Left = 870
    Top = 192
    object qry_tmhtmh: TStringField
      FieldName = 'tmh'
    end
    object qry_tmhbrxm: TStringField
      FieldName = 'brxm'
      Size = 10
    end
    object qry_tmhfsrq: TDateTimeField
      FieldName = 'fsrq'
    end
    object qry_tmhid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qry_tmhbrnl: TStringField
      FieldName = 'brnl'
      Size = 8
    end
  end
  object ds_tmh: TDataSource
    DataSet = qry_tmh
    Left = 901
    Top = 192
  end
  object qry_lb: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    AfterDelete = qry_lbAfterDelete
    Parameters = <>
    SQL.Strings = (
      'select  *  from  blsj_ylaq_jbxx where 1=2')
    Left = 54
    Top = 176
    object qry_lbid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qry_lbsbks: TStringField
      FieldName = 'sbks'
      Size = 4
    end
    object qry_lbsbr: TStringField
      FieldName = 'sbr'
      Size = 10
    end
    object qry_lbsdbm: TStringField
      FieldName = 'sdbm'
      Size = 4
    end
    object qry_lbksdm: TStringField
      FieldName = 'ksdm'
      Size = 4
    end
    object qry_lbfsrq: TDateTimeField
      FieldName = 'fsrq'
    end
    object qry_lbdhtzrq: TDateTimeField
      FieldName = 'dhtzrq'
    end
    object qry_lbbdsdrq: TDateTimeField
      FieldName = 'bdsdrq'
    end
    object qry_lbsjlx: TStringField
      FieldName = 'sjlx'
      Size = 2
    end
    object qry_lbtmh: TStringField
      FieldName = 'tmh'
    end
    object qry_lbbrxm: TStringField
      FieldName = 'brxm'
      Size = 10
    end
    object qry_lbbrxb: TStringField
      FieldName = 'brxb'
      Size = 4
    end
    object qry_lbbrnl: TStringField
      FieldName = 'brnl'
      Size = 8
    end
    object qry_lbbrzd: TStringField
      FieldName = 'brzd'
      Size = 10
    end
    object qry_lbdsr: TStringField
      FieldName = 'dsr'
      Size = 10
    end
    object qry_lbsfzf: TStringField
      FieldName = 'sfzf'
      Size = 4
    end
    object qry_lbywshhg: TStringField
      FieldName = 'ywshhg'
      Size = 4
    end
    object qry_lbshhgqk: TStringField
      FieldName = 'shhgqk'
    end
    object qry_lbsfwc: TStringField
      FieldName = 'sfwc'
      Size = 2
    end
    object qry_lbkszr: TStringField
      FieldName = 'kszr'
      Size = 10
    end
    object qry_lbkzrqrrq: TDateTimeField
      FieldName = 'kzrqrrq'
    end
    object qry_lbbmzr: TStringField
      FieldName = 'bmzr'
      Size = 10
    end
    object qry_lbbmzrqrrq: TDateTimeField
      FieldName = 'bmzrqrrq'
    end
    object qry_lbzrbmzr: TStringField
      FieldName = 'zrbmzr'
      Size = 10
    end
    object qry_lbzrbmqrrq: TDateTimeField
      FieldName = 'zrbmqrrq'
    end
    object qry_lbsjzy: TMemoField
      FieldName = 'sjzy'
      BlobType = ftMemo
    end
    object qry_lbksclcs: TMemoField
      FieldName = 'ksclcs'
      BlobType = ftMemo
    end
    object qry_lbzrbmdc: TMemoField
      FieldName = 'zrbmdc'
      BlobType = ftMemo
    end
  end
  object ds_lb: TDataSource
    DataSet = qry_lb
    Left = 85
    Top = 176
  end
  object ado_jbxx: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 'select * from blsj_ylaq_jbxx where 1=2'
    MasterFields = 'brbh'
    Parameters = <>
    Prepared = True
    Left = 406
    Top = 24
    object ado_jbxxid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ado_jbxxsbks: TStringField
      FieldName = 'sbks'
      Size = 4
    end
    object ado_jbxxsbr: TStringField
      FieldName = 'sbr'
      Size = 10
    end
    object ado_jbxxsdbm: TStringField
      FieldName = 'sdbm'
      Size = 4
    end
    object ado_jbxxksdm: TStringField
      FieldName = 'ksdm'
      Size = 4
    end
    object ado_jbxxclczy: TStringField
      FieldName = 'clczy'
      Size = 4
    end
    object ado_jbxxcljb: TStringField
      FieldName = 'cljb'
      Size = 2
    end
    object ado_jbxxfsrq: TDateTimeField
      FieldName = 'fsrq'
    end
    object ado_jbxxdhtzrq: TDateTimeField
      FieldName = 'dhtzrq'
    end
    object ado_jbxxbdsdrq: TDateTimeField
      FieldName = 'bdsdrq'
    end
    object ado_jbxxsjlx: TStringField
      FieldName = 'sjlx'
      Size = 2
    end
    object ado_jbxxtmh: TStringField
      FieldName = 'tmh'
    end
    object ado_jbxxbrxm: TStringField
      FieldName = 'brxm'
      Size = 10
    end
    object ado_jbxxbrxb: TStringField
      FieldName = 'brxb'
      Size = 4
    end
    object ado_jbxxbrnl: TStringField
      FieldName = 'brnl'
      Size = 8
    end
    object ado_jbxxbrzd: TStringField
      FieldName = 'brzd'
      Size = 10
    end
    object ado_jbxxdsr: TStringField
      FieldName = 'dsr'
      Size = 10
    end
    object ado_jbxxsfzf: TStringField
      FieldName = 'sfzf'
      Size = 4
    end
    object ado_jbxxywshhg: TStringField
      FieldName = 'ywshhg'
      Size = 4
    end
    object ado_jbxxshhgqk: TStringField
      FieldName = 'shhgqk'
    end
    object ado_jbxxsfwc: TStringField
      FieldName = 'sfwc'
      Size = 2
    end
    object ado_jbxxkszr: TStringField
      FieldName = 'kszr'
      Size = 10
    end
    object ado_jbxxkzrqrrq: TDateTimeField
      FieldName = 'kzrqrrq'
    end
    object ado_jbxxbmzr: TStringField
      FieldName = 'bmzr'
      Size = 10
    end
    object ado_jbxxbmzrqrrq: TDateTimeField
      FieldName = 'bmzrqrrq'
    end
    object ado_jbxxzrbmzr: TStringField
      FieldName = 'zrbmzr'
      Size = 10
    end
    object ado_jbxxzrbmqrrq: TDateTimeField
      FieldName = 'zrbmqrrq'
    end
    object ado_jbxxsjzy: TMemoField
      FieldName = 'sjzy'
      BlobType = ftMemo
    end
    object ado_jbxxksclcs: TMemoField
      FieldName = 'ksclcs'
      BlobType = ftMemo
    end
    object ado_jbxxzrbmdc: TMemoField
      FieldName = 'zrbmdc'
      BlobType = ftMemo
    end
    object ado_jbxxlybz: TStringField
      FieldName = 'lybz'
      Size = 2
    end
  end
  object ds_cx: TDataSource
    DataSet = sp_cx
    Left = 618
    Top = 405
  end
  object sp_cx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'blsj_xzcx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@bqdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@lybz'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = '1'
      end>
    Left = 650
    Top = 405
    object sp_cxbybh: TStringField
      FieldName = 'bybh'
      FixedChar = True
      Size = 12
    end
    object sp_cxbrxm: TStringField
      FieldName = 'brxm'
      FixedChar = True
      Size = 10
    end
    object sp_cxbrnl: TStringField
      FieldName = 'brnl'
      Size = 10
    end
    object sp_cxbrxb: TStringField
      FieldName = 'brxb'
      FixedChar = True
      Size = 2
    end
    object sp_cxjzrq: TDateTimeField
      FieldName = 'jzrq'
    end
  end
  object ds_sjcx: TDataSource
    DataSet = sp_sjcx
    Left = 1021
    Top = 184
  end
  object sp_sjcx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnCalcFields = sp_sjcxCalcFields
    ProcedureName = 'blsj_sjcx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@czy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '9999'
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '0007'
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '1899-12-30'
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '2013-01-01'
      end
      item
        Name = '@cxlx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = '@sjlx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = '1'
      end>
    Left = 1050
    Top = 189
    object sp_sjcxid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object sp_sjcxsbks: TStringField
      FieldName = 'sbks'
      ReadOnly = True
      Size = 4
    end
    object sp_sjcxsbr: TStringField
      FieldName = 'sbr'
      ReadOnly = True
      Size = 10
    end
    object sp_sjcxsdbm: TStringField
      FieldName = 'sdbm'
      ReadOnly = True
      Size = 4
    end
    object sp_sjcxksdm: TStringField
      FieldName = 'ksdm'
      ReadOnly = True
      Size = 4
    end
    object sp_sjcxclczy: TStringField
      FieldName = 'clczy'
      ReadOnly = True
      Size = 4
    end
    object sp_sjcxcljb: TStringField
      FieldName = 'cljb'
      ReadOnly = True
      Size = 2
    end
    object sp_sjcxfsrq: TDateTimeField
      FieldName = 'fsrq'
      ReadOnly = True
    end
    object sp_sjcxdhtzrq: TDateTimeField
      FieldName = 'dhtzrq'
      ReadOnly = True
    end
    object sp_sjcxbdsdrq: TDateTimeField
      FieldName = 'bdsdrq'
      ReadOnly = True
    end
    object sp_sjcxsjlx: TStringField
      FieldName = 'sjlx'
      ReadOnly = True
      Size = 2
    end
    object sp_sjcxtmh: TStringField
      FieldName = 'tmh'
      ReadOnly = True
    end
    object sp_sjcxbrxm: TStringField
      FieldName = 'brxm'
      ReadOnly = True
      Size = 10
    end
    object sp_sjcxbrxb: TStringField
      FieldName = 'brxb'
      ReadOnly = True
      Size = 4
    end
    object sp_sjcxbrnl: TStringField
      FieldName = 'brnl'
      ReadOnly = True
      Size = 8
    end
    object sp_sjcxbrzd: TStringField
      FieldName = 'brzd'
      ReadOnly = True
      Size = 10
    end
    object sp_sjcxdsr: TStringField
      FieldName = 'dsr'
      ReadOnly = True
      Size = 10
    end
    object sp_sjcxsfzf: TStringField
      FieldName = 'sfzf'
      ReadOnly = True
      Size = 4
    end
    object sp_sjcxywshhg: TStringField
      FieldName = 'ywshhg'
      ReadOnly = True
      Size = 4
    end
    object sp_sjcxshhgqk: TStringField
      FieldName = 'shhgqk'
      ReadOnly = True
    end
    object sp_sjcxsfwc: TStringField
      FieldName = 'sfwc'
      ReadOnly = True
      Size = 2
    end
    object sp_sjcxkszr: TStringField
      FieldName = 'kszr'
      ReadOnly = True
      Size = 10
    end
    object sp_sjcxkzrqrrq: TDateTimeField
      FieldName = 'kzrqrrq'
      ReadOnly = True
    end
    object sp_sjcxbmzr: TStringField
      FieldName = 'bmzr'
      ReadOnly = True
      Size = 10
    end
    object sp_sjcxbmzrqrrq: TDateTimeField
      FieldName = 'bmzrqrrq'
      ReadOnly = True
    end
    object sp_sjcxzrbmzr: TStringField
      FieldName = 'zrbmzr'
      ReadOnly = True
      Size = 10
    end
    object sp_sjcxzrbmqrrq: TDateTimeField
      FieldName = 'zrbmqrrq'
      ReadOnly = True
    end
    object sp_sjcxsjzy: TMemoField
      FieldName = 'sjzy'
      ReadOnly = True
      BlobType = ftMemo
    end
    object sp_sjcxksclcs: TMemoField
      FieldName = 'ksclcs'
      ReadOnly = True
      BlobType = ftMemo
    end
    object sp_sjcxzrbmdc: TMemoField
      FieldName = 'zrbmdc'
      ReadOnly = True
      BlobType = ftMemo
    end
    object sp_sjcxlybz: TStringField
      FieldName = 'lybz'
      ReadOnly = True
      Size = 2
    end
    object sp_sjcxlcsfwc: TStringField
      FieldKind = fkCalculated
      FieldName = 'lcsfwc'
      Size = 10
      Calculated = True
    end
    object sp_sjcxsbksmc: TStringField
      FieldKind = fkCalculated
      FieldName = 'sbksmc'
      Size = 30
      Calculated = True
    end
    object sp_sjcxzhclry: TStringField
      FieldKind = fkCalculated
      FieldName = 'zhclry'
      Size = 10
      Calculated = True
    end
    object sp_sjcxzhclks: TStringField
      FieldKind = fkCalculated
      FieldName = 'zhclks'
      Size = 10
      Calculated = True
    end
    object sp_sjcxbrly: TStringField
      FieldKind = fkCalculated
      FieldName = 'brly'
      Size = 10
      Calculated = True
    end
  end
end
