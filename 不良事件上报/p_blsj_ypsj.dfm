object frm_ypsj: Tfrm_ypsj
  Left = 124
  Top = 135
  BorderStyle = bsSingle
  Caption = #33647#21697#19981#33391#20107#20214#19978#25253
  ClientHeight = 822
  ClientWidth = 1360
  Color = clBtnFace
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PrintScale = poNone
  Scaled = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label43: TLabel
    Left = 850
    Top = 187
    Width = 70
    Height = 17
    Caption = #21457#29983#26085#26399#19968
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label48: TLabel
    Left = 1082
    Top = 187
    Width = 56
    Height = 17
    Caption = #32473#33647#26102#38388
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object pc1: TPageControl
    Left = 0
    Top = 0
    Width = 1360
    Height = 822
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitHeight = 824
    object TabSheet1: TTabSheet
      Caption = #20107#20214#26032#22686
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 793
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1352
        Height = 32
        Align = alTop
        TabOrder = 0
        object mz: TRadioButton
          Left = 173
          Top = 7
          Width = 65
          Height = 17
          Caption = #38376#35786
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = mzClick
        end
        object zy: TRadioButton
          Left = 250
          Top = 7
          Width = 56
          Height = 17
          Caption = #20303#38498
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TabStop = True
          OnClick = zyClick
        end
        object Button5: TButton
          Left = 490
          Top = 1
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
          Left = 565
          Top = 1
          Width = 62
          Height = 29
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
          Left = 634
          Top = 1
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
          Left = 705
          Top = 1
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
          Left = 789
          Top = 1
          Width = 64
          Height = 29
          Caption = #25171#21360
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
          Left = 928
          Top = 1
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
          Left = 859
          Top = 1
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
      object Panel4: TPanel
        Left = 0
        Top = 32
        Width = 173
        Height = 759
        Align = alLeft
        TabOrder = 1
        ExplicitHeight = 761
        object DBGrid3: TDBGrid
          Left = 1
          Top = 1
          Width = 171
          Height = 757
          Align = alClient
          DataSource = ds_lb
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          OnCellClick = DBGrid3CellClick
          OnDrawColumnCell = DBGrid3DrawColumnCell
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
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 65
              Visible = True
            end
            item
              ButtonStyle = cbsNone
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
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 71
              Visible = True
            end>
        end
      end
      object ScrollBox1: TScrollBox
        Left = 173
        Top = 32
        Width = 1179
        Height = 759
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 2
        ExplicitHeight = 761
        object Panel1: TPanel
          Left = 0
          Top = -1
          Width = 1168
          Height = 760
          TabOrder = 0
          object GroupBox1: TGroupBox
            Left = -8
            Top = 55
            Width = 1170
            Height = 65
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
            object Label10: TLabel
              Left = 13
              Top = 8
              Width = 60
              Height = 14
              Caption = #26082#24448#33647#21697#19981
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label29: TLabel
              Left = 10
              Top = 23
              Width = 69
              Height = 14
              Caption = #33391#21453#24212'/'#20107#20214' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 558
              Top = 8
              Width = 60
              Height = 14
              Caption = #23478#26063#33647#21697#19981
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label31: TLabel
              Left = 556
              Top = 22
              Width = 65
              Height = 14
              Caption = #33391#21453#24212'/'#20107#20214
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 11
              Top = 43
              Width = 90
              Height = 17
              Caption = #30456#20851#37325#35201#20449#24687
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label12: TLabel
              Left = 150
              Top = 15
              Width = 28
              Height = 14
              Caption = #33647#29289
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label14: TLabel
              Left = 321
              Top = 15
              Width = 28
              Height = 14
              Caption = #34920#29616
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label21: TLabel
              Left = 686
              Top = 15
              Width = 28
              Height = 14
              Caption = #33647#29289
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label25: TLabel
              Left = 903
              Top = 15
              Width = 28
              Height = 14
              Caption = #34920#29616
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object DBEdit20: TDBEdit
              Left = 184
              Top = 13
              Width = 129
              Height = 21
              Hint = #26082#24448#33647#21697#19981#33391#20107#20214#33647#29289#21517#31216
              Ctl3D = False
              DataField = 'jwypsjyw'
              DataSource = ds_jbxx
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 1
              OnExit = DBEdit20Exit
            end
            object DBEdit21: TDBEdit
              Left = 720
              Top = 12
              Width = 175
              Height = 21
              Hint = #35831#22635#20837#23478#26063#26082#24448#33647#21697#19981#33391#21453#24212#20154#29289#19982#26412#20154#20851#31995#12289#21457#29983#26102#38388#12289#33647#21697#21517#31216#12289#19981#33391#21453#24212#20855#20307#34920#29616#21450#24773#20917#31561
              Ctl3D = False
              DataField = 'jzypsjyw'
              DataSource = ds_jbxx
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnExit = DBEdit21Exit
            end
            object DBEdit18: TDBEdit
              Left = 621
              Top = 40
              Width = 129
              Height = 21
              Hint = #35831#22635#20837#36807#25935#21490#30340#21457#29983#26102#38388#12289#20855#20307#19981#33391#21453#24212#34920#29616#21450#24773#20917#31561
              Ctl3D = False
              DataField = 'gms'
              DataSource = ds_jbxx
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 11
            end
            object DBEdit19: TDBEdit
              Left = 846
              Top = 40
              Width = 312
              Height = 21
              Hint = #35831#22635#20837#20854#20182#30456#20851#37325#35201#20449#24687#30340#20855#20307#20869#23481
              Ctl3D = False
              DataField = 'xgxxqt'
              DataSource = ds_jbxx
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 13
              OnKeyPress = DBEdit19KeyPress
            end
            object ComboBox1: TcxComboBox
              Left = 80
              Top = 11
              ParentFont = False
              Properties.Items.Strings = (
                #26377
                #26080)
              Style.BorderColor = clInfoBk
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              OnExit = ComboBox1Exit
              Width = 61
            end
            object ComboBox7: TcxComboBox
              Left = 623
              Top = 13
              ParentFont = False
              Properties.Items.Strings = (
                #26377
                #26080)
              Style.BorderColor = clInfoBk
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              OnExit = ComboBox7Exit
              Width = 55
            end
            object CheckBox1: TcxCheckBox
              Left = 178
              Top = 41
              Caption = #21560#28895#21490
              TabOrder = 5
              Width = 68
            end
            object CheckBox2: TcxCheckBox
              Left = 250
              Top = 41
              Caption = #39278#37202#21490
              TabOrder = 6
              Width = 69
            end
            object CheckBox3: TcxCheckBox
              Left = 327
              Top = 42
              Caption = #22922#23072#26399
              TabOrder = 7
              Width = 70
            end
            object CheckBox4: TcxCheckBox
              Left = 401
              Top = 41
              Caption = #32925#30149#21490
              TabOrder = 8
              Width = 69
            end
            object CheckBox5: TcxCheckBox
              Left = 472
              Top = 42
              Caption = #32958#30149#21490
              TabOrder = 9
              Width = 69
            end
            object CheckBox6: TcxCheckBox
              Left = 542
              Top = 42
              Caption = #36807#25935#21490
              TabOrder = 10
              OnExit = CheckBox6Exit
              Width = 75
            end
            object CheckBox7: TcxCheckBox
              Left = 791
              Top = 41
              Caption = #20854#23427
              TabOrder = 12
              OnExit = CheckBox7Exit
              Width = 54
            end
            object CheckBox8: TcxCheckBox
              Left = 110
              Top = 41
              Caption = #19981#35814
              TabOrder = 4
              Width = 61
            end
            object DBEdit3: TDBEdit
              Left = 355
              Top = 12
              Width = 197
              Height = 21
              Hint = #20027#35201#20869#23481#21253#25324#21457#29983#26102#38388#12289#29992#33647#21517#31216#12289#26381#29992#26041#27861#12289#26381#29992#26102#38388#12289#19981#33391#21453#24212#34920#29616#21450#22788#29702#24773#20917#31561
              Ctl3D = False
              DataField = 'jwypsjqk'
              DataSource = ds_jbxx
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 14
              OnExit = DBEdit20Exit
            end
            object DBEdit11: TDBEdit
              Left = 937
              Top = 12
              Width = 175
              Height = 21
              Hint = #35831#22635#20837#23478#26063#26082#24448#33647#21697#19981#33391#21453#24212#20154#29289#19982#26412#20154#20851#31995#12289#21457#29983#26102#38388#12289#33647#21697#21517#31216#12289#19981#33391#21453#24212#20855#20307#34920#29616#21450#24773#20917#31561
              Ctl3D = False
              DataField = 'jzypsjqk'
              DataSource = ds_jbxx
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 15
              OnExit = DBEdit21Exit
            end
          end
          object GroupBox5: TGroupBox
            Left = 0
            Top = 120
            Width = 1162
            Height = 104
            Caption = #24576#30097#33647#21697#20449#24687
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object DBGrid1: TDBGridEh
              Left = 2
              Top = 17
              Width = 1158
              Height = 85
              Align = alClient
              DataGrouping.GroupLevels = <>
              DataSource = dshyyp
              Flat = False
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              FooterColor = clWindow
              FooterFont.Charset = GB2312_CHARSET
              FooterFont.Color = clBlue
              FooterFont.Height = -15
              FooterFont.Name = #23435#20307
              FooterFont.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              PopupMenu = pm_sc
              RowDetailPanel.Color = clBtnFace
              TabOrder = 0
              TitleFont.Charset = GB2312_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -15
              TitleFont.Name = #23435#20307
              TitleFont.Style = []
              OnColExit = DBGrid1ColExit
              OnKeyPress = DBGrid1KeyPress
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'pzwh'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #25209#20934#25991#21495
                  Width = 68
                end
                item
                  EditButtons = <>
                  FieldName = 'spmc'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #36890#29992#21517#31216
                  Width = 189
                end
                item
                  EditButtons = <>
                  FieldName = 'sccj'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #29983#20135#21378#23478
                  Width = 188
                end
                item
                  EditButtons = <>
                  FieldName = 'scph'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #29983#20135#25209#21495
                  Width = 111
                end
                item
                  EditButtons = <>
                  FieldName = 'yfyl'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #29992#27861#29992#37327
                  Width = 152
                end
                item
                  Alignment = taCenter
                  EditButtons = <>
                  FieldName = 'yykssj'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #29992#33647#24320#22987#26102#38388
                  Width = 160
                end
                item
                  Alignment = taCenter
                  EditButtons = <>
                  FieldName = 'yyjssj'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #29992#33647#32467#26463#26102#38388
                  Width = 150
                end
                item
                  EditButtons = <>
                  FieldName = 'yyyy'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #29992#33647#21407#22240
                  Width = 103
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
            object cxDBDateEdit1: TcxDBDateEdit
              Left = 609
              Top = 66
              DataBinding.DataField = 'yykssj'
              DataBinding.DataSource = dshyyp
              ParentFont = False
              Properties.InputKind = ikMask
              Properties.Kind = ckDateTime
              Properties.ReadOnly = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.ButtonTransparency = ebtNone
              Style.IsFontAssigned = True
              TabOrder = 1
              Visible = False
              OnExit = cxDBDateEdit1Exit
              Width = 187
            end
            object cxDBDateEdit2: TcxDBDateEdit
              Left = 816
              Top = 66
              DataBinding.DataField = 'yyjssj'
              DataBinding.DataSource = dshyyp
              ParentFont = False
              Properties.InputKind = ikMask
              Properties.Kind = ckDateTime
              Properties.ReadOnly = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.ButtonTransparency = ebtNone
              Style.IsFontAssigned = True
              TabOrder = 2
              Visible = False
              OnExit = cxDBDateEdit2Exit
              Width = 187
            end
          end
          object GroupBox6: TGroupBox
            Left = 0
            Top = 225
            Width = 1162
            Height = 139
            Caption = #24182#29992#33647#21697#20449#24687
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object DBGrideh2: TDBGridEh
              Left = 2
              Top = 17
              Width = 1158
              Height = 120
              Align = alClient
              DataGrouping.GroupLevels = <>
              DataSource = dsbyyp
              Flat = False
              Font.Charset = GB2312_CHARSET
              Font.Color = clBlack
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              FooterColor = clWindow
              FooterFont.Charset = GB2312_CHARSET
              FooterFont.Color = clBlue
              FooterFont.Height = -15
              FooterFont.Name = #23435#20307
              FooterFont.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              PopupMenu = p_byyp
              RowDetailPanel.Color = clBtnFace
              TabOrder = 0
              TitleFont.Charset = GB2312_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -15
              TitleFont.Name = #23435#20307
              TitleFont.Style = []
              OnColExit = DBGrideh2ColExit
              OnKeyPress = DBGrideh2KeyPress
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'pzwh'
                  Footers = <>
                  Title.Caption = #25209#20934#25991#21495
                  Width = 73
                end
                item
                  EditButtons = <>
                  FieldName = 'spmc'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #36890#29992#21517#31216
                  Width = 188
                end
                item
                  EditButtons = <>
                  FieldName = 'sccj'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #29983#20135#21378#23478
                  Width = 190
                end
                item
                  EditButtons = <>
                  FieldName = 'scph'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #29983#20135#25209#21495
                  Width = 109
                end
                item
                  EditButtons = <>
                  FieldName = 'yfyl'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #29992#27861#29992#37327
                  Width = 154
                end
                item
                  Alignment = taCenter
                  EditButtons = <>
                  FieldName = 'yykssj'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #29992#33647#24320#22987#26102#38388
                  Width = 158
                end
                item
                  Alignment = taCenter
                  EditButtons = <>
                  FieldName = 'yyjssj'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #29992#33647#32467#26463#26102#38388
                  Width = 148
                end
                item
                  EditButtons = <>
                  FieldName = 'yyyy'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #29992#33647#21407#22240
                  Width = 101
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
            object cxDBDateEdit3: TcxDBDateEdit
              Left = 609
              Top = 71
              DataBinding.DataField = 'yykssj'
              DataBinding.DataSource = dsbyyp
              ParentFont = False
              Properties.InputKind = ikMask
              Properties.Kind = ckDateTime
              Properties.ReadOnly = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.ButtonTransparency = ebtNone
              Style.IsFontAssigned = True
              TabOrder = 1
              Visible = False
              OnExit = cxDBDateEdit3Exit
              Width = 187
            end
            object cxDBDateEdit4: TcxDBDateEdit
              Left = 816
              Top = 66
              DataBinding.DataField = 'yyjssj'
              DataBinding.DataSource = dsbyyp
              ParentFont = False
              Properties.InputKind = ikMask
              Properties.Kind = ckDateTime
              Properties.ReadOnly = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.ButtonTransparency = ebtNone
              Style.IsFontAssigned = True
              TabOrder = 2
              Visible = False
              OnExit = cxDBDateEdit4Exit
              Width = 187
            end
          end
          object GroupBox4: TGroupBox
            Left = 1
            Top = 573
            Width = 1162
            Height = 43
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            object Label24: TLabel
              Left = 17
              Top = 3
              Width = 42
              Height = 34
              Caption = #20020#24202#25253#21578#26085#26399
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object Label22: TLabel
              Left = 213
              Top = 12
              Width = 70
              Height = 17
              Caption = #21333#20301#32852#31995#20154
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label23: TLabel
              Left = 400
              Top = 12
              Width = 56
              Height = 17
              Caption = #21333#20301#30005#35805
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label41: TLabel
              Left = 617
              Top = 13
              Width = 143
              Height = 15
              Caption = ' '#25253#21578#21333#20301#20851#32852#24615#35780#20215
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object Label44: TLabel
              Left = 939
              Top = 14
              Width = 54
              Height = 15
              Caption = #31614'   '#21517
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object dtpbgrq: TcxDBDateEdit
              Left = 75
              Top = 9
              DataBinding.DataField = 'sbrq'
              DataBinding.DataSource = ds_jbxx
              ParentFont = False
              Properties.SaveTime = False
              Properties.ShowTime = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 135
            end
            object DBEdit12: TDBEdit
              Left = 286
              Top = 10
              Width = 101
              Height = 24
              AutoSize = False
              Ctl3D = False
              DataField = 'dwlxr'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              OnExit = DBEdit8Exit
            end
            object DBEdit13: TDBEdit
              Left = 466
              Top = 10
              Width = 140
              Height = 24
              AutoSize = False
              Ctl3D = False
              DataField = 'dwdh'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
            end
            object ComboBox8: TcxComboBox
              Left = 779
              Top = 9
              ParentFont = False
              Properties.Items.Strings = (
                #32943#23450
                #24456#21487#33021
                #21487#33021
                #21487#33021#26080#20851
                #24453#35780#20215
                #26080#27861#35780#20215)
              Style.BorderColor = clInfoBk
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 132
            end
            object DBEdit24: TDBEdit
              Left = 1015
              Top = 9
              Width = 143
              Height = 23
              AutoSize = False
              Ctl3D = False
              DataField = 'dwglqm'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
              OnExit = DBEdit8Exit
            end
          end
          object GroupBox7: TGroupBox
            Left = 0
            Top = -6
            Width = 1162
            Height = 68
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
            object Label1: TLabel
              Left = 7
              Top = 15
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
              Left = 204
              Top = 15
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
              Left = 372
              Top = 15
              Width = 28
              Height = 17
              Caption = #24180#40836
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label19: TLabel
              Left = 467
              Top = 15
              Width = 28
              Height = 17
              Caption = #24615#21035
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 571
              Top = 15
              Width = 28
              Height = 17
              Caption = #27665#26063
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label6: TLabel
              Left = 654
              Top = 15
              Width = 28
              Height = 17
              Caption = #20307#37325
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 747
              Top = 14
              Width = 15
              Height = 17
              Caption = 'kg'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label9: TLabel
              Left = 770
              Top = 16
              Width = 48
              Height = 14
              Caption = #30149#20154#30005#35805
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object Label4: TLabel
              Left = 952
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
              Left = 1080
              Top = 6
              Width = 79
              Height = 31
              AutoSize = False
              Caption = '   '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object Label47: TLabel
              Left = 5
              Top = 41
              Width = 56
              Height = 14
              Caption = #19978#25253#31185#23460
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 204
              Top = 41
              Width = 56
              Height = 14
              Caption = #25253' '#21578' '#20154
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label17: TLabel
              Left = 370
              Top = 34
              Width = 36
              Height = 28
              Caption = #19978#25253#20154'  '#30005#35805
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object Label18: TLabel
              Left = 571
              Top = 39
              Width = 28
              Height = 17
              Caption = #37038#31665
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label20: TLabel
              Left = 782
              Top = 39
              Width = 28
              Height = 17
              Caption = #32844#19994
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label26: TLabel
              Left = 952
              Top = 39
              Width = 56
              Height = 17
              Caption = #25253#21578#31867#21035
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object edit1: TEdit
              Left = 72
              Top = 13
              Width = 126
              Height = 21
              BevelInner = bvNone
              BevelOuter = bvNone
              Ctl3D = False
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnKeyPress = edit1KeyPress
            end
            object Editxm: TDBEdit
              Left = 262
              Top = 13
              Width = 89
              Height = 24
              AutoSize = False
              Ctl3D = False
              DataField = 'brxm'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit4: TDBEdit
              Left = 407
              Top = 13
              Width = 48
              Height = 23
              AutoSize = False
              Ctl3D = False
              DataField = 'brnl'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit5: TDBEdit
              Left = 500
              Top = 13
              Width = 44
              Height = 23
              AutoSize = False
              Ctl3D = False
              DataField = 'brxb'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
            end
            object DBEdit1: TDBEdit
              Left = 602
              Top = 13
              Width = 45
              Height = 23
              AutoSize = False
              Ctl3D = False
              DataField = 'brmz'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
            end
            object DBEdit2: TDBEdit
              Left = 687
              Top = 13
              Width = 44
              Height = 23
              AutoSize = False
              Ctl3D = False
              DataField = 'brtz'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 5
            end
            object DBEdit7: TDBEdit
              Left = 821
              Top = 13
              Width = 118
              Height = 23
              AutoSize = False
              Ctl3D = False
              DataField = 'brlxfs'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 6
            end
            object DBEdit6: TDBEdit
              Left = 1018
              Top = 13
              Width = 132
              Height = 23
              Hint = #21452#20987#24377#20986'ICD10'#35786#26029#36873#25321#30028#38754
              AutoSize = False
              Ctl3D = False
              DataField = 'brzd'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 7
              OnDblClick = DBEdit6DblClick
              OnExit = DBEdit6Exit
            end
            object DBEdit8: TDBEdit
              Left = 262
              Top = 38
              Width = 89
              Height = 23
              AutoSize = False
              Ctl3D = False
              DataField = 'sbr'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 9
              OnExit = DBEdit8Exit
            end
            object DBEdit9: TDBEdit
              Left = 407
              Top = 39
              Width = 137
              Height = 23
              AutoSize = False
              Ctl3D = False
              DataField = 'sbrdh'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 10
            end
            object DBEdit10: TDBEdit
              Left = 602
              Top = 38
              Width = 129
              Height = 23
              AutoSize = False
              Ctl3D = False
              DataField = 'sbryx'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 11
            end
            object combobox3: TcxComboBox
              Left = 821
              Top = 38
              ParentFont = False
              Properties.Items.Strings = (
                #21307#29983
                #33647#24072
                #25252#22763
                #20854#20182)
              Style.BorderColor = clInfoBk
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 12
              OnExit = combobox3Exit
              Width = 66
            end
            object DBEdit15: TDBEdit
              Left = 889
              Top = 38
              Width = 51
              Height = 23
              Hint = #35831#22635#20837#25253#21578#20154#32844#19994#20854#20182#24773#20917#30340#20855#20307#32844#19994
              AutoSize = False
              Ctl3D = False
              DataField = 'sbrzyqt'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 13
              OnKeyPress = DBEdit15KeyPress
            end
            object cxComboBox1: TcxComboBox
              Left = 72
              Top = 38
              ParentFont = False
              Properties.Items.Strings = (
                #24037#20154
                #20892#27665
                #23621#27665
                #20854#20182)
              Style.BorderColor = clInfoBk
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 8
              OnExit = cxComboBox1Exit
              Width = 127
            end
            object cxComboBox2: TcxComboBox
              Left = 1018
              Top = 39
              ParentFont = False
              Properties.Items.Strings = (
                #39318#27425#25253#21578
                #36319#36394#25253#21578)
              Style.BorderColor = clInfoBk
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 14
              OnExit = combobox3Exit
              Width = 133
            end
          end
          object GroupBox8: TGroupBox
            Left = 5
            Top = 617
            Width = 1162
            Height = 67
            Caption = #21453#39304#24847#35265
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
            object cxCheckBox1: TcxCheckBox
              Left = 261
              Top = 18
              Caption = #26410#22914#23454#22312#30149#21382#20013#35760#24405
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 178
            end
            object cxCheckBox2: TcxCheckBox
              Left = 433
              Top = 18
              Caption = #19982#30149#21382#35760#24405'ADR'#19981#19968#33268
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 178
            end
            object cxCheckBox3: TcxCheckBox
              Left = 604
              Top = 18
              Caption = #26082#24448#19981#33391#21453#24212#21490#19981#28165#26970
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 178
            end
            object cxCheckBox4: TcxCheckBox
              Left = 779
              Top = 18
              Caption = 'ADR'#21457#29983#26102#38388#19981#26126#30830
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 178
            end
            object cxCheckBox5: TcxCheckBox
              Left = 939
              Top = 18
              Caption = 'ADR'#30151#29366#25551#36848#36807#20110#31616#21333
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 171
            end
            object cxCheckBox7: TcxCheckBox
              Left = 261
              Top = 42
              Caption = #24517#35201#30340#30456#20851#26816#26597#26410#22635#20889
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 5
              Width = 178
            end
            object cxCheckBox8: TcxCheckBox
              Left = 433
              Top = 42
              Caption = #22788#29702#25514#26045#12289#26102#38388#19981#28165#26970
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 6
              Width = 178
            end
            object cxCheckBox9: TcxCheckBox
              Left = 604
              Top = 42
              Caption = #26410#25551#36848'ADR'#32456#32467#26102#38388
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 7
              Width = 171
            end
            object cxCheckBox10: TcxCheckBox
              Left = 779
              Top = 42
              Caption = #22522#26412#20449#24687#24405#20837#38169#35823
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 8
              Width = 145
            end
            object cxCheckBox11: TcxCheckBox
              Left = 939
              Top = 42
              Caption = #20854#20182#19981#21512#29702#39033
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 9
              Width = 122
            end
            object cxCheckBox6: TcxCheckBox
              Left = 4
              Top = 18
              Caption = #26410#35760#24405'ADR'#30456#20851#20307#24449#25110#35760#24405#36807#20110#31616#21333
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 10
              Width = 256
            end
            object cxCheckBox12: TcxCheckBox
              Left = 4
              Top = 42
              Caption = #20005#37325'ADR'#27809#26377#30149#24773#30340#21160#24577#21464#21270#35760#24405
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 11
              Width = 247
            end
            object DBEdit25: TDBEdit
              Left = 1053
              Top = 43
              Width = 106
              Height = 20
              Hint = #26377#21518#36951#30151#21017#22635#20837#21518#36951#30151#30340#20855#20307#34920#29616#65292#23548#33268#27515#20129#21017#22635#20837#30452#25509#27515#22240
              Ctl3D = False
              DataField = 'fkyjqt'
              DataSource = ds_jbxx
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 12
            end
          end
          object GroupBox9: TGroupBox
            Left = -8
            Top = 464
            Width = 1170
            Height = 67
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 9
            object Label28: TLabel
              Left = 11
              Top = 12
              Width = 70
              Height = 17
              Caption = #21457#29983#26085#26399#19968
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label42: TLabel
              Left = 232
              Top = 11
              Width = 56
              Height = 17
              Caption = #32473#33647#26102#38388
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label49: TLabel
              Left = 399
              Top = 11
              Width = 70
              Height = 17
              Caption = #21457#29983#26085#26399#20108
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label50: TLabel
              Left = 620
              Top = 11
              Width = 56
              Height = 17
              Caption = #32473#33647#26102#38388
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label51: TLabel
              Left = 785
              Top = 11
              Width = 70
              Height = 17
              Caption = #21457#29983#26085#26399#19977
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label52: TLabel
              Left = 1009
              Top = 11
              Width = 56
              Height = 17
              Caption = #32473#33647#26102#38388
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label27: TLabel
              Left = 15
              Top = 40
              Width = 56
              Height = 17
              Caption = #20107#20214#21517#31216
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label39: TLabel
              Left = 400
              Top = 35
              Width = 60
              Height = 30
              Caption = #25253#21578#20154#20851#32852#24615#35780#20215
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object Label40: TLabel
              Left = 621
              Top = 43
              Width = 54
              Height = 15
              Caption = #31614'   '#21517
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label13: TLabel
              Left = 786
              Top = 40
              Width = 70
              Height = 17
              Caption = #26159#21542#26032#25253#21578
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label15: TLabel
              Left = 1009
              Top = 40
              Width = 56
              Height = 17
              Caption = #20005#37325#31243#24230
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label34: TLabel
              Left = 229
              Top = 34
              Width = 60
              Height = 30
              Caption = #23545#21407#24739#30142#30149#30340#24433#21709
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object dtpfsrq: TcxDBDateEdit
              Left = 85
              Top = 11
              DataBinding.DataField = 'fsrq'
              DataBinding.DataSource = ds_jbxx
              ParentFont = False
              Properties.Kind = ckDateTime
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -14
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 140
            end
            object DBEdit26: TDBEdit
              Left = 295
              Top = 12
              Width = 101
              Height = 21
              Ctl3D = False
              DataField = 'gysj'
              DataSource = ds_jbxx
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
            end
            object DBEdit17: TDBEdit
              Left = 85
              Top = 39
              Width = 140
              Height = 23
              AutoSize = False
              Ctl3D = False
              DataField = 'sjmc'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
              OnKeyPress = DBEdit17KeyPress
            end
            object ComboBox6: TcxComboBox
              Left = 473
              Top = 39
              ParentFont = False
              Properties.Items.Strings = (
                #32943#23450
                #24456#21487#33021
                #21487#33021
                #21487#33021#26080#20851
                #24453#35780#20215
                #26080#27861#35780#20215)
              Style.BorderColor = clInfoBk
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 142
            end
            object DBEdit23: TDBEdit
              Left = 684
              Top = 38
              Width = 99
              Height = 23
              AutoSize = False
              Ctl3D = False
              DataField = 'grglqm'
              DataSource = ds_jbxx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ImeMode = imOpen
              ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
              OnExit = DBEdit8Exit
            end
            object ComboBox4: TcxComboBox
              Left = 861
              Top = 39
              ParentFont = False
              Properties.Items.Strings = (
                #26032#30340
                #26087#30340)
              Style.BorderColor = clInfoBk
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 5
              OnExit = ComboBox1Exit
              Width = 144
            end
            object ComboBox2: TcxComboBox
              Left = 1071
              Top = 39
              ParentFont = False
              Properties.Items.Strings = (
                #20005#37325
                #19968#33324)
              Style.BorderColor = clInfoBk
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 6
              OnExit = ComboBox1Exit
              Width = 96
            end
            object DBEdit27: TDBEdit
              Left = 684
              Top = 11
              Width = 99
              Height = 21
              Ctl3D = False
              DataField = 'gysj2'
              DataSource = ds_jbxx
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 7
            end
            object dtpfsrq3: TcxDBDateEdit
              Left = 861
              Top = 11
              DataBinding.DataField = 'fsrq3'
              DataBinding.DataSource = ds_jbxx
              ParentFont = False
              Properties.Kind = ckDateTime
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -14
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 8
              Width = 144
            end
            object DBEdit28: TDBEdit
              Left = 1071
              Top = 12
              Width = 96
              Height = 21
              Ctl3D = False
              DataField = 'gysj3'
              DataSource = ds_jbxx
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 9
            end
            object dtpfsrq2: TcxDBDateEdit
              Left = 474
              Top = 11
              DataBinding.DataField = 'fsrq2'
              DataBinding.DataSource = ds_jbxx
              ParentFont = False
              Properties.Kind = ckDateTime
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -14
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 10
              Width = 141
            end
            object ComboBox11: TcxComboBox
              Left = 295
              Top = 39
              ParentFont = False
              Properties.Items.Strings = (
                #19981#26126#26174
                #30149#31243#24310#38271
                #30149#24773#21152#37325
                #23548#33268#21518#36951#30151
                #23548#33268#27515#20129)
              Style.BorderColor = clInfoBk
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 11
              Width = 101
            end
          end
          object GroupBox10: TGroupBox
            Left = 10
            Top = 684
            Width = 1163
            Height = 75
            Caption = #22791#27880
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 10
            object Memo1: TMemo
              Left = 2
              Top = 18
              Width = 1159
              Height = 55
              Align = alClient
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
          object GroupBox3: TGroupBox
            Left = 0
            Top = 527
            Width = 1164
            Height = 47
            TabOrder = 11
            object Label36: TLabel
              Left = 918
              Top = 11
              Width = 135
              Height = 30
              Caption = #20572#33647#25110#20943#37327#21518#21453#24212'/'#20107#20214#26159#21542#28040#22833#25110#20943#36731' '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object Label37: TLabel
              Left = 612
              Top = 10
              Width = 158
              Height = 30
              Caption = #20877#27425#20351#29992#21487#30097#33647#21697#26159#21542#20877#27425#20986#29616#21516#26679#21453#24212'/'#20107#20214
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object Label32: TLabel
              Left = 224
              Top = 10
              Width = 60
              Height = 30
              Caption = #21518#36951#30151#25110#30452#25509#27515#22240
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object Label33: TLabel
              Left = 395
              Top = 17
              Width = 60
              Height = 15
              Caption = #27515#20129#26102#38388
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Label30: TLabel
              Left = 7
              Top = 19
              Width = 60
              Height = 15
              Caption = #20107#20214#32467#26524
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object ComboBox13: TcxComboBox
              Left = 1063
              Top = 13
              ParentFont = False
              Properties.Items.Strings = (
                #26159
                #21542
                #19981#26126
                #26410#20572#33647#25110#26410#20943#37327
                '')
              Style.BorderColor = clInfoBk
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 96
            end
            object ComboBox12: TcxComboBox
              Left = 780
              Top = 13
              ParentFont = False
              Properties.Items.Strings = (
                #26159
                #21542
                #19981#26126
                #26410#20877#20351#29992)
              Style.BorderColor = clInfoBk
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 132
            end
            object DBEdit22: TDBEdit
              Left = 289
              Top = 14
              Width = 99
              Height = 20
              Hint = #26377#21518#36951#30151#21017#22635#20837#21518#36951#30151#30340#20855#20307#34920#29616#65292#23548#33268#27515#20129#21017#22635#20837#30452#25509#27515#22240
              Ctl3D = False
              DataField = 'hyzyy'
              DataSource = ds_jbxx
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 2
            end
            object dtpswrq: TcxDBDateEdit
              Left = 467
              Top = 13
              DataBinding.DataField = 'swrq'
              DataBinding.DataSource = ds_jbxx
              TabOrder = 3
              Width = 140
            end
            object ComboBox10: TcxComboBox
              Left = 77
              Top = 13
              ParentFont = False
              Properties.Items.Strings = (
                #30154#24840
                #22909#36716
                #26410#22909#36716
                #19981#35814
                #26377#21518#36951#30151
                #27515#20129)
              Style.BorderColor = clInfoBk
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -15
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 4
              OnExit = ComboBox10Exit
              Width = 140
            end
          end
          object GroupBox2: TGroupBox
            Left = 5
            Top = 368
            Width = 703
            Height = 100
            Caption = #19981#33391#21453#24212'/'#20107#20214#36807#31243#25551#36848#65288#21253#25324#30151#29366#12289#20307#24449#12289#20020#24202#26816#39564#31561#65289#21450#22788#29702#24773#20917
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 12
            object Memo4: TMemo
              Left = 2
              Top = 18
              Width = 699
              Height = 80
              Align = alClient
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 0
              OnDblClick = Memo4DblClick
            end
          end
          object DBGrid5: TDBGrid
            Left = 342
            Top = 186
            Width = 274
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
            TabOrder = 4
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Visible = False
            OnKeyPress = DBGrid5KeyPress
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
                Width = 151
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'dm'
                Title.Alignment = taCenter
                Title.Caption = #20195#30721
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -14
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 82
                Visible = True
              end>
          end
          object DBGrid4: TDBGrid
            Left = 117
            Top = 213
            Width = 438
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
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'sbrq'
                Title.Alignment = taCenter
                Title.Caption = #21576#25253#26085#26399
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -14
                Title.Font.Name = #23435#20307
                Title.Font.Style = []
                Width = 138
                Visible = True
              end>
          end
          object DBGrid6: TDBGrid
            Left = 622
            Top = 213
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
            TabOrder = 5
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Visible = False
            OnDblClick = DBGrid6DblClick
            OnKeyPress = DBGrid6KeyPress
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
          object GroupBox11: TGroupBox
            Left = 714
            Top = 368
            Width = 446
            Height = 98
            Caption = #36716#24402#24773#20917
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 13
            object Memo2: TMemo
              Left = 2
              Top = 17
              Width = 442
              Height = 79
              Align = alClient
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #23435#20307
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
          object DBGrid2: TDBGrid
            Left = 266
            Top = 213
            Width = 614
            Height = 160
            DataSource = ds_yp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            ReadOnly = True
            TabOrder = 14
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Visible = False
            OnExit = DBGrid2Exit
            OnKeyPress = DBGrid2KeyPress
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
                Width = 151
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'dm'
                Title.Alignment = taCenter
                Title.Caption = #20195#30721
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -14
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 82
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pzwh'
                Title.Alignment = taCenter
                Title.Caption = #25209#20934#25991#21495
                Width = 97
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'sccj'
                Title.Alignment = taCenter
                Title.Caption = #29983#20135#21378#23478
                Width = 241
                Visible = True
              end>
          end
          object dbgrdcj: TDBGrid
            Left = 289
            Top = 244
            Width = 273
            Height = 205
            DataSource = ds_sccj
            TabOrder = 15
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = #23435#20307
            TitleFont.Style = []
            Visible = False
            OnColExit = dbgrdcjColExit
            OnKeyPress = dbgrdcjKeyPress
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #20107#20214#26597#35810
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      ExplicitHeight = 793
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1352
        Height = 36
        Align = alTop
        TabOrder = 0
        object Label45: TLabel
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
        object Label46: TLabel
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
          Left = 926
          Top = 1
          Width = 91
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
        object Button10: TButton
          Left = 739
          Top = 1
          Width = 94
          Height = 29
          Caption = #23548#20986#25968#25454
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 36
        Width = 1352
        Height = 743
        Align = alTop
        TabOrder = 1
        object cxGridDBTableView2: TcxGridDBTableView
          OnDblClick = cxGridDBTableView2DblClick
          NavigatorButtons.ConfirmDelete = False
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
          object tmh: TcxGridDBColumn
            Caption = #26465#30721#21495
            DataBinding.FieldName = 'tmh'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 90
          end
          object xm: TcxGridDBColumn
            Caption = #22995#21517
            DataBinding.FieldName = 'brxm'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 88
          end
          object xb: TcxGridDBColumn
            Caption = #24615#21035
            DataBinding.FieldName = 'brxb'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 58
          end
          object brnl: TcxGridDBColumn
            Caption = #24180#40836
            DataBinding.FieldName = 'brnl'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 72
          end
          object sbrq: TcxGridDBColumn
            Caption = #19978#25253#26085#26399
            DataBinding.FieldName = 'sbrq'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 98
          end
          object sbr: TcxGridDBColumn
            Caption = #19978#25253#20154
            DataBinding.FieldName = 'sbr'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 92
          end
          object sbks: TcxGridDBColumn
            Caption = #19978#25253#31185#23460
            DataBinding.FieldName = 'sbks'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 117
          end
          object zhcljb: TcxGridDBColumn
            Caption = #26368#21518#22788#29702#32423#21035
            DataBinding.FieldName = 'cljb'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 141
          end
          object zhclry: TcxGridDBColumn
            Caption = #26368#21518#22788#29702#20154#21592
            DataBinding.FieldName = 'zhclry'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 166
          end
          object zhclks: TcxGridDBColumn
            Caption = #26368#21518#22788#29702#31185#23460
            DataBinding.FieldName = 'zhclks'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 137
          end
          object lcsfwc: TcxGridDBColumn
            Caption = #22788#29702#27969#31243#26159#21542#23436#25104
            DataBinding.FieldName = 'lcsfwc'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 131
          end
          object brly: TcxGridDBColumn
            Caption = #30149#20154#26469#28304
            DataBinding.FieldName = 'brly'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 122
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #20107#20214#35814#32454#20869#23481
      ImageIndex = 2
      ExplicitHeight = 793
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1352
        Height = 36
        Align = alTop
        TabOrder = 0
        object Label53: TLabel
          Left = 224
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
        object Label54: TLabel
          Left = 447
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
        object Button14: TButton
          Left = 662
          Top = 2
          Width = 73
          Height = 29
          Caption = #26597#35810
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button14Click
        end
        object dtptjs: TDateTimePicker
          Left = 307
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
          ParentFont = False
          TabOrder = 1
        end
        object dtptje: TDateTimePicker
          Left = 497
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
          ParentFont = False
          TabOrder = 2
        end
        object Button15: TButton
          Left = 918
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
          OnClick = Button15Click
        end
        object Button16: TButton
          Left = 792
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
          OnClick = Button16Click
        end
        object gr1: TRadioButton
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
          TabOrder = 5
          TabStop = True
        end
        object ks1: TRadioButton
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
          TabOrder = 6
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 36
        Width = 1352
        Height = 755
        Align = alClient
        TabOrder = 1
        ExplicitHeight = 757
        object cxGrid2DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_ypsj
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
  end
  object ds_jbxx: TDataSource
    DataSet = ado_jbxx
    Left = 45
    Top = 224
  end
  object ado_jbxx: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 'select * from blsj_ypsj_jbxx where 1=2'
    MasterFields = 'brbh'
    Parameters = <>
    Prepared = True
    Left = 78
    Top = 224
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
    object ado_jbxxsbr: TStringField
      FieldName = 'sbr'
      Size = 10
    end
    object ado_jbxxsbrdh: TStringField
      FieldName = 'sbrdh'
      Size = 15
    end
    object ado_jbxxsbryx: TStringField
      FieldName = 'sbryx'
    end
    object ado_jbxxsbrzy: TStringField
      FieldName = 'sbrzy'
    end
    object ado_jbxxsbrzyqt: TStringField
      FieldName = 'sbrzyqt'
    end
    object ado_jbxxsbrq: TDateTimeField
      FieldName = 'sbrq'
    end
    object ado_jbxxsbdw: TStringField
      FieldName = 'sbdw'
      Size = 30
    end
    object ado_jbxxdwlxr: TStringField
      FieldName = 'dwlxr'
      Size = 10
    end
    object ado_jbxxdwdh: TStringField
      FieldName = 'dwdh'
      Size = 15
    end
    object ado_jbxxscqyxxly: TStringField
      FieldName = 'scqyxxly'
    end
    object ado_jbxxscqyqtly: TStringField
      FieldName = 'scqyqtly'
    end
    object ado_jbxxsjmc: TStringField
      FieldName = 'sjmc'
      Size = 40
    end
    object ado_jbxxfsrq: TDateTimeField
      FieldName = 'fsrq'
    end
    object ado_jbxxsjbm: TStringField
      FieldName = 'sjbm'
      Size = 10
    end
    object ado_jbxxbgdwlb: TStringField
      FieldName = 'bgdwlb'
      Size = 16
    end
    object ado_jbxxbgdwlbqt: TStringField
      FieldName = 'bgdwlbqt'
      Size = 16
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
    object ado_jbxxbrmz: TStringField
      FieldName = 'brmz'
      Size = 10
    end
    object ado_jbxxbrzd: TStringField
      FieldName = 'brzd'
      Size = 100
    end
    object ado_jbxxbrtz: TStringField
      FieldName = 'brtz'
      Size = 6
    end
    object ado_jbxxbrlxfs: TStringField
      FieldName = 'brlxfs'
      Size = 15
    end
    object ado_jbxxxgzyxx: TStringField
      FieldName = 'xgzyxx'
      Size = 10
    end
    object ado_jbxxgms: TStringField
      FieldName = 'gms'
      Size = 40
    end
    object ado_jbxxxgxxqt: TStringField
      FieldName = 'xgxxqt'
      Size = 60
    end
    object ado_jbxxjwypblsj: TStringField
      FieldName = 'jwypblsj'
      Size = 100
    end
    object ado_jbxxjwypsjqk: TStringField
      FieldName = 'jwypsjqk'
      Size = 10
    end
    object ado_jbxxjzypblsj: TStringField
      FieldName = 'jzypblsj'
      Size = 100
    end
    object ado_jbxxjzypsjqk: TStringField
      FieldName = 'jzypsjqk'
      Size = 10
    end
    object ado_jbxxsjgcms: TMemoField
      FieldName = 'sjgcms'
      BlobType = ftMemo
    end
    object ado_jbxxsjjg: TStringField
      FieldName = 'sjjg'
    end
    object ado_jbxxhyzyy: TStringField
      FieldName = 'hyzyy'
      Size = 40
    end
    object ado_jbxxswrq: TDateTimeField
      FieldName = 'swrq'
    end
    object ado_jbxxdyjbyx: TStringField
      FieldName = 'dyjbyx'
      Size = 16
    end
    object ado_jbxxtyjlhqk: TStringField
      FieldName = 'tyjlhqk'
    end
    object ado_jbxxzcsyhqk: TStringField
      FieldName = 'zcsyhqk'
    end
    object ado_jbxxbgrglpj: TStringField
      FieldName = 'bgrglpj'
      Size = 10
    end
    object ado_jbxxgrglqm: TStringField
      FieldName = 'grglqm'
      Size = 10
    end
    object ado_jbxxbgdwglpj: TStringField
      FieldName = 'bgdwglpj'
      Size = 10
    end
    object ado_jbxxdwglqm: TStringField
      FieldName = 'dwglqm'
      Size = 10
    end
    object ado_jbxxbz: TMemoField
      FieldName = 'bz'
      BlobType = ftMemo
    end
    object ado_jbxxlybz: TStringField
      FieldName = 'lybz'
      Size = 2
    end
    object ado_jbxxsbks: TStringField
      FieldName = 'sbks'
      Size = 10
    end
    object ado_jbxxyymc: TStringField
      FieldName = 'yymc'
      Size = 50
    end
    object ado_jbxxfkyj: TStringField
      FieldName = 'fkyj'
    end
    object ado_jbxxfkyjqt: TStringField
      FieldName = 'fkyjqt'
      Size = 100
    end
    object ado_jbxxzyh: TStringField
      FieldName = 'zyh'
    end
    object ado_jbxxgysj: TStringField
      FieldName = 'gysj'
      Size = 30
    end
    object ado_jbxxfsrq2: TDateTimeField
      FieldName = 'fsrq2'
    end
    object ado_jbxxfsrq3: TDateTimeField
      FieldName = 'fsrq3'
    end
    object ado_jbxxgysj2: TStringField
      FieldName = 'gysj2'
      Size = 30
    end
    object ado_jbxxgysj3: TStringField
      FieldName = 'gysj3'
      Size = 30
    end
    object ado_jbxxbglb: TStringField
      FieldName = 'bglb'
    end
    object ado_jbxxsfxbg: TStringField
      FieldName = 'sfxbg'
      Size = 10
    end
    object ado_jbxxyzcd: TWideStringField
      FieldName = 'yzcd'
      FixedChar = True
      Size = 10
    end
    object ado_jbxxjwypsjyw: TWideStringField
      FieldName = 'jwypsjyw'
      FixedChar = True
      Size = 10
    end
    object ado_jbxxjzypsjyw: TWideStringField
      FieldName = 'jzypsjyw'
      FixedChar = True
      Size = 10
    end
    object ado_jbxxzgqk: TMemoField
      FieldName = 'zgqk'
      BlobType = ftMemo
    end
  end
  object ds_tmh: TDataSource
    DataSet = qry_tmh
    Left = 77
    Top = 400
  end
  object qry_tmh: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  *  from  blsj_hlsj_jbxx')
    Left = 45
    Top = 400
    object qry_tmhtmh: TStringField
      FieldName = 'tmh'
    end
    object qry_tmhbrxm: TStringField
      FieldName = 'brxm'
      Size = 10
    end
    object qry_tmhbrnl: TStringField
      FieldName = 'brnl'
      Size = 8
    end
    object qry_tmhsbrq: TDateTimeField
      FieldName = 'sbrq'
    end
    object qry_tmhid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
  end
  object qry_temp: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 46
    Top = 504
  end
  object qry_insert: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 78
    Top = 472
  end
  object qry_pub: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 46
    Top = 472
  end
  object qry_xz: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  * from  sys_czy where 1=2')
    Left = 77
    Top = 367
    object qry_xzmc: TStringField
      FieldName = 'mc'
      Size = 60
    end
    object qry_xzdm: TStringField
      FieldName = 'dm'
      FixedChar = True
      Size = 4
    end
  end
  object ds_xz: TDataSource
    DataSet = qry_xz
    Left = 45
    Top = 367
  end
  object adohyyp: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'select * from blsj_ypsj_hyyp where  1=2'
    FieldDefs = <
      item
        Name = 'id'
        Attributes = [faReadonly, faFixed]
        DataType = ftAutoInc
      end
      item
        Name = 'sjid'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'pzwh'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'spmc'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'sccj'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'scph'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'yfyl'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'yykssj'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'yyjssj'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'yyyy'
        DataType = ftString
        Size = 40
      end>
    ParamCheck = False
    Parameters = <>
    Prepared = True
    StoreDefs = True
    Left = 46
    Top = 297
    object adohyyppzwh: TStringField
      FieldName = 'pzwh'
    end
    object adohyypspmc: TStringField
      FieldName = 'spmc'
      Size = 30
    end
    object adohyypsccj: TStringField
      FieldName = 'sccj'
      Size = 50
    end
    object adohyypscph: TStringField
      FieldName = 'scph'
    end
    object adohyypyfyl: TStringField
      FieldName = 'yfyl'
      Size = 30
    end
    object adohyypyykssj: TDateTimeField
      FieldName = 'yykssj'
      EditMask = '!90:00;1;_'
    end
    object adohyypyyjssj: TDateTimeField
      FieldName = 'yyjssj'
      EditMask = 'yyyy-mm-dd hh:mm:ss '
    end
    object adohyypyyyy: TStringField
      FieldName = 'yyyy'
      Size = 40
    end
    object adohyypid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object adohyypsjid: TStringField
      FieldName = 'sjid'
      Size = 4
    end
  end
  object dshyyp: TDataSource
    DataSet = adohyyp
    Left = 78
    Top = 296
  end
  object ds_lb: TDataSource
    DataSet = qry_lb
    Left = 77
    Top = 193
  end
  object qry_lb: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    AfterDelete = qry_lbAfterDelete
    Parameters = <>
    SQL.Strings = (
      'select  *  from  blsj_hlsj_jbxx where 1=2')
    Left = 46
    Top = 192
  end
  object adobyyp: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'select * from blsj_ypsj_byyp  where  1=2'
    FieldDefs = <
      item
        Name = 'id'
        Attributes = [faReadonly, faFixed]
        DataType = ftAutoInc
      end
      item
        Name = 'sjid'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'pzwh'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'spmc'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'sccj'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'scph'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'yfyl'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'yykssj'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'yyjssj'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'yyyy'
        DataType = ftString
        Size = 40
      end>
    ParamCheck = False
    Parameters = <>
    Prepared = True
    StoreDefs = True
    Left = 46
    Top = 257
    object AutoIncField1: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object StringField1: TStringField
      FieldName = 'sjid'
      Size = 4
    end
    object StringField2: TStringField
      FieldName = 'pzwh'
    end
    object StringField3: TStringField
      FieldName = 'spmc'
      Size = 30
    end
    object StringField4: TStringField
      FieldName = 'sccj'
      Size = 50
    end
    object StringField5: TStringField
      FieldName = 'scph'
    end
    object StringField6: TStringField
      FieldName = 'yfyl'
      Size = 30
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'yykssj'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'yyjssj'
    end
    object StringField7: TStringField
      FieldName = 'yyyy'
      Size = 40
    end
  end
  object dsbyyp: TDataSource
    DataSet = adobyyp
    Left = 78
    Top = 256
  end
  object ds_cx: TDataSource
    DataSet = sp_cx
    Left = 621
    Top = 696
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
        Value = '0011'
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = '666666666'
      end
      item
        Name = '@lybz'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = '1'
      end>
    Left = 658
    Top = 693
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
    object sp_cxzyh: TStringField
      FieldName = 'zyh'
      ReadOnly = True
      FixedChar = True
      Size = 16
    end
  end
  object ds_sjcx: TDataSource
    DataSet = sp_sjcx
    Left = 45
    Top = 438
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
        Value = '0435'
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
        Value = '3'
      end>
    Left = 74
    Top = 437
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
    object sp_sjcxlybz: TStringField
      FieldName = 'lybz'
      ReadOnly = True
      Size = 2
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 72
    Top = 504
  end
  object qry_yp: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select distinct(xmmc) as mc,xmdm as dm,b.pzwh,b.sccj from zybl_z' +
        'yyz a,sys_ypdm b  where a.xmdm=b.ypdm  and 1=2')
    Left = 45
    Top = 335
    object qry_ypmc: TStringField
      FieldName = 'mc'
      Size = 100
    end
    object qry_ypdm: TStringField
      FieldName = 'dm'
      Size = 14
    end
    object qry_yppzwh: TStringField
      FieldName = 'pzwh'
      Size = 50
    end
    object qry_ypsccj: TStringField
      FieldName = 'sccj'
      Size = 50
    end
  end
  object ds_yp: TDataSource
    DataSet = qry_yp
    Left = 77
    Top = 335
  end
  object sp_cx_ypsj: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnCalcFields = sp_sjcxCalcFields
    ProcedureName = 'blsj_sjcx_ypsj;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@czy'
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
        Name = '@cxlx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@sjlx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end>
    Left = 74
    Top = 541
  end
  object ds_ypsj: TDataSource
    DataSet = sp_cx_ypsj
    Left = 45
    Top = 542
  end
  object qry_sccj: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 112
    Top = 472
  end
  object ds_sccj: TDataSource
    DataSet = qry_sccj
    Left = 112
    Top = 432
  end
  object pm_sc: TPopupMenu
    Left = 312
    Top = 224
    object N_scyp: TMenuItem
      Caption = #21024#38500#33647#21697
      OnClick = N_scypClick
    end
  end
  object p_byyp: TPopupMenu
    Left = 232
    Top = 336
    object m_scby: TMenuItem
      Caption = #21024#38500#33647#21697
      OnClick = m_scbyClick
    end
  end
  object qry_delbyyp: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 112
    Top = 344
  end
end
