object frm_yzsfxm: Tfrm_yzsfxm
  Left = 91
  Top = 100
  Anchors = []
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #21307#22065#39033#30446#20195#30721#35774#32622
  ClientHeight = 600
  ClientWidth = 1012
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1012
    Height = 600
    Align = alClient
    BevelInner = bvLowered
    BiDiMode = bdLeftToRight
    BorderStyle = bsSingle
    ParentBiDiMode = False
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 305
      Top = 2
      Height = 592
      ExplicitHeight = 310
    end
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 303
      Height = 592
      Align = alLeft
      BevelInner = bvLowered
      TabOrder = 0
      object treeviewzp: TTreeView
        Left = 2
        Top = 2
        Width = 299
        Height = 588
        Align = alClient
        AutoExpand = True
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        Images = ImageList1
        Indent = 19
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnChange = treeviewzpChange
      end
    end
    object cxPageControl1: TcxPageControl
      Left = 308
      Top = 2
      Width = 698
      Height = 592
      ActivePage = cxTabSheet1
      Align = alClient
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      Style = 10
      TabOrder = 1
      ClientRectBottom = 592
      ClientRectRight = 698
      ClientRectTop = 21
      object cxTabSheet1: TcxTabSheet
        Caption = '        '#21307#22065#26126#32454#35774#32622'        '
        Color = clBtnFace
        ImageIndex = 0
        ParentColor = False
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 698
          Height = 571
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Splitter2: TSplitter
            Left = 0
            Top = 240
            Width = 698
            Height = 3
            Cursor = crVSplit
            Align = alTop
            ExplicitTop = 268
            ExplicitWidth = 582
          end
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 698
            Height = 240
            Align = alTop
            BevelInner = bvLowered
            TabOrder = 0
            object geYzxm: TDBGridEh
              Left = 2
              Top = 2
              Width = 694
              Height = 236
              Align = alClient
              DataGrouping.GroupLevels = <>
              DataSource = ds_fydm
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = GB2312_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -15
              FooterFont.Name = #23435#20307
              FooterFont.Style = []
              ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              RowDetailPanel.Color = clBtnFace
              TabOrder = 0
              TitleFont.Charset = GB2312_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -15
              TitleFont.Name = #23435#20307
              TitleFont.Style = []
              OnKeyPress = geYzxmKeyPress
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'xmdm'
                  Footers = <>
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = #20195#30721
                  Width = 40
                end
                item
                  EditButtons = <>
                  FieldName = 'xmmc'
                  Footers = <>
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = #39033#30446#21517#31216
                  Width = 170
                end
                item
                  EditButtons = <>
                  FieldName = 'dw'
                  Footers = <>
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = #21333#20301
                  Width = 45
                end
                item
                  EditButtons = <>
                  FieldName = 'qybz'
                  Footers = <>
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = #26631#24535
                  Width = 40
                end
                item
                  Alignment = taCenter
                  EditButtons = <>
                  FieldName = 'yb'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #26816#39564#26679#26412
                  Width = 117
                end
                item
                  EditButtons = <>
                  FieldName = 'xsbz'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #26174#31034
                  Width = 40
                end
                item
                  Alignment = taCenter
                  EditButtons = <>
                  FieldName = 'xsxh'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #24207#21495
                  Width = 40
                end
                item
                  EditButtons = <>
                  FieldName = 'pym'
                  Footers = <>
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = #25340#38899#30721
                  Width = 86
                end
                item
                  EditButtons = <>
                  FieldName = 'bz'
                  Footers = <>
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = #22791'  '#27880
                  Width = 81
                end
                item
                  EditButtons = <>
                  FieldName = 'hotKey'
                  Footers = <>
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = #28909' '#38190
                  Width = 85
                end
                item
                  EditButtons = <>
                  FieldName = 'dymc'
                  Footers = <>
                  Title.Caption = #25171#21360#21517#31216
                  Width = 100
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
          object cxPageControl2: TcxPageControl
            Left = 0
            Top = 243
            Width = 698
            Height = 328
            ActivePage = cxTabSheet3
            Align = alClient
            TabOrder = 1
            ClientRectBottom = 328
            ClientRectRight = 698
            ClientRectTop = 26
            object cxTabSheet3: TcxTabSheet
              Caption = '      '#22522#26412#20449#24687'      '
              ImageIndex = 0
              object Panel6: TPanel
                Left = 0
                Top = 0
                Width = 698
                Height = 302
                Align = alClient
                BevelInner = bvLowered
                TabOrder = 0
                object Label2: TLabel
                  Left = 16
                  Top = 56
                  Width = 60
                  Height = 15
                  AutoSize = False
                  Caption = #39033#30446#21517#31216
                  FocusControl = DBEdit2
                end
                object Label3: TLabel
                  Left = 16
                  Top = 83
                  Width = 60
                  Height = 15
                  AutoSize = False
                  Caption = #25340#38899#32534#30721
                  FocusControl = DBEdit3
                end
                object Label6: TLabel
                  Left = 331
                  Top = 87
                  Width = 60
                  Height = 15
                  AutoSize = False
                  Caption = #21161#35760#32534#30721
                  FocusControl = DBEdit5
                end
                object Label5: TLabel
                  Left = 21
                  Top = 135
                  Width = 54
                  Height = 15
                  AutoSize = False
                  Caption = #21333'   '#20301
                end
                object Label12: TLabel
                  Left = 331
                  Top = 138
                  Width = 62
                  Height = 15
                  AutoSize = False
                  Caption = #28909'    '#38190
                  FocusControl = DBEdit13
                end
                object Label1: TLabel
                  Left = 16
                  Top = 28
                  Width = 60
                  Height = 15
                  Caption = #39033#30446#20195#30721
                  FocusControl = DBEdit1
                end
                object Label10: TLabel
                  Left = 331
                  Top = 28
                  Width = 60
                  Height = 15
                  Caption = #39033#30446#31867#21035
                  FocusControl = DBEdit10
                end
                object Label11: TLabel
                  Left = 16
                  Top = 164
                  Width = 60
                  Height = 15
                  Caption = #38376#35786#31185#23460
                end
                object Label16: TLabel
                  Left = 331
                  Top = 165
                  Width = 60
                  Height = 15
                  Caption = #20303#38498#31185#23460
                end
                object Label7: TLabel
                  Left = 16
                  Top = 191
                  Width = 60
                  Height = 15
                  Caption = #36153#29992#20195#30721
                end
                object Label8: TLabel
                  Left = 16
                  Top = 218
                  Width = 54
                  Height = 15
                  Caption = #22791'   '#27880
                end
                object Label4: TLabel
                  Left = 16
                  Top = 242
                  Width = 60
                  Height = 15
                  Caption = #36136#25511#23646#24615
                end
                object Label9: TLabel
                  Left = 362
                  Top = 241
                  Width = 60
                  Height = 15
                  Caption = #35797#31649#39068#33394
                end
                object Label13: TLabel
                  Left = 517
                  Top = 241
                  Width = 60
                  Height = 15
                  Caption = #26816#26597#35774#22791
                  Visible = False
                end
                object Label14: TLabel
                  Left = 17
                  Top = 112
                  Width = 60
                  Height = 15
                  Caption = #25171#21360#21517#31216
                  FocusControl = DBEdit13
                end
                object DBEdit2: TDBEdit
                  Left = 82
                  Top = 52
                  Width = 529
                  Height = 21
                  AutoSize = False
                  Ctl3D = False
                  DataField = 'xmmc'
                  DataSource = ds_fydm
                  ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                  ParentCtl3D = False
                  TabOrder = 3
                  OnExit = DBEdit2Exit
                end
                object DBEdit3: TDBEdit
                  Left = 82
                  Top = 79
                  Width = 210
                  Height = 21
                  AutoSize = False
                  Ctl3D = False
                  DataField = 'pym'
                  DataSource = ds_fydm
                  ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                  ParentCtl3D = False
                  TabOrder = 0
                end
                object DBEdit5: TDBEdit
                  Left = 401
                  Top = 83
                  Width = 210
                  Height = 21
                  AutoSize = False
                  Ctl3D = False
                  DataField = 'typym'
                  DataSource = ds_fydm
                  ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                  ParentCtl3D = False
                  TabOrder = 4
                end
                object DBEdit4: TDBEdit
                  Left = 82
                  Top = 135
                  Width = 210
                  Height = 21
                  AutoSize = False
                  Ctl3D = False
                  DataField = 'dw'
                  DataSource = ds_fydm
                  ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                  ParentCtl3D = False
                  TabOrder = 5
                end
                object DBEdit13: TDBEdit
                  Left = 401
                  Top = 133
                  Width = 210
                  Height = 21
                  AutoSize = False
                  Ctl3D = False
                  DataField = 'hotkey'
                  DataSource = ds_fydm
                  ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                  ParentCtl3D = False
                  TabOrder = 6
                end
                object DBEdit1: TDBEdit
                  Left = 82
                  Top = 24
                  Width = 210
                  Height = 21
                  Ctl3D = False
                  DataField = 'xmdm'
                  DataSource = ds_fydm
                  Enabled = False
                  ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                  ParentCtl3D = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdit10: TDBEdit
                  Left = 401
                  Top = 24
                  Width = 210
                  Height = 21
                  Ctl3D = False
                  DataField = 'dldm'
                  DataSource = ds_fydm
                  ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                  ParentCtl3D = False
                  TabOrder = 2
                end
                object editmzks: TEdit
                  Left = 82
                  Top = 160
                  Width = 210
                  Height = 21
                  Ctl3D = False
                  ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                  ParentCtl3D = False
                  TabOrder = 7
                  OnChange = editmzksChange
                  OnKeyPress = editmzksKeyPress
                end
                object editzyks: TEdit
                  Left = 401
                  Top = 161
                  Width = 210
                  Height = 21
                  Ctl3D = False
                  ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                  ParentCtl3D = False
                  TabOrder = 8
                  OnChange = editzyksChange
                  OnKeyPress = editzyksKeyPress
                end
                object Edit1: TEdit
                  Left = 82
                  Top = 187
                  Width = 64
                  Height = 21
                  Ctl3D = False
                  ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                  ParentCtl3D = False
                  TabOrder = 9
                  OnKeyPress = Edit1KeyPress
                end
                object Edit2: TEdit
                  Left = 153
                  Top = 187
                  Width = 139
                  Height = 21
                  Ctl3D = False
                  ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                  ParentCtl3D = False
                  TabOrder = 10
                end
                object chUseMark: TDBCheckBox
                  Left = 340
                  Top = 190
                  Width = 81
                  Height = 17
                  Alignment = taLeftJustify
                  Caption = #21551#29992#26631#24535
                  Ctl3D = True
                  DataField = 'qybz'
                  DataSource = ds_fydm
                  ParentCtl3D = False
                  TabOrder = 11
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  OnClick = chUseMarkClick
                end
                object DBEdit6: TDBEdit
                  Left = 82
                  Top = 213
                  Width = 529
                  Height = 21
                  Ctl3D = False
                  DataField = 'bz'
                  DataSource = ds_fydm
                  ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                  ParentCtl3D = False
                  TabOrder = 15
                  OnKeyPress = DBEdit6KeyPress
                end
                object chMzMark: TDBCheckBox
                  Left = 427
                  Top = 191
                  Width = 81
                  Height = 17
                  Alignment = taLeftJustify
                  Caption = #38376#35786#26631#24535
                  Ctl3D = True
                  DataField = 'mzbz'
                  DataSource = ds_fydm
                  ParentCtl3D = False
                  TabOrder = 12
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  OnClick = chUseMarkClick
                end
                object chZyMark: TDBCheckBox
                  Left = 523
                  Top = 191
                  Width = 81
                  Height = 17
                  Alignment = taLeftJustify
                  Caption = #20303#38498#26631#24535
                  Ctl3D = True
                  DataField = 'zybz'
                  DataSource = ds_fydm
                  ParentCtl3D = False
                  TabOrder = 13
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  OnClick = chUseMarkClick
                end
                object Panel7: TPanel
                  Left = 2
                  Top = 265
                  Width = 694
                  Height = 35
                  Align = alBottom
                  BevelInner = bvLowered
                  TabOrder = 14
                  object btExit: TBitBtn
                    Left = 567
                    Top = 6
                    Width = 70
                    Height = 24
                    Caption = #36864#20986'[&X]'
                    Font.Charset = GB2312_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = #23435#20307
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 8
                    OnClick = btExitClick
                    Kind = bkClose
                  end
                  object b_add: TButton
                    Left = 5
                    Top = 6
                    Width = 59
                    Height = 24
                    Caption = #22686#21152'[&A]'
                    Font.Charset = GB2312_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = #23435#20307
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    OnClick = b_addClick
                  end
                  object b_edit: TButton
                    Left = 65
                    Top = 6
                    Width = 59
                    Height = 24
                    Caption = #20462#25913'[&E]'
                    Font.Charset = GB2312_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = #23435#20307
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 1
                    OnClick = b_editClick
                  end
                  object b_cx: TButton
                    Left = 125
                    Top = 6
                    Width = 59
                    Height = 24
                    Caption = #26597#35810'[&L]'
                    Font.Charset = GB2312_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = #23435#20307
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 2
                    OnClick = b_cxClick
                  end
                  object b_print: TBitBtn
                    Left = 186
                    Top = 6
                    Width = 59
                    Height = 24
                    Caption = #25171#21360'[&P]'
                    Font.Charset = GB2312_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = #23435#20307
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 3
                    OnClick = b_printClick
                  end
                  object b_delete: TBitBtn
                    Left = 247
                    Top = 6
                    Width = 59
                    Height = 24
                    Caption = #21024#38500'[&D]'
                    Font.Charset = GB2312_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = #23435#20307
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 4
                    OnClick = b_deleteClick
                  end
                  object b_save: TButton
                    Left = 309
                    Top = 6
                    Width = 80
                    Height = 24
                    Caption = #21307#22065#22823#31867'[&O]'
                    Font.Charset = GB2312_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = #23435#20307
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 5
                    OnClick = b_saveClick
                  end
                  object b_Input: TButton
                    Left = 390
                    Top = 6
                    Width = 80
                    Height = 24
                    Caption = #39033#30446#23548#20837'[&I]'
                    Font.Charset = GB2312_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = #23435#20307
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 6
                    OnClick = b_InputClick
                  end
                  object btJyyb: TButton
                    Left = 470
                    Top = 6
                    Width = 80
                    Height = 24
                    Caption = #26816#39564#26679#26412'[&J]'
                    Font.Charset = GB2312_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = #23435#20307
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 7
                    OnClick = btJyybClick
                  end
                end
                object ComboBox1: TComboBox
                  Left = 82
                  Top = 237
                  Width = 140
                  Height = 23
                  ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                  ItemHeight = 15
                  TabOrder = 16
                  Text = 'ComboBox1'
                  Items.Strings = (
                    #25163#26415
                    #26377#21019#25805#20316
                    #25250#25937)
                end
                object DBCheckBox1: TDBCheckBox
                  Left = 225
                  Top = 240
                  Width = 129
                  Height = 17
                  Caption = #26159#21542#31934#31070#31867#21307#22065
                  DataField = 'jsyz'
                  DataSource = ds_fydm
                  TabOrder = 17
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                end
                object ComboBox2: TComboBox
                  Left = 427
                  Top = 236
                  Width = 87
                  Height = 23
                  Style = csDropDownList
                  ItemHeight = 15
                  TabOrder = 18
                  Items.Strings = (
                    #32418
                    #34013
                    #32043
                    #40657
                    #32511
                    #40644
                    #27224#40644
                    #26222#36890)
                end
                object ComboBox3: TComboBox
                  Left = 576
                  Top = 236
                  Width = 118
                  Height = 23
                  ItemHeight = 15
                  TabOrder = 19
                  Visible = False
                  Items.Strings = (
                    #32418
                    #34013
                    #32043
                    #40657
                    #32511
                    #40644
                    #27224#40644
                    #26222#36890)
                end
                object DBEdit14: TDBEdit
                  Left = 83
                  Top = 107
                  Width = 316
                  Height = 23
                  DataField = 'dymc'
                  DataSource = ds_fydm
                  ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                  TabOrder = 20
                end
                object dbchkzybz: TDBCheckBox
                  Left = 610
                  Top = 190
                  Width = 81
                  Height = 17
                  Alignment = taLeftJustify
                  Caption = #25171#21253#22823#39033
                  Ctl3D = True
                  DataField = 'yzxmlb'
                  DataSource = ds_fydm
                  ParentCtl3D = False
                  TabOrder = 21
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  OnClick = chUseMarkClick
                end
              end
            end
            object cxTabSheet4: TcxTabSheet
              Caption = '    '#23545#24212#22788#32622#20301#32622'    '
              ImageIndex = 1
              object gcCzwz: TcxGrid
                Left = 420
                Top = 0
                Width = 278
                Height = 256
                HelpType = htKeyword
                HelpKeyword = 'H'
                Align = alRight
                TabOrder = 0
                LookAndFeel.Kind = lfOffice11
                LookAndFeel.NativeStyle = False
                RootLevelOptions.DetailFrameWidth = 1
                object gvCzwz: TcxGridDBTableView
                  NavigatorButtons.ConfirmDelete = False
                  NavigatorButtons.First.Visible = True
                  NavigatorButtons.PriorPage.Visible = True
                  NavigatorButtons.Prior.Visible = True
                  NavigatorButtons.Next.Visible = True
                  NavigatorButtons.NextPage.Visible = True
                  NavigatorButtons.Last.Visible = True
                  NavigatorButtons.Insert.Visible = True
                  NavigatorButtons.Delete.Visible = True
                  NavigatorButtons.Edit.Visible = True
                  NavigatorButtons.Post.Visible = True
                  NavigatorButtons.Cancel.Visible = True
                  NavigatorButtons.Refresh.Visible = True
                  NavigatorButtons.SaveBookmark.Visible = True
                  NavigatorButtons.GotoBookmark.Visible = True
                  NavigatorButtons.Filter.Visible = True
                  BackgroundBitmaps.Group.Data = {
                    B62B0000424DB62B00000000000036000000280000004D000000300000000100
                    180000000000802B0000D60E0000D60E00000000000000000000DDDDDDDDDDDD
                    EEEEEEDDDDDDEEEEEEDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDCCCCCCCC
                    CCCCDDDDDDCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDD
                    DDDDDDDDDDDDDDCCCCCCCCCCCCCCCC99CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCC99CCCCCCCCCC99CCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCC99CCCCCCCCCC99BBBBBBCCCCCCCCCC99CCCCCCCCCC
                    CC00DDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDEEEEEE
                    DDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCC00DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDCCCC
                    CCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCBBBBBBCCCCCC
                    CCCC99CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCBB
                    BBBBCCCC99CCCCCCCCCC99CCCCCCBBBBBB00CCCCCCDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCDDDD
                    DDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCBB
                    BBBBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCBBBBBBCCCC
                    CCCCCCCCBBBBBBCCCCCCBBBBBBCCCCCCCCCCCCCCCCCCCCCCCC00DDDDDDCCCCCC
                    CCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCC
                    CCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDD
                    DDDDDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDD
                    CCCCCCCCCCCCDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDD
                    DDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCBBBBBBCCCCCCCCCC99CCCC
                    CC00DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEE
                    DDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDEE
                    EEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCBBBBBBBBBBBBCCCC99
                    BBBBBBCCCCCCBBBBBB00DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEE
                    EEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCC
                    CCCCCCCCCCCCCCCC99DDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCC
                    CCDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCBBBBBBBBBBBBCCCCCCBBBBBBCCCCCC00DDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDCCCCCC
                    CCCCCCCCCCCCCCCCCCDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDD
                    DDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCBBBBBBBBBBBBBBBBBBCCCCCCBBBBBBCCCCCCCCCC9900DDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDCCCC
                    CCDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEE
                    DDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEE
                    EEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCC99CCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBCCCC
                    CC00CCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDD
                    DDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEE
                    EEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDD
                    DDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC99CCCCCCBBBBBB
                    CCCCCCCCCCCCCCCCCC00CCCCCCDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCBB
                    BBBBCCCCCCBBBBBBCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDEEEE
                    EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEDDDDDD
                    EEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCC
                    CCCCCCCCCCCC99CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCBBBBBBCCCCCCBBBBBBCCCC99CCCCCC00CCCCCCDDDDDDDDDDDDDDDDDDCCCC
                    CCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDD
                    DDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEDDDDDD
                    EEEEEEDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDD
                    DDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDEEEEEE
                    DDDDDDDDDDDDCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCCCC99CCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCCCCCC00CCCCCCCCCCCC
                    DDDDDDDDDDDDCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBCCCCCCCCCC
                    CCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEE
                    EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEEEEEEE
                    DDDDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCC
                    CCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCBBBBBBCCCCCCBBBBBBCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC99CCCCCCCCCCCCCCCC
                    CC00CCCCCCDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCBBBBBB
                    CCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEE
                    EEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDCCCCCCCCCCCCCCCCCC
                    CCCCCCDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEEEEE
                    EEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCBB
                    BBBBCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCDDDDDD00CCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCC
                    CCCCBBBBBBCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
                    EEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDD
                    DDDDDDDDDDCCCCCCDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDD
                    EEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDD
                    DDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCDDDDDDCC
                    CCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCC00CCCCCCDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDD
                    EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEEEEE
                    EEDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCDD
                    DDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDCCCCCC
                    CCCCCCDDDDDDCCCC99CCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCC
                    CCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDD00DDDDDDDDDDDD
                    DDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEE
                    EEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEE
                    EEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDD
                    DDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEEEEEEEDD
                    DDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCC99CCCCCCDDDDDDCCCCCCDDDDDD
                    DDDDDDCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDD
                    DD00DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    EEEEEEEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDCCCCCCDDDDDDCCCCCC
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDEEEE
                    EEDDDDDDEEEEEEDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDD00DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDD
                    DDDDEEEEEEDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDD
                    DDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEE
                    EEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDD
                    DDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDD
                    EEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCC
                    99CCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEE00DDDDDDDDDDDDCCCCCCDDDDDDDDDD
                    DDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEE
                    EEEEEEEEEEDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDEEEEEEEEEEEEEEEE
                    EEDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCC99CCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDD
                    DDCCCCCCDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDEEEEEEDDDDDD00DDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCC
                    CCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDDDDDDD
                    EEEEEEDDDDDDEEEEEEDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDD
                    DDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCC99CCCCCCCCCCCCCCCCCCCCCCCCDDDDDD
                    CCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DD00DDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCBBBBBBBBBB
                    BBCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDD
                    DDEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDD00DDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDCCCCCC
                    CCCCCCBBBBBBCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDCCCC
                    CCDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCC
                    CCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCC
                    CCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDD00DDDDDDCCCCCCDDDDDDCCCCCCCCCC
                    CCDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDD
                    DDCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCC
                    CCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    CCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDD00CCCCCCCCCCCC
                    CCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDD
                    DDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDD
                    EEEEEEDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDD
                    DD00CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDCCCCCC
                    CCCCCCCCCCCCDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCC
                    CCDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
                    DDDDDDDDDDDDCCCCCC00CCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDD
                    DDDDCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEDDDDDD
                    DDDDDDDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDD
                    DDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEE
                    EEEEEEEEEEEEEEEEDDDDDDDDDDDDCCCCCC00CCCCCCCCCCCCDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEE
                    EEEEDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDCCCCCCDDDDDD
                    DDDDDDDDDDDDCCCCCCDDDDDDCCCCCCBBBBBBCCCCCCBBBBBBCCCCCCCCCCCCCCCC
                    CCDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDD
                    DDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEEEEE
                    EEEEEEEEDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDCCCCCC00CCCCCCCCCCCC
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEE
                    EEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCC
                    CCCCDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCBBBBBBBBBBBB
                    BBBBBBBBBBBBCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCCCCCCDDDDDD
                    DDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCC
                    CC00DDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDCCCCCCDDDDDDCCCC
                    CCCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDCCCCCCCCCCCCCC
                    CCCCBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEEEE
                    DDDDDDEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCC
                    CCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDCCCCCC00DDDDDDCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDD
                    DDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDD
                    DDDDDDCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDD
                    DDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCC99CCCCCCCCCCCCDDDDDDDDDDDDEE
                    EEEEEEEEEEDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCC
                    CCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCC
                    CCCCCCCCCCCCCCCCDDDDDDCCCCCCCCCCCC00DDDDDDDDDDDDDDDDDDCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
                    EEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    DDDDDDDDDDDDEEEEEEDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDD
                    DDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCC
                    CCCCCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCCCCCCDDDDDDDDDD
                    DDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDD00DDDDDDCCCCCC
                    CCCCCCCCCCCCCCCCCCBBBBBBBBBBBBCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEEEEE
                    EEEEEEEEDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCC
                    CCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCC
                    CCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDD
                    DDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCC
                    CCCCCCCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CC00CCCCCCDDDDDDCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBCCCCCCCCCCCC
                    DDDDDDEEEEEEDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDD
                    DDCCCCCCDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDCCCCCCDD
                    DDDDCCCCCCDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEE
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCDDDDDDCCCC
                    CCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCC99CCCCCCCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCBBBBBB
                    CCCCCCCCCCCCCCCCCC00DDDDDDDDDDDDCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBB
                    BBBBBBBBBBCCCCCCDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEE
                    DDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDD
                    DDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDD
                    DDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCC
                    DDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCC
                    CCDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC00DDDDDDDDDDDDDDDDDDCCCCCCCCCC
                    CCCCCCCCBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCDDDDDDEEEEEEDDDDDDEEEEEEDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    EEEEEEDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDD
                    DDCCCCCCDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCC99CCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCCCCCCDDDDDD00DDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDCCCCCCBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCCCCCCCDDDD
                    DDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEE
                    EEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEE
                    EEEEDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCC
                    BBBBBBCCCCCCBBBBBBCCCCCCBBBBBBBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CC00DDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCBBBBBBBBBBBB
                    CCCCCCDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDEEEEEEDDDDDDEEEE
                    EEDDDDDDEEEEEEDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDD
                    DDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEE
                    DDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDCC
                    CCCCCCCCCCCCCCCCBBBBBBBBBBBBCCCCCCBBBBBBCCCCCCCCCCCCCCCCCCCCCCCC
                    DDDDDDDDDDDDDDDDDD00DDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDCC
                    CCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEDDDD
                    DDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDDD
                    DDDDDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEDDDDDD
                    EEEEEEDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDCCCCCCCCCCCCDDDD
                    DDDDDDDDCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCCC
                    CCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDD00DDDDDDDDDDDDEEEEEEEEEEEEDDDD
                    DDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEDDDDDDEE
                    EEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEE
                    EEEEEEEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDD
                    CCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDDDD00DDDDDDDDDDDD
                    DDDDDDDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDD
                    DDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEEE
                    EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDD
                    DDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEE
                    EE00DDDDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEEEEE
                    EEDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEEEEEEEDD
                    DDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    EEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCC
                    CCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCC
                    CCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDD
                    DDDDDDEEEEEEDDDDDD00DDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEDD
                    DDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    EEEEEEDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
                    EEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCDD
                    DDDDDDDDDDEEEEEEDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDD
                    DDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDEEEE
                    EEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCC
                    CCCCCCCCCCDDDDDDDDDDDDDDDDDDEEEEEE00DDDDDDDDDDDDEEEEEEDDDDDDEEEE
                    EEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
                    EEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDD
                    DDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDEE
                    EEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDEEEEEE00DDDDDDDDDDDD
                    EEEEEEEEEEEEDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEEE
                    EEEEEEEEEEEEEEEEDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDD
                    DDDDDDDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEE
                    EEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDEEEEEEDDDD
                    DDADDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEE
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDEEEEEEDDDD
                    DDEEEEEEEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEEE
                    EEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDD
                    EEEEEEDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDEEEEEEA4EEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDD
                    DDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEE
                    EEEEEEEEEEEEEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEE
                    EEDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEE
                    EEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDCCCCCCDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEE16EEEEEEEEEEEEEEEEEEEEEEEEDDDD
                    DDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEE
                    EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDEEEEEE
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDD
                    DDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEE
                    EEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEE
                    EEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCC
                    CCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEE00}
                  DataController.DataSource = dsXmCzwz
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsCustomize.ColumnMoving = False
                  OptionsData.Editing = False
                  OptionsView.DataRowHeight = 25
                  OptionsView.GroupByBox = False
                  object cxGridDBColumn11: TcxGridDBColumn
                    Caption = #24207#21495
                    DataBinding.FieldName = 'czid'
                    Visible = False
                    HeaderAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 61
                  end
                  object cxGridDBColumn13: TcxGridDBColumn
                    Caption = #20301#32622#21517#31216
                    DataBinding.FieldName = 'wzmc'
                    HeaderAlignmentHorz = taCenter
                    Options.Editing = False
                    Width = 150
                  end
                  object cxGridDBColumn16: TcxGridDBColumn
                    Caption = #36127#33655#26435#37325
                    DataBinding.FieldName = 'gzqz'
                    HeaderAlignmentHorz = taCenter
                    Options.Filtering = False
                    Width = 72
                  end
                  object cxGridDBColumn14: TcxGridDBColumn
                    Caption = #24403#26085#37327
                    DataBinding.FieldName = 'dqcs'
                    HeaderAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 58
                  end
                  object cxGridDBColumn15: TcxGridDBColumn
                    Caption = #21382#21490#37327
                    DataBinding.FieldName = 'lscs'
                    HeaderAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 57
                  end
                end
                object glczwz: TcxGridLevel
                  GridView = gvCzwz
                  Options.DetailFrameWidth = 0
                end
              end
              object gcList: TcxGrid
                Left = 0
                Top = 0
                Width = 420
                Height = 256
                HelpType = htKeyword
                HelpKeyword = 'H'
                Align = alClient
                TabOrder = 1
                LookAndFeel.Kind = lfOffice11
                LookAndFeel.NativeStyle = False
                RootLevelOptions.DetailFrameWidth = 1
                object gvList: TcxGridDBTableView
                  NavigatorButtons.ConfirmDelete = False
                  NavigatorButtons.First.Visible = True
                  NavigatorButtons.PriorPage.Visible = True
                  NavigatorButtons.Prior.Visible = True
                  NavigatorButtons.Next.Visible = True
                  NavigatorButtons.NextPage.Visible = True
                  NavigatorButtons.Last.Visible = True
                  NavigatorButtons.Insert.Visible = True
                  NavigatorButtons.Delete.Visible = True
                  NavigatorButtons.Edit.Visible = True
                  NavigatorButtons.Post.Visible = True
                  NavigatorButtons.Cancel.Visible = True
                  NavigatorButtons.Refresh.Visible = True
                  NavigatorButtons.SaveBookmark.Visible = True
                  NavigatorButtons.GotoBookmark.Visible = True
                  NavigatorButtons.Filter.Visible = True
                  BackgroundBitmaps.Group.Data = {
                    B62B0000424DB62B00000000000036000000280000004D000000300000000100
                    180000000000802B0000D60E0000D60E00000000000000000000DDDDDDDDDDDD
                    EEEEEEDDDDDDEEEEEEDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDCCCCCCCC
                    CCCCDDDDDDCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDD
                    DDDDDDDDDDDDDDCCCCCCCCCCCCCCCC99CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCC99CCCCCCCCCC99CCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCC99CCCCCCCCCC99BBBBBBCCCCCCCCCC99CCCCCCCCCC
                    CC00DDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDEEEEEE
                    DDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCC00DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDCCCC
                    CCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCBBBBBBCCCCCC
                    CCCC99CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCBB
                    BBBBCCCC99CCCCCCCCCC99CCCCCCBBBBBB00CCCCCCDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCDDDD
                    DDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCBB
                    BBBBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCBBBBBBCCCC
                    CCCCCCCCBBBBBBCCCCCCBBBBBBCCCCCCCCCCCCCCCCCCCCCCCC00DDDDDDCCCCCC
                    CCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCC
                    CCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDD
                    DDDDDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDD
                    CCCCCCCCCCCCDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDD
                    DDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCBBBBBBCCCCCCCCCC99CCCC
                    CC00DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEE
                    DDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDEE
                    EEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCBBBBBBBBBBBBCCCC99
                    BBBBBBCCCCCCBBBBBB00DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEE
                    EEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCC
                    CCCCCCCCCCCCCCCC99DDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCC
                    CCDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCBBBBBBBBBBBBCCCCCCBBBBBBCCCCCC00DDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDCCCCCC
                    CCCCCCCCCCCCCCCCCCDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDD
                    DDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCBBBBBBBBBBBBBBBBBBCCCCCCBBBBBBCCCCCCCCCC9900DDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDCCCC
                    CCDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEE
                    DDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEE
                    EEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCC99CCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBCCCC
                    CC00CCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDD
                    DDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEE
                    EEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDD
                    DDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC99CCCCCCBBBBBB
                    CCCCCCCCCCCCCCCCCC00CCCCCCDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCBB
                    BBBBCCCCCCBBBBBBCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDEEEE
                    EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEDDDDDD
                    EEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCC
                    CCCCCCCCCCCC99CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCBBBBBBCCCCCCBBBBBBCCCC99CCCCCC00CCCCCCDDDDDDDDDDDDDDDDDDCCCC
                    CCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDD
                    DDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEDDDDDD
                    EEEEEEDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDD
                    DDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDEEEEEE
                    DDDDDDDDDDDDCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCCCC99CCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCCCCCC00CCCCCCCCCCCC
                    DDDDDDDDDDDDCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBCCCCCCCCCC
                    CCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEE
                    EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEEEEEEE
                    DDDDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCC
                    CCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCBBBBBBCCCCCCBBBBBBCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC99CCCCCCCCCCCCCCCC
                    CC00CCCCCCDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCBBBBBB
                    CCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEE
                    EEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDCCCCCCCCCCCCCCCCCC
                    CCCCCCDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEEEEE
                    EEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCBB
                    BBBBCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCDDDDDD00CCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCC
                    CCCCBBBBBBCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
                    EEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDD
                    DDDDDDDDDDCCCCCCDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDD
                    EEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDD
                    DDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCDDDDDDCC
                    CCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCC00CCCCCCDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDD
                    EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEEEEE
                    EEDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCDD
                    DDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDCCCCCC
                    CCCCCCDDDDDDCCCC99CCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCC
                    CCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDD00DDDDDDDDDDDD
                    DDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEE
                    EEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEE
                    EEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDD
                    DDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEEEEEEEDD
                    DDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCC99CCCCCCDDDDDDCCCCCCDDDDDD
                    DDDDDDCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDD
                    DD00DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    EEEEEEEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDCCCCCCDDDDDDCCCCCC
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDEEEE
                    EEDDDDDDEEEEEEDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDD00DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDD
                    DDDDEEEEEEDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDD
                    DDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEE
                    EEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDD
                    DDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDD
                    EEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCC
                    99CCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEE00DDDDDDDDDDDDCCCCCCDDDDDDDDDD
                    DDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEE
                    EEEEEEEEEEDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDEEEEEEEEEEEEEEEE
                    EEDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCC99CCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDD
                    DDCCCCCCDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDEEEEEEDDDDDD00DDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCC
                    CCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDDDDDDD
                    EEEEEEDDDDDDEEEEEEDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDD
                    DDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCC99CCCCCCCCCCCCCCCCCCCCCCCCDDDDDD
                    CCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DD00DDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCBBBBBBBBBB
                    BBCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDD
                    DDEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDD00DDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDCCCCCC
                    CCCCCCBBBBBBCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDCCCC
                    CCDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCC
                    CCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCC
                    CCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDD00DDDDDDCCCCCCDDDDDDCCCCCCCCCC
                    CCDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDD
                    DDCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCC
                    CCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    CCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDD00CCCCCCCCCCCC
                    CCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDD
                    DDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDD
                    EEEEEEDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDD
                    DD00CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDCCCCCC
                    CCCCCCCCCCCCDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCC
                    CCDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
                    DDDDDDDDDDDDCCCCCC00CCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDD
                    DDDDCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEDDDDDD
                    DDDDDDDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDD
                    DDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEE
                    EEEEEEEEEEEEEEEEDDDDDDDDDDDDCCCCCC00CCCCCCCCCCCCDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEE
                    EEEEDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDCCCCCCDDDDDD
                    DDDDDDDDDDDDCCCCCCDDDDDDCCCCCCBBBBBBCCCCCCBBBBBBCCCCCCCCCCCCCCCC
                    CCDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDD
                    DDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEEEEE
                    EEEEEEEEDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDCCCCCC00CCCCCCCCCCCC
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEE
                    EEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCC
                    CCCCDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCBBBBBBBBBBBB
                    BBBBBBBBBBBBCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCCCCCCDDDDDD
                    DDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCC
                    CC00DDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDCCCCCCDDDDDDCCCC
                    CCCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDCCCCCCCCCCCCCC
                    CCCCBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEEEE
                    DDDDDDEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCC
                    CCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDCCCCCC00DDDDDDCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDD
                    DDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDD
                    DDDDDDCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDD
                    DDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCC99CCCCCCCCCCCCDDDDDDDDDDDDEE
                    EEEEEEEEEEDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCC
                    CCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCC
                    CCCCCCCCCCCCCCCCDDDDDDCCCCCCCCCCCC00DDDDDDDDDDDDDDDDDDCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
                    EEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    DDDDDDDDDDDDEEEEEEDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDD
                    DDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCC
                    CCCCCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCCCCCCDDDDDDDDDD
                    DDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDD00DDDDDDCCCCCC
                    CCCCCCCCCCCCCCCCCCBBBBBBBBBBBBCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEEEEE
                    EEEEEEEEDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCC
                    CCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCC
                    CCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDD
                    DDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCC
                    CCCCCCCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CC00CCCCCCDDDDDDCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBCCCCCCCCCCCC
                    DDDDDDEEEEEEDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDD
                    DDCCCCCCDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDCCCCCCDD
                    DDDDCCCCCCDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEE
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCDDDDDDCCCC
                    CCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCC99CCCCCCCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCBBBBBB
                    CCCCCCCCCCCCCCCCCC00DDDDDDDDDDDDCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBB
                    BBBBBBBBBBCCCCCCDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEE
                    DDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDD
                    DDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDD
                    DDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCC
                    DDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCC
                    CCDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC00DDDDDDDDDDDDDDDDDDCCCCCCCCCC
                    CCCCCCCCBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCDDDDDDEEEEEEDDDDDDEEEEEEDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    EEEEEEDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDD
                    DDCCCCCCDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCC99CCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCCCCCCDDDDDD00DDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDCCCCCCBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCCCCCCCDDDD
                    DDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEE
                    EEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEE
                    EEEEDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCC
                    BBBBBBCCCCCCBBBBBBCCCCCCBBBBBBBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                    CC00DDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCBBBBBBBBBBBB
                    CCCCCCDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDEEEEEEDDDDDDEEEE
                    EEDDDDDDEEEEEEDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDD
                    DDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEE
                    DDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDCC
                    CCCCCCCCCCCCCCCCBBBBBBBBBBBBCCCCCCBBBBBBCCCCCCCCCCCCCCCCCCCCCCCC
                    DDDDDDDDDDDDDDDDDD00DDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDCC
                    CCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEDDDD
                    DDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDDD
                    DDDDDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEDDDDDD
                    EEEEEEDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDCCCCCCCCCCCCDDDD
                    DDDDDDDDCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCCC
                    CCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDD00DDDDDDDDDDDDEEEEEEEEEEEEDDDD
                    DDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEDDDDDDEE
                    EEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEE
                    EEEEEEEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDD
                    CCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDDDD00DDDDDDDDDDDD
                    DDDDDDDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDD
                    DDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEEE
                    EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDD
                    DDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCC
                    CCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEE
                    EE00DDDDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEEEEE
                    EEDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEEEEEEEDD
                    DDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    EEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCC
                    CCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCC
                    CCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDD
                    DDDDDDEEEEEEDDDDDD00DDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEDD
                    DDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    EEEEEEDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
                    EEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCDD
                    DDDDDDDDDDEEEEEEDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDD
                    DDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDEEEE
                    EEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCC
                    CCCCCCCCCCDDDDDDDDDDDDDDDDDDEEEEEE00DDDDDDDDDDDDEEEEEEDDDDDDEEEE
                    EEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
                    EEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDD
                    DDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDEE
                    EEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDEEEEEE00DDDDDDDDDDDD
                    EEEEEEEEEEEEDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEEE
                    EEEEEEEEEEEEEEEEDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDD
                    DDDDDDDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEE
                    EEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDEEEEEEDDDD
                    DDADDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEE
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDEEEEEEDDDD
                    DDEEEEEEEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEEE
                    EEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDD
                    EEEEEEDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDD
                    DDDDDDDDDDDDEEEEEEA4EEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDD
                    DDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEE
                    EEEEEEEEEEEEEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEE
                    EEDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEE
                    EEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDCCCCCCDDDDDDDD
                    DDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEE16EEEEEEEEEEEEEEEEEEEEEEEEDDDD
                    DDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEE
                    EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDEEEEEE
                    DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDD
                    DDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEE
                    EEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEE
                    EEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCC
                    CCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEE00}
                  DataController.DataSource = dsCzwz
                  DataController.DetailKeyFieldNames = 'id'
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsCustomize.ColumnMoving = False
                  OptionsData.Editing = False
                  OptionsView.DataRowHeight = 25
                  OptionsView.GroupByBox = False
                  object cxGridDBColumn17: TcxGridDBColumn
                    Caption = #24207#21495
                    DataBinding.FieldName = 'id'
                    Visible = False
                    HeaderAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 72
                  end
                  object cxGridDBColumn18: TcxGridDBColumn
                    Caption = #20301#32622#21517#31216
                    DataBinding.FieldName = 'wzmc'
                    HeaderAlignmentHorz = taCenter
                    Width = 150
                  end
                  object gvListColumn1: TcxGridDBColumn
                    Caption = #31185#23460#21517#31216
                    DataBinding.FieldName = 'ksmc'
                    HeaderAlignmentHorz = taCenter
                    Width = 90
                  end
                  object gvListColumn2: TcxGridDBColumn
                    Caption = #24615#21035
                    DataBinding.FieldName = 'xbbz'
                    Width = 50
                  end
                  object gvListColumn3: TcxGridDBColumn
                    Caption = #24613#35786
                    DataBinding.FieldName = 'jzbz'
                    PropertiesClassName = 'TcxCheckBoxProperties'
                    Width = 50
                  end
                end
                object cxGridLevel2: TcxGridLevel
                  GridView = gvList
                  Options.DetailFrameWidth = 0
                end
              end
              object Panel8: TPanel
                Left = 0
                Top = 256
                Width = 698
                Height = 46
                Align = alBottom
                BorderStyle = bsSingle
                TabOrder = 2
                object btAdd: TButton
                  Left = 33
                  Top = 10
                  Width = 59
                  Height = 24
                  Caption = #22686#21152'[&A]'
                  Font.Charset = GB2312_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = #23435#20307
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnClick = btAddClick
                end
                object btModify: TButton
                  Left = 106
                  Top = 10
                  Width = 59
                  Height = 24
                  Caption = #20462#25913'[&E]'
                  Font.Charset = GB2312_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = #23435#20307
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  OnClick = btModifyClick
                end
                object btDel: TBitBtn
                  Left = 179
                  Top = 10
                  Width = 59
                  Height = 24
                  Caption = #21024#38500'[&D]'
                  Font.Charset = GB2312_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = #23435#20307
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                  OnClick = btDelClick
                end
                object btSle: TBitBtn
                  Left = 327
                  Top = 10
                  Width = 59
                  Height = 24
                  Caption = #36873#25321'[&X]'
                  Font.Charset = GB2312_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = #23435#20307
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                  OnClick = btSleClick
                end
                object btMove: TButton
                  Left = 402
                  Top = 10
                  Width = 59
                  Height = 24
                  Caption = #31227#38500'[&A]'
                  Font.Charset = GB2312_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = #23435#20307
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 4
                  OnClick = btMoveClick
                end
                object btChange: TButton
                  Left = 491
                  Top = 10
                  Width = 94
                  Height = 24
                  Caption = #26356#25913#26435#37325'[&Q]'
                  Font.Charset = GB2312_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = #23435#20307
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 5
                  OnClick = btChangeClick
                end
              end
            end
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = '      '#21307#22065#25910#36153#39033#30446#23545#24212'      '
        ImageIndex = 1
        object gcYzxm: TcxGrid
          Left = 0
          Top = 0
          Width = 698
          Height = 571
          HelpType = htKeyword
          HelpKeyword = 'H'
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          RootLevelOptions.DetailFrameWidth = 1
          object gvYzxm: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = True
            NavigatorButtons.PriorPage.Visible = True
            NavigatorButtons.Prior.Visible = True
            NavigatorButtons.Next.Visible = True
            NavigatorButtons.NextPage.Visible = True
            NavigatorButtons.Last.Visible = True
            NavigatorButtons.Insert.Visible = True
            NavigatorButtons.Delete.Visible = True
            NavigatorButtons.Edit.Visible = True
            NavigatorButtons.Post.Visible = True
            NavigatorButtons.Cancel.Visible = True
            NavigatorButtons.Refresh.Visible = True
            NavigatorButtons.SaveBookmark.Visible = True
            NavigatorButtons.GotoBookmark.Visible = True
            NavigatorButtons.Filter.Visible = True
            FilterBox.Visible = fvAlways
            OnEditKeyDown = gvYzxmEditKeyDown
            BackgroundBitmaps.Group.Data = {
              B62B0000424DB62B00000000000036000000280000004D000000300000000100
              180000000000802B0000D60E0000D60E00000000000000000000DDDDDDDDDDDD
              EEEEEEDDDDDDEEEEEEDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDCCCC
              CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDCCCCCCCC
              CCCCDDDDDDCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDD
              DDDDDDDDDDDDDDCCCCCCCCCCCCCCCC99CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
              CCCCCCCCCCCCCCCCCCCCCCCCCC99CCCCCCCCCC99CCCCCCCCCCCCCCCCCCCCCCCC
              CCCCCCCCCCCCCCCCCCCCCC99CCCCCCCCCC99BBBBBBCCCCCCCCCC99CCCCCCCCCC
              CC00DDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDEEEEEE
              DDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
              CCDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCCCC
              CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
              CCCCCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
              CCCCCCCCCCCCCCCCCC00DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
              CCCCCCCCCCCCDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDCCCC
              CCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCBBBBBBCCCCCC
              CCCC99CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
              CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCBB
              BBBBCCCC99CCCCCCCCCC99CCCCCCBBBBBB00CCCCCCDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCC
              CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCDDDD
              DDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCBB
              BBBBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDCCCCCC
              CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCBBBBBBCCCC
              CCCCCCCCBBBBBBCCCCCCBBBBBBCCCCCCCCCCCCCCCCCCCCCCCC00DDDDDDCCCCCC
              CCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCC
              CCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDD
              DDDDDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDD
              CCCCCCCCCCCCDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDCCCCCCCCCCCCCCCC
              CCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDD
              DDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
              CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCBBBBBBCCCCCCCCCC99CCCC
              CC00DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEE
              DDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
              CCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDEE
              EEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
              CCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCC
              CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCBBBBBBBBBBBBCCCC99
              BBBBBBCCCCCCBBBBBB00DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEE
              EEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCC
              CCCCCCCCCCCCCCCC99DDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCC
              CCDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
              CCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCC
              CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
              CCCCBBBBBBBBBBBBCCCCCCBBBBBBCCCCCC00DDDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCC
              CCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDCCCCCC
              CCCCCCCCCCCCCCCCCCDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDD
              DDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCC
              CCCCCCCCBBBBBBBBBBBBBBBBBBCCCCCCBBBBBBCCCCCCCCCC9900DDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDCCCC
              CCDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEE
              DDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEE
              EEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCC
              CCCCCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCC
              CCCCCCCCCCCCCCCCCCCCCC99CCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBCCCC
              CC00CCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
              CCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDD
              DDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEE
              EEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDD
              DDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCC
              CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC99CCCCCCBBBBBB
              CCCCCCCCCCCCCCCCCC00CCCCCCDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCBB
              BBBBCCCCCCBBBBBBCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDEEEE
              EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDCCCCCCCCCCCCCC
              CCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEDDDDDD
              EEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCC
              CCCCCCCCCCCC99CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
              CCCCBBBBBBCCCCCCBBBBBBCCCC99CCCCCC00CCCCCCDDDDDDDDDDDDDDDDDDCCCC
              CCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDD
              DDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEDDDDDD
              EEEEEEDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDD
              DDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDEEEEEE
              DDDDDDDDDDDDCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCCCC99CCCCCCCCCC
              CCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCCCCCC00CCCCCCCCCCCC
              DDDDDDDDDDDDCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBCCCCCCCCCC
              CCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEE
              EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEEEEEEE
              DDDDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCC
              CCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCBBBBBBCCCCCCBBBBBBCCCCCC
              CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC99CCCCCCCCCCCCCCCC
              CC00CCCCCCDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCBBBBBB
              CCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEE
              EEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDCCCCCCCCCCCCCCCCCC
              CCCCCCDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEEEEE
              EEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCBB
              BBBBCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
              CCCCCCCCCCCCDDDDDD00CCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCC
              CCCCBBBBBBCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
              EEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDD
              DDDDDDDDDDCCCCCCDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDD
              EEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDD
              DDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCDDDDDDCC
              CCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCC00CCCCCCDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDD
              EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEEEEE
              EEDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCDD
              DDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDCCCCCC
              CCCCCCDDDDDDCCCC99CCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCC
              CCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDD00DDDDDDDDDDDD
              DDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEE
              EEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEE
              EEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDD
              DDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEEEEEEEDD
              DDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCC99CCCCCCDDDDDDCCCCCCDDDDDD
              DDDDDDCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDD
              DD00DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              EEEEEEEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDCCCCCCDDDDDDCCCCCC
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDEEEE
              EEDDDDDDEEEEEEDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
              CCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDD00DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDD
              DDDDEEEEEEDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDD
              DDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEE
              EEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDD
              DDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDD
              EEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCC
              99CCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEE00DDDDDDDDDDDDCCCCCCDDDDDDDDDD
              DDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEE
              EEEEEEEEEEDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDEEEEEEEEEEEEEEEE
              EEDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDCCCCCC
              CCCCCCCCCCCCCCCCCCCCCCCCCCCC99CCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDD
              DDCCCCCCDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDEEEEEEDDDDDD00DDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCC
              CCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDDDDDDD
              EEEEEEDDDDDDEEEEEEDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDD
              DDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCC99CCCCCCCCCCCCCCCCCCCCCCCCDDDDDD
              CCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              DD00DDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCBBBBBBBBBB
              BBCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDD
              DDEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCC
              CCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDD00DDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDCCCCCC
              CCCCCCBBBBBBCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDCCCC
              CCDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCC
              CCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCC
              CCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDD00DDDDDDCCCCCCDDDDDDCCCCCCCCCC
              CCDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCCCCCCC
              CCCCCCCCCCCCDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDD
              DDCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCC
              CCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              CCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDD00CCCCCCCCCCCC
              CCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCC
              CCDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCC
              CCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCCCCCCC
              CCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDD
              DDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDD
              EEEEEEDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDD
              DD00CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDCCCCCC
              CCCCCCCCCCCCDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCC
              CCDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDCC
              CCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
              CCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
              DDDDDDDDDDDDCCCCCC00CCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDD
              DDDDCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEDDDDDD
              DDDDDDDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDD
              DDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCC
              CCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEE
              EEEEEEEEEEEEEEEEDDDDDDDDDDDDCCCCCC00CCCCCCCCCCCCDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEE
              EEEEDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDCCCCCCDDDDDD
              DDDDDDDDDDDDCCCCCCDDDDDDCCCCCCBBBBBBCCCCCCBBBBBBCCCCCCCCCCCCCCCC
              CCDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDD
              DDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCC
              CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEEEEE
              EEEEEEEEDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDCCCCCC00CCCCCCCCCCCC
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEE
              EEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCC
              CCCCDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCBBBBBBBBBBBB
              BBBBBBBBBBBBCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCC
              CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCCCCCCDDDDDD
              DDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCC
              CC00DDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDCCCCCCDDDDDDCCCC
              CCCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDCCCCCCCCCCCCCC
              CCCCBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEEEE
              DDDDDDEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCC
              CCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
              CCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDCCCCCC00DDDDDDCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDD
              DDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDD
              DDDDDDCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDD
              DDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCC99CCCCCCCCCCCCDDDDDDDDDDDDEE
              EEEEEEEEEEDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCC
              CCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
              CCCCCCCCBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCC
              CCCCCCCCCCCCCCCCDDDDDDCCCCCCCCCCCC00DDDDDDDDDDDDDDDDDDCCCCCCCCCC
              CCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
              EEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
              DDDDDDDDDDDDEEEEEEDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDD
              DDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCC
              CCCCCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDCCCCCC
              CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCCCCCCDDDDDDDDDD
              DDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDD00DDDDDDCCCCCC
              CCCCCCCCCCCCCCCCCCBBBBBBBBBBBBCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEEEEE
              EEEEEEEEDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCC
              CCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCC
              CCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDD
              DDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCC
              CCCCCCCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
              CC00CCCCCCDDDDDDCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBCCCCCCCCCCCC
              DDDDDDEEEEEEDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDD
              DDCCCCCCDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDCCCCCCDD
              DDDDCCCCCCDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEE
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCDDDDDDCCCC
              CCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCC
              CCCCCCCC99CCCCCCCCCCCCCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCBBBBBB
              CCCCCCCCCCCCCCCCCC00DDDDDDDDDDDDCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBB
              BBBBBBBBBBCCCCCCDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEE
              DDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDD
              DDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDD
              DDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCC
              DDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCC
              CCDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
              CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC00DDDDDDDDDDDDDDDDDDCCCCCCCCCC
              CCCCCCCCBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCDDDDDDEEEEEEDDDDDDEEEEEEDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              EEEEEEDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDD
              DDCCCCCCDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCC99CCCCCCCCCCCCCCCC
              CCCCCCCCCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCCCCCCDDDDDD00DDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDCCCCCCBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCCCCCCCDDDD
              DDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCC
              CCCCCCDDDDDDCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEE
              EEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEE
              EEEEDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCC
              BBBBBBCCCCCCBBBBBBCCCCCCBBBBBBBBBBBBCCCCCCCCCCCCCCCCCCCCCCCCCCCC
              CC00DDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCBBBBBBBBBBBB
              CCCCCCDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDEEEEEEDDDDDDEEEE
              EEDDDDDDEEEEEEDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDD
              DDDDCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEE
              DDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDCC
              CCCCCCCCCCCCCCCCBBBBBBBBBBBBCCCCCCBBBBBBCCCCCCCCCCCCCCCCCCCCCCCC
              DDDDDDDDDDDDDDDDDD00DDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDCC
              CCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEDDDD
              DDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCDDDDDDDD
              DDDDDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEDDDDDD
              EEEEEEDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDCCCCCCCCCCCCDDDD
              DDDDDDDDCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCCC
              CCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDD00DDDDDDDDDDDDEEEEEEEEEEEEDDDD
              DDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEDDDDDDEE
              EEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEE
              EEEEEEEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDD
              CCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCBBBBBBCCCCCCCCCCCCCCCC
              CCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDEEEEEEDDDDDD00DDDDDDDDDDDD
              DDDDDDDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDD
              DDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEEE
              EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDD
              DDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCC
              CCCCCCCCCCCCCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEE
              EE00DDDDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEEEEE
              EEDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEEEEEEEDD
              DDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              EEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCC
              CCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCC
              CCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDD
              DDDDDDEEEEEEDDDDDD00DDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEDD
              DDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              EEEEEEDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
              EEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCDD
              DDDDDDDDDDEEEEEEDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDD
              DDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDEEEE
              EEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCC
              CCCCCCCCCCDDDDDDDDDDDDDDDDDDEEEEEE00DDDDDDDDDDDDEEEEEEDDDDDDEEEE
              EEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
              EEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDD
              DDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDEE
              EEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDCCCCCCCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDEEEEEE00DDDDDDDDDDDD
              EEEEEEEEEEEEDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEEE
              EEEEEEEEEEEEEEEEDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDD
              DDDDDDDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEE
              EEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCCCCCCCCCCCCCDDDDDDEEEEEEDDDD
              DDADDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDEEEEEEEEEEEEDDDDDDEEEEEE
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDEEEEEEDDDD
              DDEEEEEEEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEEE
              EEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDD
              EEEEEEDDDDDDEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDEEEEEEDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDCCCCCCDDDDDDDDDDDDDDDDDD
              DDDDDDDDDDDDEEEEEEA4EEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDDDDDDDDD
              DDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDEEEEEE
              EEEEEEEEEEEEEEEEEEDDDDDDEEEEEEEEEEEEEEEEEEDDDDDDEEEEEEDDDDDDEEEE
              EEDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEE
              EEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCDDDDDDDDDDDDCCCCCCDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEE16EEEEEEEEEEEEEEEEEEEEEEEEDDDD
              DDDDDDDDDDDDDDDDDDDDEEEEEEDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEE
              EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDEEEEEE
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDD
              DDDDDDDDCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEE
              EEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEE
              EEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCC
              CCDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEE00}
            DataController.DataSource = ds_yzxmsfxm
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnMoving = False
            OptionsView.DataRowHeight = 21
            OptionsView.GroupByBox = False
            Styles.StyleSheet = GridTableViewStyleSheetSpruce
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = #32534#30721
              DataBinding.FieldName = 'xmdm'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = #21307#22065#21517#31216
              DataBinding.FieldName = 'xmmc'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 150
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = #36153#29992#20195#30721
              DataBinding.FieldName = 'fydm'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = #25340#38899
              DataBinding.FieldName = 'pym'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 70
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = #36153#29992#21517#31216
              DataBinding.FieldName = 'fymc'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 170
            end
            object cxgrdbclmnYzxmColumn1: TcxGridDBColumn
              Caption = #21551#29992
              DataBinding.FieldName = 'qybz'
              Options.Editing = False
              Width = 60
            end
            object cxgrdbclmnYzxmColumn2: TcxGridDBColumn
              Caption = #38376#35786
              DataBinding.FieldName = 'mzbz'
              Options.Editing = False
            end
            object cxgrdbclmnYzxmColumn3: TcxGridDBColumn
              Caption = #20303#38498
              DataBinding.FieldName = 'zybz'
              Options.Editing = False
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = gvYzxm
            Options.DetailFrameWidth = 0
          end
        end
      end
    end
    object DBGrid4: TDBGrid
      Left = 218
      Top = 77
      Width = 465
      Height = 244
      DataSource = DS_yp
      ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = GB2312_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      Visible = False
      OnDblClick = DBGrid4DblClick
      OnExit = DBGrid4Exit
      OnKeyDown = DBGrid4KeyDown
      OnKeyPress = DBGrid4KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'fymc'
          Title.Alignment = taCenter
          Title.Caption = #36153#29992#21517#31216
          Width = 207
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fydm'
          Title.Alignment = taCenter
          Title.Caption = #20195#30721
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dw'
          Title.Alignment = taCenter
          Title.Caption = #21333#20301
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sfbz'
          Title.Alignment = taCenter
          Title.Caption = #25910#36153#26631#20934
          Width = 76
          Visible = True
        end>
    end
  end
  object DBGrid1: TDBGrid
    Left = 533
    Top = 263
    Width = 210
    Height = 175
    DataSource = ds_pub
    ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = DBGrid1Exit
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'dm'
        Title.Alignment = taCenter
        Title.Caption = #20195#30721
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mc'
        Title.Alignment = taCenter
        Title.Caption = #31185#23460#21517#31216
        Width = 111
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 460
    Top = 347
    Width = 347
    Height = 175
    DataSource = DS_yp
    ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDblClick = DBGrid3DblClick
    OnExit = DBGrid3Exit
    OnKeyPress = DBGrid3KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'fymc'
        Title.Alignment = taCenter
        Title.Caption = #36153#29992#21517#31216
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fydm'
        Title.Alignment = taCenter
        Title.Caption = #20195#30721
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dw'
        Title.Alignment = taCenter
        Title.Caption = #21333#20301
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sfbz'
        Title.Alignment = taCenter
        Title.Caption = #25910#36153#26631#20934
        Width = 69
        Visible = True
      end>
  end
  object ImageList1: TImageList
    Left = 135
    Top = 26
    Bitmap = {
      494C010102000400580010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      1000313131000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000009494000094
      9400009494000094940000949400009494000094940000949400009494000094
      940000949400009494000000000000000000000000000094940063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000949400F7F7
      F70094CEFF0094FFFF0094CEFF0094FFFF0094CEFF0094CEFF0094CEFF0094CE
      FF0063CECE000094940000000000000000000000000000949400CEFFFF0094CE
      FF0094FFFF0094CEFF0094FFFF0094CEFF0094FFFF0094CEFF0094FFFF0094CE
      FF0094CEFF0094CEFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400F7F7F70094FF
      FF0094FFFF0094CEFF0094FFFF0094CEFF0094FFFF0094CEFF0094CEFF0094CE
      FF0063CECE000000000000949400000000000000000000949400CEFFFF0094FF
      FF0094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0094FFFF0094CEFF0094FF
      FF0094CEFF0094CEFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400F7F7F70094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0094CE
      FF000094940000000000009494000000000000000000219C9C00CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FFFF0094CE
      FF0094FFFF0094CEFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000949400F7F7F70094FFFF0094FF
      FF0094FFFF0094FFFF0094CEFF0094FFFF0094FFFF0094CEFF0094FFFF0063CE
      CE000000000063CECE0063CECE00000000000000000039ADAD00CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0094FF
      FF0094CEFF0094FFFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000949400F7F7F70094FFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0063CE
      CE000000000063CECE0063CECE0000000000000000005AB5B500CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094CE
      FF0094FFFF0094CEFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000094940000949400009494000094
      9400009494000094940000949400009494000094940000949400009494000094
      940063CECE0094FFFF0063CECE00000000000000000000949400CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FF
      FF0094CEFF0094FFFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400F7F7F70094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FF
      FF0094FFFF0094FFFF0063CECE00000000000000000000949400CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FF
      FF0094FFFF0094CEFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400F7F7F70094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF00F7F7F700F7F7
      F700F7F7F700F7F7F70063CECE00000000000000000000949400CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF0094FFFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400F7F7F70094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF00F7F7F70000949400009494000094
      940000949400009494000094940000000000000000000094940063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0000949400009494000094
      9400009494000094940000949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000949400F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F7000094940000000000000000000000
      000000000000000000000000000000000000000000000000000000949400EFEF
      EF00CEFFFF00CEFFFF0094FFFF0094FFFF000094940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000094
      9400009494000094940000949400009494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000094
      9400009494000094940000949400009494000000000000000000000000000000
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
      E000C00000000000C000800000000000C0008000000000008000800000000000
      8000800000000000000080000000000000008000000000000000800000000000
      800080000000000080008000000000008001800100000000C07FC03F00000000
      E0FFE07F00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object ds_fydm: TDataSource
    DataSet = qry_fydm
    Left = 39
    Top = 155
  end
  object qry_pub: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from sys_ksdm')
    Left = 40
    Top = 26
  end
  object qry_fydm: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    AfterScroll = qry_fydmAfterScroll
    Parameters = <
      item
        Name = 'vdldm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select * from sys_yzxm where dldm like :vdldm')
    Left = 82
    Top = 153
  end
  object Querytree: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      'select * from fb_qddmtree order by bm')
    Left = 91
    Top = 26
  end
  object ds_pub: TDataSource
    DataSet = qry_pub
    Left = 40
    Top = 66
  end
  object sp_fysycx: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_cx_yzxmsy;1'
    Parameters = <
      item
        Name = '@fydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@fysybz'
        Attributes = [paNullable]
        DataType = ftBoolean
        Direction = pdInputOutput
        Value = Null
      end>
    Left = 176
    Top = 67
  end
  object sp_cxfylb: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_cx_yzlb;1'
    Parameters = <
      item
        Name = '@dldm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@sc_zt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 1
        Value = Null
      end>
    Left = 137
    Top = 65
  end
  object PrintDBGridEh1: TPrintDBGridEh
    Options = []
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -21
    PageHeader.Font.Name = #23435#20307
    PageHeader.Font.Style = [fsBold]
    Units = MM
    Left = 218
    Top = 28
  end
  object SP_fyxm: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'sys_cx_sfxm;1'
    Parameters = <
      item
        Name = '@pym'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = 'a'
      end>
    Left = 234
    Top = 104
    object SP_fyxmfymc: TStringField
      FieldName = 'fymc'
      Size = 100
    end
    object SP_fyxmdymc: TStringField
      FieldName = 'dymc'
      FixedChar = True
      Size = 100
    end
    object SP_fyxmfydm: TStringField
      FieldName = 'fydm'
      FixedChar = True
      Size = 4
    end
    object SP_fyxmpym: TStringField
      FieldName = 'pym'
      Size = 50
    end
    object SP_fyxmdw: TStringField
      FieldName = 'dw'
      FixedChar = True
      Size = 12
    end
    object SP_fyxmsfbz: TBCDField
      FieldName = 'sfbz'
      Precision = 10
      Size = 2
    end
    object SP_fyxmksgs: TStringField
      FieldName = 'ksgs'
      FixedChar = True
      Size = 4
    end
    object SP_fyxmmc: TStringField
      FieldName = 'mc'
    end
    object SP_fyxmqybz: TBooleanField
      FieldName = 'qybz'
    end
    object SP_fyxmdldm: TStringField
      FieldName = 'dldm'
      FixedChar = True
      Size = 10
    end
    object SP_fyxmszdm: TStringField
      FieldName = 'szdm'
      FixedChar = True
      Size = 14
    end
    object SP_fyxmtypym: TStringField
      FieldName = 'typym'
    end
  end
  object DS_yp: TDataSource
    DataSet = SP_fyxm
    Left = 272
    Top = 103
  end
  object dsXmCzwz: TDataSource
    DataSet = qry_xmczwz
    Left = 40
    Top = 199
  end
  object qry_xmczwz: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'yzdm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from sys_yzxmczwz where xmdm=:yzdm')
    Left = 80
    Top = 202
  end
  object dsCzwz: TDataSource
    DataSet = qry_Czwz
    Left = 32
    Top = 255
  end
  object qry_Czwz: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'yzdm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from sys_czwz where id not in (select czid from sys_yzx' +
        'mczwz where xmdm=:yzdm)')
    Left = 72
    Top = 258
    object qry_Czwzid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qry_Czwzwzmc: TStringField
      FieldName = 'wzmc'
      Size = 200
    end
    object qry_Czwzksdm: TStringField
      FieldName = 'ksdm'
      Size = 4
    end
    object qry_Czwzksmc: TStringField
      FieldKind = fkLookup
      FieldName = 'ksmc'
      LookupDataSet = qry_ksdm
      LookupKeyFields = 'dm'
      LookupResultField = 'mc'
      KeyFields = 'ksdm'
      Lookup = True
    end
    object qry_Czwzxbbz: TStringField
      FieldName = 'xbbz'
      FixedChar = True
      Size = 2
    end
    object qry_Czwzjzbz: TBooleanField
      FieldName = 'jzbz'
    end
  end
  object ds_yzxmsfxm: TDataSource
    DataSet = qry_yzxmsfxm
    Left = 32
    Top = 343
  end
  object qry_yzxmsfxm: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select xmdm,xmmc,pym,fydm,qybz,mzbz,zybz from sys_yzxm')
    Left = 72
    Top = 346
    object qry_yzxmsfxmxmdm: TStringField
      FieldName = 'xmdm'
      Size = 4
    end
    object qry_yzxmsfxmxmmc: TStringField
      FieldName = 'xmmc'
      Size = 100
    end
    object qry_yzxmsfxmpym: TStringField
      FieldName = 'pym'
      Size = 50
    end
    object qry_yzxmsfxmfydm: TStringField
      FieldName = 'fydm'
      Size = 4
    end
    object qry_yzxmsfxmfymc: TStringField
      FieldKind = fkLookup
      FieldName = 'fymc'
      LookupDataSet = qry_kjsfxm
      LookupKeyFields = 'fydm'
      LookupResultField = 'fymc'
      KeyFields = 'fydm'
      Lookup = True
    end
    object qry_yzxmsfxmqybz: TBooleanField
      FieldName = 'qybz'
    end
    object qry_yzxmsfxmmzbz: TBooleanField
      FieldName = 'mzbz'
    end
    object qry_yzxmsfxmzybz: TBooleanField
      FieldName = 'zybz'
    end
  end
  object qry_kjsfxm: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from sys_kjsfxm')
    Left = 72
    Top = 394
  end
  object ds_kjsfxm: TDataSource
    DataSet = qry_kjsfxm
    Left = 32
    Top = 391
  end
  object qry_ksdm: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from sys_ksdm')
    Left = 96
    Top = 458
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 280
    Top = 360
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 11126946
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 13886416
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6592345
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 13886416
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 2178849
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6592345
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 6592345
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 33023
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object GridTableViewStyleSheetSpruce: TcxGridTableViewStyleSheet
      Caption = 'Spruce'
      Styles.Content = cxStyle1
      Styles.ContentEven = cxStyle2
      Styles.ContentOdd = cxStyle3
      Styles.Inactive = cxStyle8
      Styles.Selection = cxStyle11
      Styles.Footer = cxStyle4
      Styles.Group = cxStyle5
      Styles.GroupByBox = cxStyle6
      Styles.Header = cxStyle7
      Styles.Indicator = cxStyle9
      Styles.Preview = cxStyle10
      BuiltIn = True
    end
  end
end
