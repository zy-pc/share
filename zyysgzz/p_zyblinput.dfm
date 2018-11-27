object frm_zyblinput: Tfrm_zyblinput
  Left = 0
  Top = 0
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = #20303#38498#21307#22065#24405#20837
  ClientHeight = 1048
  ClientWidth = 1314
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  Menu = Main_Menu
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pan_brxx: TPanel
    Left = 0
    Top = 0
    Width = 165
    Height = 1048
    Align = alLeft
    BevelInner = bvLowered
    TabOrder = 1
    object Panel5: TPanel
      Left = 2
      Top = 2
      Width = 161
      Height = 57
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 0
      object bt_refresh: TSpeedButton
        Left = 8
        Top = 27
        Width = 149
        Height = 28
        Hint = #21047#26032'/'#26597#30475#26159#21542#26377#26032#30149#20154
        Caption = #21047#26032
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF903000903000903000BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF903000FF9000FF9000FF60006000
          00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF70707050
          5050505050505050505050505050505050505050505050903000FF9000FFFF00
          FF9000FF60006000005050505050504F4F4FBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBF707070CFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCF903000FF
          9000FFFF00FF9000FF6000600000808080909090909090505050BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBF707070EFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFF
          FF903000FF9000FFFF00FF9000FF6000600000808080CFCFCFD0E0E0CFCFCF50
          5050BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF707070EFFFFFEFFFFFEFFFFF
          EFFFFFEFFFFF903000FF9000FFFF00FF9000FF6000600000808080CFCFCFD0E0
          E0EFFFFFCFCFCF505050BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF707070D0
          E0E0D0E0E0D0E0E0D0E0E0903000FF9000FFFF00FF9000FF6000600000707070
          CFCFCFD0E0E0EFFFFFEFFFFFCFCFCF505050BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBF707070909090CFCFCFCFCFCF606060000000FFFF00FF9000FF600060
          0000808080CFCFCFD0E0E0EFFFFFEFFFFFEFFFFFCFCFCF505050BFBFBFBFBFBF
          BFBFBFBFBFBF7070701F1F1F1F1F1F1F1F1F1F1F1F606060EFFFFFAFB0AF0000
          00FF6000600000808080909090909090909090909090EFFFFFEFFFFFCFCFCF50
          5050BFBFBFBFBFBF707070707070FFCF90FFCF90FFCF90FFCF90FFCF90707070
          1F1F1FAFB0AF606060600000808080CFCFCFD0E0E0D0E0E0D0E0E0D0E0E0EFFF
          FFEFFFFFCFCFCF505050BFBFBF707070FFCF90FFFF90BFBFBFD0E0E0FFFFCFCF
          FFCFCFCFCFFFCF907070701F1F1F606060808080909090909090909090909090
          909090909090EFFFFFEFFFFFCFCFCF505050BFBFBF707070FFFF90CFFFCFBFBF
          BFD0E0E0FFFFCF909090909090FF6060FFCF907070701F1F1F909090D0E0E0D0
          E0E0D0E0E0D0E0E0D0E0E0D0E0E0EFFFFFEFFFFFCFCFCF505050707070FFCF90
          E0EFE0FFEFCFBFBFBFD0E0E0FFFFCFFFFF2FFFFF2FFFFF2FFFCF90FFCF901F1F
          1F909090909090909090909090909090909090909090EFFFFFEFFFFFCFCFCF50
          5050707070FFFFCFFFFFCFE0EFE0BFBFBFD0E0E0CFFFCF909090909090909090
          909090CFCFCF1F1F1F909090D0E0E0D0E0E0D0E0E0D0E0E0D0E0E0D0E0E0EFFF
          FFEFFFFFBFBFBF505050707070FFFFCFFFFFCFEFFFFFBFBFBFD0E0E0FFFFCFFF
          FF2FFFFF2FFFFF2FFFFF2FFFCF901F1F1F909090909090909090909090909090
          909090909090EFFFFFD0E0E0BFBFBF505050707070FFFFCFEFFFFFEFFFFFBFBF
          BFD0E0E0FFFFCF909090909090909090909090FFCF90707070909090D0E0E0D0
          E0E0D0E0E0D0E0E0D0E0E0D0E0E0D0E0E0BFBFBF909090505050707070FFFFCF
          E0EFE0EFFFFFBFBFBFD0E0E0CFFFCFFFFF2FFFFF2FFFFF2FFFFF2F8080807070
          70909090D0E0E0E0EFE0EFFFFFEFFFFFEFFFFFD0E0E0BFBFBF90909070707050
          5050808080FFCF90FFFFCFEFFFFFBFBFBFD0E0E0FFFFCFFFFFCFFFFFCFFFFFCF
          FFCF90707070909090909090909090909090EFFFFFEFFFFFD0E0E0BFBFBF9090
          90707070707070505050BFBFBF707070FFCF90FFFF90BFBFBFD0E0E0FFFFCF90
          9090909090FF6060707070707070D0E0E0D0E0E0D0E0E0E0EFE0EFFFFFEFFFFF
          4F4F4F4F4F4F2F302F2F302F2F302F2F302FBFBFBFBFBFBF707070707070FFCF
          90FFCF90FFCF90FFCF90FFCF90707070707070D0E0E0E0EFE0EFFFFFEFFFFFEF
          FFFFEFFFFFEFFFFF909090EFFFFFD0E0E0BFBFBF505050BFBFBFBFBFBFBFBFBF
          BFBFBF808080707070707070707070707070707070D0E0E0E0EFE0EFFFFFEFFF
          FFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFF909090D0E0E0BFBFBF505050BFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF808080D0E0E0D0E0E0EFFFFF
          EFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFF909090BFBFBF5050
          50BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF808080EF
          FFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFF
          909090505050BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBF80808080808080808080808080808080808080808080808080808080
          8080808080808080909090BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
        OnClick = bt_refreshClick
      end
      object rb_qk: TRadioButton
        Left = 58
        Top = 6
        Width = 49
        Height = 17
        Caption = #20840#31185
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rb_qkClick
      end
      object rb_qy: TRadioButton
        Left = 2
        Top = 6
        Width = 56
        Height = 17
        Caption = #20840#38498
        TabOrder = 1
        OnClick = rb_qyClick
      end
      object rb_br: TRadioButton
        Left = 108
        Top = 6
        Width = 48
        Height = 17
        Caption = #26412#20154
        TabOrder = 2
        OnClick = rb_brClick
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 59
      Width = 161
      Height = 987
      Align = alClient
      Caption = 'brsj'
      TabOrder = 1
      object wczbrgrid: TDBGridEh
        Left = 1
        Top = 29
        Width = 159
        Height = 957
        Align = alClient
        AllowedOperations = []
        AllowedSelections = []
        DataSource = ds_brxx
        Flat = True
        FooterColor = clYellow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        FooterRowCount = 1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = PopupMenubrxz
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        UseMultiTitle = True
        OnDblClick = wczbrgridDblClick
        OnDrawColumnCell = wczbrgridDrawColumnCell
        OnKeyPress = wczbrgridKeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'bch'
            Footers = <>
            Title.Caption = #24202#21495
            Title.Color = clActiveCaption
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -15
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
          end
          item
            EditButtons = <>
            FieldName = 'brxm'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = #22995#21517
            Title.Color = clActiveCaption
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -15
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'tmh'
            Footers = <>
            Title.Caption = #30149#21592#21345#21495
            Title.Color = clActiveCaption
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -15
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
          end>
      end
      object Panel18: TPanel
        Left = 1
        Top = 1
        Width = 159
        Height = 28
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label17: TLabel
          Left = 5
          Top = 7
          Width = 38
          Height = 15
          Caption = #21345#21495':'
        end
        object edit_tmh: TEdit
          Left = 40
          Top = 1
          Width = 116
          Height = 21
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnEnter = edit_tmhEnter
          OnExit = edit_tmhExit
          OnKeyDown = edit_tmhKeyDown
        end
      end
    end
  end
  object pan_cz: TPanel
    Left = 165
    Top = 0
    Width = 1149
    Height = 1048
    Align = alClient
    TabOrder = 0
    object panel_brxx: TPanel
      Left = 1
      Top = 1
      Width = 1147
      Height = 53
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 0
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
        Left = 801
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
        Left = 164
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
        Left = 330
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
        Left = 489
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
        Left = 644
        Top = 31
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
        Left = 801
        Top = 31
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
        Top = 7
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
      object Label3: TLabel
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
        Top = 28
        Width = 87
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
        TabOrder = 0
      end
      object DBEdit10: TDBEdit
        Left = 234
        Top = 28
        Width = 87
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
        TabOrder = 1
      end
      object DBEdit11: TDBEdit
        Left = 399
        Top = 4
        Width = 83
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
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit12: TDBEdit
        Left = 399
        Top = 28
        Width = 83
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
        TabOrder = 3
      end
      object DBEdit13: TDBEdit
        Left = 557
        Top = 28
        Width = 81
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
        TabOrder = 4
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
      object DBEdit15: TDBEdit
        Left = 853
        Top = 3
        Width = 96
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
        TabOrder = 6
      end
      object DBEdit16: TDBEdit
        Left = 853
        Top = 30
        Width = 96
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
        TabOrder = 7
      end
      object DBEdit17: TDBEdit
        Left = 696
        Top = 28
        Width = 96
        Height = 21
        Color = clMoneyGreen
        Ctl3D = False
        DataField = 'syyj'
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
      object DBEdit20: TDBEdit
        Left = 696
        Top = 3
        Width = 96
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
        TabOrder = 9
      end
      object e_yzys: TEdit
        Left = 234
        Top = 4
        Width = 87
        Height = 21
        Color = clCream
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 10
      end
      object dbedt_tmh: TDBEdit
        Left = 72
        Top = 4
        Width = 89
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
        TabOrder = 11
      end
    end
    object zz: TcxPageControl
      Left = 1
      Top = 54
      Width = 1147
      Height = 993
      ActivePage = tab_yz
      Align = alClient
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      ParentFont = False
      Style = 2
      TabOrder = 1
      ClientRectBottom = 993
      ClientRectRight = 1147
      ClientRectTop = 23
      object Tab_bl: TcxTabSheet
        Caption = #20303#38498#30149#21382'(F2)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ImageIndex = 0
        ParentFont = False
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 107
          Height = 970
          Align = alLeft
          BevelInner = bvLowered
          Ctl3D = True
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          object treeviewzp: TTreeView
            Left = 2
            Top = 56
            Width = 103
            Height = 912
            Hint = #21452#20987#36827#20837#32534#36753#29366#24577
            Align = alClient
            Images = ImageList2
            Indent = 25
            ReadOnly = True
            RightClickSelect = True
            RowSelect = True
            ShowLines = False
            ShowRoot = False
            TabOrder = 0
            OnChange = treeviewzpChange
            OnDblClick = treeviewzpDblClick
            Items.NodeData = {
              0101000000210000000000000000000000FFFFFFFFFFFFFFFF00000000000000
              0004216A7F6706527B7C}
          end
          object Panel6: TPanel
            Left = 2
            Top = 2
            Width = 103
            Height = 54
            Align = alTop
            BevelInner = bvLowered
            TabOrder = 1
            object bt_add: TBitBtn
              Left = 2
              Top = 2
              Width = 99
              Height = 25
              Align = alTop
              Caption = #22686#21152#30149#21382
              TabOrder = 0
              OnClick = bt_addClick
            end
            object bt_savebl: TBitBtn
              Left = 2
              Top = 27
              Width = 99
              Height = 25
              Align = alTop
              Caption = #20445#23384#30149#21382
              Enabled = False
              TabOrder = 1
              OnClick = bt_saveblClick
            end
          end
        end
        object EMRPad301: TEMRPad30
          Left = 107
          Top = 0
          Width = 1040
          Height = 970
          Align = alClient
          TabOrder = 1
          ExplicitLeft = 264
          ExplicitTop = 208
          ExplicitWidth = 200
          ExplicitHeight = 200
          ControlData = {000001007D6B00004164000000000000}
        end
      end
      object tab_yz: TcxTabSheet
        Caption = #20303#38498#21307#22065'(F3)'
        ImageIndex = 6
        object cxgrid_mzyz: TcxGrid
          Left = 0
          Top = 0
          Width = 1147
          Height = 934
          Align = alClient
          TabOrder = 5
          object cxgrid_yz: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            OnCellClick = cxgrid_yzCellClick
            OnCustomDrawCell = cxgrid_yzCustomDrawCell
            OnEditKeyDown = cxgrid_yzEditKeyDown
            DataController.DataSource = ds_yz
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Kind = skSum
                FieldName = 'ypcgj'
                Column = cxgrd_yzypcgj
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = #35745#25968
                Kind = skCount
                FieldName = 'lb'
                Column = cxgrid_yzlb
              end
              item
                Kind = skCount
                FieldName = 'xmmc'
                Column = cxgrid_yzxmmc
              end
              item
                Format = #24635#37329#39069
                Kind = skCount
                FieldName = 'czksmc'
                Column = cxgrid_yzczksmc
              end
              item
                Kind = skSum
                FieldName = 'ypcgj'
                Column = cxgrd_yzypcgj
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsData.Inserting = False
            OptionsView.DataRowHeight = 24
            OptionsView.Footer = True
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 20
            Styles.ContentOdd = cxStyle31
            Styles.Inactive = cxStyle3
            Styles.Selection = cxStyle7
            Styles.Header = cxStyle11
            Styles.StyleSheet = GridBandedTableViewStyleSheetDevExpress
            OnCustomDrawColumnHeader = cxgrid_yzCustomDrawColumnHeader
            OnCustomDrawIndicatorCell = cxgrid_yzCustomDrawIndicatorCell
            Bands = <
              item
                Caption = #35686
                Width = 34
              end
              item
                Caption = #31867#21035':1:'#35199#33647'2:'#20013#33647'3:'#27835#30103'4:'#26816#39564'5:'#26816#26597'   '
                Options.Moving = False
                Width = 289
              end
              item
                Caption = #33647#21697#20449#24687
                Options.Moving = False
                Width = 166
              end
              item
                Caption = #25968#37327#26816#39564#22788#32622#31185#23460
                Options.Moving = False
                Width = 227
              end
              item
                Caption = #25968#37327
                Options.Moving = False
                Position.BandIndex = 3
                Position.ColIndex = 0
                Width = 73
              end
              item
                Caption = #26816#39564
                Options.Moving = False
                Position.BandIndex = 3
                Position.ColIndex = 1
                Width = 38
              end
              item
                Caption = #22788#32622#31185#23460
                Options.Moving = False
                Position.BandIndex = 3
                Position.ColIndex = 2
                Width = 116
              end
              item
                Caption = #33647#21697#20854#23427#20449#24687
                Options.Moving = False
                Width = 289
              end
              item
                Caption = #21307#22065#22791#27880
                Options.Moving = False
                Width = 104
              end
              item
                Caption = #20998#32452
                Options.Moving = False
                Width = 37
              end>
            object cxgrid_yzlb: TcxGridDBBandedColumn
              Caption = #31867#21035
              DataBinding.FieldName = 'lb'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.ImmediateDropDown = False
              Properties.Items.Strings = (
                #35199#33647
                #20013#33647
                #27835#30103
                #26816#39564
                #26816#26597)
              Properties.OnCloseUp = cxgrid_yzlbPropertiesCloseUp
              Properties.OnEditValueChanged = cxgrid_yzlbPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 44
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxgrid_yzxmmc: TcxGridDBBandedColumn
              Caption = #39033#30446#21517#31216
              DataBinding.FieldName = 'xmmc'
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 201
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxgrid_yzypyl: TcxGridDBBandedColumn
              Caption = #29992#37327
              DataBinding.FieldName = 'ypyl'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.MaxValue = 10000.000000000000000000
              Properties.ValueType = vtFloat
              Properties.OnEditValueChanged = cxgrid_yzypylPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 50
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgrid_yzyldw: TcxGridDBBandedColumn
              DataBinding.FieldName = 'yldw'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 24
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
              IsCaptionAssigned = True
            end
            object cxgrid_yzypyf: TcxGridDBBandedColumn
              Caption = #29992#27861
              DataBinding.FieldName = 'ypyf'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'mc'
              Properties.ListColumns = <
                item
                  Caption = #29992#27861
                  FieldName = 'mc'
                end>
              Properties.ListSource = DM_data.ds_ypyf
              Properties.OnCloseUp = cxgrid_yzypyfPropertiesCloseUp
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 51
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxgrid_yzyytj: TcxGridDBBandedColumn
              Caption = #36884#24452
              DataBinding.FieldName = 'yytj'
              PropertiesClassName = 'TcxTextEditProperties'
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 38
              Position.BandIndex = 2
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxgrid_yzsl: TcxGridDBBandedColumn
              Caption = #25968#37327
              DataBinding.FieldName = 'sl'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.MaxValue = 1000.000000000000000000
              Properties.ValueType = vtFloat
              Properties.OnEditValueChanged = cxgrid_yzslPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 42
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgrid_yzdw: TcxGridDBBandedColumn
              Caption = #21333#20301
              DataBinding.FieldName = 'dw'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 28
              Position.BandIndex = 4
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxgrid_yzjyyb: TcxGridDBBandedColumn
              Caption = #26679#26412
              DataBinding.FieldName = 'jyyb'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'ybmc'
              Properties.ListColumns = <
                item
                  Caption = #26679#26412
                  MinWidth = 60
                  Width = 80
                  FieldName = 'ybmc'
                end>
              Properties.ListSource = DM_data.ds_jyyb
              Properties.OnEditValueChanged = cxgrid_yzjyybPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 78
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgrid_yzczks: TcxGridDBBandedColumn
              Caption = #20195#30721
              DataBinding.FieldName = 'czks'
              PropertiesClassName = 'TcxTextEditProperties'
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 38
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgrid_yzczksmc: TcxGridDBBandedColumn
              Caption = #31185#23460#21517#31216
              DataBinding.FieldName = 'czksmc'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 81
              Position.BandIndex = 6
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxgrid_yzyplb: TcxGridDBBandedColumn
              Caption = #31867#21035
              DataBinding.FieldName = 'yplb'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 72
              Position.BandIndex = 7
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgrid_yzyplsj: TcxGridDBBandedColumn
              Caption = #38646#21806#20215
              DataBinding.FieldName = 'yplsj'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 54
              Position.BandIndex = 7
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxgrid_yzgg: TcxGridDBBandedColumn
              Caption = #35268#26684
              DataBinding.FieldName = 'gg'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 99
              Position.BandIndex = 7
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxgrid_yzbz: TcxGridDBBandedColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'bz'
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 113
              Position.BandIndex = 8
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgrid_yzfzph: TcxGridDBBandedColumn
              Caption = #25191#34892
              DataBinding.FieldName = 'zxbz'
              Visible = False
              GroupIndex = 1
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soDescending
              Width = 78
              Position.BandIndex = 8
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxgrid_yzfz: TcxGridDBBandedColumn
              Caption = #32452#21495
              DataBinding.FieldName = 'fzph'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                '01'#32452
                '02'#32452
                '03'#32452
                '04'#32452
                '05'#32452
                '06'#32452
                '07'#32452
                '08'#32452
                '09'#32452
                '10'#32452
                '')
              Properties.OnCloseUp = cxgrid_yzColumn1PropertiesCloseUp
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Width = 63
              Position.BandIndex = 9
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgrid_yzsx: TcxGridDBBandedColumn
              Caption = #23646#24615
              DataBinding.FieldName = 'yzsx'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                #38271#26399
                #20020#26102
                #22065#25176)
              Properties.OnEditValueChanged = cxgrid_yzsxPropertiesEditValueChanged
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 44
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgrd_yzlbpx: TcxGridDBBandedColumn
              Caption = #31867#21035
              DataBinding.FieldName = 'lb'
              Visible = False
              GroupIndex = 0
              Options.Filtering = False
              Options.Moving = False
              Position.BandIndex = 1
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxgrd_yzypcgj: TcxGridDBBandedColumn
              Caption = #37329#39069
              DataBinding.FieldName = 'ypcgj'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Moving = False
              Width = 62
              Position.BandIndex = 7
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object cxgrid_mzyzLevel1: TcxGridLevel
            GridView = cxgrid_yz
          end
        end
        object grid_yp: TDBGridEh
          Left = 66
          Top = 146
          Width = 708
          Height = 267
          DataSource = ds_cx_yp_yz
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = ANSI_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -16
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          Visible = False
          OnDblClick = grid_ypDblClick
          OnDrawColumnCell = grid_ypDrawColumnCell
          OnExit = grid_ypExit
          OnKeyPress = grid_ypKeyPress
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ypmc'
              Footers = <>
              Title.Caption = #33647#21697#21517#31216
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 194
            end
            item
              EditButtons = <>
              FieldName = 'ypgg'
              Footers = <>
              Title.Caption = #33647#21697#35268#26684
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'zxdwsl'
              Footers = <>
              Title.Caption = #33647#25151#24211#23384#25968#37327
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'mzyfdw'
              Footers = <>
              Title.Caption = #21333#20301
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 38
            end
            item
              EditButtons = <>
              FieldName = 'mzlsj'
              Footers = <>
              Title.Caption = #21333#20215
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 46
            end
            item
              EditButtons = <>
              FieldName = 'zjm'
              Footers = <>
              Title.Caption = #21161#35760#30721
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 46
            end
            item
              EditButtons = <>
              FieldName = 'sfjlyp'
              Footers = <>
              Title.Caption = #30002#31867
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 35
            end
            item
              EditButtons = <>
              FieldName = 'sfylyp'
              Footers = <>
              Title.Caption = #20057#31867
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 35
            end
            item
              EditButtons = <>
              FieldName = 'yzyldw'
              Footers = <>
              Title.Caption = #29992#37327#21333#20301
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 66
            end>
        end
        object grid_yz: TDBGridEh
          Left = 71
          Top = 169
          Width = 711
          Height = 265
          DataSource = ds_cx_yp_yz
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = ANSI_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -16
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          Visible = False
          OnDblClick = grid_yzDblClick
          OnExit = grid_yzExit
          OnKeyPress = grid_yzKeyPress
          Columns = <
            item
              EditButtons = <>
              FieldName = 'xmdm'
              Footers = <>
              Title.Caption = #20195#30721
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
            end
            item
              EditButtons = <>
              FieldName = 'xmmc'
              Footers = <>
              Title.Caption = #21307#22065#21517#31216
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 212
            end
            item
              EditButtons = <>
              FieldName = 'pym'
              Footers = <>
              Title.Caption = #25340#38899#30721
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 62
            end
            item
              EditButtons = <>
              FieldName = 'hotkey'
              Footers = <>
              Title.Caption = #28909#38190
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 33
            end
            item
              EditButtons = <>
              FieldName = 'typym'
              Footers = <>
              Title.Caption = #21161#35760#30721
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 59
            end
            item
              EditButtons = <>
              FieldName = 'zylsj'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #26631#20934
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'dw'
              Footers = <>
              Title.Caption = #21333#20301
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 39
            end
            item
              EditButtons = <>
              FieldName = 'ksmc'
              Footers = <>
              Title.Caption = #24402#23646#31185#23460
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 78
            end
            item
              EditButtons = <>
              FieldName = 'bz'
              Footers = <>
              Title.Caption = #22791#27880
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
            end>
        end
        object Panel12: TPanel
          Left = 0
          Top = 934
          Width = 1147
          Height = 36
          Align = alBottom
          BevelInner = bvLowered
          TabOrder = 2
          object bt_zt: TcxButton
            Left = 392
            Top = 6
            Width = 84
            Height = 26
            Caption = #35843#29992#27169#26495'(&L)'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = bt_ztClick
          end
          object bt_saveyz: TcxButton
            Left = 129
            Top = 7
            Width = 89
            Height = 25
            Caption = #20445#23384#21307#22065'(&S)'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = bt_saveyzClick
          end
          object bt_ztsave: TcxButton
            Left = 906
            Top = 6
            Width = 80
            Height = 26
            Caption = #23384#20026#27169#26495'(&M)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = bt_ztsaveClick
          end
          object bt_yz_add: TcxButton
            Left = 21
            Top = 6
            Width = 95
            Height = 26
            Caption = #32534#36753#21307#22065'(&E)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = bt_yz_addClick
          end
          object btnxzyf: TcxButton
            Left = 687
            Top = 6
            Width = 87
            Height = 26
            Caption = #22788#26041#37325#36873#33647#25151
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Visible = False
            OnClick = btnxzyfClick
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = True
          end
          object btn_zxyz: TcxButton
            Left = 592
            Top = 6
            Width = 89
            Height = 26
            Caption = #21307#22065#35760#36153
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = btn_zxyzClick
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = True
          end
          object btn_jymb: TcxButton
            Left = 482
            Top = 6
            Width = 86
            Height = 26
            Caption = #26816#39564#27169#26495'(&J)'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnClick = btn_jymbClick
          end
          object btn_cancel: TcxButton
            Left = 226
            Top = 6
            Width = 89
            Height = 25
            Caption = #25918#24323#21307#22065'(&S)'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnClick = btn_cancelClick
          end
          object btn_excel: TcxButton
            Left = 813
            Top = 6
            Width = 87
            Height = 26
            Caption = #23548#20986'excel'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnClick = btn_excelClick
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = True
          end
        end
        object grid_ks: TDBGridEh
          Left = 601
          Top = 158
          Width = 209
          Height = 230
          DataSource = ds_ks
          EvenRowColor = clMenu
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = ANSI_CHARSET
          FooterFont.Color = clNavy
          FooterFont.Height = -13
          FooterFont.Name = #23435#20307
          FooterFont.Style = [fsBold]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 3
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -13
          TitleFont.Name = #23435#20307
          TitleFont.Style = [fsBold]
          Visible = False
          OnDblClick = grid_ksDblClick
          OnExit = grid_ksExit
          OnKeyDown = grid_ksKeyDown
          Columns = <
            item
              EditButtons = <>
              FieldName = 'dm'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #20195#30721
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'mc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #31185#23460#21517#31216
              Width = 120
            end>
        end
        object dbg_yytj: TDBGridEh
          Left = 448
          Top = 158
          Width = 122
          Height = 231
          DataSource = DM_data.ds_gytj
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = ANSI_CHARSET
          FooterFont.Color = clNavy
          FooterFont.Height = -13
          FooterFont.Name = #23435#20307
          FooterFont.Style = [fsBold]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 4
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -13
          TitleFont.Name = #23435#20307
          TitleFont.Style = [fsBold]
          Visible = False
          OnDblClick = dbg_yytjDblClick
          OnExit = dbg_yytjExit
          OnKeyDown = dbg_yytjKeyDown
          Columns = <
            item
              EditButtons = <>
              FieldName = 'mc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #29992#33647#36884#24452
              Width = 76
            end>
        end
      end
      object tab_zsk: TcxTabSheet
        Caption = #30149#21382#30693#35782#24211'(F8)'
        ImageIndex = 4
        TabVisible = False
        OnExit = tab_zskExit
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 1147
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label2: TLabel
            Left = 4
            Top = 14
            Width = 53
            Height = 15
            Caption = #25340#38899#30721':'
          end
          object BitBtn1: TBitBtn
            Left = 581
            Top = 7
            Width = 75
            Height = 27
            Caption = #36820#22238
            TabOrder = 0
            OnClick = BitBtn1Click
          end
          object rbgjc: TRadioButton
            Left = 260
            Top = 17
            Width = 113
            Height = 17
            Caption = #25554#20837#20851#38190#35789
            TabOrder = 1
          end
          object rbgjcnr: TRadioButton
            Left = 408
            Top = 15
            Width = 145
            Height = 17
            Caption = #25554#20837#20851#38190#35789#20869#23481
            Checked = True
            TabOrder = 2
            TabStop = True
          end
          object edt_zsk: TEdit
            Left = 63
            Top = 11
            Width = 154
            Height = 23
            TabOrder = 3
            Text = 'edt_zsk'
            OnKeyPress = edt_zskKeyPress
          end
        end
        object TreeViewgjc: TTreeView
          Left = 0
          Top = 40
          Width = 195
          Height = 930
          Align = alLeft
          BevelInner = bvLowered
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          Indent = 25
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          OnChange = TreeViewgjcChange
          Items.NodeData = {
            0101000000210000000000000000000000FFFFFFFFFFFFFFFF00000000000000
            0004216A7F6706527B7C}
        end
        object DBGridmbmx: TDBGrid
          Left = 195
          Top = 40
          Width = 952
          Height = 930
          Align = alClient
          DataSource = ds_blzsk
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          OnDblClick = DBGridmbmxDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'dm'
              Title.Alignment = taCenter
              Title.Caption = #20998#31867#20195#30721
              Title.Font.Charset = GB2312_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mbdm'
              Title.Alignment = taCenter
              Title.Caption = #27169#26495#20195#30721
              Title.Font.Charset = GB2312_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mbmc'
              Title.Alignment = taCenter
              Title.Caption = #27169#26495#21517#31216
              Title.Font.Charset = GB2312_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 134
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'zyksgs'
              Title.Alignment = taCenter
              Title.Caption = #20351#29992#31185#23460
              Title.Font.Charset = GB2312_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mbsx'
              Title.Alignment = taCenter
              Title.Caption = #30417#25511#20195#30721
              Title.Font.Charset = GB2312_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'wjmc'
              Title.Alignment = taCenter
              Title.Caption = #27169#26495#25991#20214#21517#31216
              Title.Font.Charset = GB2312_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 105
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mbczy'
              Title.Alignment = taCenter
              Title.Caption = #21019#24314#32773
              Title.Font.Charset = GB2312_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -15
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 75
              Visible = True
            end>
        end
      end
      object tab_mb: TcxTabSheet
        Caption = #30149#21382#27169#26495
        ImageIndex = 5
        TabVisible = False
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 1147
          Height = 57
          Align = alTop
          Caption = #27169#26495#36873#25321
          TabOrder = 0
          object Label1: TLabel
            Left = 411
            Top = 23
            Width = 56
            Height = 13
            Caption = #27169#26495#20195#30721
          end
          object rbgr: TcxRadioButton
            Left = 309
            Top = 22
            Width = 90
            Height = 17
            Caption = #20010#20154#27169#26495
            TabOrder = 0
            OnClick = rbgrClick
          end
          object rbks: TcxRadioButton
            Left = 209
            Top = 22
            Width = 88
            Height = 17
            Caption = #31185#23460#27169#26495
            TabOrder = 1
            OnClick = rbksClick
          end
          object rbgg: TcxRadioButton
            Left = 110
            Top = 22
            Width = 87
            Height = 17
            Caption = #20844#20849#27169#26495
            TabOrder = 2
            OnClick = rbggClick
          end
          object rbqb: TcxRadioButton
            Left = 22
            Top = 22
            Width = 86
            Height = 17
            Caption = #20840#37096#27169#26495
            Checked = True
            TabOrder = 3
            TabStop = True
            OnClick = rbqbClick
          end
          object b_retu: TBitBtn
            Left = 609
            Top = 14
            Width = 75
            Height = 27
            Caption = #36820#22238
            TabOrder = 4
            OnClick = b_retuClick
          end
          object edt_mbdm: TEdit
            Left = 469
            Top = 17
            Width = 121
            Height = 21
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
        end
        object cxGrid2: TcxGrid
          Left = 0
          Top = 57
          Width = 1147
          Height = 913
          Align = alClient
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object cxGrid2DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnCellDblClick = cxGrid2DBTableView1CellDblClick
            DataController.DataSource = ds_mbmx
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGrid2DBTableView1dm: TcxGridDBColumn
              Caption = #20998#31867#20195#30721
              DataBinding.FieldName = 'dm'
              Options.Editing = False
              Options.Moving = False
            end
            object cxGrid2DBTableView1mbdm: TcxGridDBColumn
              Caption = #27169#22359#20195#30721
              DataBinding.FieldName = 'mbdm'
              Options.Editing = False
              Options.Moving = False
            end
            object cxGrid2DBTableView1mbmc: TcxGridDBColumn
              Caption = #27169#26495#21517#31216
              DataBinding.FieldName = 'mbmc'
              Options.Editing = False
              Options.Moving = False
              Width = 250
            end
            object cxGrid2DBTableView1pym: TcxGridDBColumn
              Caption = #25340#38899#30721
              DataBinding.FieldName = 'pym'
              Options.Editing = False
              Options.Moving = False
              Width = 114
            end
            object cxGrid2DBTableView1ksmc: TcxGridDBColumn
              Caption = #31185#23460#21517#31216
              DataBinding.FieldName = 'ksmc'
              Options.Editing = False
              Options.Moving = False
            end
            object cxGrid2DBTableView1mbczy: TcxGridDBColumn
              Caption = #21019#24314#32773
              DataBinding.FieldName = 'mbczy'
              Options.Editing = False
              Options.Moving = False
              Width = 103
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
      end
      object cab_lsyz: TcxTabSheet
        Caption = #21382#21490#21307#22065
        ImageIndex = 5
        OnExit = cab_lsyzExit
        object cxGrid1: TcxGrid
          Left = 0
          Top = 41
          Width = 1147
          Height = 929
          Align = alClient
          TabOrder = 0
          object cxgrdbndtblvw_lsyz: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            OnCustomDrawCell = cxgrdbndtblvw_lsyzCustomDrawCell
            DataController.DataSource = ds_lsyz
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Kind = skSum
                FieldName = 'ypcgj'
                Column = cxGridDBBandedColumn20
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = #35745#25968
                Kind = skCount
                FieldName = 'lb'
                Column = cxGridDBBandedColumn1
              end
              item
                Kind = skCount
                FieldName = 'xmmc'
                Column = cxGridDBBandedColumn2
              end
              item
                Format = #24635#37329#39069
                Kind = skCount
                FieldName = 'czksmc'
                Column = cxGridDBBandedColumn11
              end
              item
                Kind = skSum
                FieldName = 'ypcgj'
                Column = cxGridDBBandedColumn20
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.DataRowHeight = 24
            OptionsView.Footer = True
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 20
            Styles.ContentOdd = cxStyle31
            Styles.Inactive = cxStyle3
            Styles.Selection = cxStyle7
            Styles.Header = cxStyle11
            Styles.StyleSheet = GridBandedTableViewStyleSheetDevExpress
            Bands = <
              item
                Caption = #31867#21035':1:'#35199#33647'2:'#20013#33647'3:'#27835#30103'4:'#26816#39564'5:'#26816#26597'   '
                Options.Moving = False
                Width = 289
              end
              item
                Caption = #33647#21697#20449#24687
                Options.Moving = False
                Width = 166
              end
              item
                Caption = #25968#37327#26816#39564#22788#32622#31185#23460
                Options.Moving = False
                Width = 227
              end
              item
                Caption = #25968#37327
                Options.Moving = False
                Position.BandIndex = 2
                Position.ColIndex = 0
                Width = 73
              end
              item
                Caption = #26816#39564
                Options.Moving = False
                Position.BandIndex = 2
                Position.ColIndex = 1
                Width = 38
              end
              item
                Caption = #22788#32622#31185#23460
                Options.Moving = False
                Position.BandIndex = 2
                Position.ColIndex = 2
                Width = 116
              end
              item
                Caption = #33647#21697#20854#23427#20449#24687
                Options.Moving = False
                Width = 269
              end
              item
                Caption = #21307#22065#22791#27880
                Options.Moving = False
                Width = 104
              end
              item
                Caption = #25910#36153
                Options.Moving = False
                Width = 37
              end>
            object cxGridDBBandedColumn1: TcxGridDBBandedColumn
              Caption = #31867#21035
              DataBinding.FieldName = 'lb'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.ImmediateDropDown = False
              Properties.Items.Strings = (
                #35199#33647
                #20013#33647
                #27835#30103
                #26816#39564
                #26816#26597)
              HeaderAlignmentHorz = taCenter
              Options.Grouping = False
              Options.Moving = False
              Width = 36
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn2: TcxGridDBBandedColumn
              Caption = #39033#30446#21517#31216
              DataBinding.FieldName = 'xmmc'
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Width = 164
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn3: TcxGridDBBandedColumn
              Caption = #29992#37327
              DataBinding.FieldName = 'ypyl'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.MaxValue = 10000.000000000000000000
              Properties.ValueType = vtFloat
              Properties.OnEditValueChanged = cxgrid_yzypylPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              Options.Grouping = False
              Options.Moving = False
              Width = 50
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn4: TcxGridDBBandedColumn
              DataBinding.FieldName = 'yldw'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 24
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
              IsCaptionAssigned = True
            end
            object cxGridDBBandedColumn5: TcxGridDBBandedColumn
              Caption = #29992#27861
              DataBinding.FieldName = 'ypyf'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'mc'
              Properties.ListColumns = <
                item
                  Caption = #29992#27861
                  FieldName = 'mc'
                end>
              Properties.ListSource = DM_data.ds_ypyf
              Properties.OnCloseUp = cxgrid_yzypyfPropertiesCloseUp
              HeaderAlignmentHorz = taCenter
              Options.Grouping = False
              Options.Moving = False
              Width = 51
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn6: TcxGridDBBandedColumn
              Caption = #36884#24452
              DataBinding.FieldName = 'yytj'
              PropertiesClassName = 'TcxTextEditProperties'
              HeaderAlignmentHorz = taCenter
              Options.Grouping = False
              Options.Moving = False
              Width = 38
              Position.BandIndex = 1
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn7: TcxGridDBBandedColumn
              Caption = #25968#37327
              DataBinding.FieldName = 'sl'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.MaxValue = 1000.000000000000000000
              Properties.ValueType = vtFloat
              Properties.OnEditValueChanged = cxgrid_yzslPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              Options.Grouping = False
              Options.Moving = False
              Width = 42
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn8: TcxGridDBBandedColumn
              Caption = #21333#20301
              DataBinding.FieldName = 'dw'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Grouping = False
              Options.Moving = False
              Width = 28
              Position.BandIndex = 3
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn9: TcxGridDBBandedColumn
              Caption = #26679#26412
              DataBinding.FieldName = 'jyyb'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'ybmc'
              Properties.ListColumns = <
                item
                  Caption = #26679#26412
                  MinWidth = 60
                  Width = 80
                  FieldName = 'ybmc'
                end>
              Properties.ListSource = DM_data.ds_jyyb
              Properties.OnEditValueChanged = cxgrid_yzjyybPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              Options.Grouping = False
              Options.Moving = False
              Width = 78
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn10: TcxGridDBBandedColumn
              Caption = #20195#30721
              DataBinding.FieldName = 'czks'
              PropertiesClassName = 'TcxTextEditProperties'
              HeaderAlignmentHorz = taCenter
              Options.Grouping = False
              Options.Moving = False
              Width = 38
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn11: TcxGridDBBandedColumn
              Caption = #31185#23460#21517#31216
              DataBinding.FieldName = 'czksmc'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Grouping = False
              Options.Moving = False
              Width = 81
              Position.BandIndex = 5
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn12: TcxGridDBBandedColumn
              Caption = #31867#21035
              DataBinding.FieldName = 'yplb'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Grouping = False
              Options.Moving = False
              Width = 40
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn13: TcxGridDBBandedColumn
              Caption = #38646#21806#20215
              DataBinding.FieldName = 'yplsj'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Grouping = False
              Options.Moving = False
              Width = 55
              Position.BandIndex = 6
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn14: TcxGridDBBandedColumn
              Caption = #35268#26684
              DataBinding.FieldName = 'gg'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Grouping = False
              Options.Moving = False
              Width = 97
              Position.BandIndex = 6
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn15: TcxGridDBBandedColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'bz'
              HeaderAlignmentHorz = taCenter
              Options.Grouping = False
              Width = 113
              Position.BandIndex = 7
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn16: TcxGridDBBandedColumn
              Caption = #24320#21333#21307#29983
              DataBinding.FieldName = 'kdysmc'
              Visible = False
              GroupIndex = 0
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soDescending
              Width = 78
              Position.BandIndex = 7
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn17: TcxGridDBBandedColumn
              Caption = #26631#24535
              DataBinding.FieldName = 'sfbz'
              PropertiesClassName = 'TcxCheckBoxProperties'
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Width = 63
              Position.BandIndex = 8
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn18: TcxGridDBBandedColumn
              Caption = #22788#26041
              DataBinding.FieldName = 'yzsx'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                #26222#36890
                #24613#35786
                #40635#37257
                #31934#20108
                #20799#31461)
              Options.Editing = False
              Options.Grouping = False
              Options.Moving = False
              Width = 35
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn20: TcxGridDBBandedColumn
              Caption = #37329#39069
              DataBinding.FieldName = 'ypcgj'
              Options.Editing = False
              Options.Grouping = False
              Options.Moving = False
              Width = 60
              Position.BandIndex = 6
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxgrdbndtblvw_lsyz
          end
        end
        object pnl_lsyz: TPanel
          Left = 0
          Top = 0
          Width = 1147
          Height = 41
          Align = alTop
          BevelInner = bvLowered
          TabOrder = 1
          object cxdtdt_ksrq: TcxDateEdit
            Left = 98
            Top = 14
            TabOrder = 0
            Width = 163
          end
          object cxlb_ksrq: TcxLabel
            Left = 20
            Top = 15
            Caption = #24320#22987#26085#26399
          end
          object cxdtdt_jsrq: TcxDateEdit
            Left = 362
            Top = 14
            TabOrder = 2
            Width = 163
          end
          object cxlb_jsrq: TcxLabel
            Left = 284
            Top = 17
            Caption = #32467#26463#26085#26399
          end
          object btn_cxlsyz: TcxButton
            Left = 552
            Top = 11
            Width = 74
            Height = 25
            Caption = #26597#35810
            TabOrder = 4
            OnClick = btn_cxlsyzClick
          end
        end
      end
      object cab_lsbl: TcxTabSheet
        Caption = #21382#21490#30149#21382
        ImageIndex = 6
        object pnl_lsbl: TPanel
          Left = 0
          Top = 0
          Width = 1147
          Height = 41
          Align = alTop
          BevelInner = bvLowered
          TabOrder = 0
        end
        object tv_lsbl: TTreeView
          Left = 0
          Top = 41
          Width = 241
          Height = 929
          Hint = #21452#20987#36827#20837#32534#36753#29366#24577
          Align = alLeft
          Images = ImageList2
          Indent = 25
          ReadOnly = True
          RightClickSelect = True
          RowSelect = True
          ShowLines = False
          ShowRoot = False
          TabOrder = 1
          OnChange = treeviewzpChange
          OnDblClick = treeviewzpDblClick
          Items.NodeData = {
            0101000000210000000000000000000000FFFFFFFFFFFFFFFF00000000000000
            0004216A7F6706527B7C}
        end
        object EMRPad302: TEMRPad30
          Left = 241
          Top = 41
          Width = 906
          Height = 929
          Align = alClient
          TabOrder = 2
          ExplicitLeft = 520
          ExplicitTop = 104
          ExplicitWidth = 200
          ExplicitHeight = 200
          ControlData = {00000100A35D00000460000000000000}
        end
      end
      object cab_jy: TcxTabSheet
        Caption = #26816#39564#32467#26524
        ImageIndex = 5
      end
      object cab_pacs: TcxTabSheet
        Caption = 'Pacs'#24433#35937
        ImageIndex = 5
      end
    end
  end
  object DBGrid_Jb: TDBGrid
    Left = 304
    Top = 230
    Width = 430
    Height = 235
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDblClick = DBGrid_JbDblClick
    OnExit = DBGrid_JbExit
    OnKeyPress = DBGrid_JbKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'JBMC'
        Title.Caption = #30142#30149#21517#31216
        Width = 282
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JBBM'
        Title.Caption = 'ICD10'#32534#30721
        Width = 100
        Visible = True
      end>
  end
  object dbgrd_zxqh: TDBGrid
    Left = 783
    Top = 246
    Width = 390
    Height = 235
    DataSource = ds_xzqh
    ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = dbgrd_zxqhExit
    Columns = <
      item
        Expanded = False
        FieldName = 'dm'
        Title.Alignment = taCenter
        Title.Caption = #20195#30721
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mc'
        Title.Alignment = taCenter
        Title.Caption = #21517#31216
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 270
        Visible = True
      end>
  end
  object qry_yz: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qry_yzBeforeInsert
    AfterPost = qry_yzAfterPost
    AfterScroll = qry_yzAfterScroll
    Parameters = <
      item
        Name = 'cxyzrq'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'cxzyh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from mzdzbl_mzyz where datediff(day,yzrq,:cxyzrq)=0 and' +
        ' zyh=:cxzyh  and zxbz=0  ')
    Left = 376
    Top = 336
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
      DisplayWidth = 8
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
    object qry_yzbz: TStringField
      FieldName = 'bz'
      Size = 100
    end
    object qry_yzfzph: TStringField
      FieldName = 'fzph'
    end
    object qry_yzxh: TIntegerField
      FieldName = 'xh'
    end
    object qry_yzid: TIntegerField
      FieldName = 'id'
    end
    object qry_yzjyyb: TStringField
      FieldName = 'jyyb'
      Size = 10
    end
    object qry_yzjyflbh: TStringField
      FieldName = 'jyflbh'
    end
  end
  object ds_yz: TDataSource
    DataSet = qry_yz
    Left = 376
    Top = 376
  end
  object ds_cx_yp_yz: TDataSource
    DataSet = sp_cx_yp_yz
    Left = 416
    Top = 376
  end
  object qry_ks: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select dm,mc,pym,kssx  from sys_ksdm where sybz=1 and kssx <>'#39'16' +
        #39' ')
    Left = 336
    Top = 336
  end
  object ds_ks: TDataSource
    DataSet = qry_ks
    Left = 336
    Top = 376
  end
  object ds_cx_yzxm: TDataSource
    Left = 456
    Top = 376
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
    Left = 498
    Top = 336
  end
  object qry_yzlist: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from zybl_zyyz_list')
    Left = 496
    Top = 376
  end
  object qry_ypyz: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 568
    Top = 336
  end
  object sp_cx_yp_yz: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'mzbl_cx_ypyz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
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
      end>
    Left = 416
    Top = 336
  end
  object qry_xmyz: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select xmdm,xmmc,lb  from zybl_zyyz where 1=2')
    Left = 528
    Top = 376
  end
  object qru_yzxg: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 533
    Top = 337
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
    Left = 610
    Top = 336
  end
  object Main_Menu: TMainMenu
    AutoHotkeys = maManual
    Left = 87
    Top = 218
    object N164: TMenuItem
      Caption = #25253#21578
      object N165: TMenuItem
        Caption = #20256#26579#30149
      end
    end
    object filebl: TMenuItem
      Caption = #25991#20214'(&F)'
      Visible = False
      object N13: TMenuItem
        Caption = #20445#23384
        ShortCut = 16467
        OnClick = N13Click
      end
      object N14: TMenuItem
        Caption = #21478#23384#26412#22320
        OnClick = N14Click
      end
      object N15: TMenuItem
        Caption = '-'
      end
      object f_dele_cg: TMenuItem
        Caption = #21024#38500#33609#31295
        OnClick = f_dele_cgClick
      end
      object N51: TMenuItem
        Caption = '-'
      end
      object N46: TMenuItem
        Caption = #25972#27905#26174#31034
        OnClick = N46Click
      end
      object N49: TMenuItem
        Caption = #33258#21160#25490#29256
        OnClick = N49Click
      end
      object N50: TMenuItem
        Caption = #28165#38500#26410#20351#29992#20803#32032
        OnClick = N50Click
      end
      object N47: TMenuItem
        Caption = #38544#34255'/'#26174#31034#34892#21495
        OnClick = N47Click
      end
      object N17: TMenuItem
        Caption = #25171#21360
        ShortCut = 16464
        OnClick = N17Click
      end
      object N18: TMenuItem
        Caption = #25171#21360#39044#35272
        OnClick = N18Click
      end
      object N19: TMenuItem
        Caption = #32493#25171
        OnClick = N19Click
      end
      object N48: TMenuItem
        Caption = #36873#25321#25171#21360
        OnClick = N48Click
      end
      object N22: TMenuItem
        Caption = '-'
      end
      object N20: TMenuItem
        Caption = #39029#38754#35774#32622
        OnClick = N20Click
      end
      object N21: TMenuItem
        Caption = #39029#38754#24207#21495#35774#32622
        OnClick = N21Click
      end
    end
    object editbl: TMenuItem
      Caption = #32534#36753'(&E)'
      Visible = False
      object N25: TMenuItem
        Caption = #25764#38144
        ShortCut = 16474
        OnClick = N25Click
      end
      object N26: TMenuItem
        Caption = #37325#26032#25191#34892
        ShortCut = 16469
        OnClick = N26Click
      end
      object N171: TMenuItem
        Caption = '-'
      end
      object N28: TMenuItem
        Caption = #22797#21046
        ShortCut = 16451
        OnClick = N28Click
      end
      object N29: TMenuItem
        Caption = #31896#36148
        ShortCut = 16470
        OnClick = N29Click
      end
      object N30: TMenuItem
        Caption = #21098#20999
        ShortCut = 16472
        OnClick = N30Click
      end
      object Nbj_del: TMenuItem
        Caption = #21024#38500
        ShortCut = 16430
        OnClick = Nbj_delClick
      end
      object N32: TMenuItem
        Caption = '-'
      end
      object N33: TMenuItem
        Caption = #36873#25321#20840#37096
        ShortCut = 16449
        OnClick = N33Click
      end
      object N34: TMenuItem
        Caption = '-'
      end
      object N35: TMenuItem
        Caption = #26597#25214
        ShortCut = 16454
        OnClick = N35Click
      end
      object N36: TMenuItem
        Caption = #26367#25442
        ShortCut = 16466
        OnClick = N36Click
      end
      object N27: TMenuItem
        Caption = '-'
      end
      object N37: TMenuItem
        Caption = #25554#20837#20998#39029#31526
        OnClick = N37Click
      end
    end
    object viewbl: TMenuItem
      Caption = #26597#30475'(&V)'
      Visible = False
      object N42: TMenuItem
        Caption = #24037#20855#26465
        OnClick = N42Click
      end
      object N43: TMenuItem
        Caption = #29366#24577#26465
        OnClick = N43Click
      end
      object N16: TMenuItem
        Caption = '-'
      end
      object N44: TMenuItem
        Caption = #26174#31034'/'#38544#34255#34892#21495
        OnClick = N44Click
      end
      object N23: TMenuItem
        Caption = '-'
      end
      object N24: TMenuItem
        Caption = #20462#23450#29256#26412#20449#24687
        OnClick = N24Click
      end
    end
    object tablebl: TMenuItem
      Caption = #34920#26684'(&T)'
      Visible = False
      object N61: TMenuItem
        Caption = #25554#20837
        object N63: TMenuItem
          Caption = #34920#26684
          OnClick = N63Click
        end
        object N66: TMenuItem
          Caption = '-'
        end
        object N64: TMenuItem
          Caption = #21015'['#22312#24038#20391']'
          OnClick = N64Click
        end
        object N65: TMenuItem
          Caption = #21015'['#22312#21491#20391']'
          OnClick = N65Click
        end
        object N67: TMenuItem
          Caption = '-'
        end
        object N68: TMenuItem
          Caption = #34892'['#22312#19978#26041']'
          OnClick = N68Click
        end
        object N69: TMenuItem
          Caption = #34892'['#22312#19979#26041']'
          OnClick = N69Click
        end
      end
      object N62: TMenuItem
        Caption = #21024#38500
        object N70: TMenuItem
          Caption = #34920#26684
          OnClick = N70Click
        end
        object N71: TMenuItem
          Caption = #34892
          OnClick = N71Click
        end
        object N72: TMenuItem
          Caption = #21015
          OnClick = N72Click
        end
      end
      object N73: TMenuItem
        Caption = #36873#23450
        object N74: TMenuItem
          Caption = #34920#26684
          OnClick = N74Click
        end
        object N75: TMenuItem
          Caption = #34892
          OnClick = N75Click
        end
        object N76: TMenuItem
          Caption = #21015
          OnClick = N76Click
        end
      end
      object N77: TMenuItem
        Caption = #21512#24182#21333#20803#26684
        OnClick = N77Click
      end
      object N78: TMenuItem
        Caption = #25286#20998#21333#20803#26684
        OnClick = N78Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object N6: TMenuItem
        Caption = #38544#34255#34394#26694
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object N9: TMenuItem
        Caption = #34920#26684#23646#24615
        OnClick = N9Click
      end
      object N11: TMenuItem
        Caption = #21015#23646#24615
        OnClick = N11Click
      end
      object N12: TMenuItem
        Caption = #21333#20803#26684#23646#24615
        OnClick = N12Click
      end
    end
    object fzbl: TMenuItem
      Caption = #36741#21161
      Visible = False
      object MenuItem2: TMenuItem
        Caption = #20070#20889#21161#25163
        ShortCut = 120
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object bl_zsk: TMenuItem
        Caption = #30149#21382#30693#35782#24211
        ShortCut = 119
        OnClick = bl_zskClick
      end
      object N54: TMenuItem
        Caption = '-'
      end
      object ICD101: TMenuItem
        Caption = 'ICD10'#36755#20837#26597#35810
        ShortCut = 118
      end
    end
    object N10: TMenuItem
      Caption = #36864#20986
      OnClick = N10Click
    end
  end
  object qry_tree: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'zyh'
        Size = -1
        Value = Null
      end
      item
        Name = 'bczyh'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from ('
      
        'select dm,mc,'#39#39' zyh from sys_dzbl_mbfl where qybz=1 and substrin' +
        'g(dm,1,2)<>12'
      'union all'
      'select rtrim(fldm)+blid dm ,blmc,zyh  from zydzbl_zydzblmx'
      'where zyh=:zyh and fldm<>'#39'02'#39
      'union all'
      
        'select rtrim(fldm)+right('#39'000'#39'+convert(varchar, bcid),3) dm ,blm' +
        'c,zyh from zydzbl_zybcjlmx'
      'where zyh=:bczyh '
      ')bl'
      'order by dm'
      '')
    Left = 127
    Top = 113
  end
  object ds_mbmx: TDataSource
    DataSet = qry_mbmx
    Left = 52
    Top = 151
  end
  object qry_mbmx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'dldm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'select mx.* ,ks.mc ksmc from sys_dzbl_mbmx mx ,sys_ksdm ks  wher' +
        'e mx.zyksgs*=ks.dm and  mx.dm like :dldm ')
    Left = 16
    Top = 151
  end
  object qry_blzsk: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'mbmc'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'pym'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 25
        Value = Null
      end
      item
        Name = 'dldm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'select *  from sys_dzbl_mbmx where ( (mbmc like :mbmc  or pym li' +
        'ke :pym) and  dm like :dldm ) ')
    Left = 88
    Top = 151
  end
  object ds_blzsk: TDataSource
    DataSet = qry_blzsk
    Left = 129
    Top = 150
  end
  object PopupMenuedit: TPopupMenu
    Left = 128
    Top = 186
    object savebl: TMenuItem
      Caption = #20445#23384#26412#27425#32534#36753
      OnClick = saveblClick
    end
    object N140: TMenuItem
      Caption = #25918#24323#26412#27425#32534#36753
      OnClick = N140Click
    end
    object N173: TMenuItem
      Caption = '-'
    end
    object del_bl: TMenuItem
      Caption = #21024#38500#30149#21382#33609#31295
      OnClick = del_blClick
    end
    object N147: TMenuItem
      Caption = '-'
    end
    object N144: TMenuItem
      Caption = #30149#21382#20070#20889#21161#25163
    end
    object N146: TMenuItem
      Caption = #30149#21382#30693#35782#24211
    end
    object N148: TMenuItem
      Caption = #30149#21382#35786#26029
    end
    object N149: TMenuItem
      Caption = #33258#21160#25490#29256
    end
    object N150: TMenuItem
      Caption = #25163#21160#21019#24314#26816#32034#32467#28857
      OnClick = N150Click
    end
    object N152: TMenuItem
      Caption = #26174#31034'/'#38544#34255#35821#27861#26631#35782
    end
    object N155: TMenuItem
      Caption = '-'
    end
    object N31: TMenuItem
      Caption = #23384#20026#20851#38190#35789
    end
  end
  object qry_up_dlbl: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'zy_zyh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = '00'
      end
      item
        Name = 'zy_blid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = '001'
      end>
    SQL.Strings = (
      
        'select * from mzdzbl_dzblmx where  zyh=:zy_zyh and  blid=:zy_bli' +
        'd ')
    Left = 88
    Top = 184
  end
  object qry_pub: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 15
    Top = 185
  end
  object ds_pub: TDataSource
    DataSet = qry_pub
    Left = 49
    Top = 185
  end
  object Popupnull: TPopupMenu
    Left = 128
    Top = 220
  end
  object ImageList2: TImageList
    Left = 47
    Top = 219
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
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
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000000000000000000000000000000000
      0000FBF7F400CEC0A40091977A0097714A00B5714A00BD917A00C7B2A400F5F3
      F100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3E7
      E100EAA7860080703000607020005060400090604000C0684000B0604000B28C
      6F00E1DBD8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000000000000000000000FCF8F500EAAD
      9100E0885000D080400060882000308820005068300070604000B0684000B060
      4000B28C6F00F5F3F10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1CEC000F090
      6000F0906000C080500050784000309820003088200070683000B06840008060
      400060604000B2B9AB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000000000000000000000F4B19300FF98
      6000E09060006078500050A0300050A0300080902000D0784000706840005060
      400030781000919C6F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000508050FF4070
      40FF305030FF203820FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFA67700F098
      7000607050006098400060B0400090A04000E0886000D0805000506840003080
      2000309010003B872C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000509050FF60A8
      60FF508850FF305030FF000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000000000000000000000FFA677008080
      600040A0400050B0400090906000E0987000E0906000E088500060A020004098
      2000409820004A8F2C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000070A880FF60A070FF609860FF70B0
      70FF509850FF407040FF305030FF203820FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8B793006098
      500040C8600040C8700070A07000B0A07000D0986000E0906000A090300040A0
      200040A020007AB8640000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080B090FFA0D8A0FF70C080FF70B8
      70FF60A060FF509050FF408840FF305030FF00000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000000000000000000000C7C7A70050B8
      600060D8800090E0A00080E0A000A0D09000B0A06000F0986000E088500050A8
      200040A02000ABD59D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000090B8A0FFB0D8B0FFA0D8A0FF90D0
      A0FF70B870FF60A860FF509850FF407040FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F5F7F1006ED6
      930070E09000C0F0B000D0F0D000F0F8D000B0E8A00080986000D0984000B090
      300086BD6400F4F8F10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000090C0A0FF90B8A0FF80B090FFA0D8
      A0FF70C080FF609860FF509050FF508050FF00000000000000FF000000FF0000
      00FF000000FF000000FF000000FF00000000000000000000000000000000E7F1
      DF009FE2AB00C0F0B000E0F8D00080A8700070D8900040B0600080804000EAAD
      8600F0E9DB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000090B8A0FFB0D8
      B0FFA0D8A0FF60A070FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F8F300D7EFCF00D0EEC40097E2A60059D9870062D08700CECBA400FCF8
      F600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000090C0A0FF90B8
      A0FF80B090FF70A880FF000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000000000000000000000000000000000
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
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FF81F00F00000000FFFFE00700000000FF81C00300000000FFFFC00300000000
      FF81C00300000000C3FFC00300000000C381C0030000000000FFC00300000000
      0081C0030000000000FFC003000000000081E00700000000C3FFF00F00000000
      C381FFFF00000000FFFFFFFF00000000}
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'emt'
    Filter = #30149#21382'(.emt)|*.emt|'#20851#38190#35789'(.emk)|*.emk'
    Left = 15
    Top = 218
  end
  object sp_cx_micro: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    ProcedureName = 'mzdzbl_cx_micro;1'
    Parameters = <
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 14
    Top = 252
  end
  object PopupMenubrxz: TPopupMenu
    Left = 90
    Top = 113
    object N1: TMenuItem
      Caption = #36827#34892#22788#29702
      OnClick = wczbrgridDblClick
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 568
    Top = 376
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15451300
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15451300
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15451300
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15451300
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14213320
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12107912
      TextColor = clBlack
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14213320
      TextColor = clBlack
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12107912
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8949832
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4673068
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12107912
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6053956
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12107912
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle26: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14213320
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clNavy
    end
    object cxStyle27: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6053956
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle28: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12107912
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle29: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14213320
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle30: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12107912
      TextColor = clBlack
    end
    object cxStyle31: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14213320
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle32: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12107912
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle33: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8949832
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle34: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4673068
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle35: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12107912
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle36: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6053956
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle37: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12107912
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle38: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14213320
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clNavy
    end
    object cxStyle39: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4112833
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object GridBandedTableViewStyleSheetDevExpress: TcxGridBandedTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle1
      Styles.Content = cxStyle4
      Styles.ContentEven = cxStyle5
      Styles.ContentOdd = cxStyle6
      Styles.FilterBox = cxStyle7
      Styles.Inactive = cxStyle12
      Styles.IncSearch = cxStyle13
      Styles.Selection = cxStyle16
      Styles.Footer = cxStyle8
      Styles.Group = cxStyle9
      Styles.GroupByBox = cxStyle10
      Styles.Header = cxStyle11
      Styles.Indicator = cxStyle14
      Styles.Preview = cxStyle15
      Styles.BandBackground = cxStyle2
      Styles.BandHeader = cxStyle3
      BuiltIn = True
    end
    object GridBandedTableViewStyleSheetMarinehighcolor: TcxGridBandedTableViewStyleSheet
      Caption = 'Marine (high color)'
      Styles.Content = cxStyle29
      Styles.ContentEven = cxStyle30
      Styles.ContentOdd = cxStyle31
      Styles.Inactive = cxStyle36
      Styles.Selection = cxStyle39
      Styles.Footer = cxStyle32
      Styles.Group = cxStyle33
      Styles.GroupByBox = cxStyle34
      Styles.Header = cxStyle35
      Styles.Indicator = cxStyle37
      Styles.Preview = cxStyle38
      Styles.BandHeader = cxStyle28
      BuiltIn = True
    end
  end
  object sp_up_jbsypl: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'sys_up_ysjbxx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ysdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@jbdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end>
    Left = 611
    Top = 378
  end
  object ad_jbcx: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select * from icd10 where (jbmc like :jbmc or pybm like :pym or ' +
      'jbbm like :jbbm) and charindex('#39'>'#39',jbbm)=0 order by jbbm'
    Parameters = <
      item
        Name = 'jbmc'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 200
        Value = 'bdxgm'
      end
      item
        Name = 'pym'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 45
        Value = 'bdxgm'
      end
      item
        Name = 'jbbm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end>
    Left = 648
    Top = 337
  end
  object ds_jbbm: TDataSource
    DataSet = ad_jbcx
    Left = 648
    Top = 377
  end
  object ad_jbxx: TADODataSet
    Connection = DM_data.ado_mydata
    LockType = ltReadOnly
    CommandText = 'select * from dzbl_brbl_last where tmh=:bybh and czys=:czys'
    Parameters = <
      item
        Name = 'bybh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end
      item
        Name = 'czys'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    Left = 682
    Top = 337
  end
  object sp_yzincfsf: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'mzdzbl_in_mzyzjf;1'
    Parameters = <
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@kdys'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 100
        Value = Null
      end>
    Left = 456
    Top = 336
  end
  object ad_xzqh: TADODataSet
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 720
    Top = 336
  end
  object ds_xzqh: TDataSource
    DataSet = ad_xzqh
    Left = 720
    Top = 376
  end
  object sp_del_fyls: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'mzdzbl_del_mzyzjf;1'
    Parameters = <
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@kdys'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 100
        Value = Null
      end>
    Left = 680
    Top = 376
  end
  object qry_lsyz: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'cxyzrq'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'cxzyh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from mzdzbl_mzyz where datediff(day,yzrq,:cxyzrq)=0 and' +
        ' zyh=:cxzyh  and zxbz=0  ')
    Left = 760
    Top = 336
    object StringField1: TStringField
      FieldName = 'ph'
      Size = 16
    end
    object StringField2: TStringField
      FieldName = 'tmh'
      Size = 9
    end
    object StringField3: TStringField
      FieldName = 'zyh'
      FixedChar = True
      Size = 16
    end
    object StringField4: TStringField
      FieldName = 'xmdm'
      Size = 14
    end
    object StringField5: TStringField
      FieldName = 'xmmc'
      Size = 100
    end
    object StringField6: TStringField
      FieldName = 'lb'
      FixedChar = True
      Size = 4
    end
    object StringField7: TStringField
      FieldName = 'dw'
      Size = 10
    end
    object IntegerField1: TIntegerField
      FieldName = 'ypdwid'
    end
    object IntegerField2: TIntegerField
      FieldName = 'ypbzbl'
    end
    object IntegerField3: TIntegerField
      FieldName = 'sl'
    end
    object BCDField1: TBCDField
      FieldName = 'yplsj'
      Precision = 18
    end
    object BCDField2: TBCDField
      FieldName = 'ypcgj'
      Precision = 18
    end
    object StringField8: TStringField
      FieldName = 'ypyf'
      FixedChar = True
      Size = 4
    end
    object StringField9: TStringField
      FieldName = 'ypyl'
      Size = 10
    end
    object StringField10: TStringField
      FieldName = 'yldw'
      Size = 10
    end
    object StringField11: TStringField
      DisplayWidth = 8
      FieldName = 'yytj'
      FixedChar = True
      Size = 8
    end
    object StringField12: TStringField
      FieldName = 'yplb'
      FixedChar = True
      Size = 10
    end
    object StringField13: TStringField
      FieldName = 'jcmd'
      Size = 100
    end
    object BooleanField1: TBooleanField
      FieldName = 'zxbz'
    end
    object IntegerField4: TIntegerField
      FieldName = 'fzbz'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'tzrq'
    end
    object StringField14: TStringField
      FieldName = 'tzry'
      FixedChar = True
      Size = 4
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'zfrq'
    end
    object StringField15: TStringField
      FieldName = 'zfry'
      FixedChar = True
      Size = 4
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'zxrq'
    end
    object StringField16: TStringField
      FieldName = 'zxry'
      FixedChar = True
      Size = 4
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'xgrq'
    end
    object StringField17: TStringField
      FieldName = 'xgry'
      FixedChar = True
      Size = 4
    end
    object StringField18: TStringField
      FieldName = 'czks'
      FixedChar = True
      Size = 4
    end
    object StringField19: TStringField
      FieldName = 'kdks'
      FixedChar = True
      Size = 4
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'kdrq'
    end
    object StringField20: TStringField
      FieldName = 'kdys'
      FixedChar = True
      Size = 4
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'yzrq'
    end
    object StringField21: TStringField
      DisplayWidth = 8
      FieldName = 'yzsx'
      FixedChar = True
      Size = 4
    end
    object BooleanField2: TBooleanField
      FieldName = 'shbz'
    end
    object StringField22: TStringField
      FieldName = 'shry'
      FixedChar = True
      Size = 4
    end
    object StringField23: TStringField
      FieldName = 'jcbw'
      Size = 50
    end
    object StringField24: TStringField
      FieldName = 'jcff'
      Size = 50
    end
    object BooleanField3: TBooleanField
      FieldName = 'ypkcbz'
    end
    object StringField25: TStringField
      FieldName = 'czys'
      Size = 4
    end
    object StringField26: TStringField
      FieldName = 'gg'
      Size = 50
    end
    object StringField27: TStringField
      FieldKind = fkLookup
      FieldName = 'czksmc'
      LookupDataSet = qry_ks
      LookupKeyFields = 'dm'
      LookupResultField = 'mc'
      KeyFields = 'czks'
      Lookup = True
    end
    object BooleanField4: TBooleanField
      FieldName = 'sfbz'
    end
    object BooleanField5: TBooleanField
      FieldName = 'msbz'
    end
    object StringField28: TStringField
      FieldName = 'bz'
      Size = 100
    end
    object StringField29: TStringField
      FieldName = 'fzph'
    end
    object IntegerField5: TIntegerField
      FieldName = 'xh'
    end
    object IntegerField6: TIntegerField
      FieldName = 'id'
    end
    object StringField30: TStringField
      FieldName = 'jyyb'
      Size = 10
    end
    object qry_lsyzkdysmc: TStringField
      FieldKind = fkLookup
      FieldName = 'kdysmc'
      LookupDataSet = qry_kdys
      LookupKeyFields = 'dm'
      LookupResultField = 'mc'
      KeyFields = 'kdys'
      Lookup = True
    end
  end
  object ds_lsyz: TDataSource
    DataSet = qry_lsyz
    Left = 760
    Top = 376
  end
  object qry_kdys: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from sys_czy')
    Left = 800
    Top = 336
  end
  object ds_kdys: TDataSource
    DataSet = qry_kdys
    Left = 800
    Top = 376
  end
  object ds_brxx: TDataSource
    DataSet = sp_brxx
    Left = 56
    Top = 112
  end
  object sp_brxx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeScroll = sp_brxxBeforeScroll
    AfterScroll = sp_brxxAfterScroll
    ProcedureName = 'zybl_cx_blbr;1'
    Parameters = <
      item
        Name = '@bqdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ysdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 24
    Top = 112
  end
end
