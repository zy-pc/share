object frm_brxx: Tfrm_brxx
  Left = 0
  Top = 263
  BiDiMode = bdLeftToRight
  BorderStyle = bsSingle
  Caption = #30149#20154#20449#24687
  ClientHeight = 807
  ClientWidth = 1396
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesigned
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object stat1: TStatusBar
    Left = 0
    Top = 781
    Width = 1396
    Height = 26
    Color = clSilver
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Pitch = fpVariable
    Font.Style = []
    Panels = <
      item
        Alignment = taCenter
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Text = #31354
        Width = 200
      end
      item
        Alignment = taCenter
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Text = #24037#20316#32452':'
        Width = 200
      end
      item
        Alignment = taCenter
        Text = #29992#25143#31649#29702#21592#65306
        Width = 200
      end
      item
        Alignment = taCenter
        Text = #32418#33394':'#21307#20445#33258#36153#31867
        Width = 200
      end
      item
        Width = 50
      end>
    UseSystemFont = False
  end
  object Panel48: TPanel
    Left = 289
    Top = 0
    Width = 1107
    Height = 781
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object Panel50: TPanel
      Left = 0
      Top = 0
      Width = 1107
      Height = 781
      Align = alClient
      TabOrder = 0
      object Panel49: TPanel
        Left = 1
        Top = 64
        Width = 1105
        Height = 716
        Align = alClient
        TabOrder = 0
        object cxPageControl1: TcxPageControl
          Left = 1
          Top = 1
          Width = 1103
          Height = 714
          ActivePage = cxtbsht3
          Align = alClient
          TabOrder = 0
          ClientRectBottom = 714
          ClientRectRight = 1103
          ClientRectTop = 24
          object cxtbsht1: TcxTabSheet
            Caption = #22788#26041'/'#21307#22065#26126#32454
            ImageIndex = 0
            OnShow = cxtbsht1Show
            object dbgrdh_cfyz: TDBGridEh
              Left = 0
              Top = 0
              Width = 1103
              Height = 690
              Align = alClient
              DataGrouping.GroupLevels = <>
              DataSource = ds_yz
              Flat = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -11
              FooterFont.Name = 'Tahoma'
              FooterFont.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              ReadOnly = True
              RowDetailPanel.BorderStyle = bsNone
              RowDetailPanel.Color = clBtnFace
              STFilter.InstantApply = False
              STFilter.Location = stflInTitleFilterEh
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -15
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = [fsBold]
              TitleHeight = 2
              TitleLines = 3
              UseMultiTitle = True
              Columns = <
                item
                  EditButtons = <>
                  Footers = <>
                  Title.Caption = '|'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -12
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = []
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
          object cxtbsht2: TcxTabSheet
            Caption = #38376#35786#30149#20154#21015#34920
            ImageIndex = 1
            OnShow = cxtbsht2Show
            object Panel55: TPanel
              Left = 0
              Top = 65
              Width = 1103
              Height = 625
              Align = alClient
              TabOrder = 0
              object dbgrdh_mzbrlb: TDBGridEh
                Left = 1
                Top = 1
                Width = 1101
                Height = 623
                Align = alClient
                DataGrouping.GroupLevels = <>
                DataSource = ds_mzbrlb
                Flat = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -11
                FooterFont.Name = 'Tahoma'
                FooterFont.Style = []
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
                ParentFont = False
                ReadOnly = True
                RowDetailPanel.BorderStyle = bsNone
                RowDetailPanel.Color = clBtnFace
                STFilter.InstantApply = False
                STFilter.Location = stflInTitleFilterEh
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -15
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = [fsBold]
                TitleHeight = 2
                TitleLines = 3
                UseMultiTitle = True
                OnDblClick = dbgrdh_mzbrlbDblClick
                Columns = <
                  item
                    EditButtons = <>
                    Footers = <>
                    Title.Caption = '|'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -12
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = []
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
            end
            object Panel58: TPanel
              Left = 0
              Top = 0
              Width = 1103
              Height = 65
              Align = alTop
              TabOrder = 1
              object lbl6: TLabel
                Left = 56
                Top = 23
                Width = 48
                Height = 16
                Caption = #26085#26399#65306
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'lbl6'
                Font.Style = []
                ParentFont = False
              end
              object lbl7: TLabel
                Left = 224
                Top = 23
                Width = 16
                Height = 16
                Caption = #33267
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'lbl6'
                Font.Style = []
                ParentFont = False
              end
              object btn_4: TcxButton
                Left = 392
                Top = 17
                Width = 179
                Height = 25
                Caption = #26597'    '#25214
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnClick = btn_4Click
              end
              object edt1: TDBDateTimeEditEh
                Left = 97
                Top = 21
                Width = 121
                Height = 21
                EditButtons = <>
                Kind = dtkDateEh
                TabOrder = 1
                Visible = True
              end
              object edt2: TDBDateTimeEditEh
                Left = 253
                Top = 21
                Width = 121
                Height = 21
                EditButtons = <>
                Kind = dtkDateEh
                TabOrder = 2
                Visible = True
              end
            end
          end
          object cxtbsht3: TcxTabSheet
            Caption = #20986#38498#30149#20154#21015#34920
            ImageIndex = 2
            OnShow = cxtbsht3Show
            object Panel53: TPanel
              Left = 0
              Top = 0
              Width = 1103
              Height = 65
              Align = alTop
              TabOrder = 0
              object lbl8: TLabel
                Left = 56
                Top = 23
                Width = 48
                Height = 16
                Caption = #26085#26399#65306
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'lbl6'
                Font.Style = []
                ParentFont = False
              end
              object lbl9: TLabel
                Left = 224
                Top = 23
                Width = 16
                Height = 16
                Caption = #33267
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'lbl6'
                Font.Style = []
                ParentFont = False
              end
              object btn_5: TcxButton
                Left = 392
                Top = 18
                Width = 179
                Height = 25
                Caption = #26597'    '#25214
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnClick = btn_5Click
              end
              object edt3: TDBDateTimeEditEh
                Left = 97
                Top = 21
                Width = 121
                Height = 21
                EditButtons = <>
                Kind = dtkDateEh
                TabOrder = 1
                Visible = True
              end
              object edt4: TDBDateTimeEditEh
                Left = 253
                Top = 21
                Width = 121
                Height = 21
                EditButtons = <>
                Kind = dtkDateEh
                TabOrder = 2
                Visible = True
              end
            end
            object Panel54: TPanel
              Left = 0
              Top = 65
              Width = 1103
              Height = 625
              Align = alClient
              TabOrder = 1
              object dbgrdh_cybrlb: TDBGridEh
                Left = 1
                Top = 1
                Width = 1101
                Height = 623
                Align = alClient
                DataGrouping.GroupLevels = <>
                DataSource = ds_cybrlb
                Flat = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -11
                FooterFont.Name = 'Tahoma'
                FooterFont.Style = []
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
                ParentFont = False
                PopupMenu = pm1
                ReadOnly = True
                RowDetailPanel.BorderStyle = bsNone
                RowDetailPanel.Color = clBtnFace
                STFilter.InstantApply = False
                STFilter.Location = stflInTitleFilterEh
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -15
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = [fsBold]
                TitleHeight = 2
                TitleLines = 3
                UseMultiTitle = True
                OnDblClick = dbgrdh_cybrlbDblClick
                Columns = <
                  item
                    EditButtons = <>
                    Footers = <>
                    Title.Caption = '|'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -12
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = []
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
            end
          end
        end
      end
      object Panel52: TPanel
        Left = 1
        Top = 1
        Width = 1105
        Height = 63
        Align = alTop
        TabOrder = 1
        object Panel47: TPanel
          Left = 5
          Top = 30
          Width = 412
          Height = 29
          TabOrder = 0
          object rb2: TRadioButton
            Left = 141
            Top = 4
            Width = 100
            Height = 17
            Caption = #20303#38498#21307#22065
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object rb1: TRadioButton
            Left = 6
            Top = 4
            Width = 99
            Height = 17
            Caption = #38376#35786#22788#26041
            Checked = True
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TabStop = True
          end
          object chk1: TCheckBox
            Left = 259
            Top = 4
            Width = 138
            Height = 17
            Caption = #33258#21160#35843#25972#25171#21360#26684#24335
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            State = cbChecked
            TabOrder = 2
          end
        end
        object Panel46: TPanel
          Left = 5
          Top = -1
          Width = 930
          Height = 31
          BevelInner = bvLowered
          TabOrder = 1
          object btn_sx: TcxButton
            Left = 6
            Top = 3
            Width = 179
            Height = 25
            Caption = #21047#26032
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object btn_dc: TcxButton
            Left = 191
            Top = 3
            Width = 179
            Height = 25
            Caption = #23548#20986
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = btn_dcClick
          end
          object btn_dy: TcxButton
            Left = 561
            Top = 3
            Width = 179
            Height = 25
            Caption = #25171#21360
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = btn_dyClick
          end
          object btn_tc: TcxButton
            Left = 746
            Top = 3
            Width = 179
            Height = 25
            Caption = #36864#20986
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = btn_tcClick
          end
          object btn_dyyl: TcxButton
            Left = 376
            Top = 3
            Width = 179
            Height = 25
            Caption = #25171#21360#39044#35272
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = btn_dyylClick
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 289
    Height = 781
    Align = alLeft
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object GridPanel1: TGridPanel
      Left = 2
      Top = 2
      Width = 285
      Height = 777
      Align = alClient
      BevelKind = bkSoft
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      ColumnCollection = <
        item
          Value = 37.500000000000000000
        end
        item
          Value = 62.500000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = Panel2
          Row = 0
        end
        item
          Column = 1
          Control = Panel3
          Row = 0
        end
        item
          Column = 0
          Control = Panel4
          Row = 1
        end
        item
          Column = 1
          Control = Panel5
          Row = 1
        end
        item
          Column = 0
          Control = Panel6
          Row = 2
        end
        item
          Column = 1
          Control = Panel7
          Row = 2
        end
        item
          Column = 0
          Control = Panel8
          Row = 3
        end
        item
          Column = 1
          Control = Panel9
          Row = 3
        end
        item
          Column = 0
          Control = Panel10
          Row = 4
        end
        item
          Column = 1
          Control = Panel11
          Row = 4
        end
        item
          Column = 0
          Control = Panel12
          Row = 5
        end
        item
          Column = 1
          Control = Panel13
          Row = 5
        end
        item
          Column = 0
          Control = Panel14
          Row = 6
        end
        item
          Column = 1
          Control = Panel15
          Row = 6
        end
        item
          Column = 0
          Control = Panel16
          Row = 7
        end
        item
          Column = 1
          Control = Panel17
          Row = 7
        end
        item
          Column = 0
          Control = Panel18
          Row = 8
        end
        item
          Column = 1
          Control = Panel19
          Row = 8
        end
        item
          Column = 0
          Control = Panel20
          Row = 9
        end
        item
          Column = 1
          Control = Panel21
          Row = 9
        end
        item
          Column = 0
          Control = Panel22
          Row = 10
        end
        item
          Column = 1
          Control = Panel23
          Row = 10
        end
        item
          Column = 0
          Control = Panel24
          Row = 11
        end
        item
          Column = 1
          Control = Panel25
          Row = 11
        end
        item
          Column = 0
          Control = Panel26
          Row = 12
        end
        item
          Column = 1
          Control = Panel27
          Row = 12
        end
        item
          Column = 0
          Control = Panel28
          Row = 13
        end
        item
          Column = 1
          Control = Panel29
          Row = 13
        end
        item
          Column = 0
          Control = Panel30
          Row = 14
        end
        item
          Column = 1
          Control = Panel31
          Row = 14
        end
        item
          Column = 0
          Control = Panel32
          Row = 15
        end
        item
          Column = 1
          Control = Panel33
          Row = 15
        end
        item
          Column = 0
          Control = Panel34
          Row = 16
        end
        item
          Column = 1
          Control = Panel35
          Row = 16
        end
        item
          Column = 0
          Control = Panel36
          Row = 17
        end
        item
          Column = 1
          Control = Panel37
          Row = 17
        end
        item
          Column = 0
          Control = Panel38
          Row = 18
        end
        item
          Column = 1
          Control = Panel39
          Row = 18
        end
        item
          Column = 0
          Control = Panel40
          Row = 19
        end
        item
          Column = 1
          Control = Panel41
          Row = 19
        end
        item
          Column = 0
          Control = Panel42
          Row = 20
        end
        item
          Column = 1
          Control = Panel43
          Row = 20
        end
        item
          Column = 0
          Control = Panel44
          Row = 21
        end
        item
          Column = 1
          Control = Panel45
          Row = 21
        end>
      ExpandStyle = emFixedSize
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      RowCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 152.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 31.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 31.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 31.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 31.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 31.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 31.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 31.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 50.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 31.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 31.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 31.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 31.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 31.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 31.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 31.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 31.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 31.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 31.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 31.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 31.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 90.000000000000000000
        end
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 105
        Height = 152
        Align = alClient
        BevelWidth = 2
        ParentBackground = False
        TabOrder = 0
        object RzToolButton1: TRzToolButton
          Left = 2
          Top = 2
          Width = 101
          Height = 148
          ImageIndex = 11
          Images = il1
          Align = alClient
          Enabled = False
          ExplicitLeft = 64
          ExplicitTop = 16
          ExplicitWidth = 25
          ExplicitHeight = 25
        end
      end
      object Panel3: TPanel
        Left = 105
        Top = 0
        Width = 176
        Height = 152
        Align = alClient
        BevelWidth = 2
        TabOrder = 1
        object lbl1: TLabel
          Left = 8
          Top = 46
          Width = 80
          Height = 23
          Caption = #22522#26412#36164#26009
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl2: TLabel
          Left = 94
          Top = 75
          Width = 68
          Height = 19
          Caption = #65288#22312#24202#65289
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 152
        Width = 105
        Height = 31
        Align = alClient
        Alignment = taRightJustify
        BevelWidth = 2
        Caption = #24403#21069#30149#21306'  '
        TabOrder = 2
      end
      object Panel5: TPanel
        Left = 105
        Top = 152
        Width = 176
        Height = 31
        Align = alClient
        BevelWidth = 2
        Color = clWindow
        ParentBackground = False
        TabOrder = 3
        object Panel57: TPanel
          Left = 82
          Top = 2
          Width = 92
          Height = 27
          Align = alRight
          BevelKind = bkTile
          Color = clWindow
          ParentBackground = False
          TabOrder = 0
          OnClick = lbl15Click
          object lbl15: TLabel
            Left = 14
            Top = 4
            Width = 64
            Height = 13
            Caption = '<'#36873#25321#30149#24202'>'
            OnClick = lbl15Click
          end
        end
        object Panel59: TPanel
          Left = 2
          Top = 2
          Width = 86
          Height = 27
          Align = alLeft
          BevelKind = bkTile
          Color = clWindow
          ParentBackground = False
          TabOrder = 1
          OnClick = lbl14Click
          object lbl14: TLabel
            Left = 10
            Top = 4
            Width = 64
            Height = 13
            Caption = '<'#30149#21306#36873#25321'>'
            OnClick = lbl14Click
          end
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 183
        Width = 105
        Height = 31
        Align = alClient
        Alignment = taRightJustify
        BevelWidth = 2
        Caption = #35786#30103#21345#21495'  '
        TabOrder = 4
      end
      object Panel7: TPanel
        Left = 105
        Top = 183
        Width = 176
        Height = 31
        Align = alClient
        BevelWidth = 2
        Color = clWindow
        ParentBackground = False
        TabOrder = 5
        object cxdblbl_zlkh: TcxDBLabel
          Left = 12
          Top = 4
          DataBinding.DataField = 'zlkh'
          DataBinding.DataSource = ds_brjbxx
          Height = 21
          Width = 79
        end
        object cxdblbl_zljl: TcxDBLabel
          Left = 97
          Top = 4
          Visible = False
          Height = 21
          Width = 65
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 214
        Width = 105
        Height = 31
        Align = alClient
        Alignment = taRightJustify
        BevelWidth = 2
        Caption = #20303#38498#21495'  '
        TabOrder = 6
      end
      object Panel9: TPanel
        Left = 105
        Top = 214
        Width = 176
        Height = 31
        Align = alClient
        BevelWidth = 2
        Color = clWindow
        ParentBackground = False
        TabOrder = 7
        object lbl10: TLabel
          Left = 87
          Top = 6
          Width = 12
          Height = 13
          Caption = #31532
        end
        object lbl11: TLabel
          Left = 133
          Top = 6
          Width = 36
          Height = 13
          Caption = #27425#20837#38498
        end
        object cxdblbl_zyh: TcxDBLabel
          Left = 12
          Top = 5
          DataBinding.DataField = 'tmh'
          DataBinding.DataSource = ds_brjbxx
          Height = 17
          Width = 69
        end
        object cxdblbl_rycs: TcxDBLabel
          Left = 105
          Top = 5
          DataBinding.DataField = 'zycs'
          DataBinding.DataSource = ds_brjbxx
          Height = 17
          Width = 24
        end
      end
      object Panel10: TPanel
        Left = 0
        Top = 245
        Width = 105
        Height = 31
        Align = alClient
        Alignment = taRightJustify
        BevelWidth = 2
        Caption = #27969#27700#21495'  '
        TabOrder = 8
      end
      object Panel11: TPanel
        Left = 105
        Top = 245
        Width = 176
        Height = 31
        Align = alClient
        BevelWidth = 2
        Color = clWindow
        ParentBackground = False
        TabOrder = 9
        object cxdblbl_lsh: TcxDBLabel
          Left = 12
          Top = 4
          AutoSize = True
          DataBinding.DataField = 'lsh'
          DataBinding.DataSource = ds_brjbxx
        end
      end
      object Panel12: TPanel
        Left = 0
        Top = 276
        Width = 105
        Height = 31
        Align = alClient
        Alignment = taRightJustify
        BevelWidth = 2
        Caption = #22995#21517'  '
        TabOrder = 10
      end
      object Panel13: TPanel
        Left = 105
        Top = 276
        Width = 176
        Height = 31
        Align = alClient
        BevelWidth = 2
        Color = clWindow
        ParentBackground = False
        TabOrder = 11
        object cxdblbl_xm: TcxDBLabel
          Left = 12
          Top = 4
          DataBinding.DataField = 'brxm'
          DataBinding.DataSource = ds_brjbxx
          Height = 21
          Width = 65
        end
        object cxdblbl_xb: TcxDBLabel
          Left = 83
          Top = 4
          DataBinding.DataField = 'brxb'
          DataBinding.DataSource = ds_brjbxx
          Height = 21
          Width = 29
        end
        object cxdblbl_nl: TcxDBLabel
          Left = 134
          Top = 4
          DataBinding.DataField = 'brnl'
          DataBinding.DataSource = ds_brjbxx
          Height = 21
          Width = 29
        end
      end
      object Panel14: TPanel
        Left = 0
        Top = 307
        Width = 105
        Height = 31
        Align = alClient
        Alignment = taRightJustify
        BevelWidth = 2
        Caption = #36153#29992#31867#21035'  '
        TabOrder = 12
      end
      object Panel15: TPanel
        Left = 105
        Top = 307
        Width = 176
        Height = 31
        Align = alClient
        BevelWidth = 2
        Color = clWindow
        ParentBackground = False
        TabOrder = 13
        object cxdblbl_fylb: TcxDBLabel
          Left = 12
          Top = 4
          AutoSize = True
          DataBinding.DataField = 'fylb'
          DataBinding.DataSource = ds_brjbxx
        end
      end
      object Panel16: TPanel
        Left = 0
        Top = 338
        Width = 105
        Height = 31
        Align = alClient
        Alignment = taRightJustify
        BevelWidth = 2
        Caption = #21333#20301#21517#31216'  '
        TabOrder = 14
      end
      object Panel17: TPanel
        Left = 105
        Top = 338
        Width = 176
        Height = 31
        Align = alClient
        BevelWidth = 2
        Color = clWindow
        ParentBackground = False
        TabOrder = 15
        object cxdblbl_dwmc: TcxDBLabel
          Left = 12
          Top = 4
          AutoSize = True
          DataBinding.DataField = 'dwmc'
          DataBinding.DataSource = ds_brjbxx
        end
      end
      object Panel18: TPanel
        Left = 0
        Top = 369
        Width = 105
        Height = 50
        Align = alClient
        Alignment = taRightJustify
        BevelWidth = 2
        Caption = ' '
        TabOrder = 16
        object lbl12: TLabel
          Left = 47
          Top = 8
          Width = 51
          Height = 13
          Caption = #20837#38498#26102#38388' '
        end
        object lbl13: TLabel
          Left = 47
          Top = 29
          Width = 51
          Height = 13
          Caption = #20986#38498#26102#38388' '
        end
      end
      object Panel19: TPanel
        Left = 105
        Top = 369
        Width = 176
        Height = 50
        Align = alClient
        BevelWidth = 2
        Color = clWindow
        ParentBackground = False
        TabOrder = 17
        object cxdblbl_rysj: TcxDBLabel
          Left = 12
          Top = 4
          AutoSize = True
          DataBinding.DataField = 'ryrq'
          DataBinding.DataSource = ds_brjbxx
        end
        object cxdblbl1: TcxDBLabel
          Left = 12
          Top = 27
          AutoSize = True
          DataBinding.DataField = 'cyrq'
          DataBinding.DataSource = ds_brjbxx
        end
      end
      object Panel20: TPanel
        Left = 0
        Top = 419
        Width = 105
        Height = 31
        Align = alClient
        Alignment = taRightJustify
        BevelWidth = 2
        Caption = #20303#38498#22825#25968'  '
        TabOrder = 18
      end
      object Panel21: TPanel
        Left = 105
        Top = 419
        Width = 176
        Height = 31
        Align = alClient
        BevelWidth = 2
        Color = clWindow
        ParentBackground = False
        TabOrder = 19
        object cxdblbl_zyts: TcxDBLabel
          Left = 12
          Top = 4
          AutoSize = True
          DataBinding.DataField = 'zyts'
          DataBinding.DataSource = ds_brjbxx
        end
      end
      object Panel22: TPanel
        Left = 0
        Top = 450
        Width = 105
        Height = 31
        Align = alClient
        Alignment = taRightJustify
        BevelWidth = 2
        Caption = #20837#38498#35786#26029'  '
        TabOrder = 20
      end
      object Panel23: TPanel
        Left = 105
        Top = 450
        Width = 176
        Height = 31
        Align = alClient
        BevelWidth = 2
        Color = clWindow
        ParentBackground = False
        TabOrder = 21
        object cxdblbl_ryzd: TcxDBLabel
          Left = 12
          Top = 4
          AutoSize = True
          DataBinding.DataField = 'ryzd'
          DataBinding.DataSource = ds_brjbxx
        end
      end
      object Panel24: TPanel
        Left = 0
        Top = 481
        Width = 105
        Height = 31
        Align = alClient
        Alignment = taRightJustify
        BevelWidth = 2
        Caption = #20986#38498#35786#26029'  '
        TabOrder = 22
      end
      object Panel25: TPanel
        Left = 105
        Top = 481
        Width = 176
        Height = 31
        Align = alClient
        BevelWidth = 2
        Color = clWindow
        ParentBackground = False
        TabOrder = 23
        object cxdblbl_cyzd: TcxDBLabel
          Left = 12
          Top = 4
          AutoSize = True
          DataBinding.DataField = 'cyzd'
          DataBinding.DataSource = ds_brjbxx
        end
      end
      object Panel26: TPanel
        Left = 0
        Top = 512
        Width = 105
        Height = 31
        Align = alClient
        Alignment = taRightJustify
        BevelWidth = 2
        Caption = #24635#36153#29992'  '
        TabOrder = 24
      end
      object Panel27: TPanel
        Left = 105
        Top = 512
        Width = 176
        Height = 31
        Align = alClient
        BevelWidth = 2
        Color = clWindow
        ParentBackground = False
        TabOrder = 25
        object lbl3: TLabel
          Left = 75
          Top = 6
          Width = 28
          Height = 13
          Caption = #33258#20184':'
        end
        object cxdblbl_zfy: TcxDBLabel
          Left = 12
          Top = 4
          DataBinding.DataField = 'zfy'
          DataBinding.DataSource = ds_brjbxx
          Height = 21
          Width = 57
        end
        object cxdblbl_zf: TcxDBLabel
          Left = 108
          Top = 4
          DataBinding.DataField = 'zf'
          DataBinding.DataSource = ds_brjbxx
          Height = 21
          Width = 57
        end
      end
      object Panel28: TPanel
        Left = 0
        Top = 543
        Width = 105
        Height = 31
        Align = alClient
        Alignment = taRightJustify
        BevelWidth = 2
        Caption = #24453#28165#36153#29992'  '
        TabOrder = 26
      end
      object Panel29: TPanel
        Left = 105
        Top = 543
        Width = 176
        Height = 31
        Align = alClient
        BevelWidth = 2
        Color = clWindow
        ParentBackground = False
        TabOrder = 27
        object lbl4: TLabel
          Left = 75
          Top = 6
          Width = 28
          Height = 13
          Caption = #24453#32467':'
        end
        object cxdblbl_dqfy: TcxDBLabel
          Left = 12
          Top = 4
          DataBinding.DataField = 'dqfy'
          DataBinding.DataSource = ds_brjbxx
          Height = 21
          Width = 57
        end
        object cxdblbl_dj: TcxDBLabel
          Left = 108
          Top = 6
          DataBinding.DataField = 'djfy'
          DataBinding.DataSource = ds_brjbxx
          Height = 21
          Width = 57
        end
      end
      object Panel30: TPanel
        Left = 0
        Top = 574
        Width = 105
        Height = 31
        Align = alClient
        Alignment = taRightJustify
        BevelWidth = 2
        Caption = #24050#28165#36153#29992'  '
        TabOrder = 28
      end
      object Panel31: TPanel
        Left = 105
        Top = 574
        Width = 176
        Height = 31
        Align = alClient
        BevelWidth = 2
        Color = clWindow
        ParentBackground = False
        TabOrder = 29
        object lbl5: TLabel
          Left = 75
          Top = 6
          Width = 28
          Height = 13
          Caption = #26597#25910':'
        end
        object cxdblbl_yqfy: TcxDBLabel
          Left = 12
          Top = 4
          DataBinding.DataField = 'yqfy'
          DataBinding.DataSource = ds_brjbxx
          Height = 21
          Width = 57
        end
        object cxdblbl_cs: TcxDBLabel
          Left = 108
          Top = 4
          DataBinding.DataField = 'zs'
          DataBinding.DataSource = ds_brjbxx
          Height = 21
          Width = 57
        end
      end
      object Panel32: TPanel
        Left = 0
        Top = 605
        Width = 105
        Height = 31
        Align = alClient
        Alignment = taRightJustify
        BevelWidth = 2
        Caption = #28165#24080#26085#26399'  '
        TabOrder = 30
      end
      object Panel33: TPanel
        Left = 105
        Top = 605
        Width = 176
        Height = 31
        Align = alClient
        BevelWidth = 2
        Color = clWindow
        ParentBackground = False
        TabOrder = 31
        object cxdblbl_qzrq: TcxDBLabel
          Left = 12
          Top = 4
          AutoSize = True
          DataBinding.DataField = 'qzrq'
          DataBinding.DataSource = ds_brjbxx
        end
      end
      object Panel34: TPanel
        Left = 0
        Top = 636
        Width = 105
        Height = 31
        Align = alClient
        Alignment = taRightJustify
        BevelWidth = 2
        Caption = #39044#25910#27454'  '
        TabOrder = 32
      end
      object Panel35: TPanel
        Left = 105
        Top = 636
        Width = 176
        Height = 31
        Align = alClient
        BevelWidth = 2
        Color = clWindow
        ParentBackground = False
        TabOrder = 33
        object cxdblbl_ysk: TcxDBLabel
          Left = 12
          Top = 4
          AutoSize = True
          DataBinding.DataField = 'yjze'
          DataBinding.DataSource = ds_brjbxx
        end
      end
      object Panel36: TPanel
        Left = 0
        Top = 667
        Width = 105
        Height = 31
        Align = alClient
        Alignment = taRightJustify
        BevelWidth = 2
        Caption = #32467#20313'  '
        TabOrder = 34
      end
      object Panel37: TPanel
        Left = 105
        Top = 667
        Width = 176
        Height = 31
        Align = alClient
        BevelWidth = 2
        Color = clWindow
        ParentBackground = False
        TabOrder = 35
        object cxdblbl_jy: TcxDBLabel
          Left = 12
          Top = 7
          AutoSize = True
          DataBinding.DataField = 'jy'
          DataBinding.DataSource = ds_brjbxx
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clRed
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
      end
      object Panel38: TPanel
        Left = 0
        Top = 698
        Width = 105
        Height = 31
        Align = alClient
        Alignment = taRightJustify
        BevelWidth = 2
        Caption = #21307#20445#32479#31609'  '
        TabOrder = 36
      end
      object Panel39: TPanel
        Left = 105
        Top = 698
        Width = 176
        Height = 31
        Align = alClient
        BevelWidth = 2
        Color = clWindow
        ParentBackground = False
        TabOrder = 37
        object cxdblbl_ybtc: TcxDBLabel
          Left = 12
          Top = 4
          AutoSize = True
          DataBinding.DataField = 'ybtc'
          DataBinding.DataSource = ds_brjbxx
        end
      end
      object Panel40: TPanel
        Left = 0
        Top = 729
        Width = 105
        Height = 31
        Align = alClient
        Alignment = taRightJustify
        BevelWidth = 2
        Caption = #21307#20445#21345#21495'  '
        TabOrder = 38
      end
      object Panel41: TPanel
        Left = 105
        Top = 729
        Width = 176
        Height = 31
        Align = alClient
        BevelWidth = 2
        Color = clWindow
        ParentBackground = False
        TabOrder = 39
        object cxdblbl_ybkh: TcxDBLabel
          Left = 12
          Top = 4
          AutoSize = True
          DataBinding.DataField = 'ybkh'
          DataBinding.DataSource = ds_brjbxx
        end
      end
      object Panel42: TPanel
        Left = 0
        Top = 760
        Width = 105
        Height = 31
        Align = alClient
        Alignment = taRightJustify
        BevelWidth = 2
        Caption = #29305#27880#20449#24687'  '
        TabOrder = 40
      end
      object Panel43: TPanel
        Left = 105
        Top = 760
        Width = 176
        Height = 31
        Align = alClient
        BevelWidth = 2
        Color = clWindow
        ParentBackground = False
        TabOrder = 41
        object cxdblbl_tzxx: TcxDBLabel
          Left = 12
          Top = 4
          AutoSize = True
          DataBinding.DataField = 'tzxx'
          DataBinding.DataSource = ds_brjbxx
        end
      end
      object Panel44: TPanel
        Left = 0
        Top = 791
        Width = 105
        Height = 90
        Align = alClient
        Alignment = taRightJustify
        BevelWidth = 2
        Caption = #22791#27880'  '
        TabOrder = 42
      end
      object Panel45: TPanel
        Left = 105
        Top = 791
        Width = 176
        Height = 90
        Align = alClient
        BevelWidth = 2
        Color = clWindow
        ParentBackground = False
        TabOrder = 43
        object cxdblbl_bz: TcxDBLabel
          Left = 12
          Top = 12
          AutoSize = True
          DataBinding.DataField = 'bz'
          DataBinding.DataSource = ds_brjbxx
        end
      end
    end
    object Panel51: TPanel
      Left = 108
      Top = 187
      Width = 104
      Height = 372
      Caption = 'Panel51'
      TabOrder = 1
      Visible = False
      object dbgrd2: TDBGrid
        Left = 1
        Top = 1
        Width = 102
        Height = 370
        Align = alClient
        Ctl3D = False
        DataSource = ds_ks_br
        Options = [dgEditing, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = dbgrd2DblClick
        OnKeyPress = dbgrd2KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'ksmc'
            Title.Caption = #31185#23460
            Visible = True
          end>
      end
    end
    object Panel56: TPanel
      Left = 172
      Top = 187
      Width = 114
      Height = 372
      Caption = 'Panel51'
      TabOrder = 2
      Visible = False
      object dbgrd1: TDBGrid
        Left = 1
        Top = 1
        Width = 112
        Height = 370
        Align = alClient
        BiDiMode = bdLeftToRight
        Ctl3D = True
        DataSource = ds_ch
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = dbgrd1DblClick
        OnKeyPress = dbgrd1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'bch'
            Title.Caption = #24202#21495
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'brxm'
            Title.Caption = #22995#21517
            Width = 50
            Visible = True
          end>
      end
    end
  end
  object qry_sj: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT  substring(convert(varchar(20),getdate(),120),0,12)+daten' +
        'ame(weekday, getdate()) as sj')
    Left = 256
    Top = 672
  end
  object il1: TImageList
    Height = 22
    ShareImages = True
    Width = 22
    Left = 32
    Top = 40
    Bitmap = {
      494C01010D000F00440016001600FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000580000005800000001002000000000000079
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000084848400000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400DEDEDE00DEDE
      DE0094FFFF00DEDEDE0094FFFF00949494000000000000000000313131000000
      0000000000009494940094FFFF009494940094FFFF0094949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400DEDEDE000000
      0000000000000000000000000000000000000000000000000000313131000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400DEDEDE008484
      840000000000000000000000000000000000DEDEDE0094949400313131009494
      9400DEDEDE000000000000000000000000000000000000000000FFCE2900FFCE
      2900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400DEDEDE008484
      840094FFFF00FFFFFF0094FFFF00DEDEDE007B0000007B000000313131000000
      000094FFFF00FFFFFF0094FFFF00FFFFFF000000000000000000FFFF9400FFCE
      2900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400DEDEDE008484
      8400FFFFFF00FF9429007B0000007B000000DEDEDE0094949400313131009494
      9400FFFFFF0094FFFF00FFFFFF0094FFFF000000000000000000CE632900CE63
      2900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400DEDEDE008484
      840094FFFF00FFFFFF0094FFFF00DEDEDE0094FFFF0000000000313131000000
      000094FFFF00FFFFFF0094FFFF00FFFFFF00000000000000000094FFFF0094FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400DEDEDE008484
      8400FFFFFF0094FFFF00FFFFFF0094FFFF00DEDEDE0094949400313131007B00
      00007B00000094FFFF00FFFFFF0094FFFF000000000000000000FFFFFF0094FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400DEDEDE008484
      8400FFFFFF00FFFFFF0094FFFF00DEDEDE007B0000007B000000313131000000
      000094FFFF00FF000000FF000000FF94290000000000000000002994CE002994
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400DEDEDE008484
      8400FFFFFF00FF942900FF000000FF000000DEDEDE0094949400313131009494
      9400FFFFFF0094FFFF00FFFFFF0094FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400DEDEDE008484
      8400FFFFFF00FFFFFF00FFFFFF00DEDEDE00FFFFFF0000000000313131007B00
      00007B000000FFFFFF0094FFFF00FFFFFF000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400DEDEDE008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF000000313131009494
      9400FFFFFF00FF632900FF632900FF9429000000000000000000000094000000
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400DEDEDE008484
      8400FFFFFF00FF942900FF942900FF632900FFFFFF0094949400313131000000
      0000FFFFFF00FFFFFF0094FFFF00FFFFFF0000000000000000002900FF002900
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400DEDEDE008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000313131000000
      0000FFFFFF00FFFFFF00FFFFFF0094FFFF0000000000000000006363FF002900
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400000000008484
      840084848400FFFFFF00FFFFFF00FFFFFF000000000000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700F7F7F700D6D6D600E7E7E700F7F7
      F700DEDEDE00DEDEDE00EFEFEF00F7F7F700D6D6D600E7E7E700F7F7FF003131
      21005A5A1000BDBDB500FFFFFF00D6D6D600E7E7E700FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00EFEFEF00D6D6D600F7F7F700E7E7E700DEDE
      DE00DEDEDE00F7F7F700E7E7E700D6D6D600F7F7F700E7E7E700D6D6DE004A4A
      1000FFFF00005252000094949C0000000000E7E7E700DEDEDE00E7E7E700FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6D6D600E7E7E700E7E7E700E7E7E700DEDEDE00E7E7
      E700F7F7F700D6D6D600EFEFEF00EFEFEF00E7E7E700DEDEDE00DEDEE7004A4A
      1000FFFF0000949400003939000084848C00F7F7F700E7E7E700EFEFEF00D6D6
      D600000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000FFFF000000FF000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE000000000000000000EFEFEF00EFEFEF00DEDEDE00D6D6D600F7F7F700DEDE
      DE00D6D6D600EFEFEF00EFEFEF00DEDEDE00DEDEDE00F7F7F700D6D6DE004A4A
      1000FFFF0000949400008484000042420800A5A5AD00E7E7E700DEDEDE00F7F7
      F700000000007B7B7B0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
      00000000FF0000FFFF000000FF000000FF000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00FFFFFF00FFFF
      FF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFF
      FF0094FFFF00CECECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00CECE
      CE000000000000000000525252004A4A4A004A4A4A00393939004A4A4A005252
      5200424242004242420039393900EFEFEF00EFEFEF00D6D6D600DEDEEF005252
      1000FFFF0000949400007B7B0000848400004242000031313100393939005252
      5200000000007B7B7B00FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      FF0000FFFF000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00FFFFFF0094FF
      FF00CE290000CE290000CE290000CE290000CE290000CE290000CE290000CE29
      0000FFFFFF00CECECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF00CECE
      CE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4A00DEDEDE00E7E7E700F7F7F700EFEFF7004A4A
      1000FFFF0000949400007B7B00008C8C0000393900005A5A6300E7E7E7000000
      0000000000007B7B7B0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF0000000000000000007B7B7B007B7B00007B7B00007B7B00007B7B00000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFF
      FF0094FFFF00CECECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00CECE
      CE00000000000000000000000000000000000000000000000000000000000000
      0000E7E7E700F7F7F70042424200393939003131310029292900393939003939
      0000FFFF0000949400007B7B00008C8C0000393900005A5A6300DEDEDE000000
      0000000000007B7B7B00FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000000000007B7B7B00FFFF0000FFFF0000FFFF00007B7B00007B7B00007B7B
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00CECECE00CECECE00CECECE00CECECE00CECECE007B7B7B00FFFFFF0094FF
      FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FFFFFF00CECECE0000000000000000000000000000000000000000000000
      0000632900000000000000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF00CECE
      CE00000000000000000000000000000000000000000000000000000000000000
      00002929290094949C0042423900737373007B7B7B007B7B7B006B6B7B004242
      0800FFFF0000949400007B7B00008C8C0000393900005A5A6300DEDEDE000000
      0000000000007B7B7B0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF007B7B7B0000000000000000000000000000000000FFFF00007B7B00007B7B
      00007B7B00000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF0094FFFF00FFFFFF0094FFFF007B7B7B00FFFFFF00FFFF
      FF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFF
      FF0094FFFF00CECECE0000000000000000000000000000000000000000000000
      0000942900006329000000000000000000007B7B7B00CECECE00CECECE00CECE
      CE007B7B7B00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF00CECECE00CECE
      CE00000000000000000000000000000000000000000000000000000000000000
      0000313121003939080010101800848484007B7B7B007B7B7B0073737B004242
      0800FFFF0000949400006B6B000084840000393900005A5A6300DEDEDE000000
      0000000000007B7B7B00FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      00007B7B7B0000000000FFFFFF00000000000000000000000000FFFF00007B7B
      00007B7B00000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF0094FFFF009429000094290000942900007B7B7B00FFFFFF0094FF
      FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FFFFFF00CECECE0000000000000000000000000000000000632900006329
      0000CE290000CE29000063290000000000007B7B7B00FFFFFF0094FFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00000000000000
      000000000000000000000000000000000000FFFFFF00E7E7E700EFEFEF00EFEF
      EF004242290094940000313100005A5A6300848484007B7B7B0073737B004242
      0800FFFF0000636308001010100073730000424200005A5A6300DEDEDE000000
      0000000000007B7B7B00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF
      FF007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
      00007B7B00000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF00FFFFFF0094FFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFF
      FF0094FFFF00CECECE0000000000000000000000000063290000000000000000
      0000CE2900006329000000000000000000007B7B7B00FFFFFF00FFFFFF0094FF
      FF007B7B7B00FFFFFF00FFFFFF00FFFFFF0094FFFF007B7B7B00FFFFFF000000
      0000000000000000000000000000FFFFFF00C6C6CE00ADADB500ADADB500B5B5
      BD0039391800F7F700009C9C0000313100005A5A630084848C0073737B004242
      0800FFFF00005252310063637B0063630000424200005A5A6300DEDEDE000000
      0000000000007B7B7B0000000000FFFFFF00FFFFFF0000000000FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
      00007B7B7B000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF009429000094290000942900007B7B7B00FFFFFF00FFFF
      FF00FF632900FF632900FF632900FF632900FF632900FF632900FF632900FF63
      2900FFFFFF00CECECE0000000000000000000000000094290000000000000000
      0000632900000000000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00000000000000
      00000000000000000000EFEFEF00525242002121000021210000212100002121
      000039390000FFFF0000FFFF00009C9C0000313100005A5A63007B7B84004242
      0800FFFF000084840000292908007B7B0000424200005A5A6300DEDEDE000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00000000007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00000000007B7B
      7B00000000000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF0094FFFF00FFFFFF00FFFFFF0094FFFF007B7B7B00FFFFFF00FFFF
      FF00FFFFFF0094FFFF00FFFFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00CECE
      CE00CECECE00CECECE0000000000000000000000000094290000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF00FFFFFF0094FF
      FF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00000000000000
      00000000000000000000A5A5B50073730000DEDE0000DEDE0800DEDE0800DEDE
      0800DEDE0800FFFF0800FFFF0000F7F700009C9C000039390000525263004A4A
      0800FFFF000094940000848400008C8C0000393900005A5A6300DEDEDE000000
      0000000000007B7B7B00FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF00000000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF009429000094290000942900007B7B7B00FFFFFF00FFFF
      FF00FF632900FF632900FF632900FF632900FFFFFF0094FFFF00000000000000
      0000000000000000000000000000000000000000000094290000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF0094FFFF00FFFF
      FF0094FFFF00FFFFFF00CECECE00CECECE000000000000000000000000000000
      00000000000000000000A5A5B5009C9C0000FFFF2900FFFFB500FFFFB500FFFF
      B500FFFFB500FFFFA500FFFFE700FFFF7300EFEF00004242000042425A004A4A
      1000FFFF0000949400007B7B00008C8C0000393900005A5A6300DEDEDE000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00000000007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094FFFF00FFFFFF007B7B7B00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000942900000000
      0000000000000000000000000000000000000000CE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007B7B7B0000000000000000000000000000000000000000000000
      00000000000000000000DEDEE7006B6B29006363000063630000636300006363
      00007B7B0000FFFF3900FFFF7B00EFEF00004A4A00004A4A5A007B7B84004242
      0800FFFF0000949400007B7B00008C8C0000393900005A5A6300DEDEDE000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF009429000094290000942900007B7B7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFF
      FF00000000000000000000000000000000000000000000000000000000009429
      000000000000000000000000CE00000000000000CE00FFFFFF000000CE00FFFF
      FF0094FFFF007B7B7B00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000E7E7F700CECEDE00CECEDE00CECEDE00CECE
      DE0031312100FFFF1800F7F700004A4A00004A4A5A008C8C8C0073737B004242
      0800FFFF0000949400007B7B00008C8C0000393900005A5A6300DEDEDE000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000CE000000CE000000CE00FFFFFF00FFFF
      FF00FFFFFF007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000052522900EFEF00004A4A00004A4A5A008C8C8C007B7B7B0073737B004242
      0000FFFF00008C8C00007B7B00008C8C0000393900005A5A6300DEDEDE000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00000000007B7B7B00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF009429000094290000942900007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000CE000000CE000000CE00000000000000CE000000CE000000
      CE007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000313118005252000008081000848484007B7B7B007B7B7B00848484005252
      5A008C8C0000F7F700007B7B000084840000393900005A5A6300DEDEDE000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF007B7B7B00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094FFFF00FFFFFF00FFFFFF0094FF
      FF007B7B7B00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000CE000000CE000000CE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00ADADB50052525200737373007B7B7B007B7B7B007B7B7B008484
      8C004A4A5A009C9C0000EFEF000084840000393900005A5A6300DEDEDE000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094FFFF00FFFF
      FF007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000CE00000000000000CE00000000000000CE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000424242007B7B7B008484840084848400848484008484
      84008C8C9400525263009C9C0800F7F700004A4A000052525A00DEDEDE000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000CE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000031313100393939003939390039393900393939003939
      39003939390042424A00080810007B7B00004A4A00007B7B8C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CECECE00B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500ADADBD00ADADBD00F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00A5A5A5004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A0052525200E7E7E700000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001818180018181800181818001818180018181800181818001818
      1800181818001818180018181800181818000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEF009C9C9C009CA5
      9C00849484009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00A5A5
      A5008C8C8C0052525200DEDEDE000000000000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE000000000000000000000000000063630094FFFF0000CEFF0000CEFF000094
      CE0000CEFF000094CE000094CE000094CE000094CE000094CE000094CE006394
      94000094CE00639494000094CE00639494000094CE0063949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400CECECE00C6C6C600CECECE00C6C6C600CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEF00C6BDC600C6EF
      C60052BD5200BDBDBD00C6C6C600C6C6C600D6D6D600EFEFEF00EFEFEF00EFEF
      EF00CECECE006B6B6B005A5A5A000000000000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000CECE
      CE000000000000000000000000000063630094FFFF0000CEFF0000CEFF0000CE
      FF000094CE0000CEFF000094CE000094CE000094CE000094CE000094CE000094
      CE00639494000094CE00639494000094CE00639494000094CE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FF
      FF00FFFFFF0094FFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEF00BDBDBD00E7E7
      E700EFE7EF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700D6D6D6007B7B7B004A4A4A000000000000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00CECE
      CE000000000000000000000000000063630094FFFF0000CEFF0000CEFF0000CE
      FF0000CEFF000094CE0000CEFF000094CE0000CEFF000094CE000094CE006394
      94000094CE00639494000094CE00639494000094CE0063949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFF
      FF0094FFFF00FFFFFF0094FFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E7005252
      5200424242004242420042424200424242004242420042424200424242003939
      39006B6B6B009C9C9C00525252000000000000000000FFFFFF00296363006394
      94006394940063949400006363000063630000636300006363007B7B7B00FFFF
      FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000CECE
      CE000000000000000000000000000063630094FFFF00CEFFFF0000CEFF0000CE
      FF0000CEFF0000CEFF0000CEFF0000CEFF00FF00000000CEFF0000CEFF000094
      CE000094CE000094CE00639494000094CE00639494000094CE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FF
      FF00FFFFFF0094FFFF00FFFFFF0000000000000000000000000000000000C6C6
      C600393939004A424A004242420042424200424242004A4A4A009C9C9C008484
      8400737373007373730073737300737373007373730073737300737373007373
      7300424242007B7B7B00DEDEDE000000000000000000FFFFFF00296363006394
      94006394940063949400639494006394940000636300006363007B7B7B00FFFF
      FF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF00CECECE00CECE
      CE000000000000000000000000000063630094FFFF0000CEFF00CEFFFF0000CE
      FF0000CEFF0000CEFF00FF00000000CEFF00FF00000000CEFF00FF0000000094
      CE0000CEFF00639494000094CE00639494000094CE0063949400000000000000
      000000000000000000000000000000000000000000000000000000000000FF63
      2900FF632900FF63290000000000FFFFFF0094FFFF00FFFFFF0094FFFF00FFFF
      FF0094FFFF00FFFFFF0094FFFF0000000000000000000000000000000000ADAD
      AD00B5BDB50084AD84009CA59C00ADADAD00ADADAD00A5A5A500ADADAD00DEDE
      E700DEDEEF00DEDEEF00DEDEEF00DEDEEF00DEDEEF00DEDEE700E7E7E700EFEF
      EF007B7B7B006B6B6B00000000000000000000000000FFFFFF002963630094CE
      CE006394940063949400639494000063630063949400006363007B7B7B00FFFF
      FF00FF000000FF000000FF00000094FFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000063630094FFFF00FFFFFF0000CEFF00CEFF
      FF0000CEFF0000CEFF0000CEFF00FF000000FF000000FF00000000CEFF0000CE
      FF000094CE000094CE000094CE000094CE00639494000094CE00000000000000
      000000000000FF632900FF942900FF9429000000000000000000000000000000
      0000FF942900FF942900FF63290000000000FFFFFF0094FFFF00FFFFFF0094FF
      FF00FFFFFF0094FFFF00FFFFFF0000000000000000000000000000000000BDB5
      BD00E7EFE70063CE6300ADBDAD00CECECE00CECECE00CECECE00BDBDC6006B6B
      5200BDBD4200BDBD4A00C6C64A00CECE4A00C6C64A00BDBDAD00A5A5B500DEDE
      DE009C9C9C0039393900CECECE000000000000000000FFFFFF002963630094CE
      CE0094CECE0063949400639494006394940063949400006363007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094FFFF007B7B7B00FFFFFF000000
      00000000000000000000000000000063630094FFFF0000CEFF00FFFFFF0000CE
      FF00CEFFFF00FF000000FF000000FF00000000CEFF00FF000000FF000000FF00
      000000CEFF000094CE0000CEFF00639494000094CE0063949400000000000000
      000000000000FF632900FFCE2900FF94290000000000FF942900FF942900FF94
      290000000000FF942900FF63290000000000FFFFFF00FFFFFF0094FFFF00FFFF
      FF0094FFFF00FFFFFF0094FFFF0000000000000000000000000000000000BDC6
      BD00DEDEDE00E7DEE700E7DEE700DEDEDE00DEDEDE00CECECE00B5B5C6007373
      2900FFFF0000FFFF1000FFFF0800B5AD1800EFE74A00FFFF5200C6C65A00D6D6
      E7009C9C9C0039393900C6C6C6000000000000000000FFFFFF002963630094CE
      CE0094CECE0094CECE00639494006394940063949400639494007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00000000000000
      00000000000000000000000000000063630094FFFF00FFFFFF0000CEFF00FFFF
      FF0000CEFF00CEFFFF0000CEFF00FF000000FF000000FF00000000CEFF0000CE
      FF000094CE0000CEFF000094CE000094CE000094CE000094CE00000000000000
      000000000000FF632900FFCE2900FF94290000000000FF942900FFCE2900FFCE
      290000000000FF942900FFCE2900000000000000000000000000FFFFFF0094FF
      FF00FFFFFF0094FFFF00FFFFFF0000000000000000000000000000000000F7F7
      F7006B6B6B003131310031313100313131003131310031313100ADADB5007373
      4A00FFFFC600F7FF9400ADA55200184A5A00426B4A00E7E70800C6C63900D6D6
      EF009C9C9C0039393900C6C6C6000000000000000000FFFFFF0029636300CEFF
      FF0094CECE0094CECE0094CECE006394940063949400639494007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00000000000000
      00000000000000000000000000000063630094FFFF0000CEFF00FFFFFF0000CE
      FF00FFFFFF0000CEFF00FF00000000CEFF00FF00000000CEFF00FF00000000CE
      FF0000CEFF000094CE0000CEFF000094CE000094CE000094CE00000000000000
      000000000000FF632900FFFF9400FF94290000000000FF632900FF632900FF63
      2900FFCE2900FFCE2900FFFF940000000000FFFFFF00FFFFFF0094FFFF00FFFF
      FF0094FFFF00FFFFFF0094FFFF0000000000000000000000000000000000A5A5
      A500949494008C8C8C008C8C8C008C8C8C008C8C8C0084848400B5B5B5007373
      5A00FFFF8C00AD8429007B39000031104200004210009C942100CECE4200D6D6
      EF009C9C9C0039393900C6C6C6000000000000000000FFFFFF0029636300CEFF
      FF0094CECE0094CECE006394940094CECE006394940063949400639494006394
      9400639494000063630000636300006363000063630000000000000000000000
      00000000000000000000000000000063630094FFFF00FFFFFF0000CEFF00FFFF
      FF0000CEFF00FFFFFF0000CEFF0094FFFF00FF00000000CEFF0000CEFF0000CE
      FF000094CE0000CEFF000094CE0000CEFF000094CE000094CE00000000000000
      00000000000000000000FF632900FF6329000000000000000000FF632900FFFF
      9400FFFF9400FFFF9400FF632900FFFFFF00FFFFFF0094FFFF00FFFFFF0094FF
      FF00FFFFFF0094FFFF00FFFFFF0000000000000000000000000000000000B5B5
      B500EFEFEF00E7E7E700DEDEEF00E7E7EF00E7E7EF00CECED600B5B5BD007373
      4200FFFF2900EFCE6B005A428400293121008C844A00FFFF0800CECEAD00D6D6
      DE009C9C9C0039393900C6C6C6000000000000000000FFFFFF0029636300CEFF
      FF00CEFFFF0094CECE0094CECE006394940094CECE0063949400639494006394
      9400006363006394940000636300006363000063630000000000000000000000
      00000000000000000000000000000063630094FFFF0000CEFF00FFFFFF0000CE
      FF00FFFFFF0000CEFF00FFFFFF0000CEFF00CEFFFF0000CEFF0000CEFF0000CE
      FF0000CEFF0000CEFF0000CEFF000094CE0000CEFF000094CE00000000000000
      000000000000000000000000000000000000000000000000000000000000FF63
      2900FF632900FF632900FFFFFF00FFFFFF00FFFFFF00FFFFFF0094FFFF00FFFF
      FF0094FFFF00FFFFFF0094FFFF0000000000000000000000000000000000C6C6
      C6008C8C8C006B6B3100848439007B7B39007B7B390073733100B5B5B5006363
      4200EFE7B500EFEFEF009CA52100EFEF2100F7F77300EFEF8C00B5B5BD00D6D6
      D6009C9C9C0039393900C6C6C6000000000000000000FFFFFF0029636300CEFF
      FF00CEFFFF00CEFFFF0094CECE0094CECE0094CECE0094CECE00639494006394
      9400639494006394940063949400006363000063630000000000000000000000
      00000000000000000000000000000063630094FFFF0094FFFF0094FFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0094FFFF00FFFFFF0000000000080808000000000000000000C6C6
      C6006B6B63005A5A0000848400007B7B00007B7B000073730000BDBDBD008484
      940073737B007373730084845A0073736B007373630073737B0094949400EFEF
      EF008C8C8C0042424200DEDEDE000000000000000000FFFFFF0029636300FFFF
      FF00CEFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000639494000063630000000000000000000000
      0000000000000000000000000000006363000063630000636300006363000063
      6300006363000063630000636300006363000063630000636300006363000063
      6300006363000063630000636300006363000063630000636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0094FFFF00FFFFFF00FFFFFF0000000000000000000000000000000000C6C6
      C60073736B0063630000848400007B7B00007B7B00007B7B08008C8C7B00ADAD
      9C00B5B5BD00B5B5B500A5A5AD00ADADB500BDBDC600BDBDBD00BDBDBD00B5B5
      B5006B6B6B00D6D6D6000000000000000000000000000000000029636300FFFF
      FF00CEFFFF000094CE000094CE000094CE000094CE000094CE000094CE000094
      CE000094CE000063940000000000639494006394940000000000000000000000
      00000000000000000000000000000000000000636300EFF7FF000094CE0094CE
      CE000094CE0094CECE000094CE0094CECE000094CE0000949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CECECE00000000000000000000000000C6C6
      C60073736B00636300007B7B00007B7B00007B7B0000848400007B7B00007373
      0800CECECE00B5B5B5004A4A4A0084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000029636300FFFF
      FF00FFFFFF00FFFFFF000094CE0094FFFF0029CEFF00006363000063630094FF
      FF00006394000000000063949400639494006394940000000000000000000000
      0000000000000000000000000000000000000000000000636300EFF7FF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094CECE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      840084848400848484008484840084848400000000000000000000000000C6C6
      C6006B6B63008C8C1800C6C618007B7B00008484000084840000848400007B7B
      1000CECED600BDBDBD004A4A4A008C8C8C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002963
      63002963630029636300296363000094CE00FFFFFF0094FFFF0094FFFF000063
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000006363000063
      6300006363000063630000636300006363000063630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60063635A00525208008C8C0800636300006363000063630000636300005A5A
      0000CECED600BDBDBD004A4A4A00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000094CE000094CE000094CE000094CE000094
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00ADADAD006B6B63006B6B630073736B0073736B0073736B0073736B007B7B
      7B00E7E7E700ADADAD0042424200BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500BDBDBD00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600BDBDBD007B7B7B00B5B5B500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE000000000000000000000000000000
      00007B7B7B00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE000000000000000000000000000000000000000000000000007B7B7B0094FF
      FF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FF
      FF00FFFFFF0094FFFF00FFFFFF0094FFFF00CECECE0000000000000000000000
      00000000000000000000000000007B7B7B00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CECECE000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FF
      FF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF00CECE
      CE000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF009429000094290000FFFFFF009429000094290000942900009429
      0000942900009429000094290000FFFFFF00CECECE0000000000000000000000
      00000000000000000000000000007B7B7B00FFFFFF00FFFFFF00942900009429
      000094290000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00942900009429
      000094290000FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CECECE000000000000000000000000000000
      00007B7B7B00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFF
      FF0000942900FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00CECE
      CE000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FF
      FF00FFFFFF0094FFFF00FFFFFF0094FFFF00CECECE0000000000000000000000
      00000000000000000000000000007B7B7B00FFFFFF00FFFFFF00FF632900FFFF
      FF0094290000FFFFFF00000000000000000000000000FFFFFF00FF632900FFFF
      FF0094290000FFFFFF00000000000000000000000000CECECE00000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00639494000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CECECE000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF000094
      290000942900FFFFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF00CECE
      CE000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF0094FFFF00FF000000FF000000FFFFFF00FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FFFFFF00CECECE0000000000000000000000
      00000000000000000000000000007B7B7B00FFFFFF00FFFFFF00FF632900FF63
      2900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF632900FF63
      2900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
      0000FF000000FF000000FF000000FF00000063949400FFFFFF0094CECE000000
      000094CECE00FFFFFF00FFFFFF00CECECE000000000000000000000000000000
      00007B7B7B00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF00009429000094
      2900009429000094290000942900FFFFFF0094FFFF00FFFFFF0094FFFF00CECE
      CE000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FF
      FF00FFFFFF0094FFFF00FFFFFF0094FFFF00CECECE0000000000000000000000
      00000000000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0063949400FFFFFF0094CECE000000
      000000000000FFFFFF00FFFFFF00CECECE000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF000094
      290000942900FFFFFF006394000063630000FFFFFF0094FFFF00FFFFFF00CECE
      CE000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FF000000FF000000FFFFFF00FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FFFFFF00CECECE0000000000000000000000
      00000000000000000000000000007B7B7B00FFFFFF00FFFFFF00942900009429
      000094290000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00942900009429
      000094290000FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
      0000FF000000FF000000FF000000FF0000006394940094CECE00636394000063
      94000000000094CECE00FFFFFF00CECECE000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFF
      FF0000942900FFFFFF00FFFFFF006363000094FFFF00FFFFFF0094FFFF00CECE
      CE000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF0094FFFF00FFFFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FF
      FF00FFFFFF0094FFFF00FFFFFF0094FFFF00CECECE0000000000000000000000
      00000000000000000000000000007B7B7B00FFFFFF00FFFFFF00FF632900FFFF
      FF0094290000FFFFFF00000000000000000000000000FFFFFF00FF632900FFFF
      FF0094290000FFFFFF00000000000000000000000000CECECE00000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094CECE000063940000FFFF000094
      CE000063940000000000FFFFFF00CECECE000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094FFFF00FFFFFF0094FF
      FF00FFFFFF0094FFFF00FFFFFF0063630000FFFFFF0094FFFF00FFFFFF00CECE
      CE000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FF632900FF632900FFFFFF00FF632900FF632900FF632900FF63
      2900FF632900FF632900FF632900FFFFFF00CECECE0000000000000000000000
      00000000000000000000000000007B7B7B00FFFFFF00FFFFFF00FF632900FF63
      2900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF632900FF63
      2900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF0000000063940094FFFF0000CE
      FF000094CE000000000094CECE00CECECE000000000000000000000000000000
      00007B7B7B00FFFFFF0094FFFF00FFFFFF0094FFFF006363000094FFFF00FFFF
      FF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00CECE
      CE000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FF
      FF00FFFFFF0094FFFF00FFFFFF0094FFFF00CECECE0000000000000000000000
      00000000000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094CECE000063940000FF
      FF0000CEFF000063940000000000CECECE000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF0094FFFF00FFFFFF0063630000FFFFFF00FFFF
      FF0000942900FFFFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF00CECE
      CE000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF0094CECE0094CECE0094FFFF00FFFFFF0094FFFF0094CE
      CE000000000094CECE0094FFFF00FFFFFF00CECECE0000000000000000000000
      00000000000000000000000000007B7B7B00FFFFFF00FFFFFF00942900009429
      000094290000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00942900009429
      000094290000FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FF000000FF000000FF000000FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000063940094FF
      FF0000FFFF000094CE000000000094CECE000000000000000000000000000000
      00007B7B7B00FFFFFF0094FFFF00FFFFFF0094FFFF006363000063940000FFFF
      FF000094290000942900FFFFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00CECE
      CE000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00002900000029000094CECE00FFFFFF0094CECE000029
      000094CECE000000000094CECE0094FFFF00CECECE0000000000000000000000
      00000000000000000000000000007B7B7B00FFFFFF00FFFFFF00FF632900FFFF
      FF0094290000FFFFFF00000000000000000000000000FFFFFF00FF632900FFFF
      FF0094290000FFFFFF00000000000000000000000000CECECE00000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094CECE000063
      940000FFFF0000CEFF0000639400000000000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF0094FFFF00FFFFFF00FFFFFF00009429000094
      290000942900009429000094290094FFFF00FFFFFF0094FFFF00FFFFFF00CECE
      CE000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF0063949400CEFFFF000029000094CECE000029000094CE
      CE002963630094CECE0000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B00FFFFFF00FFFFFF00FF632900FF63
      2900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF632900FF63
      2900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000063
      940094FFFF0000FFFF000094CE00000000000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000094290000942900FFFFFF00FFFFFF0094FFFF00CECECE00CECECE00CECE
      CE000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0063949400CEFFFF000029000094CECE002963
      630094CECE002963630063949400639494006394940000000000FF632900FF63
      29000000000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00000000000000
      0000000000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00000063940000FFFF0000CEFF00006394000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094FF
      FF0000942900FFFFFF00FFFFFF0094FFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B0063949400CEFFFF000029000094CE
      CE002963630094CECE0094CECE0094CECE006394940063949400FF942900FF94
      29000000000000000000000000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B000000000000000000
      000000000000FF000000FF942900FF632900FF632900FF632900FF632900FF63
      2900FF632900FF632900FF632900FF632900FF632900FF632900FF632900FF63
      29000063940094FFFF0063949400007B00000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0094FFFF00FFFFFF0094FFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063949400CEFFFF000029
      0000CEFFFF00CEFFFF0094CECE0094CECE0094CECE0094CECE00FFCE2900FFCE
      2900000000000000000000000000FF000000FF942900FF632900FF632900FF63
      2900FF632900FF632900FF632900FF632900FF632900FF632900FF632900FF63
      2900FF632900FF632900FF632900FF632900FF632900FF632900000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000063940000FF000063CE94000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0094FFFF00FFFFFF00FFFFFF007B7B7B00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000063949400FFFF
      FF00FFFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF0063949400FFFF9400FFFF
      9400000000000000000000000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000006394000000940000007B000000CE0000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006394
      9400639494006394940063949400639494006394940000000000FF632900FF63
      2900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000094006300FF006300FF0000000000000000000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000094000000940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000058000000580000000100010000000000200400000000000000000000
      000000000000000000000000FFFFFF00FFFFFC000000000000000000FFFFFC00
      000000000000000080000C000000000000000000BF8FEC000000000000000000
      80002C00000000000000000080D8040000000000000000008F07840000000000
      0000000080108400000000000000000080008400000000000000000080508400
      0000000000000000800084000000000000000000801084000000000000000000
      8000B40000000000000000008040940000000000000000008000840000000000
      0000000080108400000000000000000080508400000000000000000080208400
      0000000000000000E0F83C000000000000000000FFFFFC000000000000000000
      FFFFFC000000000000000000FFFFFC000000000000000000FFFFFE00003FFFFF
      FFFFFF00FFFFFC000108000CFF800100FFF00400000BFFE87F800100FFF00400
      000AAAA07F800100FFF0040000095600FF800100FFF007FC001AAC01E0000100
      FFF007F000195803E0000100F70007F0001AA783E0000100F30007F0001955C3
      E0000100C10007000018A463E0000100B3000E00001A5463E0000100B7001C00
      00182A27E0000100BF003C00001955EFE0000100BF007C0000180A0FE0000300
      DF007C00001822EFE0000700ED00FE000018040FE0000F00FE01FFF000180A1F
      E0001F00F883FFF00018043FE000FF00FE3FFFF00018007FE001FF00FD5FFFFC
      001800FFE003FF00FF7FFFFC003FFFFFE007FF00FFFFFFFC003FFFFFFFFFFF00
      FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF800300BFC00600001FF000
      7F800100BFC00600001FF0007F800100BFC00600001FF0017F800100A0000600
      001FF0017000010080000600001FE0016000010080000600001CC00160000300
      80000600001800016000010080000E00001800016000010080001E0000180001
      6000010080003E00001800016000010080003E00001CC0016000010080003E00
      001FE0016000010080003E00001FF0016000010080003E00001FF00160000300
      C0003F001FFFF00060000700C0003F803FFFF0006000FF00E0007FC07FFFFFFF
      E000FF00FE07FFFFFFFFFFFFE000FF00FFFFFFFFFFFFFFFFE001FF00FFFFFFFF
      FFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00C0003FFFFFF8000070000700
      C0003E000018000070000700C0003E000018000070000700C0003E0000180000
      70000700C0003E000018000070000700C0003E000018000070000700C0003E00
      0018000070000700C0003E000018000070000700C0003E000018000070000700
      C0003E000018000070000700C0003E000018000070000700C0003E0000180000
      70000700C0003E000018000070000700C0000E000018000070000700C0000E00
      0018000070000700C0000E000018000070000F00FF800E000018000030001F00
      FFC00E00001FFFF830003F00FFE04FFFFFFFFFFC30007F00FFFFFFFFFFFFFFFE
      7FFFFF00FFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
      000000000000}
  end
  object sp_cybrlb: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zdybb_brsftj_kxlb'
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
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@sfxz'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@mzzy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@mxhz'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end>
    Left = 648
    Top = 168
  end
  object sp_brzlxx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zdybb_brxxcx'
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
        Name = '@sjbh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
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
        Name = '@lb'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 32
    Top = 600
  end
  object ds_cybrlb: TDataSource
    DataSet = sp_cybrlb
    Left = 680
    Top = 168
  end
  object qrybbl: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 616
    Top = 168
  end
  object sp_mzbrlb: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zdybb_brsftj_kxlb'
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
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@sfxz'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@mzzy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@mxhz'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end>
    Left = 448
    Top = 160
  end
  object ds_mzbrlb: TDataSource
    DataSet = sp_mzbrlb
    Left = 480
    Top = 160
  end
  object ds_brjbxx: TDataSource
    DataSet = sp_brzlxx
    Left = 64
    Top = 600
  end
  object dy: TPrintDBGridEh
    Options = []
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Tahoma'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Tahoma'
    PageHeader.Font.Style = []
    Units = MM
    Left = 952
    Top = 104
  end
  object dlgSave1: TSaveDialog
    FilterIndex = 5
    Left = 920
    Top = 104
  end
  object sp_yz: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zdybb_zybrfymx'
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
    Left = 384
    Top = 232
  end
  object ds_yz: TDataSource
    DataSet = sp_yz
    Left = 416
    Top = 232
  end
  object pm1: TPopupMenu
    Left = 608
    Top = 304
    object N1: TMenuItem
      Caption = #35813#30149#20154#22788#26041'/'#21307#22065#26126#32454
      OnClick = dbgrdh_cybrlbDblClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
  end
  object qry_ks_br: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 120
    Top = 192
  end
  object ds_ks_br: TDataSource
    DataSet = qry_ks_br
    Left = 120
    Top = 224
  end
  object ds_ch: TDataSource
    DataSet = sp_ch
    Left = 240
    Top = 192
  end
  object sp_ch: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'brcwxx'
    Parameters = <
      item
        Name = '@ksdm'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 208
    Top = 192
  end
end
