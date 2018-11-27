object frm_ynyc: Tfrm_ynyc
  Left = 0
  Top = 0
  Width = 1222
  Height = 726
  Anchors = [akLeft, akTop, akRight, akBottom]
  AutoScroll = True
  Caption = #38498#20869#21387#30126#22635#25253
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
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pc1: TPageControl
    Left = 0
    Top = 0
    Width = 1206
    Height = 687
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #20107#20214#26032#22686
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      object Panel4: TPanel
        Left = 0
        Top = 38
        Width = 173
        Height = 618
        Align = alLeft
        TabOrder = 0
        object DBGrid3: TDBGrid
          Left = 1
          Top = 1
          Width = 171
          Height = 616
          Align = alClient
          DataSource = ds_lb
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          PopupMenu = ckqk
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          OnCellClick = DBGrid3CellClick
          OnDrawColumnCell = DBGrid3DrawColumnCell
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
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = #22995#21517
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sbrq'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = #19978#25253#26085#26399
              Width = 74
              Visible = True
            end>
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1198
        Height = 38
        Align = alTop
        TabOrder = 1
        object Label34: TLabel
          Left = 5
          Top = 10
          Width = 225
          Height = 15
          Caption = #27880#65306#32418#33394#34892#34920#31034#30149#20154#24050#20986#38498#25110#36716#31185
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Button5: TButton
          Left = 244
          Top = 4
          Width = 69
          Height = 29
          Caption = #20445' '#23384
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button5Click
        end
        object Button1: TButton
          Left = 326
          Top = 4
          Width = 62
          Height = 29
          Hint = #22635#20889#25110#26356#25913#20869#23481#21518#35831#20808#20445#23384#20877#25552#20132
          Caption = #25552' '#20132
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 399
          Top = 4
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
          TabOrder = 2
          OnClick = Button2Click
        end
        object Button6: TButton
          Left = 474
          Top = 4
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
          TabOrder = 3
          OnClick = Button6Click
        end
        object Button3: TButton
          Left = 560
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
          TabOrder = 4
          OnClick = Button3Click
          OnExit = Button3Exit
        end
        object Button4: TButton
          Left = 706
          Top = 4
          Width = 63
          Height = 29
          Caption = #36864#20986
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = Button4Click
        end
        object Button8: TButton
          Left = 634
          Top = 4
          Width = 63
          Height = 29
          Caption = #25918#24323
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = Button8Click
        end
      end
      object ScrollBox1: TScrollBox
        Left = 173
        Top = 38
        Width = 1025
        Height = 618
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 2
        object Panel1: TPanel
          Left = -3
          Top = -3
          Width = 1025
          Height = 620
          TabOrder = 0
          object GroupBox1: TGroupBox
            Left = 2
            Top = 300
            Width = 1016
            Height = 119
            Caption = #30446#21069#25252#29702#25514#26045
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object Label18: TLabel
              Left = 778
              Top = 95
              Width = 28
              Height = 14
              Caption = #26102#38388
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 579
              Top = 95
              Width = 70
              Height = 14
              Caption = #25252#22763#38271#31614#21517
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label17: TLabel
              Left = 6
              Top = 95
              Width = 70
              Height = 14
              Caption = #30003#25253#20154#31614#21517
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label37: TLabel
              Left = 202
              Top = 95
              Width = 70
              Height = 14
              Caption = #26159#21542#35831#20250#35786
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object Memo3: TMemo
              Left = 2
              Top = 19
              Width = 1015
              Height = 70
              Hint = #21452#20987#21487#36873#25321#27169#26495
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              ParentFont = False
              ParentShowHint = False
              ScrollBars = ssVertical
              ShowHint = True
              TabOrder = 0
              OnDblClick = Memo3DblClick
            end
            object dtphsz: TcxDBDateEdit
              Left = 812
              Top = 91
              TabStop = False
              DataBinding.DataField = 'hszqmrq'
              DataBinding.DataSource = ds_jbxx
              ParentFont = False
              Properties.Kind = ckDateTime
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              OnEnter = dtpckrqEnter
              OnExit = dtpckrqExit
              Width = 187
            end
            object DBEdit3: TDBEdit
              Left = 656
              Top = 91
              Width = 110
              Height = 23
              Hint = #21452#20987#21487#26597#30475#22238#36864#35760#24405
              AutoSize = False
              DataField = 'hszqm'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnDblClick = DBEdit3DblClick
              OnExit = DBEdit1Exit
            end
            object DBEdit7: TDBEdit
              Left = 81
              Top = 92
              Width = 110
              Height = 23
              Hint = #21452#20987#21487#26597#30475#22238#36864#35760#24405
              AutoSize = False
              DataField = 'sbrqm'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnDblClick = DBEdit7DblClick
              OnExit = DBEdit1Exit
            end
            object ComboBox5: TComboBox
              Left = 277
              Top = 91
              Width = 146
              Height = 22
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              ItemHeight = 14
              ParentFont = False
              TabOrder = 4
              Visible = False
              OnExit = ComboBox4Exit
              OnKeyPress = ComboBox4KeyPress
              Items.Strings = (
                #26159
                #21542)
            end
          end
          object GroupBox4: TGroupBox
            Left = 8
            Top = -4
            Width = 1020
            Height = 101
            TabOrder = 2
            object Label1: TLabel
              Left = 6
              Top = 14
              Width = 56
              Height = 14
              Caption = #20303' '#38498' '#21495
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label2: TLabel
              Left = 217
              Top = 14
              Width = 56
              Height = 14
              Caption = #30149#20154#22995#21517
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label3: TLabel
              Left = 362
              Top = 14
              Width = 28
              Height = 14
              Caption = #24180#40836
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label19: TLabel
              Left = 519
              Top = 14
              Width = 56
              Height = 14
              Caption = #30149#20154#24615#21035
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 650
              Top = 14
              Width = 56
              Height = 14
              Caption = #30149#20154#24202#21495
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object jbmc: TLabel
              Left = 818
              Top = 43
              Width = 72
              Height = 15
              Caption = '         '
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label23: TLabel
              Left = 815
              Top = 14
              Width = 56
              Height = 14
              Caption = #30149#20154#31185#23460
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label24: TLabel
              Left = 815
              Top = 76
              Width = 56
              Height = 14
              Caption = #19978#25253#20154#21592
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 6
              Top = 76
              Width = 56
              Height = 14
              Caption = #20837#38498#26085#26399
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 650
              Top = 43
              Width = 56
              Height = 14
              Caption = #20837#38498#35786#26029
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 217
              Top = 43
              Width = 56
              Height = 14
              Caption = #30003#25253#26085#26399
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label9: TLabel
              Left = 519
              Top = 76
              Width = 56
              Height = 14
              Caption = #19978#25253#26085#26399
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label10: TLabel
              Left = 506
              Top = 43
              Width = 69
              Height = 14
              Caption = 'Branden'#35780#20998
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label6: TLabel
              Left = 6
              Top = 38
              Width = 56
              Height = 28
              Caption = #26159#21542#30003#25253#13#38590#20813#21387#30126
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 217
              Top = 76
              Width = 56
              Height = 14
              Caption = #21457#29983#26085#26399
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object DBEdit8: TDBEdit
              Left = 583
              Top = 41
              Width = 60
              Height = 22
              AutoSize = False
              DataField = 'pgzf'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentFont = False
              TabOrder = 8
            end
            object edit1: TEdit
              Left = 70
              Top = 12
              Width = 115
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
            object DBEdit4: TDBEdit
              Left = 396
              Top = 12
              Width = 66
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
              Left = 583
              Top = 12
              Width = 60
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
            object DBEdit9: TDBEdit
              Left = 708
              Top = 12
              Width = 73
              Height = 23
              AutoSize = False
              DataField = 'brch'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentFont = False
              TabOrder = 4
            end
            object DBEdit6: TDBEdit
              Left = 708
              Top = 41
              Width = 293
              Height = 23
              Hint = #21452#20987#24377#20986'ICD10'#35786#26029#36873#25321#30028#38754
              AutoSize = False
              DataField = 'ryzd'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 9
              OnDblClick = DBEdit6DblClick
            end
            object ComboBox9: TComboBox
              Left = 879
              Top = 12
              Width = 123
              Height = 23
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imClose
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ItemHeight = 15
              ParentFont = False
              TabOrder = 5
              OnExit = ComboBox9Exit
              Items.Strings = (
                #20005#37325#20007#22833'-1'#20998)
            end
            object DBEdit1: TDBEdit
              Left = 879
              Top = 71
              Width = 123
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
              TabOrder = 13
              OnExit = DBEdit1Exit
            end
            object dtpryrq: TcxDBDateEdit
              Left = 70
              Top = 71
              DataBinding.DataField = 'ryrq'
              DataBinding.DataSource = ds_jbxx
              Properties.ShowTime = False
              TabOrder = 10
              Width = 116
            end
            object Editxm: TDBEdit
              Left = 280
              Top = 12
              Width = 80
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
            object dtpnmyc: TcxDBDateEdit
              Left = 281
              Top = 41
              DataBinding.DataField = 'gwycbgrq'
              DataBinding.DataSource = ds_jbxx
              Enabled = False
              ParentFont = False
              Properties.Kind = ckDateTime
              Properties.ShowTime = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 7
              Width = 181
            end
            object dtpsbrq: TcxDBDateEdit
              Left = 583
              Top = 71
              DataBinding.DataField = 'sbrq'
              DataBinding.DataSource = ds_jbxx
              Properties.Kind = ckDateTime
              Properties.ShowTime = False
              TabOrder = 12
              Width = 198
            end
            object ComboBox1: TComboBox
              Left = 70
              Top = 41
              Width = 115
              Height = 23
              Hint = #21452#20987#33258#21160#26597#25214#26159#21542#24050#19978#25253
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imClose
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ItemHeight = 15
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 6
              OnDblClick = ComboBox1DblClick
              Items.Strings = (
                #26159
                #21542)
            end
            object dtpfsrq: TcxDBDateEdit
              Left = 280
              Top = 71
              DataBinding.DataField = 'fsrq'
              DataBinding.DataSource = ds_jbxx
              ParentFont = False
              Properties.Kind = ckDateTime
              Properties.ShowTime = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 11
              Width = 182
            end
          end
          object GroupBox3: TGroupBox
            Left = 0
            Top = 525
            Width = 1019
            Height = 84
            Caption = #24739#32773#21387#30126#36716#24402#21450#20986#31185#35760#24405
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            object Label26: TLabel
              Left = 6
              Top = 20
              Width = 112
              Height = 14
              Caption = #19978#25253#31185#23460#20986#31185#26102#38388
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label29: TLabel
              Left = 610
              Top = 19
              Width = 112
              Height = 14
              Caption = #19978#25253#31185#23460#20986#31185#24773#20917
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object Label27: TLabel
              Left = 236
              Top = 20
              Width = 56
              Height = 14
              Caption = #20986#31185#31867#21035
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label25: TLabel
              Left = 432
              Top = 19
              Width = 56
              Height = 14
              Caption = #36716#20837#31185#23460
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label30: TLabel
              Left = 842
              Top = 19
              Width = 56
              Height = 14
              Caption = #25252#22763#31614#21517
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label13: TLabel
              Left = 638
              Top = 53
              Width = 84
              Height = 14
              Caption = #21387#30126#27835#24840#26102#38388
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label14: TLabel
              Left = 403
              Top = 53
              Width = 84
              Height = 14
              Caption = #25509#25910#31185#23460#31614#21517
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object Label22: TLabel
              Left = 841
              Top = 45
              Width = 56
              Height = 28
              Caption = #25252#22763#38271#22797'  '#26680#31614#21517
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object Label15: TLabel
              Left = 239
              Top = 46
              Width = 56
              Height = 28
              Caption = #25509#25910#31185#23460#20986#31185#24773#20917
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object Label38: TLabel
              Left = 6
              Top = 53
              Width = 112
              Height = 14
              Caption = #25509#25910#31185#23460#20986#31185#26102#38388
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object dtpckrq: TcxDBDateEdit
              Left = 124
              Top = 16
              DataBinding.DataField = 'ckrq'
              DataBinding.DataSource = ds_jbxx
              ParentFont = False
              Properties.ShowTime = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              OnEnter = dtpckrqEnter
              OnExit = dtpckrqExit
              Width = 104
            end
            object dtpzyrq: TcxDBDateEdit
              Left = 728
              Top = 48
              DataBinding.DataField = 'yczyrq'
              DataBinding.DataSource = ds_jbxx
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 8
              OnEnter = dtpckrqEnter
              OnExit = dtpckrqExit
              Width = 111
            end
            object ComboBox10: TComboBox
              Left = 301
              Top = 16
              Width = 99
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
              TabOrder = 1
              OnKeyPress = ComboBox10KeyPress
              Items.Strings = (
                #20986#38498
                #27515#20129
                #36716#31185)
            end
            object dtpjsqmrq: TcxDBDateEdit
              Left = 124
              Top = 45
              DataBinding.DataField = 'jsksqmrq'
              DataBinding.DataSource = ds_jbxx
              ParentFont = False
              Properties.SaveTime = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 5
              OnEnter = dtpckrqEnter
              OnExit = dtpckrqExit
              Width = 104
            end
            object ComboBox8: TComboBox
              Left = 492
              Top = 16
              Width = 116
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
              TabOrder = 2
              OnExit = ComboBox9Exit
              Items.Strings = (
                #20005#37325#20007#22833'-1'#20998)
            end
            object DBEdit11: TDBEdit
              Left = 906
              Top = 16
              Width = 110
              Height = 23
              AutoSize = False
              DataField = 'cyxxhsqm'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentFont = False
              TabOrder = 4
              OnExit = DBEdit1Exit
            end
            object DBEdit12: TDBEdit
              Left = 905
              Top = 45
              Width = 111
              Height = 23
              AutoSize = False
              DataField = 'hszfhqm'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentFont = False
              TabOrder = 9
              OnExit = DBEdit1Exit
            end
            object ComboBox2: TComboBox
              Left = 728
              Top = 16
              Width = 111
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
              TabOrder = 3
              OnExit = ComboBox2Exit
              OnKeyPress = ComboBox2KeyPress
              Items.Strings = (
                #27835#24840
                #22909#36716
                #26080#21464#21270
                #24694#21270)
            end
            object DBEdit13: TDBEdit
              Left = 492
              Top = 50
              Width = 116
              Height = 23
              AutoSize = False
              DataField = 'jsksfhqm'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentFont = False
              TabOrder = 7
              OnExit = DBEdit1Exit
            end
            object ComboBox6: TComboBox
              Left = 301
              Top = 50
              Width = 99
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
              TabOrder = 6
              OnExit = ComboBox6Exit
              OnKeyPress = ComboBox2KeyPress
              Items.Strings = (
                #27835#24840
                #22909#36716
                #26080#21464#21270
                #24694#21270)
            end
          end
          object GroupBox5: TGroupBox
            Left = 2
            Top = 95
            Width = 1017
            Height = 74
            Caption = #24739#32773#20840#36523#24773#20917
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            object Memo1: TMemo
              Left = 2
              Top = 19
              Width = 1015
              Height = 96
              Hint = #21452#20987#21487#36873#25321#27169#26495
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              ParentFont = False
              ParentShowHint = False
              ScrollBars = ssVertical
              ShowHint = True
              TabOrder = 0
              OnDblClick = Memo1DblClick
            end
          end
          object GroupBox6: TGroupBox
            Left = 2
            Top = 170
            Width = 1017
            Height = 130
            Caption = #21387#30126#29366#20917':('#20998#26399#12289#37096#20301#12289#38754#31215#12289#28145#24230#12289#26377#26080#28183#28082#24863#26579')'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            object Label32: TLabel
              Left = 6
              Top = 109
              Width = 56
              Height = 14
              Caption = #21387#30126#20998#26399
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label33: TLabel
              Left = 201
              Top = 109
              Width = 56
              Height = 14
              Caption = #21457#29983#37096#20301
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object ycfqsm: TLabel
              Left = 371
              Top = 108
              Width = 7
              Height = 14
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Memo2: TMemo
              Left = 2
              Top = 19
              Width = 1015
              Height = 83
              Hint = #21452#20987#21487#36873#25321#27169#26495
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              ParentFont = False
              ParentShowHint = False
              ScrollBars = ssVertical
              ShowHint = True
              TabOrder = 0
              OnDblClick = Memo2DblClick
            end
            object ComboBox3: TComboBox
              Left = 69
              Top = 105
              Width = 110
              Height = 22
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              ItemHeight = 14
              ParentFont = False
              TabOrder = 1
              OnChange = ComboBox3Change
              OnExit = ComboBox3Exit
              OnKeyPress = ComboBox3KeyPress
              Items.Strings = (
                '1'#26399#21387#30126
                '2'#26399#21387#30126
                '3'#26399#21387#30126
                '4'#26399#21387#30126)
            end
            object ComboBox4: TComboBox
              Left = 266
              Top = 105
              Width = 99
              Height = 22
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              ItemHeight = 14
              ParentFont = False
              TabOrder = 2
              OnExit = ComboBox4Exit
              OnKeyPress = ComboBox4KeyPress
              Items.Strings = (
                #39606#39592#26894#39592#22788
                #22352#39592#22788
                #32929#39592#31895#38534#22788
                #36319#39592#22788
                #36275#36381#22788
                #32937#32987#39592#22788
                #26517#39592#22788
                #20854#20182#37096#20301
                #22810#22788#21387#30126)
            end
          end
          object DBGrid4: TDBGrid
            Left = 401
            Top = 57
            Width = 472
            Height = 204
            DataSource = ds_cx
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
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
                Title.Caption = #20837#38498#26085#26399
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -15
                Title.Font.Name = #23435#20307
                Title.Font.Style = []
                Width = 141
                Visible = True
              end>
          end
          object DBGrid1: TDBGrid
            Left = 691
            Top = 93
            Width = 256
            Height = 160
            DataSource = ds_xz
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
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
          object GroupBox2: TGroupBox
            Left = 5
            Top = 419
            Width = 1015
            Height = 105
            Caption = #25252#29702#37096#24847#35265
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
            object Label20: TLabel
              Left = 576
              Top = 81
              Width = 70
              Height = 14
              Caption = #25252#29702#37096#31614#21517
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label21: TLabel
              Left = 775
              Top = 81
              Width = 28
              Height = 14
              Caption = #26102#38388
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object DBEdit10: TDBEdit
              Left = 653
              Top = 78
              Width = 110
              Height = 23
              AutoSize = False
              DataField = 'fhzqm'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentFont = False
              TabOrder = 1
              OnExit = DBEdit1Exit
            end
            object dtpfhz: TcxDBDateEdit
              Left = 809
              Top = 77
              TabStop = False
              DataBinding.DataField = 'fhzqmrq'
              DataBinding.DataSource = ds_jbxx
              ParentFont = False
              Properties.Kind = ckDateTime
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              OnEnter = dtpckrqEnter
              OnExit = dtpckrqExit
              Width = 187
            end
            object Memo4: TMemo
              Left = 0
              Top = 16
              Width = 1015
              Height = 61
              Hint = #21452#20987#21487#36873#25321#27169#26495
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              ParentFont = False
              ParentShowHint = False
              ScrollBars = ssVertical
              ShowHint = True
              TabOrder = 2
              OnDblClick = Memo3DblClick
            end
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
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1198
        Height = 36
        Align = alTop
        TabOrder = 0
        object Label35: TLabel
          Left = 154
          Top = 10
          Width = 60
          Height = 15
          Caption = #19978#25253#26085#26399
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 344
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
        end
        object Button9: TButton
          Left = 511
          Top = 1
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
          Left = 226
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
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          TabOrder = 3
        end
        object dtpjsrq: TDateTimePicker
          Left = 373
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
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          TabOrder = 4
        end
        object Button7: TButton
          Left = 737
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
        object Button13: TButton
          Left = 621
          Top = 2
          Width = 73
          Height = 29
          Caption = #23548#20986#25968#25454
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = Button13Click
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 36
        Width = 1198
        Height = 652
        Align = alTop
        PopupMenu = cxtj
        TabOrder = 1
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCellDblClick = cxGrid1DBTableView1CellDblClick
          OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
          DataController.DataSource = ds_sjcx
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGrid1DBTableView1tmh: TcxGridDBColumn
            Caption = #26465#30721#21495
            DataBinding.FieldName = 'tmh'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 89
          end
          object cxGrid1DBTableView1brxm: TcxGridDBColumn
            Caption = #30149#20154#22995#21517
            DataBinding.FieldName = 'brxm'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 82
          end
          object cxGrid1DBTableView1brnl: TcxGridDBColumn
            Caption = #30149#20154#24180#40836
            DataBinding.FieldName = 'brnl'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 72
          end
          object cxGrid1DBTableView1brxb: TcxGridDBColumn
            Caption = #30149#20154#24615#21035
            DataBinding.FieldName = 'brxb'
            HeaderAlignmentHorz = taCenter
            Width = 67
          end
          object cxGrid1DBTableView1ycfqmc: TcxGridDBColumn
            Caption = #21387#30126#20998#26399
            DataBinding.FieldName = 'ycfqmc'
            Width = 73
          end
          object cxGrid1DBTableView1ycbwmc: TcxGridDBColumn
            Caption = #21387#30126#37096#20301
            DataBinding.FieldName = 'ycbwmc'
            Width = 75
          end
          object cxGrid1DBTableView1sbrq: TcxGridDBColumn
            Caption = #19978#25253#26085#26399
            DataBinding.FieldName = 'sbrqcal'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 120
          end
          object cxGrid1DBTableView1sbr: TcxGridDBColumn
            Caption = #19978#25253#20154
            DataBinding.FieldName = 'sbr'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 94
          end
          object cxGrid1DBTableView1sbks: TcxGridDBColumn
            Caption = #19978#25253#31185#23460
            DataBinding.FieldName = 'sbksmc'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 140
          end
          object cxGrid1DBTableView1cljb: TcxGridDBColumn
            Caption = #26368#21518#22788#29702#32423#21035
            DataBinding.FieldName = 'cljb'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 108
          end
          object cxGrid1DBTableView1zhclry: TcxGridDBColumn
            Caption = #26368#21518#22788#29702#20154#21592
            DataBinding.FieldName = 'zhclry'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 112
          end
          object cxGrid1DBTableView1sfwc: TcxGridDBColumn
            Caption = #22788#29702#27969#31243#26159#21542#23436#25104
            DataBinding.FieldName = 'lcsfwc'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 136
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #20107#20214#32479#35745
      ImageIndex = 2
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1198
        Height = 36
        Align = alTop
        Caption = '`'
        TabOrder = 0
        object Label12: TLabel
          Left = 11
          Top = 10
          Width = 60
          Height = 15
          Caption = #19978#25253#26085#26399
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 201
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
        object Button10: TButton
          Left = 546
          Top = 2
          Width = 73
          Height = 29
          Caption = #32479'    '#35745
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button10Click
        end
        object dtptjs: TDateTimePicker
          Left = 83
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
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          TabOrder = 1
        end
        object dtptje: TDateTimePicker
          Left = 230
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
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          TabOrder = 2
        end
        object Button11: TButton
          Left = 789
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
          TabOrder = 3
          OnClick = Button7Click
        end
        object Button12: TButton
          Left = 666
          Top = 2
          Width = 73
          Height = 29
          Caption = #23548#20986#25968#25454
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = Button12Click
        end
        object ra_fq: TRadioButton
          Left = 370
          Top = 8
          Width = 48
          Height = 17
          Caption = #20998#26399
          Checked = True
          TabOrder = 5
          TabStop = True
        end
        object ra_bw: TRadioButton
          Left = 441
          Top = 8
          Width = 57
          Height = 17
          Caption = #37096#20301
          TabOrder = 6
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 36
        Width = 1198
        Height = 652
        Align = alTop
        TabOrder = 1
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_tj
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object ado_jbxx: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 'select * from blsj_ynyc_jbxx where 1=2'
    MasterFields = 'brbh'
    Parameters = <>
    Prepared = True
    Left = 54
    Top = 208
    object ado_jbxxjsksfhqm: TStringField
      FieldName = 'jsksfhqm'
      Size = 10
    end
    object ado_jbxxjsksqmrq: TDateTimeField
      FieldName = 'jsksqmrq'
    end
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
    object ado_jbxxsbrq: TDateTimeField
      FieldName = 'sbrq'
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
    object ado_jbxxsfwc: TStringField
      FieldName = 'sfwc'
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
    object ado_jbxxryzd: TStringField
      FieldName = 'ryzd'
      Size = 30
    end
    object ado_jbxxsfsbyc: TStringField
      FieldName = 'sfsbyc'
      Size = 10
    end
    object ado_jbxxpgzf: TStringField
      FieldName = 'pgzf'
      Size = 3
    end
    object ado_jbxxbrch: TStringField
      FieldName = 'brch'
      Size = 5
    end
    object ado_jbxxryrq: TDateTimeField
      FieldName = 'ryrq'
    end
    object ado_jbxxfsrq: TDateTimeField
      FieldName = 'fsrq'
    end
    object ado_jbxxhzqsqk: TMemoField
      FieldName = 'hzqsqk'
      BlobType = ftMemo
    end
    object ado_jbxxyczk: TMemoField
      FieldName = 'yczk'
      BlobType = ftMemo
    end
    object ado_jbxxmqhlcs: TMemoField
      FieldName = 'mqhlcs'
      BlobType = ftMemo
    end
    object ado_jbxxsbrqm: TStringField
      FieldName = 'sbrqm'
      Size = 10
    end
    object ado_jbxxzrzzqm: TStringField
      FieldName = 'zrzzqm'
      Size = 10
    end
    object ado_jbxxhszqm: TStringField
      FieldName = 'hszqm'
      Size = 10
    end
    object ado_jbxxhszqmrq: TDateTimeField
      FieldName = 'hszqmrq'
    end
    object ado_jbxxfhzqm: TStringField
      FieldName = 'fhzqm'
      Size = 10
    end
    object ado_jbxxfhzqmrq: TDateTimeField
      FieldName = 'fhzqmrq'
    end
    object ado_jbxxhszfhqm: TStringField
      FieldName = 'hszfhqm'
      Size = 10
    end
    object ado_jbxxyczyrq: TDateTimeField
      FieldName = 'yczyrq'
    end
    object ado_jbxxsffsyc: TStringField
      FieldName = 'sffsyc'
      Size = 4
    end
    object ado_jbxxckrq: TDateTimeField
      FieldName = 'ckrq'
    end
    object ado_jbxxckqk: TStringField
      FieldName = 'ckqk'
      Size = 10
    end
    object ado_jbxxzkks: TStringField
      FieldName = 'zkks'
      Size = 26
    end
    object ado_jbxxyczkqk: TStringField
      FieldName = 'yczkqk'
      Size = 10
    end
    object ado_jbxxgwycbgrq: TDateTimeField
      FieldName = 'gwycbgrq'
    end
    object ado_jbxxcyxxhsqm: TStringField
      FieldName = 'cyxxhsqm'
      Size = 10
    end
    object ado_jbxxsfck: TStringField
      FieldName = 'sfck'
      Size = 2
    end
    object ado_jbxxjsksqrbz: TStringField
      FieldName = 'jsksqrbz'
      Size = 2
    end
    object ado_jbxxhszhfqm: TStringField
      FieldName = 'hszhfqm'
      Size = 10
    end
    object ado_jbxxzyschsz: TStringField
      FieldName = 'zyschsz'
      Size = 4
    end
    object ado_jbxxzyscbz: TStringField
      FieldName = 'zyscbz'
      Size = 2
    end
    object ado_jbxxzyh: TStringField
      FieldName = 'zyh'
    end
    object ado_jbxxycfq: TStringField
      FieldName = 'ycfq'
      Size = 30
    end
    object ado_jbxxycbw: TStringField
      FieldName = 'ycbw'
      Size = 30
    end
    object ado_jbxxsfhz: TStringField
      FieldName = 'sfhz'
      Size = 4
    end
    object ado_jbxxskwyhyj: TStringField
      FieldName = 'skwyhyj'
      Size = 300
    end
    object ado_jbxxjsksckqk: TStringField
      FieldName = 'jsksckqk'
      Size = 10
    end
  end
  object ds_jbxx: TDataSource
    DataSet = ado_jbxx
    Left = 82
    Top = 208
  end
  object qry_insert: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 54
    Top = 272
  end
  object qry_temp: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 86
    Top = 272
  end
  object ds_xz: TDataSource
    DataSet = qry_xz
    Left = 82
    Top = 240
  end
  object qry_xz: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  *  from  sys_czy where 1=2')
    Left = 53
    Top = 240
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
  object qry_lb: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    AfterDelete = qry_lbAfterDelete
    Parameters = <>
    SQL.Strings = (
      'select  *  from  blsj_ynyc_jbxx where 1=2')
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
    object qry_lbsbrq: TDateTimeField
      FieldName = 'sbrq'
    end
    object qry_lbksdm: TStringField
      FieldName = 'ksdm'
      Size = 4
    end
    object qry_lbclczy: TStringField
      FieldName = 'clczy'
      Size = 4
    end
    object qry_lbcljb: TStringField
      FieldName = 'cljb'
      Size = 2
    end
    object qry_lbsfwc: TStringField
      FieldName = 'sfwc'
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
    object qry_lbryzd: TStringField
      FieldName = 'ryzd'
    end
    object qry_lbsfsbyc: TStringField
      FieldName = 'sfsbyc'
      Size = 10
    end
    object qry_lbpgzf: TStringField
      FieldName = 'pgzf'
      Size = 3
    end
    object qry_lbbrch: TStringField
      FieldName = 'brch'
      Size = 5
    end
    object qry_lbryrq: TDateTimeField
      FieldName = 'ryrq'
    end
    object qry_lbfsrq: TDateTimeField
      FieldName = 'fsrq'
    end
    object qry_lbhzqsqk: TMemoField
      FieldName = 'hzqsqk'
      BlobType = ftMemo
    end
    object qry_lbyczk: TMemoField
      FieldName = 'yczk'
      BlobType = ftMemo
    end
    object qry_lbmqhlcs: TMemoField
      FieldName = 'mqhlcs'
      BlobType = ftMemo
    end
    object qry_lbsbrqm: TStringField
      FieldName = 'sbrqm'
      Size = 10
    end
    object qry_lbzrzzqm: TStringField
      FieldName = 'zrzzqm'
      Size = 10
    end
    object qry_lbhszqm: TStringField
      FieldName = 'hszqm'
      Size = 10
    end
    object qry_lbhszqmrq: TDateTimeField
      FieldName = 'hszqmrq'
    end
    object qry_lbfhzqm: TStringField
      FieldName = 'fhzqm'
      Size = 10
    end
    object qry_lbfhzqmrq: TDateTimeField
      FieldName = 'fhzqmrq'
    end
    object qry_lbhszfhqm: TStringField
      FieldName = 'hszfhqm'
      Size = 10
    end
    object qry_lbyczyrq: TDateTimeField
      FieldName = 'yczyrq'
    end
    object qry_lbsffsyc: TStringField
      FieldName = 'sffsyc'
      Size = 4
    end
    object qry_lbckrq: TDateTimeField
      FieldName = 'ckrq'
    end
    object qry_lbckqk: TStringField
      FieldName = 'ckqk'
      Size = 10
    end
    object qry_lbzkks: TStringField
      FieldName = 'zkks'
      Size = 26
    end
    object qry_lbyczkqk: TStringField
      FieldName = 'yczkqk'
      Size = 10
    end
    object qry_lbgwycbgrq: TDateTimeField
      FieldName = 'gwycbgrq'
    end
    object qry_lbcyxxhsqm: TStringField
      FieldName = 'cyxxhsqm'
      Size = 10
    end
    object qry_lbjsksfhqm: TStringField
      FieldName = 'jsksfhqm'
      Size = 10
    end
    object qry_lbjsksqmrq: TDateTimeField
      FieldName = 'jsksqmrq'
    end
    object qry_lbsfck: TStringField
      FieldName = 'sfck'
      Size = 2
    end
    object qry_lbjsksqrbz: TStringField
      FieldName = 'jsksqrbz'
      Size = 2
    end
    object qry_lbhszhfqm: TStringField
      FieldName = 'hszhfqm'
      Size = 10
    end
    object qry_lbzyschsz: TStringField
      FieldName = 'zyschsz'
      Size = 4
    end
    object qry_lbzyscbz: TStringField
      FieldName = 'zyscbz'
      Size = 2
    end
    object qry_lbzyh: TStringField
      FieldName = 'zyh'
    end
    object qry_lbsfcy: TStringField
      FieldName = 'sfcy'
      Size = 2
    end
  end
  object ds_lb: TDataSource
    DataSet = qry_lb
    Left = 85
    Top = 176
  end
  object ds_cx: TDataSource
    DataSet = sp_cx
    Left = 85
    Top = 306
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
        Value = 0
      end
      item
        Name = '@bqdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '0007'
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = '600100001'
      end
      item
        Name = '@lybz'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = '1'
      end>
    Left = 54
    Top = 306
    object sp_cxbybh: TStringField
      FieldName = 'bybh'
      FixedChar = True
      Size = 9
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
    object sp_cxbrch: TStringField
      FieldName = 'brch'
      ReadOnly = True
      Size = 10
    end
    object sp_cxryrq: TDateTimeField
      FieldName = 'ryrq'
      ReadOnly = True
    end
    object sp_cxzyh: TStringField
      FieldName = 'zyh'
      ReadOnly = True
      FixedChar = True
      Size = 16
    end
    object sp_cxbrks: TStringField
      FieldName = 'brks'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
    object sp_cxryzd: TStringField
      FieldName = 'ryzd'
      ReadOnly = True
      FixedChar = True
      Size = 200
    end
  end
  object qry_pub: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 118
    Top = 272
  end
  object ds_sjcx: TDataSource
    DataSet = sp_sjcx
    Left = 86
    Top = 343
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
        Value = '0011'
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '2014-01-01'
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '2014-11-01'
      end
      item
        Name = '@cxlx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = '@sjlx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = '5'
      end>
    Left = 56
    Top = 344
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
    object sp_sjcxsfwc: TStringField
      FieldName = 'sfwc'
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
    object sp_sjcxsbrq: TDateTimeField
      FieldName = 'sbrq'
      ReadOnly = True
    end
    object sp_sjcxsbrqcal: TStringField
      FieldKind = fkCalculated
      FieldName = 'sbrqcal'
      Size = 30
      Calculated = True
    end
    object sp_sjcxycfqmc: TStringField
      FieldKind = fkCalculated
      FieldName = 'ycfqmc'
      Size = 30
      Calculated = True
    end
    object sp_sjcxycbwmc: TStringField
      FieldKind = fkCalculated
      FieldName = 'ycbwmc'
      Size = 30
      Calculated = True
    end
    object sp_sjcxycfq: TStringField
      FieldName = 'ycfq'
    end
    object sp_sjcxycbw: TStringField
      FieldName = 'ycbw'
    end
    object sp_sjcxcyjs: TBooleanField
      FieldName = 'cyjs'
    end
  end
  object ckqk: TPopupMenu
    Left = 56
    Top = 136
    object N1: TMenuItem
      Caption = #19978#25253#31185#23460#20986#31185
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #25509#25910#31185#23460#20986#31185
      OnClick = N2Click
    end
  end
  object sp_tj: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnCalcFields = sp_sjcxCalcFields
    ProcedureName = 'blsj_sjtj_ynyc;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
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
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
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
        Name = '@tjlx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end>
    Left = 57
    Top = 382
  end
  object ds_tj: TDataSource
    DataSet = sp_tj
    Left = 87
    Top = 382
  end
  object SaveDialog1: TSaveDialog
    Left = 760
    Top = 120
  end
  object cxtj: TPopupMenu
    Left = 296
    Top = 224
    object MenuItem1: TMenuItem
      Caption = #25764#38144#25552#20132
      OnClick = MenuItem1Click
    end
  end
end
