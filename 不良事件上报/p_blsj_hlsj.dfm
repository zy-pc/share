object frm_hlsj: Tfrm_hlsj
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = #25252#29702#19981#33391#20107#20214#19978#25253
  ClientHeight = 741
  ClientWidth = 1362
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pc1: TPageControl
    Left = 0
    Top = 0
    Width = 1362
    Height = 741
    ActivePage = TabSheet3
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
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1354
        Height = 32
        Align = alTop
        TabOrder = 0
        object Button5: TButton
          Left = 495
          Top = 1
          Width = 69
          Height = 29
          Caption = #20445' '#23384
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button5Click
        end
        object Button1: TButton
          Left = 570
          Top = 1
          Width = 62
          Height = 29
          Hint = #22635#20889#25110#26356#25913#20869#23481#21518#35831#20808#20445#23384#20877#25552#20132
          Caption = #25552' '#20132
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 643
          Top = 1
          Width = 63
          Height = 29
          Caption = #23436' '#25104
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button2Click
        end
        object Button6: TButton
          Left = 717
          Top = 1
          Width = 77
          Height = 29
          Caption = #36864#21069#32423#31185#23460
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = Button6Click
        end
        object Button3: TButton
          Left = 806
          Top = 1
          Width = 64
          Height = 29
          Caption = #25171#21360
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 948
          Top = 1
          Width = 63
          Height = 29
          Caption = #36864#20986
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = Button4Click
        end
        object Button8: TButton
          Left = 878
          Top = 1
          Width = 63
          Height = 29
          Caption = #25918#24323
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = Button8Click
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 32
        Width = 173
        Height = 678
        Align = alLeft
        TabOrder = 1
        object DBGrid3: TDBGrid
          Left = 1
          Top = 1
          Width = 171
          Height = 676
          Align = alClient
          DataSource = ds_lb
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          OnCellClick = DBGrid3CellClick
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
              Width = 63
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
      object ScrollBox1: TScrollBox
        Left = 173
        Top = 32
        Width = 1181
        Height = 678
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 2
        object Panel1: TPanel
          Left = -34
          Top = -3
          Width = 1238
          Height = 770
          TabOrder = 0
          object Label15: TLabel
            Left = 41
            Top = 154
            Width = 126
            Height = 14
            Caption = #36300#20498#25110#22368#24202#24739#32773#25439#20260
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 1023
            Top = 154
            Width = 196
            Height = 14
            Caption = #26377#21017#22312#19979#38754#26041#26694#20013#22635#20837#32416#32439#24773#20917
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 843
            Top = 152
            Width = 112
            Height = 17
            Caption = #26159#21542#36896#25104#21307#24739#32416#32439
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 645
            Top = 154
            Width = 182
            Height = 14
            Caption = #26377#21017#22312#19979#38754#26041#26694#20013#22635#20837#20260#23475#20917
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 457
            Top = 152
            Width = 112
            Height = 17
            Caption = #26159#21542#36896#25104#25252#22763#20260#23475
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 345
            Top = 154
            Width = 63
            Height = 14
            Caption = #20855#20307#24773#20917':'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object Label23: TLabel
            Left = 294
            Top = 595
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
          object Label24: TLabel
            Left = 914
            Top = 746
            Width = 28
            Height = 14
            Caption = #31614#21517
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 1062
            Top = 746
            Width = 28
            Height = 14
            Caption = #26085#26399
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 469
            Top = 595
            Width = 28
            Height = 14
            Caption = #26085#26399
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object Label32: TLabel
            Left = 39
            Top = 595
            Width = 133
            Height = 14
            Caption = #26159#21542#38656#35201#25252#29702#37096#22788#29702':'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object Label39: TLabel
            Left = 225
            Top = 154
            Width = 56
            Height = 14
            Caption = #20005#37325#31243#24230
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 41
            Top = 239
            Width = 112
            Height = 14
            Caption = #25252#29702#19981#33391#20107#20214#20998#32423
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object sjfj: TLabel
            Left = 344
            Top = 232
            Width = 863
            Height = 29
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object GroupBox1: TGroupBox
            Left = 31
            Top = 93
            Width = 1193
            Height = 55
            TabOrder = 7
            object Label22: TLabel
              Left = 9
              Top = 9
              Width = 68
              Height = 14
              Caption = #20107#20214#31867#22411':'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = [fsBold]
              ParentFont = False
            end
            object CheckBox1: TCheckBox
              Left = 78
              Top = 8
              Width = 49
              Height = 17
              Caption = #36300#20498
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = 14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = CheckBox1Click
            end
            object CheckBox2: TCheckBox
              Left = 154
              Top = 9
              Width = 49
              Height = 17
              Caption = #22368#24202
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = 14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = CheckBox1Click
            end
            object CheckBox3: TCheckBox
              Left = 315
              Top = 8
              Width = 102
              Height = 17
              Caption = #24739#32773#35782#21035#38169#35823
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = 14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = CheckBox1Click
            end
            object CheckBox4: TCheckBox
              Left = 435
              Top = 8
              Width = 102
              Height = 17
              Caption = #21307#22065#25191#34892#38169#35823
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = 14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnClick = CheckBox1Click
            end
            object CheckBox5: TCheckBox
              Left = 557
              Top = 8
              Width = 77
              Height = 17
              Caption = #29992#33647#38169#35823
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = 14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnClick = CheckBox1Click
            end
            object CheckBox6: TCheckBox
              Left = 657
              Top = 8
              Width = 64
              Height = 17
              Caption = #28431#29992#33647
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = 14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnClick = CheckBox1Click
            end
            object CheckBox7: TCheckBox
              Left = 745
              Top = 9
              Width = 46
              Height = 16
              Caption = #36208#22833
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = 14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnClick = CheckBox1Click
            end
            object CheckBox8: TCheckBox
              Left = 827
              Top = 8
              Width = 46
              Height = 17
              Caption = #33258#26432
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = 14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              OnClick = CheckBox1Click
            end
            object CheckBox9: TCheckBox
              Left = 920
              Top = 8
              Width = 79
              Height = 17
              Caption = #28082#20307#28183#28431
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = 14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnClick = CheckBox1Click
            end
            object CheckBox10: TCheckBox
              Left = 1041
              Top = 8
              Width = 45
              Height = 17
              Caption = #35823#21560
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = 14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 9
              OnClick = CheckBox1Click
            end
            object CheckBox11: TCheckBox
              Left = 1125
              Top = 8
              Width = 45
              Height = 17
              Caption = #28907#20260
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = 14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 10
              OnClick = CheckBox1Click
            end
            object CheckBox12: TCheckBox
              Left = 8
              Top = 29
              Width = 37
              Height = 17
              Caption = '1'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = 14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 11
              Visible = False
              OnClick = CheckBox1Click
            end
            object CheckBox13: TCheckBox
              Left = 78
              Top = 33
              Width = 92
              Height = 17
              Caption = #38750#35745#21010#25300#31649
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = 14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 12
              OnClick = CheckBox13Click
            end
            object CheckBox14: TCheckBox
              Left = 579
              Top = 31
              Width = 61
              Height = 17
              Caption = #36755#28082#21453#24212
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = 14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 13
              Visible = False
              OnClick = CheckBox1Click
            end
            object CheckBox15: TCheckBox
              Left = 569
              Top = 33
              Width = 80
              Height = 17
              Caption = #36755#34880#21453#24212
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = 14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 14
              Visible = False
              OnClick = CheckBox1Click
            end
            object CheckBox16: TCheckBox
              Left = 573
              Top = 33
              Width = 77
              Height = 17
              Caption = #36755#34880#21453#24212
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = 14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 15
              Visible = False
              OnClick = CheckBox1Click
            end
            object CheckBox17: TCheckBox
              Left = 228
              Top = 9
              Width = 47
              Height = 16
              Caption = #25237#35785
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = 14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 16
              OnClick = CheckBox1Click
            end
            object CheckBox18: TCheckBox
              Left = 657
              Top = 33
              Width = 96
              Height = 16
              Caption = #20854#20182#31867#22411
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = 14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 17
            end
            object Edit2: TEdit
              Left = 745
              Top = 28
              Width = 169
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
              TabOrder = 18
              OnKeyPress = Edit2KeyPress
            end
            object Edit3: TEdit
              Left = 1041
              Top = 28
              Width = 129
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
              TabOrder = 20
              OnExit = Edit3Exit
              OnKeyPress = Edit2KeyPress
            end
            object CheckBox23: TCheckBox
              Left = 920
              Top = 33
              Width = 108
              Height = 16
              Caption = #20854#20182#21407#22240#20998#26512
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = 14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 19
              OnClick = CheckBox23Click
            end
            object gdmc: TEdit
              Left = 168
              Top = 30
              Width = 214
              Height = 20
              Hint = #21452#20987#36873#25321#23548#31649#31867#22411
              BevelInner = bvNone
              BevelOuter = bvNone
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentFont = False
              ReadOnly = True
              TabOrder = 21
              OnDblClick = gdmcDblClick
              OnKeyPress = Edit2KeyPress
            end
            object CheckBox24: TCheckBox
              Left = 389
              Top = 33
              Width = 74
              Height = 17
              Caption = #37325#32622#31649#36947
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 22
              Visible = False
              OnClick = CheckBox24Click
            end
            object CheckBox25: TCheckBox
              Left = 468
              Top = 33
              Width = 92
              Height = 17
              Caption = #26410#37325#32622#31649#36947
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 23
              Visible = False
              OnClick = CheckBox25Click
            end
          end
          object ComboBox6: TComboBox
            Left = 175
            Top = 151
            Width = 44
            Height = 22
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = #23435#20307
            Font.Style = []
            ImeMode = imClose
            ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
            ItemHeight = 14
            ItemIndex = 1
            ParentFont = False
            TabOrder = 0
            Text = #21542
            OnExit = ComboBox6Exit
            Items.Strings = (
              #26159
              #21542)
          end
          object Memo1: TMemo
            Left = 34
            Top = 175
            Width = 372
            Height = 55
            Hint = 
              #19968#32423#65306#19981#38656#35201#22788#29702#25110#36731#24494#22788#29702#30340#20260#23475#65292#22914#36731#24494#30340#25830#20260#65292#25387#20260#65292#19981#38656#35201#21253#25166#12289#32541#21512#13#10#20108#32423#65306#38656#35201#22788#29702#30340#36739#20026#20005#37325#30340#20260#23475#65292#22914#22823#30340#25830#20260#65292#25387#20260#65292#30382#32932 +
              #25749#35010#20260#38656#35201#21253#25166#12289#32541#21512#30340#13#10#19977#32423#65306#38656#35201#22788#29702#30340#20005#37325#20260#23475#65292#22914#26524#39592#25240#12289#24847#35782#20007#22833#12289#20005#37325#30340#32452#32455#30340#20260#23475#25110#21151#33021#30340#25439#23475
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentShowHint = False
            ScrollBars = ssVertical
            ShowHint = True
            TabOrder = 2
            OnDblClick = Memo1DblClick
          end
          object ComboBox7: TComboBox
            Left = 576
            Top = 151
            Width = 56
            Height = 22
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = #23435#20307
            Font.Style = []
            ImeMode = imClose
            ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
            ItemHeight = 14
            ItemIndex = 1
            ParentFont = False
            TabOrder = 3
            Text = #21542
            OnExit = ComboBox7Exit
            Items.Strings = (
              #26159
              #21542)
          end
          object ComboBox8: TComboBox
            Left = 958
            Top = 151
            Width = 56
            Height = 22
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = #23435#20307
            Font.Style = []
            ImeMode = imClose
            ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
            ItemHeight = 14
            ItemIndex = 1
            ParentFont = False
            TabOrder = 4
            Text = #21542
            OnExit = ComboBox8Exit
            Items.Strings = (
              #26159
              #21542)
          end
          object Memo2: TMemo
            Left = 457
            Top = 175
            Width = 372
            Height = 55
            Hint = #21452#20987#21487#36873#25321#27169#26495
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentShowHint = False
            ScrollBars = ssVertical
            ShowHint = True
            TabOrder = 5
            OnDblClick = Memo2DblClick
          end
          object Memo3: TMemo
            Left = 844
            Top = 175
            Width = 377
            Height = 55
            Hint = #21452#20987#21487#36873#25321#27169#26495
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentShowHint = False
            ScrollBars = ssVertical
            ShowHint = True
            TabOrder = 6
            OnDblClick = Memo3DblClick
          end
          object GroupBox2: TGroupBox
            Left = 31
            Top = 259
            Width = 1191
            Height = 88
            Caption = #31616#35201#32463#36807#21450#22788#32622#35201#28857
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
            object Memo4: TMemo
              Left = 2
              Top = 19
              Width = 1187
              Height = 67
              Hint = #21452#20987#21487#36873#25321#27169#26495
              Align = alClient
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
              OnDblClick = Memo4DblClick
            end
          end
          object GroupBox3: TGroupBox
            Left = 34
            Top = 348
            Width = 1187
            Height = 142
            Caption = #21407#22240#20998#26512
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = #23435#20307
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 9
            object Panel3: TPanel
              Left = 2
              Top = 16
              Width = 1183
              Height = 124
              Align = alClient
              Caption = 'Panel2'
              TabOrder = 0
              object clb: TcxCheckListBox
                Left = 1
                Top = 1
                Width = 1181
                Height = 122
                Align = alClient
                AutoCompleteDelay = 100
                Columns = 3
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                Items = <>
                ParentFont = False
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -14
                Style.Font.Name = #23435#20307
                Style.Font.Style = []
                Style.IsFontAssigned = True
                StyleDisabled.TextColor = clRed
                TabOrder = 0
              end
            end
          end
          object GroupBox4: TGroupBox
            Left = 34
            Top = 490
            Width = 1190
            Height = 100
            Caption = #31185#23460#25913#36827#24847#35265'('#21547#31185#23460#31995#32479#25913#36827')'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = #23435#20307
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 10
            object Memo5: TMemo
              Left = 2
              Top = 16
              Width = 1185
              Height = 82
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
              OnDblClick = Memo5DblClick
            end
          end
          object GroupBox5: TGroupBox
            Left = 31
            Top = 616
            Width = 1193
            Height = 124
            Caption = #25252#29702#37096#25351#23548#25110#35299#20915#24773#20917
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 11
            object Memo6: TMemo
              Left = 2
              Top = 19
              Width = 1189
              Height = 103
              Hint = #21452#20987#21487#36873#25321#27169#26495
              Align = alClient
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
              OnDblClick = Memo6DblClick
            end
          end
          object DBEdit7: TDBEdit
            Left = 371
            Top = 592
            Width = 87
            Height = 22
            Hint = #21452#20987#21487#26597#30475#22238#36864#35760#24405
            DataField = 'ksqm'
            DataSource = ds_jbxx
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 12
            OnDblClick = DBEdit7DblClick
            OnExit = DBEdit1Exit
          end
          object DBEdit8: TDBEdit
            Left = 945
            Top = 741
            Width = 91
            Height = 22
            DataField = 'hlbqm'
            DataSource = ds_jbxx
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 14
            OnExit = DBEdit1Exit
          end
          object DBGrid4: TDBGrid
            Left = 578
            Top = 348
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
            TabOrder = 17
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
          object dtpks: TcxDBDateEdit
            Left = 504
            Top = 591
            DataBinding.DataField = 'ksqmrq'
            DataBinding.DataSource = ds_jbxx
            TabOrder = 13
            Width = 114
          end
          object dtphlb: TcxDBDateEdit
            Left = 1096
            Top = 740
            DataBinding.DataField = 'hlbqmrq'
            DataBinding.DataSource = ds_jbxx
            TabOrder = 15
            Width = 114
          end
          object CheckBox19: TCheckBox
            Left = 177
            Top = 595
            Width = 37
            Height = 17
            Caption = #26159
            TabOrder = 18
            OnClick = CheckBox19Click
          end
          object CheckBox20: TCheckBox
            Left = 220
            Top = 595
            Width = 37
            Height = 17
            Caption = #21542
            TabOrder = 19
            OnClick = CheckBox20Click
          end
          object DBGrid1: TDBGrid
            Left = 266
            Top = 278
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
          object GroupBox7: TGroupBox
            Left = 34
            Top = -4
            Width = 1190
            Height = 100
            TabOrder = 20
            object Label1: TLabel
              Left = 7
              Top = 14
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
            object Label26: TLabel
              Left = 7
              Top = 43
              Width = 56
              Height = 17
              Caption = #30149#20154#24202#21495
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 7
              Top = 71
              Width = 56
              Height = 17
              Caption = #25252#22763#22995#21517
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label2: TLabel
              Left = 173
              Top = 14
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
            object Label9: TLabel
              Left = 173
              Top = 43
              Width = 56
              Height = 17
              Caption = #25252#29702#32423#21035
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label12: TLabel
              Left = 173
              Top = 71
              Width = 56
              Height = 17
              Caption = #25252#22763#24180#40836
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label3: TLabel
              Left = 357
              Top = 14
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
            object Label5: TLabel
              Left = 357
              Top = 43
              Width = 56
              Height = 17
              Caption = #21576#25253#31185#23460
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label13: TLabel
              Left = 357
              Top = 71
              Width = 56
              Height = 17
              Caption = #25252#22763#32844#31216
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label19: TLabel
              Left = 538
              Top = 14
              Width = 56
              Height = 17
              Caption = #30149#20154#24615#21035
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label6: TLabel
              Left = 538
              Top = 43
              Width = 62
              Height = 17
              Caption = #21576'   '#25253'  '#20154
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label14: TLabel
              Left = 538
              Top = 71
              Width = 56
              Height = 17
              Caption = #24037#20316#24180#38480
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label30: TLabel
              Left = 700
              Top = 63
              Width = 42
              Height = 34
              Caption = #24847#22806#20107#13#20214#35780#20998
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label10: TLabel
              Left = 689
              Top = 43
              Width = 58
              Height = 17
              Caption = #21457'  '#29616'  '#32773
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label29: TLabel
              Left = 687
              Top = 14
              Width = 56
              Height = 17
              Caption = #20837#38498#26102#38388
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 859
              Top = 43
              Width = 56
              Height = 17
              Caption = #21457#29983#22320#28857
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 941
              Top = 14
              Width = 60
              Height = 17
              Caption = #30149' '#20154#35786#26029
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object jbmc: TLabel
              Left = 1110
              Top = 17
              Width = 21
              Height = 13
              Caption = '       '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label40: TLabel
              Left = 859
              Top = 71
              Width = 56
              Height = 17
              Caption = #21457#29983#26102#38388
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label41: TLabel
              Left = 277
              Top = 71
              Width = 28
              Height = 17
              Caption = #23703#32423
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label42: TLabel
              Left = 999
              Top = 43
              Width = 56
              Height = 17
              Caption = #29305#27530#20107#20214
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit2: TDBEdit
              Left = 69
              Top = 69
              Width = 95
              Height = 23
              AutoSize = False
              DataField = 'hsxm'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentFont = False
              TabOrder = 12
              OnExit = DBEdit1Exit
            end
            object DBEdit9: TDBEdit
              Left = 69
              Top = 40
              Width = 95
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
              TabOrder = 6
            end
            object edit1: TEdit
              Left = 69
              Top = 13
              Width = 95
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
            object DBEdit3: TDBEdit
              Left = 232
              Top = 69
              Width = 39
              Height = 23
              Hint = #21482#22635#25968#23383
              AutoSize = False
              DataField = 'hsnl'
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
              OnExit = DBEdit3Exit
            end
            object ComboBox1: TComboBox
              Left = 232
              Top = 41
              Width = 120
              Height = 22
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imClose
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ItemHeight = 14
              ParentFont = False
              TabOrder = 7
              Items.Strings = (
                #19968#32423#25252#29702
                #20108#32423#25252#29702
                #19977#32423#25252#29702
                #29305#32423#25252#29702)
            end
            object Editxm: TDBEdit
              Left = 232
              Top = 13
              Width = 119
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
            object ComboBox4: TComboBox
              Left = 416
              Top = 69
              Width = 115
              Height = 22
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imClose
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ItemHeight = 14
              ParentFont = False
              TabOrder = 15
              Items.Strings = (
                #25252#22763
                #25252#24072
                #20027#31649#25252#24072
                #21103#20027#20219#25252#24072
                #20027#20219#25252#24072
                ''
                '')
            end
            object ComboBox9: TComboBox
              Left = 416
              Top = 41
              Width = 115
              Height = 22
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imClose
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ItemHeight = 14
              ParentFont = False
              TabOrder = 8
              OnExit = ComboBox9Exit
            end
            object DBEdit4: TDBEdit
              Left = 416
              Top = 12
              Width = 114
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
              Left = 603
              Top = 13
              Width = 81
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
            object DBEdit1: TDBEdit
              Left = 603
              Top = 40
              Width = 81
              Height = 23
              Hint = #21452#20987#21487#26597#30475#22238#36864#35760#24405
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
              ParentShowHint = False
              ShowHint = True
              TabOrder = 9
              OnDblClick = DBEdit1DblClick
              OnExit = DBEdit1Exit
            end
            object ComboBox5: TComboBox
              Left = 603
              Top = 69
              Width = 81
              Height = 22
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imClose
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ItemHeight = 14
              ParentFont = False
              TabOrder = 16
              OnExit = ComboBox5Exit
              Items.Strings = (
                '1'
                '2'
                '3'
                '5'
                '10')
            end
            object dtpryrq: TcxDBDateEdit
              Left = 748
              Top = 12
              DataBinding.DataField = 'ryrq'
              DataBinding.DataSource = ds_jbxx
              Properties.Kind = ckDateTime
              TabOrder = 4
              Width = 187
            end
            object ComboBox3: TComboBox
              Left = 748
              Top = 41
              Width = 107
              Height = 22
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imClose
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ItemHeight = 14
              ParentFont = False
              TabOrder = 10
              Items.Strings = (
                #21307#29983
                #25252#22763
                #24739#32773
                #24739#32773#23478#23646)
            end
            object DBEdit10: TDBEdit
              Left = 748
              Top = 69
              Width = 107
              Height = 23
              Hint = #21452#20987#21487#23548#20837#25252#29702#35760#24405#21333#24050#22635#35780#20998
              AutoSize = False
              DataField = 'ywsjpf'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentFont = False
              TabOrder = 17
              OnDblClick = DBEdit10DblClick
              OnExit = DBEdit10Exit
              OnKeyPress = DBEdit10KeyPress
            end
            object dtpfsrq: TcxDBDateEdit
              Left = 1113
              Top = 69
              DataBinding.DataField = 'sbrq'
              DataBinding.DataSource = ds_jbxx
              Enabled = False
              Properties.Kind = ckDateTime
              TabOrder = 19
              Visible = False
              Width = 46
            end
            object DBEdit6: TDBEdit
              Left = 1003
              Top = 12
              Width = 104
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
              TabOrder = 5
              OnDblClick = DBEdit6DblClick
            end
            object dtpsjfsrq: TcxDBDateEdit
              Left = 922
              Top = 69
              DataBinding.DataField = 'fsrq'
              DataBinding.DataSource = ds_jbxx
              Properties.Kind = ckDateTime
              TabOrder = 18
              Width = 185
            end
            object ComboBox12: TComboBox
              Left = 922
              Top = 41
              Width = 68
              Height = 22
              DropDownCount = 15
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imClose
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ItemHeight = 14
              ParentFont = False
              TabOrder = 11
              Items.Strings = (
                #30149#25151
                #36208#24266
                #21397#25152
                #27835#30103#23460
                #37197#33647#23460
                #25442#33647#23460
                #22788#32622#23460
                #25163#26415#23460
                #30149#21306#22806)
            end
            object ComboBox13: TComboBox
              Left = 310
              Top = 69
              Width = 42
              Height = 22
              Hint = #36873#39033#20013#36873#25321
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imClose
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ItemHeight = 14
              ParentFont = False
              TabOrder = 14
              Items.Strings = (
                'A1'
                'A2'
                'A3'
                'B1'
                'B2'
                'B3'
                'C1'
                'C2'
                'C3'
                'C4'
                ''
                '')
            end
            object ComboBox14: TComboBox
              Left = 1057
              Top = 41
              Width = 50
              Height = 22
              Hint = #26159#21542#29305#27530#24847#22806#20107#20214
              DropDownCount = 15
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imClose
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ItemHeight = 14
              ParentFont = False
              TabOrder = 20
              Items.Strings = (
                #26159
                #21542)
            end
          end
          object ComboBox10: TComboBox
            Left = 286
            Top = 151
            Width = 56
            Height = 22
            Hint = 
              #26080#65306#27809#26377#20260#23506#13#10#19968#32423#65306#19981#38656#35201#25110#21482#38656#31245#24494#27835#30103#19982#35266#23519#30340#20260#23475#31243#24230','#22914#25830#20260#12289#25387#20260#12289#19981#38656#35201#32541#21512#30340#30382#32932#23567#25749#35010#20260#31561#13#10#20108#32423#65306#38656#35201#20912#25975#12289#21253#25166#12289#32541 +
              #21512#25110#22841#26495#31561#21307#30103#25110#25252#29702#22788#32622#19982#35266#23519#30340#20260#23475#31243#24230#65292#22914#65306#25197#20260#12289#22823#25110#28145#30340#25749#35010#20260#12289#30382#32932#25749#35010#25110#23567#25387#20260#13#10#19977#32423#65306#38656#35201#21307#30103#22788#32622#21450#20250#35786#30340#20260#23475#31243#24230#65306#22914#39592 +
              #25240#12289#24847#35782#20007#31934#31070#25110#36523#20307#29366#24577#25913#21464#31561#13#10#27515#20129#65306#25110#32773#22240#36300#20498#20135#29983#30340#25345#32493#24615#25439#20260#32780#26368#32456#33268#27515
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = #23435#20307
            Font.Style = []
            ImeMode = imClose
            ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
            ItemHeight = 14
            ParentFont = False
            TabOrder = 1
            OnExit = ComboBox10Exit
            Items.Strings = (
              #26080
              #19968#32423
              #20108#32423
              #19977#32423
              #27515#20129)
          end
          object Button14: TButton
            Left = 407
            Top = 175
            Width = 47
            Height = 55
            Caption = #20998#32423#35828#26126
            TabOrder = 21
            WordWrap = True
            OnClick = Button14Click
          end
          object ComboBox11: TComboBox
            Left = 167
            Top = 236
            Width = 173
            Height = 22
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = #23435#20307
            Font.Style = []
            ImeMode = imClose
            ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
            ItemHeight = 14
            ParentFont = False
            TabOrder = 22
            OnChange = ComboBox11Change
            OnExit = ComboBox11Exit
            Items.Strings = (
              #8544#32423#20107#20214
              #8545#32423#20107#20214
              #8546#32423#20107#20214
              #8547#32423#20107#20214)
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
        Width = 1354
        Height = 36
        Align = alTop
        TabOrder = 0
        object Label27: TLabel
          Left = 431
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
        object Label28: TLabel
          Left = 642
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
        object Label38: TLabel
          Left = 165
          Top = 10
          Width = 60
          Height = 15
          Caption = #20107#20214#31867#22411
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
          Left = 72
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
          Left = 866
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
          Left = 503
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
          Left = 695
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
          Left = 1089
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
        object ComboBox2: TComboBox
          Left = 231
          Top = 7
          Width = 127
          Height = 22
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ImeMode = imClose
          ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
          ItemHeight = 14
          ParentFont = False
          TabOrder = 6
          Text = #20840#37096
          Items.Strings = (
            #20840#37096
            #36300#20498
            #22368#24202
            #24739#32773#35782#21035#38169#35823
            #21307#22065#25191#34892#38169#35823
            #29992#33647#38169#35823
            #28431#29992#33647
            #36208#22833
            #33258#26432
            #28082#20307#28183#28431
            #35823#21560
            #28907#20260
            #38498#20869#21387#30126
            #38750#35745#21010#25300#31649
            #36755#28082#21453#24212
            #36755#34880#21453#24212
            #32844#19994#26292#38706
            #25237#35785
            #20854#20182#31867#22411)
        end
        object Button12: TButton
          Left = 975
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
          TabOrder = 7
          OnClick = Button12Click
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 36
        Width = 1354
        Height = 776
        Align = alTop
        PopupMenu = cxtj
        TabOrder = 1
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCellDblClick = cxGrid1DBTableView1CellDblClick
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
            Width = 84
          end
          object cxGrid1DBTableView1brnl: TcxGridDBColumn
            Caption = #30149#20154#24180#40836
            DataBinding.FieldName = 'brnl'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 75
          end
          object cxGrid1DBTableView1brxb: TcxGridDBColumn
            Caption = #30149#20154#24615#21035
            DataBinding.FieldName = 'brxb'
          end
          object cxGrid1DBTableView1sbrq: TcxGridDBColumn
            Caption = #19978#25253#26085#26399
            DataBinding.FieldName = 'sbrq'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 189
          end
          object cxGrid1DBTableView1sbr: TcxGridDBColumn
            Caption = #19978#25253#20154
            DataBinding.FieldName = 'sbr'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 74
          end
          object cxGrid1DBTableView1sbks: TcxGridDBColumn
            Caption = #19978#25253#31185#23460
            DataBinding.FieldName = 'sbksmc'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 156
          end
          object cxGrid1DBTableView1cljb: TcxGridDBColumn
            Caption = #26368#21518#22788#29702#32423#21035
            DataBinding.FieldName = 'cljb'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 101
          end
          object cxGrid1DBTableView1sjlx: TcxGridDBColumn
            Caption = #20107#20214#31867#22411
            DataBinding.FieldName = 'sjlxmc'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 96
          end
          object cxGrid1DBTableView1zhclry: TcxGridDBColumn
            Caption = #26368#21518#22788#29702#20154#21592
            DataBinding.FieldName = 'zhclry'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 121
          end
          object cxGrid1DBTableView1sfwc: TcxGridDBColumn
            Caption = #22788#29702#27969#31243#26159#21542#23436#25104
            DataBinding.FieldName = 'lcsfwc'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 149
          end
          object cxGrid1DBTableView1brly: TcxGridDBColumn
            Caption = #30149#20154#26469#28304
            DataBinding.FieldName = 'brly'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 124
          end
          object cxGrid1DBTableView1fsrq: TcxGridDBColumn
            Caption = #21457#29983#26085#26399
            DataBinding.FieldName = 'fsrq'
            Width = 76
          end
          object cxGrid1DBTableView1sjfj: TcxGridDBColumn
            Caption = #20107#20214#20998#32423
            DataBinding.FieldName = 'blsjfj'
          end
          object cxGrid1DBTableView1brzd: TcxGridDBColumn
            Caption = #30149#20154#35786#26029
            DataBinding.FieldName = 'brzd'
          end
          object cxGrid1DBTableView1fsdd: TcxGridDBColumn
            Caption = #21457#29983#22320#28857
            DataBinding.FieldName = 'fsdd'
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
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1354
        Height = 36
        Align = alTop
        TabOrder = 0
        object Label36: TLabel
          Left = 4
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
        object Label37: TLabel
          Left = 227
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
          Left = 471
          Top = 2
          Width = 73
          Height = 29
          Caption = #32479#35745
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
          Left = 87
          Top = 6
          Width = 105
          Height = 23
          Date = 41640.000011574080000000
          Time = 41640.000011574080000000
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
          Left = 277
          Top = 6
          Width = 105
          Height = 23
          Date = 41922.000011574080000000
          Time = 41922.000011574080000000
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
          Left = 727
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
          OnClick = Button11Click
        end
        object Button13: TButton
          Left = 601
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
          OnClick = Button13Click
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 36
        Width = 1354
        Height = 776
        Align = alTop
        TabOrder = 1
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCellDblClick = cxGrid1DBTableView1CellDblClick
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
    CommandText = 'select * from blsj_hlsj_jbxx where 1=2'
    MasterFields = 'brbh'
    Parameters = <>
    Prepared = True
    Left = 56
    Top = 360
    object ado_jbxxid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
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
    object ado_jbxxsbks: TStringField
      FieldName = 'sbks'
      Size = 4
    end
    object ado_jbxxsbr: TStringField
      FieldName = 'sbr'
      Size = 10
    end
    object ado_jbxxfxz: TStringField
      FieldName = 'fxz'
      Size = 10
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
    object ado_jbxxbrch: TStringField
      FieldName = 'brch'
      Size = 6
    end
    object ado_jbxxbrzd: TStringField
      FieldName = 'brzd'
      Size = 30
    end
    object ado_jbxxhljb: TStringField
      FieldName = 'hljb'
    end
    object ado_jbxxhsxm: TStringField
      FieldName = 'hsxm'
      Size = 10
    end
    object ado_jbxxhsnl: TStringField
      FieldName = 'hsnl'
      Size = 10
    end
    object ado_jbxxhszc: TStringField
      FieldName = 'hszc'
      Size = 16
    end
    object ado_jbxxgznx: TStringField
      FieldName = 'gznx'
      Size = 10
    end
    object ado_jbxxsfhzss: TStringField
      FieldName = 'sfhzss'
      Size = 2
    end
    object ado_jbxxhzssqk: TMemoField
      FieldName = 'hzssqk'
      BlobType = ftMemo
    end
    object ado_jbxxsfhssh: TStringField
      FieldName = 'sfhssh'
      Size = 2
    end
    object ado_jbxxhsshqk: TMemoField
      FieldName = 'hsshqk'
      BlobType = ftMemo
    end
    object ado_jbxxsfyhjf: TStringField
      FieldName = 'sfyhjf'
      Size = 2
    end
    object ado_jbxxyhjfqk: TMemoField
      FieldName = 'yhjfqk'
      BlobType = ftMemo
    end
    object ado_jbxxsjjg: TMemoField
      FieldName = 'sjjg'
      BlobType = ftMemo
    end
    object ado_jbxxhlbyj: TMemoField
      FieldName = 'hlbyj'
      BlobType = ftMemo
    end
    object ado_jbxxhlbqm: TStringField
      FieldName = 'hlbqm'
      Size = 10
    end
    object ado_jbxxhlbqmrq: TDateTimeField
      FieldName = 'hlbqmrq'
    end
    object ado_jbxxxxbc: TStringField
      FieldName = 'xxbc'
      Size = 400
    end
    object ado_jbxxsbrq: TDateTimeField
      FieldName = 'sbrq'
    end
    object ado_jbxxryrq: TDateTimeField
      FieldName = 'ryrq'
    end
    object ado_jbxxywsjpf: TStringField
      FieldName = 'ywsjpf'
      Size = 3
    end
    object ado_jbxxksgjyj: TMemoField
      FieldName = 'ksgjyj'
      BlobType = ftMemo
    end
    object ado_jbxxsftjdkb: TStringField
      FieldName = 'sftjdkb'
      Size = 2
    end
    object ado_jbxxdkbyj: TMemoField
      FieldName = 'dkbyj'
      BlobType = ftMemo
    end
    object ado_jbxxdkbqm: TStringField
      FieldName = 'dkbqm'
      Size = 10
    end
    object ado_jbxxdkbqmrq: TDateTimeField
      FieldName = 'dkbqmrq'
    end
    object ado_jbxxsftjhlb: TStringField
      FieldName = 'sftjhlb'
      Size = 2
    end
    object ado_jbxxksqm: TStringField
      FieldName = 'ksqm'
      Size = 10
    end
    object ado_jbxxksqmrq: TDateTimeField
      FieldName = 'ksqmrq'
    end
    object ado_jbxxsjlx: TStringField
      FieldName = 'sjlx'
      Size = 400
    end
    object ado_jbxxqtsjlx: TStringField
      FieldName = 'qtsjlx'
      Size = 200
    end
    object ado_jbxxzyh: TStringField
      FieldName = 'zyh'
    end
    object ado_jbxxhzshcd: TStringField
      FieldName = 'hzshcd'
    end
    object ado_jbxxfsrq: TDateTimeField
      FieldName = 'fsrq'
    end
    object ado_jbxxblsjfj: TStringField
      FieldName = 'blsjfj'
    end
    object ado_jbxxfsdd: TStringField
      FieldName = 'fsdd'
      Size = 40
    end
    object ado_jbxxgdmc: TStringField
      FieldName = 'gdmc'
      Size = 80
    end
    object ado_jbxxhsgj: TStringField
      FieldName = 'hsgj'
      Size = 10
    end
    object ado_jbxxsfgdcz: TStringField
      FieldName = 'sfgdcz'
      FixedChar = True
      Size = 1
    end
    object ado_jbxxsjyyfx: TStringField
      FieldName = 'sjyyfx'
      Size = 600
    end
    object ado_jbxxtssj: TStringField
      FieldName = 'tssj'
      Size = 2
    end
  end
  object qry_temp: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 1062
    Top = 28
  end
  object qry_insert: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 1086
    Top = 28
  end
  object qry_pub: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 1142
    Top = 28
  end
  object ds_tmh: TDataSource
    DataSet = qry_tmh
    Left = 1253
    Top = 28
  end
  object qry_tmh: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  *  from  blsj_hlsj_jbxx')
    Left = 1222
    Top = 28
    object qry_tmhsbrq: TDateTimeField
      FieldName = 'sbrq'
    end
    object qry_tmhtmh: TStringField
      FieldName = 'tmh'
    end
    object qry_tmhbrxm: TStringField
      FieldName = 'brxm'
      Size = 10
    end
    object qry_tmhbrxb: TStringField
      FieldName = 'brxb'
      Size = 4
    end
    object qry_tmhbrnl: TStringField
      FieldName = 'brnl'
      Size = 8
    end
    object qry_tmhid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
  end
  object ds_jbxx: TDataSource
    DataSet = ado_jbxx
    Left = 88
    Top = 360
  end
  object ds_lb: TDataSource
    DataSet = qry_lb
    Left = 88
    Top = 292
  end
  object qry_lb: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    AfterDelete = qry_lbAfterDelete
    Parameters = <>
    SQL.Strings = (
      'select  *  from  blsj_hlsj_jbxx where 1=2')
    Left = 61
    Top = 292
  end
  object qry_xz: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  *  from  sys_czy where 1=2')
    Left = 1286
    Top = 28
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
  object ds_xz: TDataSource
    DataSet = qry_xz
    Left = 1317
    Top = 28
  end
  object ds_cx: TDataSource
    DataSet = sp_cx
    Left = 88
    Top = 397
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
        Value = '000'
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = '60000000'
      end
      item
        Name = '@lybz'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = '1'
      end>
    Left = 58
    Top = 397
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
    object sp_cxryrq: TDateTimeField
      FieldName = 'ryrq'
      ReadOnly = True
    end
    object sp_cxbrch: TStringField
      FieldName = 'brch'
      ReadOnly = True
      Size = 10
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
  object ds_sjcx: TDataSource
    DataSet = sp_sjcx
    Left = 1165
    Top = 27
  end
  object ad_sfxm: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 
      'select a.dm as yydm,a.mc as yymc,a.dldm,b.mc    from blsj_hlyyfx' +
      '_xmmx a,blsj_hlyyfx_fzdl b  '#13#10'where a.dldm=b.dm and ( a.dldm lik' +
      'e :vdldm) order by dldm'
    Parameters = <
      item
        Name = 'vdldm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    Left = 57
    Top = 432
  end
  object sp_tj: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnCalcFields = sp_sjcxCalcFields
    ProcedureName = 'blsj_hlsj_sjtj;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
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
        Value = '2014-10-24'
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '0011'
      end
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '9999'
      end>
    Left = 58
    Top = 325
  end
  object ds_tj: TDataSource
    DataSet = sp_tj
    Left = 88
    Top = 325
  end
  object sp_sjcx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnCalcFields = sp_sjcxCalcFields
    ProcedureName = 'blsj_sjcx_hlsj;1'
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
        Value = '2014-01-01'
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '2014-10-01'
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
        Value = '2'
      end
      item
        Name = '@sjlxmc'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '['#20840#37096']'
      end>
    Left = 1178
    Top = 28
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
    object sp_sjcxbrzd: TStringField
      FieldName = 'brzd'
      ReadOnly = True
      Size = 10
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
    object sp_sjcxsjlx: TStringField
      FieldName = 'sjlx'
      ReadOnly = True
      Size = 200
    end
    object sp_sjcxsjlxmc: TStringField
      FieldKind = fkCalculated
      FieldName = 'sjlxmc'
      Size = 100
      Calculated = True
    end
    object sp_sjcxblsjfj: TStringField
      FieldName = 'blsjfj'
      ReadOnly = True
    end
    object sp_sjcxfsrq: TDateTimeField
      FieldName = 'fsrq'
      ReadOnly = True
    end
    object sp_sjcxfsdd: TStringField
      FieldName = 'fsdd'
      ReadOnly = True
      Size = 40
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 1016
    Top = 28
  end
  object cxtj: TPopupMenu
    Left = 264
    Top = 368
    object N1: TMenuItem
      Caption = #25764#38144#25552#20132
      OnClick = N1Click
    end
  end
end
