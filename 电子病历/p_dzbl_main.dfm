object Frm_dzbl_main: TFrm_dzbl_main
  Left = 165
  Top = 101
  BorderStyle = bsSingle
  Caption = #30149#20154#22788#29702#24179#21488
  ClientHeight = 5082
  ClientWidth = 1214
  Color = clSilver
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  Menu = Main_Menu
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnMouseWheel = FormMouseWheel
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object StatusBar1: TStatusBar
    Left = 0
    Top = 5058
    Width = 1214
    Height = 24
    Color = clSilver
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Pitch = fpVariable
    Font.Style = []
    Panels = <
      item
        Alignment = taRightJustify
        Style = psOwnerDraw
        Width = 280
      end
      item
        Alignment = taCenter
        Style = psOwnerDraw
        Width = 245
      end
      item
        Alignment = taRightJustify
        Style = psOwnerDraw
        Width = 50
      end>
    UseSystemFont = False
    OnDrawPanel = StatusBar1DrawPanel
  end
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 135
    Height = 5025
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
      Top = 2
      Width = 131
      Height = 5021
      Hint = #21452#20987#36827#20837#32534#36753#29366#24577
      Align = alClient
      Images = ImageList2
      Indent = 29
      PopupMenu = PopupMenumode
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
  end
  object Panel2: TPanel
    Left = 143
    Top = 33
    Width = 744
    Height = 5025
    Align = alClient
    BevelInner = bvLowered
    Ctl3D = True
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    object pgc1: TPageControl
      Left = 2
      Top = 2
      Width = 740
      Height = 5021
      ActivePage = ts2
      Align = alClient
      MultiLine = True
      TabOrder = 0
      TabPosition = tpBottom
      OnChange = pgc1Change
      object ts1: TTabSheet
        Caption = #30149#21382#20070#20889
        ImageIndex = 1
        object EMRPad301: TEMRPad30
          Left = 0
          Top = 0
          Width = 732
          Height = 4994
          Align = alClient
          TabOrder = 0
          OnKeyDown = EMRPad301KeyDown
          OnSelectKeyword = EMRPad301SelectKeyword
          ExplicitHeight = 4971
          ControlData = {00000100A84B00002504020000000000}
        end
      end
      object ts2: TTabSheet
        Caption = #30149#21382#27169#26495
        ImageIndex = 2
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 732
          Height = 57
          Align = alTop
          Caption = #27169#26495#36873#25321
          TabOrder = 0
          object Label2: TLabel
            Left = 411
            Top = 23
            Width = 52
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
            Checked = True
            TabOrder = 1
            TabStop = True
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
            TabOrder = 3
            OnClick = rbqbClick
          end
          object b_retu: TBitBtn
            Left = 605
            Top = 14
            Width = 75
            Height = 27
            Caption = #36820#22238
            TabOrder = 4
            OnClick = b_returnClick
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
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 5
            OnKeyDown = edt_mbdmKeyDown
          end
        end
        object cxGrid2: TcxGrid
          Left = 0
          Top = 57
          Width = 732
          Height = 4937
          Align = alClient
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
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
              Width = 97
            end
            object cxGrid2DBTableView1mbdm: TcxGridDBColumn
              Caption = #27169#22359#20195#30721
              DataBinding.FieldName = 'mbdm'
              Options.Editing = False
              Options.Moving = False
              Width = 84
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
      object ts3: TTabSheet
        Caption = #30149#21382#30693#35782#24211
        ImageIndex = 3
        object DBGridmbmx: TDBGrid
          Left = 195
          Top = 40
          Width = 537
          Height = 4954
          Align = alClient
          DataSource = ds_blzsk
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
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
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 732
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label1: TLabel
            Left = 4
            Top = 14
            Width = 60
            Height = 17
            Caption = #25340#38899#30721':'
          end
          object editpym: TEdit
            Left = 58
            Top = 10
            Width = 137
            Height = 25
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            TabOrder = 0
            OnEnter = editpymEnter
            OnKeyPress = editpymKeyPress
          end
          object b_return: TBitBtn
            Left = 692
            Top = 3
            Width = 75
            Height = 27
            Caption = #36820#22238
            TabOrder = 1
            OnClick = b_returnClick
          end
          object rbgjc: TRadioButton
            Left = 260
            Top = 17
            Width = 113
            Height = 17
            Caption = #25554#20837#20851#38190#35789
            TabOrder = 2
          end
          object rbgjcnr: TRadioButton
            Left = 408
            Top = 15
            Width = 145
            Height = 17
            Caption = #25554#20837#20851#38190#35789#20869#23481
            Checked = True
            TabOrder = 3
            TabStop = True
          end
        end
        object TreeViewgjc: TTreeView
          Left = 0
          Top = 40
          Width = 195
          Height = 4954
          Align = alLeft
          BevelInner = bvLowered
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = #23435#20307
          Font.Style = []
          Indent = 25
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          OnChange = TreeViewgjcChange
          Items.NodeData = {
            0101000000210000000000000000000000FFFFFFFFFFFFFFFF00000000000000
            0004216A7F6706527B7C}
        end
      end
      object ts4: TTabSheet
        Caption = 'xml'#25991#26723
        ImageIndex = 3
        object cxMemoxml: TcxMemo
          Left = 0
          Top = 0
          Align = alClient
          Properties.ScrollBars = ssVertical
          Style.Shadow = False
          TabOrder = 0
          Height = 4994
          Width = 732
        end
      end
      object ts5: TTabSheet
        Caption = #30149#31243#20070#20889#26126#32454#35760#24405
        ImageIndex = 4
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 732
          Height = 4994
          Align = alClient
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ds_blmxjl
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cxGrid1DBTableView1tmh: TcxGridDBColumn
              Caption = #21345#21495
              DataBinding.FieldName = 'tmh'
            end
            object cxGrid1DBTableView1bcid: TcxGridDBColumn
              Caption = #30149#31243'ID'
              DataBinding.FieldName = 'bcid'
              Width = 56
            end
            object cxGrid1DBTableView1blmc: TcxGridDBColumn
              Caption = #30149#21382#21517#31216
              DataBinding.FieldName = 'blmc'
              Width = 172
            end
            object cxGrid1DBTableView1blys: TcxGridDBColumn
              Caption = #30149#21382#21307#29983
              DataBinding.FieldName = 'blys'
              Width = 66
            end
            object cxGrid1DBTableView1blrq: TcxGridDBColumn
              Caption = #20070#20889#26085#26399
              DataBinding.FieldName = 'blrq'
              Width = 86
            end
            object cxGrid1DBTableView1blysqmbz: TcxGridDBColumn
              Caption = #31614#21517
              DataBinding.FieldName = 'blysqmbz'
              Width = 38
            end
            object cxGrid1DBTableView1zzys: TcxGridDBColumn
              Caption = #20027#31649#21307#29983
              DataBinding.FieldName = 'zzys'
              Width = 66
            end
            object cxGrid1DBTableView1zzrq: TcxGridDBColumn
              Caption = #20462#25913#26085#26399
              DataBinding.FieldName = 'zzrq'
              Width = 79
            end
            object cxGrid1DBTableView1zzysqmbz: TcxGridDBColumn
              Caption = #31614#21517
              DataBinding.FieldName = 'zzysqmbz'
            end
            object cxGrid1DBTableView1zgys: TcxGridDBColumn
              Caption = #31185#23460#20027#31649
              DataBinding.FieldName = 'zgys'
            end
            object cxGrid1DBTableView1zgrq: TcxGridDBColumn
              Caption = #20462#25913#26085#26399
              DataBinding.FieldName = 'zgrq'
            end
            object cxGrid1DBTableView1zgysqmbz: TcxGridDBColumn
              Caption = #31614#21517
              DataBinding.FieldName = 'zgysqmbz'
            end
          end
          object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ds_blmxjl
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnGrouping = False
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.GroupByBox = False
            Bands = <
              item
                Caption = #22522#26412#20449#24687
                Width = 204
              end
              item
                Caption = #30149#21382#21307#29983
              end
              item
                Caption = #20027#31649#21307#29983
              end
              item
                Caption = #31185#23460#20027#31649
              end>
            object cxGrid1DBBandedTableView1tmh: TcxGridDBBandedColumn
              Caption = #26465#30721#21495
              DataBinding.FieldName = 'tmh'
              Width = 92
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1blmc: TcxGridDBBandedColumn
              Caption = #21517#31216
              DataBinding.FieldName = 'blmc'
              Width = 122
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1blys: TcxGridDBBandedColumn
              Caption = #21307#29983
              DataBinding.FieldName = 'blys'
              Width = 64
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1blrq: TcxGridDBBandedColumn
              Caption = #32534#36753#26085#26399
              DataBinding.FieldName = 'blrq'
              Width = 156
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1blysqmbz: TcxGridDBBandedColumn
              Caption = #31614#21517
              DataBinding.FieldName = 'blysqmbz'
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1zzys: TcxGridDBBandedColumn
              Caption = #21307#29983
              DataBinding.FieldName = 'zzys'
              Width = 62
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1zzrq: TcxGridDBBandedColumn
              Caption = #32534#36753#26085#26399
              DataBinding.FieldName = 'zzrq'
              Width = 154
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1zzysqmbz: TcxGridDBBandedColumn
              Caption = #31614#21517
              DataBinding.FieldName = 'zzysqmbz'
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1zgys: TcxGridDBBandedColumn
              Caption = #20027#31649
              DataBinding.FieldName = 'zgys'
              Width = 77
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1zgrq: TcxGridDBBandedColumn
              Caption = #32534#36753#26085#26399
              DataBinding.FieldName = 'zgrq'
              Position.BandIndex = 3
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1zgysqmbz: TcxGridDBBandedColumn
              Caption = #31614#21517
              DataBinding.FieldName = 'zgysqmbz'
              Position.BandIndex = 3
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBBandedTableView1
          end
        end
        object Memo1: TMemo
          Left = 61
          Top = 200
          Width = 185
          Height = 89
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          Lines.Strings = (
            'Memo1')
          TabOrder = 1
          Visible = False
        end
      end
      object lclj: TTabSheet
        Caption = #20020#24202#36335#24452
        ImageIndex = 5
        OnShow = lcljShow
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 732
          Height = 4994
          Align = alClient
          TabOrder = 0
          object cxGrid3: TcxGrid
            Left = 1
            Top = 1
            Width = 730
            Height = 4992
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object cxGridDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
            end
            object cxGrid1BandedTableView1: TcxGridBandedTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.CellAutoHeight = True
              Bands = <
                item
                  Width = 211
                end>
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGrid1BandedTableView1
            end
          end
        end
      end
      object TabSheetyzlr: TTabSheet
        Caption = #21307#22065#24405#20837
        ImageIndex = 6
        OnShow = TabSheetyzlrShow
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 1214
    Height = 33
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 29
        Width = 1208
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 1201
      AutoSize = True
      ButtonHeight = 32
      ButtonWidth = 33
      Caption = 'ToolBar1'
      Color = clBtnFace
      Images = ImageList1
      ParentColor = False
      TabOrder = 0
      object b_add: TToolButton
        Left = 0
        Top = 0
        Hint = #22686#21152
        AutoSize = True
        Caption = #22686#21152
        ImageIndex = 0
        OnClick = b_addClick
      end
      object b_yzlr: TToolButton
        Left = 33
        Top = 0
        Hint = #21307#22065
        AutoSize = True
        Caption = #21307#22065
        ImageIndex = 1
      end
      object saveButton: TToolButton
        Left = 66
        Top = 0
        Hint = #20445#23384#30149#21382
        AutoSize = True
        Caption = #20445#23384#30149#21382
        ImageIndex = 4
        OnClick = saveButtonClick
      end
      object ToolButton10: TToolButton
        Left = 99
        Top = 0
        Width = 9
        Caption = 'ToolButton10'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object undoButton: TToolButton
        Left = 108
        Top = 0
        Hint = #25918#24323#26412#27425#32534#36753
        AutoSize = True
        Caption = #25918#24323#26412#27425#32534#36753
        ImageIndex = 2
        OnClick = undoButtonClick
      end
      object redoButton: TToolButton
        Left = 141
        Top = 0
        Hint = #37325#26032#25191#34892
        AutoSize = True
        Caption = #37325#26032#25191#34892
        ImageIndex = 3
        OnClick = redoButtonClick
      end
      object ToolButton4: TToolButton
        Left = 174
        Top = 0
        Width = 9
        Caption = 'ToolButton4'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object deleteButton: TToolButton
        Left = 183
        Top = 0
        Hint = #21024#38500#33609#31295
        AutoSize = True
        Caption = #21024#38500#33609#31295
        ImageIndex = 5
        OnClick = deleteButtonClick
      end
      object ToolButton7: TToolButton
        Left = 216
        Top = 0
        Width = 9
        Caption = 'ToolButton7'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object b_mbmx: TToolButton
        Left = 225
        Top = 0
        Hint = #30149#21382#36164#35782#24211
        AutoSize = True
        Caption = #30149#21382#36164#35782#24211
        ImageIndex = 7
        OnClick = b_mbmxClick
      end
      object b_ICD10: TToolButton
        Left = 258
        Top = 0
        Hint = 'ICD10'
        AutoSize = True
        Caption = 'ICD10'
        ImageIndex = 8
        OnClick = b_ICD10Click
      end
      object b_sszs: TToolButton
        Left = 291
        Top = 0
        Hint = #30149#21382#20070#20889#21161#25163
        Caption = #30149#21382#20070#20889#21161#25163
        ImageIndex = 9
        OnClick = b_sszsClick
      end
      object ToolButton15: TToolButton
        Left = 324
        Top = 0
        Width = 9
        Caption = 'ToolButton15'
        ImageIndex = 12
        Style = tbsDivider
      end
      object findButton: TToolButton
        Left = 333
        Top = 0
        Hint = #26597#25214
        AutoSize = True
        Caption = 'findButton'
        ImageIndex = 10
        OnClick = findButtonClick
      end
      object replButton: TToolButton
        Left = 366
        Top = 0
        Hint = #26367#25442
        AutoSize = True
        Caption = 'repButton'
        ImageIndex = 11
        OnClick = replButtonClick
      end
      object ToolButton3: TToolButton
        Left = 399
        Top = 0
        Width = 9
        Caption = 'ToolButton3'
        ImageIndex = 10
        Style = tbsDivider
      end
      object cancel: TToolButton
        Left = 408
        Top = 0
        Hint = #25918#24323#23384#30424
        Caption = 'cancel'
        ImageIndex = 13
        OnClick = cancelClick
      end
      object ToolButton14: TToolButton
        Left = 441
        Top = 0
        Hint = #36820#22238
        AutoSize = True
        Caption = #36820#22238
        ImageIndex = 12
        OnClick = ToolButton14Click
      end
      object Label3: TLabel
        Left = 474
        Top = 0
        Width = 294
        Height = 32
        Caption = #35831#38543#26102#20851#27880#30149#21382#20070#20889#24773#20917#65292#20197#20813#21457#29983#30149#21382#20002#22833#65281
        Font.Charset = GB2312_CHARSET
        Font.Color = clRed
        Font.Height = -14
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object cxSplitter2: TcxSplitter
    Left = 887
    Top = 33
    Width = 8
    Height = 5025
    HotZoneClassName = 'TcxMediaPlayer9Style'
    AlignSplitter = salRight
    InvertDirection = True
    Control = tree
    OnMoved = cxSplitter2Moved
  end
  object Panel4: TPanel
    Left = 800
    Top = 77
    Width = 298
    Height = 644
    TabOrder = 5
    Visible = False
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 296
      Height = 28
      Align = alTop
      TabOrder = 0
      object Button1: TButton
        Left = 233
        Top = 4
        Width = 59
        Height = 21
        Caption = #38544#34255#8594
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 29
      Width = 296
      Height = 614
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = DataSource1
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = GB2312_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -14
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      RowDetailPanel.Color = clBtnFace
      TabOrder = 1
      TitleFont.Charset = GB2312_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -14
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      OnEnter = DBGridEh1Enter
      OnExit = DBGridEh1Exit
      Columns = <
        item
          EditButtons = <>
          FieldName = 'tmh'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #26465#30721#21495
          Width = 61
        end
        item
          EditButtons = <>
          FieldName = 'blys'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #30149#21382#21307#29983
          Width = 66
        end
        item
          EditButtons = <>
          FieldName = 'blmc'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #30149#21382#21517#31216
          Width = 82
        end
        item
          EditButtons = <>
          FieldName = 'blbcpdid'
          Footers = <>
          Title.Alignment = taCenter
          Width = 94
        end
        item
          EditButtons = <>
          FieldName = 'zzbcpdid'
          Footers = <>
          Title.Alignment = taCenter
          Width = 94
        end
        item
          EditButtons = <>
          FieldName = 'zgbcpdid'
          Footers = <>
          Title.Alignment = taCenter
          Width = 94
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object EMRPad302: TEMRPad30
    Left = 288
    Top = 1000
    Width = 473
    Height = 369
    TabOrder = 6
    ControlData = {00000100E33000002326000000000000}
  end
  object cxSplitter1: TcxSplitter
    Left = 135
    Top = 33
    Width = 8
    Height = 5025
    Cursor = crMultiDrag
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = Panel1
  end
  object tree: TPanel
    Left = 895
    Top = 33
    Width = 319
    Height = 5025
    Align = alRight
    Caption = 'tree'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 8
    object Panel7: TPanel
      Left = 1
      Top = 1
      Width = 317
      Height = 30
      Align = alTop
      TabOrder = 0
      object Label21: TLabel
        Left = 24
        Top = 7
        Width = 34
        Height = 17
        Caption = #26816#32034
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 81
        Top = 4
        Width = 184
        Height = 23
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = #23435#20307
        Font.Style = []
        ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ParentFont = False
        TabOrder = 0
        OnChange = Edit1Change
      end
    end
    object Panel8: TPanel
      Left = 1
      Top = 31
      Width = 317
      Height = 4993
      Align = alClient
      TabOrder = 1
      object cxGrid4: TcxGrid
        Left = 1
        Top = 1
        Width = 315
        Height = 4991
        Align = alClient
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfStandard
        RootLevelOptions.DetailFrameColor = clBlack
        object cxGridDBTableView2: TcxGridDBTableView
          PopupMenu = PopupMenu2
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_cybr
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1bch: TcxGridDBColumn
            Caption = #30149#24202#21495
            DataBinding.FieldName = 'bch'
            Width = 46
          end
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = #21345#21495
            DataBinding.FieldName = 'tmh'
          end
          object cxGrid1DBTableView1brxm: TcxGridDBColumn
            Caption = #22995#21517
            DataBinding.FieldName = 'brxm'
            Width = 64
          end
          object cxGrid1DBTableView1brxb: TcxGridDBColumn
            Caption = #24615#21035
            DataBinding.FieldName = 'brxb'
            Width = 52
          end
          object cxgrdbclmnGrid1DBTableView1ksmc: TcxGridDBColumn
            Caption = #31185#23460
            DataBinding.FieldName = 'ksmc'
            Width = 68
          end
        end
        object cxGridLevel2: TcxGridLevel
          Caption = 'sdfasdfasd'
          GridView = cxGridDBTableView2
          Options.DetailTabsPosition = dtpLeft
        end
      end
    end
  end
  object edtAddress: TEdit
    Left = 207
    Top = 189
    Width = 353
    Height = 22
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    TabOrder = 9
    Visible = False
  end
  object wbEditor: TWebBrowser
    Left = 149
    Top = 3000
    Width = 869
    Height = 545
    TabOrder = 10
    ControlData = {
      4C000000D0590000543800000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
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
        'e  mx.zybz=1 and  mx.qybz=1 and mx.zyksgs*=ks.dm and  mx.dm like' +
        ' :dldm ')
    Left = 1106
    Top = 16
  end
  object ds_mbmx: TDataSource
    DataSet = qry_mbmx
    Left = 1170
    Top = 48
  end
  object ImageList2: TImageList
    Left = 786
    Top = 80
    Bitmap = {
      494C010102007401F00210001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      C381FFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object Qry_pub: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 1042
    Top = 16
  end
  object ds_pub: TDataSource
    DataSet = Qry_pub
    Left = 1042
    Top = 48
  end
  object Main_Menu: TMainMenu
    AutoHotkeys = maManual
    Left = 849
    Top = 80
    object N8: TMenuItem
      Caption = #19994#21153
      object N92: TMenuItem
        Caption = #21307#22065#24405#20837
        OnClick = N92Click
      end
      object N52: TMenuItem
        Caption = #26032#29983#20799#21307#22065#24405#20837
        OnClick = N52Click
      end
      object N93: TMenuItem
        Caption = #20307#28201#34920
        OnClick = N93Click
      end
      object PACS1: TMenuItem
        Caption = 'PACS'#24433#20687
        Visible = False
      end
      object N161: TMenuItem
        Caption = #30149#26696#39318#39029
        Visible = False
      end
      object N96: TMenuItem
        Caption = '-'
      end
      object N95: TMenuItem
        Caption = #24405#38899
        OnClick = N95Click
      end
      object N94: TMenuItem
        Caption = #32487#20303#30149#21382
      end
      object N57: TMenuItem
        Caption = #26032#31383#21475#25171#24320
        OnClick = N57Click
      end
      object N162: TMenuItem
        Caption = '-'
      end
      object N97: TMenuItem
        Caption = #25552#20132#30149#21382
        OnClick = N97Click
      end
      object N163: TMenuItem
        Caption = #36864#20986
        ShortCut = 16465
      end
    end
    object N164: TMenuItem
      Caption = #25253#21578
      object N165: TMenuItem
        Caption = #20256#26579#30149
        OnClick = N165Click
      end
      object N166: TMenuItem
        Caption = #38498#20869#24863#26579
      end
      object N38: TMenuItem
        Caption = '-'
      end
      object N159: TMenuItem
        Caption = #35786#30103#25253#21578
        Visible = False
      end
      object N160: TMenuItem
        Caption = #26816#39564#25253#21578
        Visible = False
      end
      object N39: TMenuItem
        Caption = '-'
        Visible = False
      end
      object N40: TMenuItem
        Caption = #35786#30103#35760#24405
        Visible = False
      end
      object N41: TMenuItem
        Caption = #25163#26415#35760#24405
        OnClick = N41Click
      end
      object N45: TMenuItem
        Caption = #29992#34880#35760#24405
        Visible = False
      end
    end
    object N1: TMenuItem
      Caption = #25991#20214'(&F)'
      object N13: TMenuItem
        Caption = #20445#23384
        ShortCut = 16467
        OnClick = N13Click
      end
      object N14: TMenuItem
        Caption = #21478#23384#26412#22320
        OnClick = N14Click
      end
      object N102: TMenuItem
        Caption = #23384#20026#22270#29255
        OnClick = N102Click
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
      object N55: TMenuItem
        Caption = #35843#25972#30149#31243#34892#21495
        OnClick = N55Click
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
    object N5: TMenuItem
      Caption = #20998#26512
      object N59: TMenuItem
        Caption = #30149#24773#20998#26512
      end
      object N167: TMenuItem
        Caption = #36153#29992#20998#26512
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
      object N2: TMenuItem
        Caption = #30149#21382#20070#20889#21161#25163
        ShortCut = 120
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object N87: TMenuItem
        Caption = #20020#24202#25968#25454#25552#21462
      end
      object N88: TMenuItem
        Caption = '-'
      end
      object N89: TMenuItem
        Caption = #30149#21382#30693#35782#24211
        OnClick = N89Click
      end
      object N54: TMenuItem
        Caption = '-'
      end
      object ICD101: TMenuItem
        Caption = 'ICD10'#36755#20837#26597#35810
        OnClick = ICD101Click
      end
    end
    object N83: TMenuItem
      Caption = #20581#24247#26723#26696#35843#38405
      object N85: TMenuItem
        Caption = #20581#24247#26723#26696#35843#38405
        OnClick = N85Click
      end
    end
    object N10: TMenuItem
      Caption = #24110#21161'(&H)'
    end
  end
  object PopupMenuedit: TPopupMenu
    Left = 946
    Top = 80
    object savebl: TMenuItem
      Caption = #20445#23384#26412#27425#32534#36753
      OnClick = saveblClick
    end
    object N140: TMenuItem
      Caption = #25918#24323#26412#27425#32534#36753
      OnClick = N140Click
    end
    object N53: TMenuItem
      Caption = #21024#38500#30149#21382#33609#31295
      OnClick = N53Click
    end
    object N173: TMenuItem
      Caption = '-'
    end
    object menuItemYSSign: TMenuItem
      Caption = #26412#32423#30005#23376#37492#21517
      OnClick = menuItemYSSignClick
    end
    object menuItemCancelYSSign: TMenuItem
      Caption = #21462#28040#19979#32423#21307#29983#31614#21517
      Visible = False
      OnClick = menuItemCancelYSSignClick
    end
    object N143: TMenuItem
      Caption = '-'
    end
    object N144: TMenuItem
      Caption = #30149#21382#20070#20889#21161#25163
      OnClick = N144Click
    end
    object N145: TMenuItem
      Caption = #20020#24202#25968#25454#25552#21462
    end
    object N146: TMenuItem
      Caption = #30149#21382#30693#35782#24211
      OnClick = N146Click
    end
    object N147: TMenuItem
      Caption = '-'
    end
    object N148: TMenuItem
      Caption = #30149#21382#35786#26029
      OnClick = N148Click
    end
    object N149: TMenuItem
      Caption = #33258#21160#25490#29256
      OnClick = N149Click
    end
    object N150: TMenuItem
      Caption = #25163#21160#21019#24314#26816#32034#32467#28857
      OnClick = N150Click
    end
    object N152: TMenuItem
      Caption = #26174#31034'/'#38544#34255#35821#27861#26631#35782
      OnClick = N152Click
    end
    object N154: TMenuItem
      Caption = #30149#21382#25991#20214#35814#32454#20449#24687
      OnClick = N154Click
    end
    object N82: TMenuItem
      Caption = #23548#20837#26816#39564#32467#26524
      OnClick = N82Click
    end
    object N84: TMenuItem
      Caption = #23548#20837#32454#33740#22521#20859#32467#26524
      OnClick = N84Click
    end
    object N90: TMenuItem
      Caption = #23548#20837#26816#26597#32467#26524
      OnClick = N90Click
    end
    object N155: TMenuItem
      Caption = '-'
    end
    object N157: TMenuItem
      Caption = #22797#21046
      ShortCut = 16451
      OnClick = N157Click
    end
    object N158: TMenuItem
      Caption = #31896#36148
      ShortCut = 16470
      OnClick = N158Click
    end
    object N31: TMenuItem
      Caption = #23384#20026#20851#38190#35789
      OnClick = N31Click
    end
    object N58: TMenuItem
      Caption = #26412#27573#21478#23384#20026
      OnClick = N58Click
    end
    object N60: TMenuItem
      Caption = #35843#29992#24050#20445#23384#30340#20803#32032
      OnClick = N60Click
    end
    object N56: TMenuItem
      Caption = #36923#36753#26816#26597
      OnClick = N56Click
    end
    object N81: TMenuItem
      Caption = #23548#20837#20869#23481
      Visible = False
      OnClick = N81Click
    end
    object N86: TMenuItem
      Caption = #29305#27530#31526#21495
      OnClick = N86Click
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
    Left = 754
    Top = 48
  end
  object PopupMenumode: TPopupMenu
    OnChange = PopupMenumodeChange
    Left = 1010
    Top = 80
    object blmb: TMenuItem
      Caption = #22686#21152#30149#21382
      OnClick = blmbClick
    end
    object bljk: TMenuItem
      Caption = #30149#21382#30693#35782#24211
      OnClick = bljkClick
    end
    object N79: TMenuItem
      Caption = #22797#21046#25972#20221#30149#21382
      OnClick = N79Click
    end
    object N80: TMenuItem
      Caption = #31896#36148#30149#21382
      OnClick = N80Click
    end
    object N91: TMenuItem
      Caption = #21478#23384#20026#27169#26495
      OnClick = N91Click
    end
  end
  object ImageList1: TImageList
    Height = 26
    Width = 26
    Left = 818
    Top = 80
    Bitmap = {
      494C01010E007401F0021A001A00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000006800000068000000010020000000000000A9
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
      000000000000000000000000000000000000000000000000000000000000F7F3
      F700F7F7F700D6D3D600E7E7E700F7F7F700DEDFDE00DEDFDE00EFEBEF00F7F7
      F700D6D3D600E7E7E700F7F7FF00313421005A591000BDBAB500FFFBFF00D6D7
      D600E7E7E700FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00EFEF
      EF00D6D7D600F7F3F700E7E3E700DEDFDE00DEDFDE00F7F3F700E7E3E700D6D7
      D600F7F7F700E7E3E700D6D3DE004A4D1000FFFF00005255000094929C000000
      0000E7E3E700DEDBDE00E7E3E700FFFFFF000000000000000000000000000000
      00000000000000000000D2D2D200DFDFDF00CACACA00C5C5C500BBBBBB00B8B8
      B800BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6D7D600E7E7
      E700E7E7E700E7E7E700DEDBDE00E7E7E700F7F3F700D6D3D600EFEBEF00EFEB
      EF00E7E3E700DEDFDE00DEDFE7004A491000FFFF000094960000393800008486
      8C00F7F3F700E7E7E700EFEFEF00D6D7D6000000000000000000000000000000
      000000000000D2D2D2007D7D7D004D4D4D0099999900B2B2B200C7C7C700D0D0
      D000BDBDBD00BBBBBB00BDBDBD00BDBDBD00BDBDBD00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEBEF00EFEB
      EF00DEDBDE00D6D7D600F7F7F700DEDFDE00D6D7D600EFEBEF00EFEBEF00DEDF
      DE00DEDBDE00F7F7F700D6D3DE004A4D1000FFFF000094920000848200004245
      0800A5A2AD00E7E7E700DEDBDE00F7F7F7000000000000000000000000000000
      0000000000005A5A5A0072727200767676006A6A6A00606060006D6D6D007676
      7600BFBFBF00C9C9C900C7C7C700C7C7C700C0C0C000BABABA00BDBDBD00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000525152004A4D
      4A004A4D4A00393C39004A494A00525152004241420042454200393C3900EFEB
      EF00EFEFEF00D6D7D600DEDFEF0052511000FFFF0000949200007B7D00008486
      0000424100003134310039383900525552000000000000000000000000000000
      00000000000055555500FFFFFF00C3C3C30098989800FFFFFF00B1B1B1009F9F
      9F0055555500535353009999990099999900B8B8B800D3D3D300C3C3C300BDBD
      BD00BDBDBD00BCBCBC00BEBEBE00BEBEBE00BEBEBE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A494A00DEDB
      DE00E7E7E700F7F3F700EFEBF7004A491000FFFF0000949200007B7D00008C8A
      0000393C00005A596300E7E3E700000000000000000000000000000000000000
      0000000000003232320089898900AEAEAE006C6C6C00E3E3E300FFFFFF00FFFF
      FF00F1F1F100E2E2E2006F6F6F006F6F6F0067676700686868009F9F9F00C1C1
      C100C7C7C700CBCBCB00BBBBBB00BABABA00BEBEBE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E3E700F7F3F70042414200393C
      390031303100292C2900393C3900393C0000FFFF0000949200007B7D00008C8A
      0000393C00005A596300DEDFDE00000000000000000000000000000000000000
      000000000000909090008C8C8C00777777002A2A2A00F2F2F200F7F7F700F4F4
      F400FCFCFC00FFFFFF00FFFFFF00FFFFFF00DFDFDF00C1C1C1007A7A7A005959
      5900808080008D8D8D00CCCCCC00D1D1D100C1C1C10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002928290094969C00424139007371
      73007B7D7B007B7D7B006B6D7B0042450800FFFF0000949200007B7D00008C8A
      0000393C00005A596300DEDFDE00000000000000000000000000000000000000
      000000000000C8C8C800CACACA00CECECE0051515100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F800ECECEC00F5F5
      F5008D8D8D007B7B7B004545450053535300AFAFAF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031342100393C0800101018008482
      84007B7D7B007B7D7B0073757B0042450800FFFF0000949200006B6D00008486
      0000393C00005A596300DEDFDE00000000000000000000000000000000000000
      000000000000BCBCBC0000000000C9C9C9003F3F3F0097979700A3A3A300A0A0
      A000A1A1A100A1A1A1009D9D9D00A2A2A2004949490064646400717171003535
      3500626262004E4E4E003D3D3D000E0E0E003F3F3F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00E7E7E700EFEBEF00EFEBEF004241290094960000313400005A5D
      6300848684007B7D7B0073757B0042450800FFFF000063610800101010007371
      0000424500005A596300DEDFDE00000000000000000000000000000000000000
      000000000000BEBEBE00BDBDBD00C3C3C3009494940071717100717171007070
      7000717171006F6F6F0070707000717171007A7A7A0064646400B6B6B600CECE
      CE00D9D9D90091919100CFCFCF007D7D7D00C9C9C90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFB
      FF00C6C3CE00ADAAB500ADAEB500B5B2BD00393C1800F7F700009C9A00003134
      00005A5D630084868C0073757B0042450800FFFF00005251310063657B006361
      0000424500005A596300DEDFDE00000000000000000000000000000000000000
      000000000000BEBEBE00BEBEBE00BDBDBD00C5C5C500D4D4D400CECECE00D3D3
      D300CCCCCC00D7D7D700D7D7D700CDCDCD00CCCCCC00B3B3B300686868006464
      640091919100FBFBFB0045454500C4C4C400BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEBEF005251
      42002120000021200000212000002120000039380000FFFF0000FFFB00009C9A
      0000313400005A5D63007B79840042410800FFFF000084820000292C08007B79
      0000424100005A596300DEDFDE00000000000000000000000000000000000000
      000000000000BEBEBE00BEBEBE00BBBBBB00C5C5C500ABABAB00565656007272
      72005E5E5E0071717100A5A5A500C3C3C300BABABA00C0C0C000D0D0D000AEAE
      AE007C7C7C003737370097979700C5C5C500BCBCBC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A6B5007371
      0000DEDF0000DEDB0800DEDB0800DEDB0800DEDF0800FFFF0800FFFF0000F7F7
      00009C9E000039380000525163004A490800FFFF000094920000848600008C8A
      0000393C00005A596300DEDFDE00000000000000000000000000000000000000
      000000000000BEBEBE00BBBBBB00C7C7C700A9A9A90072727200C6C6C6008E8E
      8E00C0C0C000848484006B6B6B00AAAAAA00C2C2C200BDBDBD00BABABA00C0C0
      C000D1D1D10087878700B4B4B400C1C1C100BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A2B5009C9A
      0000FFFF2900FFFFB500FFFFB500FFFFB500FFFFB500FFFFA500FFFFE700FFFF
      7300EFEF00004245000042455A004A4D1000FFFF0000949200007B7D00008C8A
      0000393C00005A596300DEDFDE00000000000000000000000000000000000000
      000000000000BBBBBB00C3C3C300AFAFAF006D6D6D00CACACA0091919100BCBC
      BC0095959500C5C5C5006A6A6A00AAAAAA00C3C3C300BDBDBD00BEBEBE00BDBD
      BD00BBBBBB00C8C8C800C0C0C000BDBDBD00BEBEBE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEDBE7006B6D
      2900636500006365000063650000636500007B7D0000FFFF3900FFFF7B00EFEF
      00004A4900004A4D5A007B7D840042410800FFFF0000949200007B7D00008C8A
      0000393C00005A596300DEDFDE00000000000000000000000000000000000000
      000000000000BFBFBF00BFBFBF0057575700DDDDDD0089898900000000009898
      9800B2B2B200A9A9A9008080800089898900CACACA00BCBCBC00BEBEBE00BEBE
      BE00BEBEBE00BCBCBC00BDBDBD00BEBEBE00BEBEBE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7E7
      F700CECBDE00CECBDE00CECBDE00CECBDE0031342100FFFF1800F7F300004A4D
      00004A495A008C8A8C0073717B0042450800FFFF0000949200007B7D00008C8A
      0000393C00005A596300DEDFDE00000000000000000000000000000000000000
      000000000000D9D9D9007E7E7E0091919100FFFFFF00F6F6F600A6A6A600ACAC
      AC00A3A3A300ADADAD0079797900C9C9C900BCBCBC00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000052512900EFEF00004A4D00004A4D
      5A008C8A8C007B7D7B0073717B0042410000FFFF00008C8A00007B7900008C8A
      0000393C00005A596300DEDFDE00000000000000000000000000000000000000
      000000000000C5C5C50057575700E9E9E900FDFDFD00FBFBFB00FFFFFF00DFDF
      DF00A6A6A60078787800CDCDCD00BBBBBB00BFBFBF00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003130180052510000080810008482
      84007B7D7B007B7D7B008482840052555A008C8E0000F7F300007B7D00008486
      0000393C00005A596300DEDFDE00000000000000000000000000000000000000
      0000000000004242420092929200FDFDFD00F7F7F700F9F9F900FAFAFA00AEAE
      AE005E5E5E00B7B7B700B6B6B600C3C3C300BCBCBC00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B797B00ADAEB500525152007375
      73007B7D7B007B7D7B007B7D7B0084868C004A495A009C9A0000EFEB00008486
      0000393C00005A596300DEDFDE00000000000000000000000000000000000000
      00000000000050505000B3B3B300FCFCFC00FAFAFA00F9F9F900FFFFFF00EDED
      ED007A7A7A006C6C6C0072727200B4B4B400C0C0C000BDBDBD00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000424142007B7D
      7B00848684008486840084868400848684008C8E9400525163009C9E0800F7F7
      00004A4D000052515A00DEDFDE00000000000000000000000000000000000000
      00000000000066666600FFFFFF00FFFFFF00FCFCFC00FFFFFF00E1E1E100DBDB
      DB00BCBCBC006F6F6F003A3A3A0091919100C9C9C900BCBCBC00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000313031003938
      3900393C3900393C3900393C3900393C3900393C390042454A00080810007B7D
      00004A4900007B798C0000000000000000000000000000000000000000000000
      000000000000B6B6B600CECECE00E6E6E600FBFBFB00C4C4C4005E5E5E006868
      680074747400ABABAB00ADADAD00BFBFBF00BDBDBD00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CECBCE00B5B2
      B500B5B2B500B5B2B500B5B2B500B5B2B500B5B2B500B5B2B500B5B6B500ADAA
      BD00ADAEBD00F7F7F70000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000CE000092FF000000CE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECFCE00CECFCE00CECFCE00CECFCE00CECFCE00CECFCE00CECFCE00CECF
      CE00CECFCE00CECFCE00CECFCE00CECFCE00CECFCE00CECFCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF0000009400
      290000000000000000000000CE0063CFFF006300FF000000CE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FF
      FF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF00CECFCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F00000000000000000000000000000000007F7F7F00000000000000
      000000000000000000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F00FFFFFF00FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000CFCFCF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000009229000061
      290000612900007D0000FF612900FF612900FF612900FF612900FF612900FF00
      0000940029000000CE0063CFFF006300FF000000CE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094FFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF0000922900FFFF
      FF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00CECFCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFFFF0000000000FFFFFF007F7F7F00000000000000
      0000FFFFFF00000000007F7F7F00000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F00FFFFFF0090FFFF00FFFFFF0090FFFF00FFFF
      FF0090FFFF00FFFFFF0090FFFF00CFCFCF000000000000000000000000000000
      00000000000000000000000000000000000000000000009229000092290063CF
      29000092290000922900007D0000007D00000000000000000000000000000000
      00000000000063CFFF006300FF000000CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF000092290000922900FFFF
      FF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF00CECFCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF00FFFFFF00FFFFFF0000000000000000007F7F7F000000
      000000000000FFFFFF00000000007F7F7F0000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000002F606000609090006090900060909000006060000060
      600000606000006060007F7F7F00FFFFFF00FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000CFCFCF000000000000000000000000000000
      000000000000000000000000000000000000009229000092290063FF290063FF
      290063CF290000922900009229004A4D4A00CE922900CE922900CE922900CE92
      290094612900000000000000CE00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7D7B00FFFF
      FF0094FFFF00FFFFFF0094FFFF00FFFFFF000092290000922900009229000092
      290000922900FFFFFF0094FFFF00FFFFFF0094FFFF00CECFCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002F606000609090006090900060909000609090006090
      900000606000006060007F7F7F00FFFFFF0090FFFF00FFFFFF0090FFFF00FFFF
      FF0090FFFF00FFFFFF00CFCFCF00CFCFCF000000000000000000000000000000
      0000000000000000000000000000000000000092290094FFCE0063FF290063FF
      290063CF2900009229004A4D4A007B7D7B00FFCF2900FFCF2900FFCF2900CE92
      2900CE9229009461290000000000940029000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7D7B00FFFF
      FF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF000092290000922900FFFF
      FF006392000063610000FFFFFF0094FFFF00FFFFFF00CECFCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF00FFFFFF00007F000000FF0000007F000000000000FFFF
      FF00007F000000FF0000007F000000FF0000007F000000FF0000007F0000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000002F60600090CFCF006090900060909000609090000060
      600060909000006060007F7F7F00FFFFFF00FF000000FF000000FF00000090FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000092290094FFCE0094FFCE0094FFCE0063FF
      290063CF2900009229004A4D4A00FFCF9400FFFF9400FFFF9400FFFF9400FFCF
      2900CE922900CE92290000000000FF0000009400290000000000000000000000
      00000000000000000000000000000000000000000000000000007B7D7B00FFFF
      FF00FFFFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF0000922900FFFF
      FF00FFFFFF006361000094FFFF00FFFFFF0094FFFF00CECFCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002F60600090CFCF0090CFCF0060909000609090006090
      900060909000006060007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0090FFFF007F7F7F00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000922900FFFFFF0094FFCE0063FF290063CF
      290000922900007D00004A4D4A00FFCF9400FFFFFF00FFFFCE00FFFF9400FFFF
      9400FFCF2900CE92290000000000FF0000009400290000000000000000000000
      00000000000000000000000000000000000000000000000000007B7D7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FF
      FF00FFFFFF0063610000FFFFFF0094FFFF00FFFFFF00CECFCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF00FFFFFF00007F000000FF0000007F0000FFFFFF00FFFF
      FF00007F000000FF0000007F000000FF0000007F000000FF0000007F0000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000002F60600090CFCF0090CFCF0090CFCF00609090006090
      900060909000609090007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007F7F7F0000000000000000000000000000000000000000000000
      00000000000000000000000000000092290094FFCE0094FFCE0063CF29000092
      2900007D0000FF9200004A4D4A00FFCF9400FFFFFF00FFFFFF00FFFFCE00FFFF
      9400FFCF2900CE92290000000000FF0000009400290000000000000000000000
      00000000000000000000000000000000000000000000000000007B7D7B00FFFF
      FF0094FFFF00FFFFFF0094FFFF006361000094FFFF00FFFFFF0094FFFF00FFFF
      FF0094FFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00CECFCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002F606000CFFFFF0090CFCF0090CFCF0090CFCF006090
      900060909000609090007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000009229000092290000922900009229000092
      2900FFCF2900FF9200004A4D4A007B7D7B00FFCF9400FFFFFF00FFFFFF00FFFF
      FF00FFCF94007B7D7B0000000000FF0000009400290000000000000000000000
      00000000000000000000000000000000000000000000000000007B7D7B00FFFF
      FF00FFFFFF0094FFFF00FFFFFF0063610000FFFFFF00FFFFFF0000922900FFFF
      FF00FFFFFF0094FFFF00FFFFFF0094FFFF00FFFFFF00CECFCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF00FFFFFF0000000000007F000000000000007F00000000
      0000007F000000000000007F000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000002F606000CFFFFF0090CFCF0090CFCF006090900090CF
      CF00609090006090900060909000609090006090900000606000006060000060
      6000006060000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF612900FFFFCE00FFFFCE00FFFF2900FFCF
      2900FFCF2900FF920000FF9200004A4D4A007B7D7B00FFCF9400FFCF9400FFCF
      94007B7D7B0000000000FF612900FF0000009400290000000000000000000000
      00000000000000000000000000000000000000000000000000007B7D7B00FFFF
      FF0094FFFF00FFFFFF0094FFFF006361000063920000FFFFFF00009229000092
      2900FFFFFF00FFFFFF0094FFFF00FFFFFF0094FFFF00CECFCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF00FFFFFF0000FF00000000000000FF00000000000000FF
      00000000000000FF00000000000000FF0000FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002F606000CFFFFF00CFFFFF0090CFCF0090CFCF006090
      900090CFCF006090900060909000609090000060600060909000006060000060
      6000006060000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF612900FFFFCE00FFFF2900FF920000007D
      0000FF920000FFCF2900FF920000949200004A4D4A004A4D4A004A4D4A004A4D
      4A004A4D4A00FF612900FF612900FF0000009400290000000000000000000000
      00000000000000000000000000000000000000000000000000007B7D7B00FFFF
      FF00FFFFFF0094FFFF00FFFFFF00FFFFFF000092290000922900009229000092
      29000092290094FFFF00FFFFFF0094FFFF00FFFFFF00CECFCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000002F606000CFFFFF00CFFFFF00CFFFFF0090CFCF0090CF
      CF0090CFCF0090CFCF0060909000609090006090900060909000609090000060
      6000006060000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF612900FFFFCE00FF920000006129000092
      2900007D0000007D0000FF920000FF920000FF920000FF920000FF612900FF92
      0000FF612900FF920000FF612900FF0000009400290000000000000000000000
      00000000000000000000000000000000000000000000000000007B7D7B000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00009229000092
      2900FFFFFF00FFFFFF0094FFFF00CECFCE00CECFCE00CECFCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002F606000FFFFFF00CFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006090
      9000006060000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF6129000092290063FF290063CF
      290000922900007D0000FF612900FF920000FF920000FF920000FF920000FF61
      2900FF920000FF612900FF920000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094FFFF0000922900FFFF
      FF00FFFFFF0094FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000000000
      000000000000000000002F606000FFFFFF00CFFFFF000090CF000090CF000090
      CF000090CF000090CF000090CF000090CF000090CF0000609000000000006090
      9000609090000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000612900FFFFFF0094FFCE0094FF
      CE0063CF290000922900007D0000FF612900FF920000FF920000FF920000FF92
      0000FF612900FF920000FF612900940029000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094FFFF00FFFF
      FF0094FFFF00FFFFFF007B7D7B00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002F606000FFFFFF00FFFFFF00FFFFFF000090CF0090FF
      FF002FCFFF00006060000060600090FFFF000060900000000000609090006090
      9000609090000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000612900FFFFFF0094FF
      CE0063FF290063CF2900007D0000007D0000007D0000007D0000007D0000FF61
      2900FF92000094920000FF612900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094FF
      FF00FFFFFF00FFFFFF007B7D7B00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002F6060002F6060002F6060002F6060000090
      CF00FFFFFF0090FFFF0090FFFF00006090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000612900FFFF
      FF00FFFFFF0094FFCE0094FFCE0063FF290063FF290063CF290000922900007D
      000094920000FF61290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B7D7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000090
      CF000090CF000090CF000090CF000090CF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000061
      290000612900FFFFFF00FFFFFF00FFFFFF0094FF9400FFFFCE0063FF2900007D
      0000FF612900FF61290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7D7B007B7D7B007B7D7B007B7D7B007B7D7B007B7D7B007B7D7B007B7D
      7B007B7D7B007B7D7B007B7D7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000006129000061290000612900006129000061290000612900FF61
      2900000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000292CCE000000FF0000009400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F0090FFFF00FFFFFF0090FF
      FF00FFFFFF0090FFFF00FFFFFF0090FFFF00FFFFFF0090FFFF00FFFFFF0090FF
      FF00FFFFFF0090FFFF00CFCFCF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084828400000000000000
      0000000000000000000000000000000000000000000084828400000000008482
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000000820000008200008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000292CCE000061FF000000FF00000094000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00FFFFFF00902F
      0000902F0000FFFFFF00902F0000902F0000902F0000902F0000902F0000902F
      0000902F0000FFFFFF00CFCFCF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084828400DEDFDE00DEDF
      DE0094FFFF00DEDFDE0094FFFF00949294000000000000000000313031000000
      0000000000009492940094FFFF009492940094FFFF0094929400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000082000000820000008200000082
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000292CCE002992FF000061FF000000CE000000
      9400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0090FFFF00FFFFFF0090FFFF00FFFFFF0090FFFF00FFFFFF0090FF
      FF00FFFFFF0090FFFF00CFCFCF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084828400DEDFDE000000
      0000000000000000000000000000000000000000000000000000313031000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000008200000082000000820000008200000082
      0000008200008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000292CCE002992FF000000FF000000
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F00FFFFFF0090FFFF00FF00
      0000FF000000FFFFFF00FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FFFFFF00CFCFCF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084828400DEDFDE008482
      840000000000000000000000000000000000DEDFDE0094929400313031009492
      9400DEDFDE000000000000000000000000000000000000000000FFCF2900FFCF
      2900000000000000000000000000000000000000000000000000000000000000
      0000000000008400000000820000008200000082000000FF0000008200000082
      0000008200000082000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000CE002992FF000000
      CE00000094000000000000000000000000000000000000000000000000000000
      00000000FF000000940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0090FFFF00FFFFFF0090FFFF00FFFFFF0090FFFF00FFFFFF0090FF
      FF00FFFFFF0090FFFF00CFCFCF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084828400DEDFDE008482
      840094FFFF00FFFFFF0094FFFF00DEDFDE007B0000007B000000313031000000
      000094FFFF00FFFFFF0094FFFF00FFFFFF000000000000000000FFFF9400FFCF
      2900000000000000000000000000000000000000000000000000000000000000
      00000000000000820000008200000082000000FF00000000000000FF00000082
      0000008200000082000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000CE000061
      FF00000094000000000000000000000000000000000000000000000000000000
      FF00000094000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00FFFFFF00FF00
      0000FF000000FFFFFF00FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FFFFFF00CFCFCF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084828400DEDFDE008482
      8400FFFFFF00FF9229007B0000007B000000DEDFDE0094929400313031009492
      9400FFFFFF0094FFFF00FFFFFF0094FFFF000000000000000000CE612900CE61
      2900000000000000000000000000000000000000000000000000000000000000
      00000000000000FF00000082000000FF000000000000000000000000000000FF
      0000008200000082000000820000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      CE000000FF0000009400000000000000000000000000000000000000FF000000
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F00FFFFFF0090FFFF00FFFF
      FF00FFFFFF0090FFFF00FFFFFF0090FFFF00FFFFFF0090FFFF00FFFFFF0090FF
      FF00FFFFFF0090FFFF00CFCFCF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084828400DEDFDE008482
      840094FFFF00FFFFFF0094FFFF00DEDFDE0094FFFF0000000000313031000000
      000094FFFF00FFFFFF0094FFFF00FFFFFF00000000000000000094FFFF0094FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      000000FF00000082000000820000008200008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000CE000000FF000000940000000000000000000000FF00000094000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00FFFFFF00FF60
      2F00FF602F00FFFFFF00FF602F00FF602F00FF602F00FF602F00FF602F00FF60
      2F00FF602F00FFFFFF00CFCFCF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084828400DEDFDE008482
      8400FFFFFF0094FFFF00FFFFFF0094FFFF00DEDFDE0094929400313031007B00
      00007B00000094FFFF00FFFFFF0094FFFF000000000000000000FFFFFF0094FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000820000008200000082000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000CE000000FF00000094000000FF0000009400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0090FFFF00FFFFFF0090FFFF00FFFFFF0090FFFF00FFFFFF0090FF
      FF00FFFFFF0090FFFF00CFCFCF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084828400DEDFDE008482
      8400FFFFFF00FFFFFF0094FFFF00DEDFDE007B0000007B000000313031000000
      000094FFFF00FF000000FF000000FF92290000000000000000002992CE002992
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000008200000082000000820000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000CE000000FF000000940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00FFFFFF00FFFF
      FF0090CFCF0090CFCF0090FFFF00FFFFFF0090FFFF0090CFCF000000000090CF
      CF0090FFFF00FFFFFF00CFCFCF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084828400DEDFDE008482
      8400FFFFFF00FF922900FF000000FF000000DEDFDE0094929400313031009492
      9400FFFFFF0094FFFF00FFFFFF0094FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF00000082000000820000008200008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000CE000000FF00000094000000CE0000009400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00FFFFFF00FFFF
      FF00002F0000002F000090CFCF00FFFFFF0090CFCF00002F000090CFCF000000
      000090CFCF0090FFFF00CFCFCF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084828400DEDFDE008482
      8400FFFFFF00FFFFFF00FFFFFF00DEDFDE00FFFFFF0000000000313031007B00
      00007B000000FFFFFF0094FFFF00FFFFFF000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000820000008200000082
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000CE000000FF000000940000000000000000000000CE00000094000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00FFFFFF00FFFF
      FF0060909000CFFFFF00002F000090CFCF00002F000090CFCF002F60600090CF
      CF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084828400DEDFDE008482
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF000000313031009492
      9400FFFFFF00FF612900FF612900FF9229000000000000000000000094000000
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000008200000082
      0000840000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000CE000000
      CE000000FF0000009400000000000000000000000000000000000000CE000000
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0060909000CFFFFF00002F000090CFCF002F60600090CFCF002F60
      600060909000609090006090900000000000FF602F00FF602F00000000000000
      0000000000000000000000000000000000000000000084828400DEDFDE008482
      8400FFFFFF00FF922900FF922900FF612900FFFFFF0094929400313031000000
      0000FFFFFF00FFFFFF0094FFFF00FFFFFF0000000000000000002900FF002900
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000082
      0000008200000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000CE000000CE002992FF000000
      FF00000094000000000000000000000000000000000000000000000000000000
      CE00000094000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F0060909000CFFFFF00002F000090CFCF002F60600090CF
      CF0090CFCF0090CFCF006090900060909000FF902F00FF902F00000000000000
      0000000000000000000000000000000000000000000084828400DEDFDE008482
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000313031000000
      0000FFFFFF00FFFFFF00FFFFFF0094FFFF0000000000000000006361FF002900
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000CE002992FF000061FF000000FF000000
      9400000000000000000000000000000000000000000000000000000000000000
      00000000CE000000940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000060909000CFFFFF00002F0000CFFFFF00CFFF
      FF0090CFCF0090CFCF0090CFCF0090CFCF00FFCF2F00FFCF2F00000000000000
      0000000000000000000000000000000000000000000084828400848284008482
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF008482840084828400000000008482
      840084828400FFFFFF00FFFFFF00FFFFFF000000000000000000848284008482
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000CE002992FF000061FF000000FF00000094000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000060909000FFFFFF00FFFFFF00CFFF
      FF00CFFFFF00CFFFFF00CFFFFF0060909000FFFF9000FFFF9000000000000000
      0000000000000000000000000000000000000000000000000000000000008482
      8400848284008482840084828400848284000000000000000000000000000000
      0000000000008482840084828400848284008482840084828400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000636194000000CE000000CE0063619400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000060909000609090006090
      900060909000609090006090900000000000FF602F00FF602F00000000000000
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
      0000000000007B7D7B00CECFCE00CECFCE00CECFCE00CECFCE00CECFCE00CECF
      CE00CECFCE00CECFCE00CECFCE00CECFCE00CECFCE00CECFCE00CECFCE00CECF
      CE00CECFCE00CECFCE00CECFCE00CECFCE000000000000000000000000000000
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
      0000000000007B7D7B00FFFFFF00FFFFFF00942C0000942C0000942C0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00942C0000942C0000942C0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CECFCE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006392290094FF290094CF2900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF612900FF61
      2900FF612900FF61290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7D7B00FFFFFF00FFFFFF00FF612900FFFFFF00942C0000FFFF
      FF00000000000000000000000000FFFFFF00FF612900FFFFFF00942C0000FFFF
      FF00000000000000000000000000CECFCE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006392290094FF290094CF2900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF612900FFCF
      2900FFFFCE00FFFFCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7D7B00FFFFFF00FFFFFF00FF612900FF612900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF612900FF612900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CECFCE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006392290094FF290094CF29000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF612900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF612900FFCF
      2900FFFFCE00FFFFCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7D7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CECFCE000000000000000000000000000000
      0000000000000000000000000000000000006392290094CF290094CF290094CF
      290094CF290094CF290094CF2900000000000000000000000000000000000000
      0000000000006392290094FF290094CF29000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF922900FF6129000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF612900FFCF
      2900FFFFCE00FFFFCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7D7B00FFFFFF00FFFFFF00942C0000942C0000942C0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00942C0000942C0000942C0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CECFCE000000000000000000000000000000
      0000000000000000000000000000000000006392290094FFCE0094FF290094FF
      290094FF290094CF290000000000000000000000000000000000000000000000
      000000000000000000006392290094FF290094CF290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF922900FFCF2900FF61290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF612900FF612900FF612900FF612900FF612900FF61
      2900FF612900FF612900FF612900FF612900FF612900FF612900FF6129000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7D7B00FFFFFF00FFFFFF00FF612900FFFFFF00942C0000FFFF
      FF00000000000000000000000000FFFFFF00FF612900FFFFFF00942C0000FFFF
      FF00000000000000000000000000CECFCE000000000000000000000000000000
      00000000000000000000000000000000000063922900FFFFFF0094FFCE0094FF
      290094CF29000000000000000000000000000000000000000000000000000000
      000000000000000000006392290094FF290094CF290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF612900FF922900FF922900FF922900FF922900FF922900FF92
      2900FF922900FF922900FF922900FFCF2900FFCF2900FF612900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF612900FFFF9400FFCF2900FFFFCE00FFFFCE00FFFF
      CE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FF6129000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7D7B00FFFFFF00FFFFFF00FF612900FF612900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF612900FF612900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CECFCE000000000000000000000000000000
      0000000000000000000000000000000000006392290094FFCE00FFFFFF0094FF
      CE0094FF290094CF290000000000000000000000000000000000000000000000
      000000000000000000006392290094FF290094CF290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF612900FFFFCE00FFCF2900FFCF2900FFCF2900FFCF2900FFCF
      2900FFCF2900FFCF2900FFCF2900FFCF2900FFCF2900FFCF2900FF6129000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF612900FFCF2900FFCF2900FFCF2900FFCF2900FFCF
      2900FFCF2900FFCF2900FFCF2900FFCF2900FFCF2900FFFFCE00FF6129000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7D7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CECFCE000000000000000000000000000000
      00000000000000000000000000000000000063922900FFFFFF0094FFCE000000
      000094FF290094FF290094CF2900000000000000000000000000000000000000
      000000000000000000006392290094FF290094CF290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF612900FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFF
      CE00FFFFCE00FFFFCE00FFFFCE00FFCF2900FFFF9400FFCF2900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF612900FFCF2900FFCF2900FF922900FF922900FF92
      2900FF922900FF922900FF922900FF922900FF922900FF922900FF6129000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7D7B00FFFFFF00FFFFFF00942C0000942C0000942C0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00942C0000942C0000942C0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CECFCE000000000000000000000000000000
      0000000000000000000000000000000000006392290094FFCE00000000000000
      00006392290094FF290094FF290094CF29000000000000000000000000000000
      000000000000000000006392290094FF290094CF290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF612900FF612900FF612900FF612900FF612900FF612900FF61
      2900FF612900FF612900FFFFCE00FFFF9400FFCF290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7D7B00FFFFFF00FFFFFF00FF612900FFFFFF00942C0000FFFF
      FF00000000000000000000000000FFFFFF00FF612900FFFFFF00942C0000FFFF
      FF00000000000000000000000000CECFCE000000000000000000000000000000
      0000000000000000000000000000000000006392290000000000000000000000
      0000000000006392290094FF290094FF290094CF290094CF2900000000000000
      0000000000000000000094CF290094FF290094CF290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF612900FFFFCE00FFCF29000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF612900FFCF
      2900FFFFCE00FFFFCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7D7B00FFFFFF00FFFFFF00FF612900FF612900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF612900FF612900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CECFCE000000000000000000000000000000
      0000000000000000000000000000000000006392290000000000000000000000
      00000000000000000000639229006392290094FF290094FF290094CF290094CF
      290094CF290094CF290094FF290094CF29000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF612900FFCF2900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF612900FFCF
      2900FFFFCE00FFFFCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7D7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CECFCE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000639229006392290094FF290094FF
      290094FF290094FF290094FF2900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF61290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF612900FFCF
      2900FFFFCE00FFFFCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000639229006392
      2900639229006392290063922900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF61290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF612900FF61
      2900FF612900FF61290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF922900FF612900FF612900FF612900FF612900FF61
      2900FF612900FF612900FF612900FF612900FF612900FF612900FF612900FF61
      2900FF612900FF612900FF612900FF6129000000000000000000000000000000
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
      000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000068000000680000000100010000000000800600000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFF0000000000000000000
      FFFFFFFFFFFFF0000000000000000000E00003FFFFFFF0000000000000000000
      C00010FC000070000000000000000000C00000F8000070000000000000000000
      C00000F8000070000000000000000000C00000F8000070000000000000000000
      FFC001F8000070000000000000000000FF0001F8000070000000000000000000
      FF0001F8000070000000000000000000FF0001FA000070000000000000000000
      F00001F8000070000000000000000000E00001F8000070000000000000000000
      C00001F8000070000000000000000000C00001F8000070000000000000000000
      C00001F8000070000000000000000000C00001F8200070000000000000000000
      E00001F8000070000000000000000000FF0001F8000070000000000000000000
      FF0001F8000070000000000000000000FF0001F8000070000000000000000000
      FFC001F8000070000000000000000000FFC003F8000070000000000000000000
      FFC003FFFFFFF0000000000000000000FFFFFFFFFFFFF0000000000000000000
      FFFFFFFFFFFFF0000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000
      FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000
      FFFFFFFFFFFFFFFFFF3FF0001F000000FFFFFFFFFC007FF80E1FF0001F000000
      F02103FFFC007FE0001FF0001F000000F7AD7BFFFC007FC0003FF0001F000000
      F5255BFE00007F80007FF0001F000000F0DAABFC00007F00007FC0001F000000
      F1555BFC00007F00007FC0001F000000F0200BFC00007E00003FC0001F000000
      F0155BFC0000FE00003FC0001F000000F0000BFC0001FE00003FC0001F000000
      F0055BFC0003FE00003FC0001F000000F1550BFC0003FE00003FC0001F000000
      F0AA5BFC0003FE00003FC0001F000000F0000BFC0003FE00003FD0001F000000
      F4001BFC0003FF00007FF0001F000000F80007FC0003FF00007FF0003F000000
      FFFFFFFC0003FF8000FFF0007F000000FFFFFFFE0007FFC001FFF000FF000000
      FFFFFFFFE07FFFE003FFF001FF000000FFFFFFFFFFFFFFF80FFFFFFFFF000000
      FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000
      FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000
      FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000
      FFFFFFFFFFFFFF0000FFFFFFFF000000FFFFFFFF7FFFFF0000FF80000F000000
      FF9FFFFE3FFEFF0000FFBF8FEF000000FF0FFFFE1FFFFF0000FF80002F000000
      FE07FFFE0FFDFF0000FF80D807000000FC03FFFF0FFBFF0000FF8F0787000000
      F801FFFF87F3FF0000FF801087000000F841FFFFC7E7FF0000FF800087000000
      F8E0FFFFE3CFFF0000FF805087000000FDF07FFFF19FFF0000FF800087000000
      FFF83FFFF83FFF0000FF801087000000FFFC1FFFFC7FFF0000FF8000B7000000
      FFFE0FFFF83FFF0000FF804097000000FFFF07FFF19FFF00003F800087000000
      FFFF87FFC3CFFF00003F801087000000FFFFC7FF07E7FF00003F805087000000
      FFFFEFFE0FF3FFFE003F802087000000FFFFFFFC1FFDFFFF003FE0F83F000000
      FFFFFFFC3FFFFFFF813FFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000
      FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000
      FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000
      FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000
      FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFF800007FFFFFFFFFFFFF000000
      FFFFFFF800007FFFF1FFFFFFFF000000FFFFFFF800007FFFF0FFFFFBFF000000
      FFC1FFF800007FFFF0FFFFF9FF000000FFC1FFF800007F00787FFFF8FF000000
      FFC1FFF800007F00F87FFFF87F000000FFC1FFF800007F01FC3FF8003F000000
      FC001FF800007F03FC3FF8001F000000FC001FF800007F01FC3FF8000F000000
      FC001FF800007F00FC3FF8001F000000FC001FF800007F103C3FF8003F000000
      FC001FF800007F38003FFFF87F000000FFC1FFF800007F7C007FFFF8FF000000
      FFC1FFF800007FFF00FFFFF9FF000000FFC1FFF800007FFFC1FFFFFBFF000000
      FFC1FFF800007FFFFFFFFFFFFF000000FFFFFFF800007FFFFFFFFFFFFF000000
      FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000
      FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000
      FFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000
      000000000000}
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
      
        'select * from zydzbl_zydzblmx where  zyh=:zy_zyh and  blid=:zy_b' +
        'lid ')
    Left = 850
    Top = 16
  end
  object qry_keyword: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'mbmc'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select  mbwj from sys_dzbl_mbmx'
      ' where zybz=1 and qybz=1 and mbmc=:mbmc  and dm like '#39'12%'#39)
    Left = 882
    Top = 16
  end
  object ds_blmx: TDataSource
    DataSet = qry_tree
    Left = 1010
    Top = 48
  end
  object qry_brbl: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 818
    Top = 16
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'emt'
    Filter = #30149#21382'(.emt)|*.emt|'#20851#38190#35789'(.emk)|*.emk'
    Left = 1074
    Top = 80
  end
  object sp_cx_micro: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    ProcedureName = 'zydzbl_cx_micro;1'
    Parameters = <
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = '00'
      end>
    Left = 946
    Top = 48
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
    Left = 914
    Top = 16
  end
  object ds_blzsk: TDataSource
    DataSet = qry_blzsk
    Left = 722
    Top = 80
  end
  object sp_up_bcjlmx: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zydzbl_up_bcjkjl;1'
    Parameters = <
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@blid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@blbcpdid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@blbcmc'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@blczy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@clfs'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@bcid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@sctext'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 50
        Value = Null
      end>
    Left = 917
    Top = 48
  end
  object Popupnull: TPopupMenu
    Left = 914
    Top = 80
  end
  object sp_del_bcjl: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zydzbl_de_bcjkjl;1'
    Parameters = <
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@czyxm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@sctext'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 50
        Value = Null
      end>
    Left = 882
    Top = 48
  end
  object qry_up_bcjl: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'zy_zyh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'zy_bcid'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from zydzbl_zybcjlmx  where  zyh=:zy_zyh and  bcid=:zy_' +
        'bcid')
    Left = 1010
    Top = 16
  end
  object qry_blmxjl: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'zyh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select * from zydzbl_zybcjlmx  where  zyh=:zyh')
    Left = 946
    Top = 16
  end
  object ds_blmxjl: TDataSource
    DataSet = qry_blmxjl
    Left = 1138
    Top = 48
  end
  object PrintDialog1: TPrintDialog
    Left = 1042
    Top = 80
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 754
    Top = 80
  end
  object ADODataSet1: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 
      'select tmh,zyh,bcid,blbcpdid,zzbcpdid,zgbcpdid,blmc,blys from zy' +
      'dzbl_zybcjlmx where zyh=:zyh order by bcid'
    Parameters = <
      item
        Name = 'zyh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = ' '
      end>
    Left = 722
    Top = 16
    object ADODataSet1tmh: TStringField
      FieldName = 'tmh'
      FixedChar = True
      Size = 9
    end
    object ADODataSet1zyh: TStringField
      FieldName = 'zyh'
      FixedChar = True
      Size = 16
    end
    object ADODataSet1bcid: TIntegerField
      FieldName = 'bcid'
    end
    object ADODataSet1blbcpdid: TIntegerField
      FieldName = 'blbcpdid'
    end
    object ADODataSet1zzbcpdid: TIntegerField
      FieldName = 'zzbcpdid'
    end
    object ADODataSet1zgbcpdid: TIntegerField
      FieldName = 'zgbcpdid'
    end
    object ADODataSet1blmc: TStringField
      FieldName = 'blmc'
      Size = 30
    end
    object ADODataSet1blys: TStringField
      FieldName = 'blys'
      Size = 16
    end
  end
  object ADODataSet2: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 
      'select tmh,zyh,bcid,blbcpdid,zzbcpdid,zgbcpdid,blmc,blys from zy' +
      'dzbl_zybcjlmx where zyh=:zyh order by bcid'
    Parameters = <
      item
        Name = 'zyh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = ' '
      end>
    Left = 754
    Top = 16
    object StringField1: TStringField
      FieldName = 'tmh'
      FixedChar = True
      Size = 9
    end
    object StringField2: TStringField
      FieldName = 'zyh'
      FixedChar = True
      Size = 16
    end
    object IntegerField1: TIntegerField
      FieldName = 'bcid'
    end
    object IntegerField2: TIntegerField
      FieldName = 'blbcpdid'
    end
    object IntegerField3: TIntegerField
      FieldName = 'zzbcpdid'
    end
    object IntegerField4: TIntegerField
      FieldName = 'zgbcpdid'
    end
    object StringField3: TStringField
      FieldName = 'blmc'
      Size = 30
    end
    object StringField4: TStringField
      FieldName = 'blys'
      Size = 16
    end
  end
  object DataSource2: TDataSource
    DataSet = ADODataSet2
    Left = 978
    Top = 48
  end
  object qry_ljcx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'czydm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select a.*,b.mc ksmc,c.psdm'
      '  from zydzbl_blps_cy a,sys_ksdm b,sys_dzbl_mbmx c'
      
        '  where a.bz=0 and a.ksdm=b.dm and a.mbdm=c.mbdm and a.cyry=:czy' +
        'dm'
      '  order by a.cysj')
    Left = 978
    Top = 16
  end
  object qry_zkcx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'czydm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select a.*,b.mc ksmc,c.psdm'
      '  from zydzbl_blps_cy a,sys_ksdm b,sys_dzbl_mbmx c'
      
        '  where a.bz=0 and a.ksdm=b.dm and a.mbdm=c.mbdm and a.cyry=:czy' +
        'dm'
      '  order by a.cysj')
    Left = 786
    Top = 16
  end
  object qry_copy_bl: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'mbmc'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'select  mbwj from sys_dzbl_mbmx where zybz=1 and qybz=1 and mbmc' +
        '=:mbmc ')
    Left = 722
    Top = 48
  end
  object qry_insert_bl: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'mbmc'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'select  mbwj from sys_dzbl_mbmx where zybz=1 and qybz=1 and mbmc' +
        '=:mbmc ')
    Left = 1170
    Top = 16
  end
  object qry_mbmx_copy: TADOQuery
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
        'e  mx.zybz=1 and  mx.qybz=1 and mx.zyksgs*=ks.dm and  mx.dm like' +
        ' :dldm ')
    Left = 786
    Top = 48
  end
  object PopupMenuedit_1: TPopupMenu
    Left = 978
    Top = 80
    object MenuItem17: TMenuItem
      Caption = #22797#21046
      ShortCut = 16451
      OnClick = MenuItem17Click
    end
  end
  object qry_cxbqdm: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'mbmc'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'select  mbwj from sys_dzbl_mbmx where zybz=1 and qybz=1 and mbmc' +
        '=:mbmc ')
    Left = 1074
    Top = 16
  end
  object sp_ycybr: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zydzbl_cx_blbr;1'
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
    Left = 850
    Top = 48
  end
  object ds_cybr: TDataSource
    DataSet = sp_ycybr
    Left = 1074
    Top = 48
  end
  object PopupMenu2: TPopupMenu
    Left = 882
    Top = 80
    object MenuItem1: TMenuItem
      Caption = #26597#30475#30149#21382
      OnClick = MenuItem1Click
    end
  end
  object qry_dzblbf: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'mbmc'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'select  mbwj from sys_dzbl_mbmx where zybz=1 and qybz=1 and mbmc' +
        '=:mbmc ')
    Left = 1138
    Top = 16
  end
  object DataSource3: TDataSource
    DataSet = Qry_pub
    Left = 1106
    Top = 48
  end
  object sp_cx_dzbljyjg: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zydzbl_cx_dzbljyjg'
    Parameters = <>
    Left = 818
    Top = 48
  end
  object qry_cx_dqys: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'mbmc'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'select  mbwj from sys_dzbl_mbmx where zybz=1 and qybz=1 and mbmc' +
        '=:mbmc ')
    Left = 682
    Top = 48
  end
  object query1: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'mbmc'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'select  mbwj from sys_dzbl_mbmx where zybz=1 and qybz=1 and mbmc' +
        '=:mbmc ')
    Left = 682
    Top = 80
  end
  object sp_jbxx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'bqgl_cx_zybrjbqk;1'
    Parameters = <
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 9
        Value = Null
      end
      item
        Name = '@xm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@bch'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 1108
    Top = 84
  end
  object sp_save_mblcw: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zydzbl_save_mblcw;1'
    Parameters = <
      item
        Name = '@mbmc'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
        Value = Null
      end
      item
        Name = '@mblx'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = '@mblxvalue'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
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
        Name = '@pym'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = '@blsx'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end
      item
        Name = '@blmc'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
        Value = Null
      end
      item
        Name = '@czymc'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@sc_zt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 50
        Value = Null
      end>
    Left = 671
    Top = 152
  end
  object qry_tjbl: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 440
    Top = 96
  end
  object qry_tjzt: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      
        ' select * from (select isnull(blgdbz,0) as blgdbz,zyh from zysf_' +
        'zydj union all select isnull(blgdbz,0) as blgdbz,zyh from zysf_c' +
        'ydj union all select isnull(blgdbz,0) as blgdbz,zyh from zyzc_zy' +
        'sf_cydj ) a')
    Left = 336
    Top = 88
  end
end
