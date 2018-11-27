object frm_brzh: Tfrm_brzh
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #30149#20154#36134#25143
  ClientHeight = 634
  ClientWidth = 1381
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 1381
    Height = 137
    Align = alTop
    TabOrder = 0
    object lbl3: TLabel
      Left = 624
      Top = 99
      Width = 659
      Height = 32
      Caption = 
        #27880#65306#32418#33394#25552#31034#30149#20154#36153#29992#36798#21040#35686#25106#32447#65288'200'#20803#12289#21307#20445#65288#25276#37329'+'#25285#20445#65289'*3'#35814#32454#35831#30475#36153#29992#35686#25106#32447#65289#35831#27880#24847#20652#27454#13#10#38480#36153#20844#24335#65306#65288#25276#37329#37329#39069'+'#25285#20445#37329#39069 +
        #65289'*'#65288#33258#36153#26080#12289#21307#20445'4'#65289'-['#30149#20154#36153#29992#65288#21547#26410#23457#26680#36153#29992#65289']'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl6: TLabel
      Left = 8
      Top = 105
      Width = 80
      Height = 19
      Caption = #25628#32034#30149#20154#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl7: TLabel
      Left = 334
      Top = 105
      Width = 4
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object pnl2: TPanel
      Left = 5
      Top = -1
      Width = 930
      Height = 31
      BevelInner = bvLowered
      TabOrder = 0
      object btn_sx: TcxButton
        Left = 6
        Top = 3
        Width = 179
        Height = 25
        Caption = #21047#26032
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btn_sxClick
      end
      object btn_dc: TcxButton
        Left = 191
        Top = 3
        Width = 179
        Height = 25
        Caption = #20840#37096#23548#20986#21040' Excel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btn_dcClick
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
        TabOrder = 2
        OnClick = btn_dyylClick
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
        TabOrder = 4
        OnClick = btn_dyClick
      end
    end
    object pnl3: TPanel
      Left = 935
      Top = 0
      Width = 222
      Height = 30
      TabOrder = 1
      object lbl1: TLabel
        Left = 14
        Top = 7
        Width = 64
        Height = 16
        Caption = #25171#21360#26041#21521
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rb2: TRadioButton
        Left = 159
        Top = 6
        Width = 58
        Height = 17
        Caption = #31446#25490
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object rb1: TRadioButton
        Left = 98
        Top = 6
        Width = 55
        Height = 17
        Caption = #27178#25490
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = True
      end
    end
    object pnl4: TPanel
      Left = 568
      Top = 63
      Width = 320
      Height = 30
      Align = alCustom
      TabOrder = 2
      object lbl8: TLabel
        Left = 0
        Top = 7
        Width = 39
        Height = 13
        Caption = #26085#26399#65306
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'lbl6'
        Font.Style = []
        ParentFont = False
      end
      object lbl9: TLabel
        Left = 168
        Top = 7
        Width = 13
        Height = 13
        Caption = #33267
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'lbl6'
        Font.Style = []
        ParentFont = False
      end
      object edt3: TDBDateTimeEditEh
        Left = 41
        Top = 5
        Width = 121
        Height = 21
        EditButtons = <>
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Kind = dtkDateEh
        TabOrder = 0
        Visible = True
        OnChange = btn_sxClick
      end
      object edt4: TDBDateTimeEditEh
        Left = 197
        Top = 5
        Width = 121
        Height = 21
        EditButtons = <>
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Kind = dtkDateEh
        TabOrder = 1
        Visible = True
        OnChange = btn_sxClick
      end
    end
    object pnl5: TPanel
      Left = 196
      Top = 63
      Width = 192
      Height = 30
      Align = alCustom
      TabOrder = 3
      object lbl2: TLabel
        Left = 18
        Top = 7
        Width = 39
        Height = 13
        Caption = #30149#21306#65306
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'lbl6'
        Font.Style = []
        ParentFont = False
      end
      object cbb2: TComboBox
        Left = 63
        Top = 4
        Width = 114
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = #20840#37096
        OnChange = cbb2Change
        Items.Strings = (
          #20840#37096)
      end
    end
    object pnl8: TPanel
      Left = 1158
      Top = 0
      Width = 150
      Height = 30
      TabOrder = 4
      object chk1: TCheckBox
        Left = 5
        Top = 6
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
        TabOrder = 0
      end
    end
    object pnl9: TPanel
      Left = 1308
      Top = 0
      Width = 94
      Height = 30
      TabOrder = 5
      object chk2: TCheckBox
        Left = 7
        Top = 7
        Width = 82
        Height = 17
        Caption = #25968#25454#36873#25321
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = chk2Click
      end
    end
    object btn1: TButton
      Left = 5
      Top = 36
      Width = 137
      Height = 25
      Caption = #26597#21457#31080#39033#27719#24635#34920
      TabOrder = 6
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 148
      Top = 36
      Width = 137
      Height = 25
      Caption = #26597#25910#36153#39033#27719#24635#34920
      TabOrder = 7
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 291
      Top = 36
      Width = 137
      Height = 25
      Caption = #24403#26085#36153#29992#28165#21333
      TabOrder = 8
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 434
      Top = 36
      Width = 137
      Height = 25
      Caption = #25276#37329#26126#32454#26597#35810
      TabOrder = 9
      OnClick = btn4Click
    end
    object pnl6: TPanel
      Left = 5
      Top = 63
      Width = 196
      Height = 30
      Align = alCustom
      TabOrder = 10
      object lbl4: TLabel
        Left = 7
        Top = 7
        Width = 65
        Height = 13
        Caption = #30149#20154#31867#22411#65306
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'lbl6'
        Font.Style = []
        ParentFont = False
      end
      object cbb1: TComboBox
        Left = 71
        Top = 4
        Width = 114
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = #20840#37096
        OnChange = btn_sxClick
        Items.Strings = (
          #20840#37096)
      end
    end
    object pnl7: TPanel
      Left = 388
      Top = 63
      Width = 179
      Height = 30
      Align = alCustom
      TabOrder = 11
      object lbl5: TLabel
        Left = 18
        Top = 7
        Width = 39
        Height = 13
        Caption = #31185#23460#65306
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'lbl6'
        Font.Style = []
        ParentFont = False
      end
      object cbb3: TComboBox
        Left = 54
        Top = 4
        Width = 114
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = #20840#37096
        OnChange = btn_sxClick
        Items.Strings = (
          #20840#37096)
      end
    end
    object edt1: TEdit
      Left = 94
      Top = 102
      Width = 227
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 12
      OnChange = btn_sxClick
      OnKeyDown = edt1KeyDown
    end
    object chk3: TCheckBox
      Left = 596
      Top = 40
      Width = 101
      Height = 17
      Caption = #26597#35810#32454#39033#20840#37096
      TabOrder = 13
    end
  end
  object stat1: TStatusBar
    Left = 0
    Top = 615
    Width = 1381
    Height = 19
    Color = clInactiveCaption
    Panels = <
      item
        Text = #23548#33322#22270
        Width = 200
      end
      item
        Text = #30149#20154#36134#25143#65288#36130#21153#65289
        Width = 300
      end
      item
        Text = #33606#38376#24066#25479#20992#20154#27665#21307#38498
        Width = 150
      end
      item
        Text = #25805#20316#21592#65306
        Width = 200
      end
      item
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Text = #22235#24029#27427#38451#31185#25216#26377#38480#20844#21496
        Width = 50
      end>
  end
  object pnl10: TPanel
    Left = 0
    Top = 137
    Width = 1381
    Height = 478
    Align = alClient
    Caption = 'pnl10'
    TabOrder = 2
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 1379
      Height = 476
      ActivePage = cxtbsht1
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 476
      ClientRectRight = 1379
      ClientRectTop = 24
      object cxtbsht1: TcxTabSheet
        Caption = #33258#36153#22312#38498#30149#20154
        ImageIndex = 0
        OnShow = cxtbsht1Show
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dbgrdh1: TDBGridEh
          Left = 0
          Top = 0
          Width = 1379
          Height = 452
          Align = alClient
          DataGrouping.GroupLevels = <>
          DataSource = ds2
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'Tahoma'
          FooterFont.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
          ParentFont = False
          RowDetailPanel.Color = clBtnFace
          RowHeight = 4
          RowLines = 1
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          UseMultiTitle = True
          OnDrawColumnCell = dbgrdh1DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = #30149#21306
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#30149#21306
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = #20303#38498#21495
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#20303#38498#21495
            end
            item
              EditButtons = <>
              FieldName = #22995#21517
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#22995#21517
              Width = 43
            end
            item
              EditButtons = <>
              FieldName = #30149#24202
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#30149#24202
              Width = 44
            end
            item
              EditButtons = <>
              FieldName = #31867#22411
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#31867#22411
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = #39044#20132#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#39044#20132#24635#39069
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = #24050#29992#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#24050#29992#37329#39069
            end
            item
              EditButtons = <>
              FieldName = #23454#25910#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#23454#25910#37329#39069
            end
            item
              EditButtons = <>
              FieldName = #32467#31639#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#32467#31639#37329#39069
              Width = 63
            end
            item
              EditButtons = <>
              FieldName = #32467#31639#36864#27454
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#32467#31639#36864#27454
            end
            item
              EditButtons = <>
              FieldName = #32467#23384#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#32467#23384#37329#39069
              Width = 58
            end
            item
              EditButtons = <>
              FieldName = #25285#20445#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#25285#20445#37329#39069
              Width = 77
            end
            item
              EditButtons = <>
              FieldName = #25285#20445#20154
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#25285#20445#20154
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = #29366#24577
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#29366#24577
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = #20303#38498
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#20303#38498
              Width = 44
            end
            item
              EditButtons = <>
              FieldName = #20837#38498#26085#26399
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#20837#38498#26085#26399
              Width = 53
            end
            item
              EditButtons = <>
              FieldName = #31185#23460
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#31185#23460
            end
            item
              EditButtons = <>
              FieldName = #20027#27835#21307#24072
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#20027#27835#21307#29983
            end
            item
              EditButtons = <>
              FieldName = #20837#38498#35786#26029
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#20837#38498#35786#26029
              Width = 101
            end
            item
              EditButtons = <>
              FieldName = #25340#38899#30721
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#25340#38899#30721
              Width = 91
            end
            item
              EditButtons = <>
              FieldName = #21487#29992#20313#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#21487#29992#20313#39069
              Width = 91
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object cxtbsht2: TcxTabSheet
        Caption = #21307#20445#22312#38498#30149#20154
        ImageIndex = 1
        OnShow = cxtbsht2Show
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dbgrdh2: TDBGridEh
          Left = 0
          Top = 0
          Width = 1379
          Height = 452
          Align = alClient
          DataGrouping.GroupLevels = <>
          DataSource = ds2
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'Tahoma'
          FooterFont.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
          ParentFont = False
          RowDetailPanel.Color = clBtnFace
          RowHeight = 4
          RowLines = 1
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          UseMultiTitle = True
          OnDrawColumnCell = dbgrdh2DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = #30149#21306
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#30149#21306
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = #20303#38498#21495
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#20303#38498#21495
            end
            item
              EditButtons = <>
              FieldName = #22995#21517
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#22995#21517
              Width = 43
            end
            item
              EditButtons = <>
              FieldName = #30149#24202
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#30149#24202
              Width = 44
            end
            item
              EditButtons = <>
              FieldName = #31867#22411
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#31867#22411
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = #39044#20132#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#39044#20132#24635#39069
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = #24050#29992#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#24050#29992#37329#39069
            end
            item
              EditButtons = <>
              FieldName = #23454#25910#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#23454#25910#37329#39069
            end
            item
              EditButtons = <>
              FieldName = #32467#31639#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#32467#31639#37329#39069
              Width = 63
            end
            item
              EditButtons = <>
              FieldName = #32467#31639#36864#27454
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#32467#31639#36864#27454
            end
            item
              EditButtons = <>
              FieldName = #32467#23384#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#32467#23384#37329#39069
              Width = 58
            end
            item
              EditButtons = <>
              FieldName = #25285#20445#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#25285#20445#37329#39069
              Width = 77
            end
            item
              EditButtons = <>
              FieldName = #25285#20445#20154
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#25285#20445#20154
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = #29366#24577
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#29366#24577
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = #20303#38498
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#20303#38498
              Width = 44
            end
            item
              EditButtons = <>
              FieldName = #20837#38498#26085#26399
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#20837#38498#26085#26399
              Width = 53
            end
            item
              EditButtons = <>
              FieldName = #31185#23460
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#31185#23460
            end
            item
              EditButtons = <>
              FieldName = #20027#27835#21307#24072
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#20027#27835#21307#29983
            end
            item
              EditButtons = <>
              FieldName = #20837#38498#35786#26029
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#20837#38498#35786#26029
              Width = 101
            end
            item
              EditButtons = <>
              FieldName = #25340#38899#30721
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#25340#38899#30721
              Width = 91
            end
            item
              EditButtons = <>
              FieldName = #21487#29992#20313#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#21487#29992#20313#39069
              Width = 91
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object cxtbsht3: TcxTabSheet
        Caption = #20986#38498#26410#32467#31639#30149#20154
        ImageIndex = 2
        OnShow = cxtbsht3Show
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dbgrdh3: TDBGridEh
          Left = 0
          Top = 0
          Width = 1379
          Height = 452
          Align = alClient
          DataGrouping.GroupLevels = <>
          DataSource = ds2
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'Tahoma'
          FooterFont.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
          ParentFont = False
          RowDetailPanel.Color = clBtnFace
          RowHeight = 4
          RowLines = 1
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          UseMultiTitle = True
          OnDrawColumnCell = dbgrdh3DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = #30149#21306
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#30149#21306
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = #20303#38498#21495
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#20303#38498#21495
            end
            item
              EditButtons = <>
              FieldName = #22995#21517
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#22995#21517
              Width = 43
            end
            item
              EditButtons = <>
              FieldName = #30149#24202
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#30149#24202
              Width = 44
            end
            item
              EditButtons = <>
              FieldName = #31867#22411
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#31867#22411
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = #39044#20132#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#39044#20132#24635#39069
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = #24050#29992#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#24050#29992#37329#39069
            end
            item
              EditButtons = <>
              FieldName = #23454#25910#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#23454#25910#37329#39069
            end
            item
              EditButtons = <>
              FieldName = #32467#31639#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#32467#31639#37329#39069
              Width = 63
            end
            item
              EditButtons = <>
              FieldName = #32467#31639#36864#27454
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#32467#31639#36864#27454
            end
            item
              EditButtons = <>
              FieldName = #32467#23384#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#32467#23384#37329#39069
              Width = 58
            end
            item
              EditButtons = <>
              FieldName = #25285#20445#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#25285#20445#37329#39069
              Width = 77
            end
            item
              EditButtons = <>
              FieldName = #25285#20445#20154
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#25285#20445#20154
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = #29366#24577
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#29366#24577
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = #20303#38498
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#20303#38498
              Width = 44
            end
            item
              EditButtons = <>
              FieldName = #20837#38498#26085#26399
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#20837#38498#26085#26399
              Width = 53
            end
            item
              EditButtons = <>
              FieldName = #31185#23460
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#31185#23460
            end
            item
              EditButtons = <>
              FieldName = #20027#27835#21307#24072
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#20027#27835#21307#29983
            end
            item
              EditButtons = <>
              FieldName = #20837#38498#35786#26029
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#20837#38498#35786#26029
              Width = 101
            end
            item
              EditButtons = <>
              FieldName = #25340#38899#30721
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#25340#38899#30721
              Width = 91
            end
            item
              EditButtons = <>
              FieldName = #21487#29992#20313#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#21487#29992#20313#39069
              Width = 91
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object cxtbsht4: TcxTabSheet
        Caption = #20986#38498#32467#31639#30149#20154
        ImageIndex = 3
        OnShow = cxtbsht4Show
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dbgrdh4: TDBGridEh
          Left = 0
          Top = 0
          Width = 1379
          Height = 452
          Align = alClient
          DataGrouping.GroupLevels = <>
          DataSource = ds2
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'Tahoma'
          FooterFont.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
          ParentFont = False
          RowDetailPanel.Color = clBtnFace
          RowHeight = 4
          RowLines = 1
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          UseMultiTitle = True
          OnDrawColumnCell = dbgrdh4DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = #30149#21306
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#30149#21306
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = #20303#38498#21495
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#20303#38498#21495
            end
            item
              EditButtons = <>
              FieldName = #22995#21517
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#22995#21517
              Width = 43
            end
            item
              EditButtons = <>
              FieldName = #30149#24202
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#30149#24202
              Width = 44
            end
            item
              EditButtons = <>
              FieldName = #31867#22411
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#31867#22411
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = #39044#20132#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#39044#20132#24635#39069
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = #24050#29992#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#24050#29992#37329#39069
            end
            item
              EditButtons = <>
              FieldName = #23454#25910#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#23454#25910#37329#39069
            end
            item
              EditButtons = <>
              FieldName = #32467#31639#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#32467#31639#37329#39069
              Width = 63
            end
            item
              EditButtons = <>
              FieldName = #32467#31639#36864#27454
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#32467#31639#36864#27454
            end
            item
              EditButtons = <>
              FieldName = #32467#23384#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#32467#23384#37329#39069
              Width = 58
            end
            item
              EditButtons = <>
              FieldName = #25285#20445#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#25285#20445#37329#39069
              Width = 77
            end
            item
              EditButtons = <>
              FieldName = #25285#20445#20154
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#25285#20445#20154
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = #29366#24577
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#29366#24577
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = #20303#38498
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#20303#38498
              Width = 44
            end
            item
              EditButtons = <>
              FieldName = #20837#38498#26085#26399
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#20837#38498#26085#26399
              Width = 53
            end
            item
              EditButtons = <>
              FieldName = #31185#23460
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#31185#23460
            end
            item
              EditButtons = <>
              FieldName = #20027#27835#21307#24072
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#20027#27835#21307#29983
            end
            item
              EditButtons = <>
              FieldName = #20837#38498#35786#26029
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#20837#38498#35786#26029
              Width = 101
            end
            item
              EditButtons = <>
              FieldName = #25340#38899#30721
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#25340#38899#30721
              Width = 91
            end
            item
              EditButtons = <>
              FieldName = #21487#29992#20313#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#21487#29992#20313#39069
              Width = 91
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object cxtbsht5: TcxTabSheet
        Caption = #36867#36153#30149#20154
        ImageIndex = 4
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dbgrdh5: TDBGridEh
          Left = 0
          Top = 0
          Width = 1379
          Height = 452
          Align = alClient
          DataGrouping.GroupLevels = <>
          DataSource = ds2
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'Tahoma'
          FooterFont.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
          ParentFont = False
          RowDetailPanel.Color = clBtnFace
          RowHeight = 4
          RowLines = 1
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          UseMultiTitle = True
          OnDrawColumnCell = dbgrdh5DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = #30149#21306
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#30149#21306
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = #20303#38498#21495
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#20303#38498#21495
            end
            item
              EditButtons = <>
              FieldName = #22995#21517
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#22995#21517
              Width = 43
            end
            item
              EditButtons = <>
              FieldName = #30149#24202
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#30149#24202
              Width = 44
            end
            item
              EditButtons = <>
              FieldName = #31867#22411
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#31867#22411
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = #39044#20132#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#39044#20132#24635#39069
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = #24050#29992#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#24050#29992#37329#39069
            end
            item
              EditButtons = <>
              FieldName = #23454#25910#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#23454#25910#37329#39069
            end
            item
              EditButtons = <>
              FieldName = #32467#31639#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#32467#31639#37329#39069
              Width = 63
            end
            item
              EditButtons = <>
              FieldName = #32467#31639#36864#27454
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#32467#31639#36864#27454
            end
            item
              EditButtons = <>
              FieldName = #32467#23384#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#32467#23384#37329#39069
              Width = 58
            end
            item
              EditButtons = <>
              FieldName = #25285#20445#37329#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#25285#20445#37329#39069
              Width = 77
            end
            item
              EditButtons = <>
              FieldName = #25285#20445#20154
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#25285#20445#20154
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = #29366#24577
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#29366#24577
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = #20303#38498
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#20303#38498
              Width = 44
            end
            item
              EditButtons = <>
              FieldName = #20837#38498#26085#26399
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#20837#38498#26085#26399
              Width = 53
            end
            item
              EditButtons = <>
              FieldName = #31185#23460
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#31185#23460
            end
            item
              EditButtons = <>
              FieldName = #20027#27835#21307#24072
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#20027#27835#21307#29983
            end
            item
              EditButtons = <>
              FieldName = #20837#38498#35786#26029
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#20837#38498#35786#26029
              Width = 101
            end
            item
              EditButtons = <>
              FieldName = #25340#38899#30721
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#25340#38899#30721
              Width = 91
            end
            item
              EditButtons = <>
              FieldName = #21487#29992#20313#39069
              Footers = <>
              Title.Caption = #33258#36153#22312#38498#30149#20154'|'#21487#29992#20313#39069
              Width = 91
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
  end
  object dbgrdh6: TDBGridEh
    Left = 94
    Top = 130
    Width = 859
    Height = 255
    Color = clGradientInactiveCaption
    DataGrouping.GroupLevels = <>
    DataSource = ds1
    EvenRowColor = clWindow
    FixedColor = clGradientInactiveCaption
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    FooterColor = clWindowText
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ParentFont = False
    RowDetailPanel.Color = clBtnFace
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    OnDblClick = dbgrdh6DblClick
    OnKeyDown = dbgrdh6KeyDown
    Columns = <
      item
        EditButtons = <>
        FieldName = 'tmh'
        Footers = <>
        Title.Caption = #26465#30721#21495
      end
      item
        EditButtons = <>
        FieldName = 'zyh'
        Footers = <>
        Title.Caption = #20303#38498#21495
        Width = 162
      end
      item
        EditButtons = <>
        FieldName = 'brxm'
        Footers = <>
        Title.Caption = #30149#20154#22995#21517
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'brxb'
        Footers = <>
        Title.Caption = #30149#20154#24615#21035
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'sfzhm'
        Footers = <>
        Title.Caption = #36523#20221#35777#21495#30721
        Width = 143
      end
      item
        EditButtons = <>
        FieldName = 'ryrq'
        Footers = <>
        Title.Caption = #20837#38498#26085#26399
        Width = 145
      end
      item
        EditButtons = <>
        FieldName = 'cyrq'
        Footers = <>
        Title.Caption = #20986#38498#26085#26399
        Width = 165
      end
      item
        EditButtons = <>
        FieldName = 'sfcy'
        Footers = <>
        Title.Caption = #26159#21542#22312#38498
        Width = 56
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object qry1: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    Left = 296
    Top = 288
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 328
    Top = 288
  end
  object sp1: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zdybb_cx_brzh'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@bqmc'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = #39#39
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = #39#39
      end
      item
        Name = '@brlx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = #39#39
      end
      item
        Name = '@cyjsksrq'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = '1991-11-17'
      end
      item
        Name = '@cyjsjsrq'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = '1991-11-17'
      end
      item
        Name = '@lxsx'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = '@zyh'
        DataType = ftString
        Size = 2
        Value = #39#39
      end>
    Left = 32
    Top = 224
  end
  object ds2: TDataSource
    DataSet = sp1
    Left = 64
    Top = 224
  end
  object qry_cob: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 184
    Top = 80
  end
  object cxStyleRepository3: TcxStyleRepository
    object cxStyle5: TcxStyle
    end
  end
  object dlgSave1: TSaveDialog
    FilterIndex = 5
    Left = 368
    Top = 88
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
    Left = 544
    Top = 128
  end
end
