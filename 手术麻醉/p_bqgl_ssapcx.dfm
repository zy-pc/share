object frm_ssapcx: Tfrm_ssapcx
  Left = 196
  Top = 125
  Caption = #25163#26415#23433#25490#26597#35810
  ClientHeight = 570
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    1024
    570)
  PixelsPerInch = 96
  TextHeight = 15
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 75
    Width = 1024
    Height = 435
    Align = alClient
    DataGrouping.GroupLevels = <>
    DataSource = DataSource2
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    TabOrder = 5
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'sssj'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #25163#26415#26085#26399
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'ssj'
        Footers = <>
        Title.Caption = #25163#26415#38388
        Width = 48
      end
      item
        Alignment = taCenter
        EditButtons = <>
        FieldName = 'sssx'
        Footers = <>
        Title.Caption = #39034#24207
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = 'tmh'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #26465#30721#21495
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'brxm'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #22995#21517
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'brnl'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #24180#40836
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = 'brxb'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #24615#21035
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'ksmc'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #31185#23460
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'bch'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #24202#21495
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'nxrdh'
        Footers = <>
        Title.Caption = #32852#31995#26041#24335
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'ssmc'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #25163#26415#21517#31216
        Width = 210
      end
      item
        EditButtons = <>
        FieldName = 'zdys'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #20027#20992
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'mzys'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #40635#24072
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'sqzd'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #20837#38498#35786#26029
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'xhhs'
        Footers = <>
        Title.Caption = #24033#22238#25252#22763
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'xshs'
        Footers = <>
        Title.Caption = #27927#25163#25252#22763
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'sssqbz'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #22791#27880
        Width = 100
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 1024
    Height = 75
    Align = alTop
    TabOrder = 0
    object Label7: TLabel
      Left = 11
      Top = 47
      Width = 8
      Height = 15
    end
    object Label8: TLabel
      Left = 4
      Top = 16
      Width = 61
      Height = 15
      AutoSize = False
      Caption = #30003#35831#26085#26399'    '
    end
    object Label9: TLabel
      Left = 210
      Top = 16
      Width = 23
      Height = 15
      AutoSize = False
      Caption = #65374
    end
    object Label11: TLabel
      Left = 384
      Top = 47
      Width = 55
      Height = 15
      AutoSize = False
      Caption = #30149'  '#20154'   '
    end
    object Label12: TLabel
      Left = 376
      Top = 15
      Width = 65
      Height = 15
      AutoSize = False
      Caption = #20027#20992#21307#24072
    end
    object Label1: TLabel
      Left = 4
      Top = 48
      Width = 60
      Height = 15
      AutoSize = False
      Caption = #25163#26415#21517#31216
    end
    object Label2: TLabel
      Left = 208
      Top = 48
      Width = 30
      Height = 15
      Caption = #31185#23460
    end
    object dtp1: TDateTimePicker
      Left = 66
      Top = 11
      Width = 122
      Height = 23
      Date = 37747.820364699100000000
      Time = 37747.820364699100000000
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 0
      OnChange = dtp1Change
      OnKeyDown = dtp1KeyDown
    end
    object dtp2: TDateTimePicker
      Left = 254
      Top = 11
      Width = 115
      Height = 23
      Date = 37747.820364699100000000
      Time = 37747.820364699100000000
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 1
      OnChange = dtp2Change
      OnKeyDown = dtp2KeyDown
    end
    object EditBR: TEdit
      Left = 447
      Top = 40
      Width = 121
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 5
      OnExit = EditBRExit
      OnKeyDown = EditBRKeyDown
    end
    object Button2: TButton
      Left = 600
      Top = 10
      Width = 83
      Height = 25
      Caption = #26597#12288#35810'(&S)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button2Click
    end
    object Editczy: TEdit
      Left = 447
      Top = 11
      Width = 121
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 2
      OnExit = EditczyExit
      OnKeyDown = EditczyKeyDown
    end
    object Button3: TButton
      Left = 600
      Top = 41
      Width = 83
      Height = 25
      Caption = #25171#12288#21360'(&P)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button3Click
    end
    object Editssmc: TEdit
      Left = 66
      Top = 43
      Width = 122
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 3
      OnExit = EditssmcExit
      OnKeyDown = EditssmcKeyDown
    end
    object editOfc: TEdit
      Left = 254
      Top = 46
      Width = 115
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 4
      OnExit = editOfcExit
      OnKeyDown = editOfcKeyDown
    end
  end
  object dbg: TDBGrid
    Left = 200
    Top = 128
    Width = 313
    Height = 161
    DataSource = DataSource1
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDblClick = dbgDblClick
    OnKeyDown = dbgKeyDown
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 75
    Width = 1024
    Height = 435
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 232
    ExplicitTop = 295
    object cxGrid1DBTableView1: TcxGridDBTableView
      PopupMenu = PopupMenu1
      NavigatorButtons.ConfirmDelete = False
      OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
      DataController.DataSource = DataSource2
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #21512#35745#65306
          Kind = skCount
          Column = cxGrid1DBTableView1Column19
        end
        item
          Kind = skCount
          FieldName = 'ssj'
          Column = cxGrid1DBTableView1Column1
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.DragFocusing = dfDragOver
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      object cxGrid1DBTableView1Column19: TcxGridDBColumn
        Caption = #25163#26415#26102#38388
        DataBinding.FieldName = 'sssj'
        Options.Editing = False
        Options.Filtering = False
        Width = 134
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #25163#26415#38388
        DataBinding.FieldName = 'ssj'
        Options.Filtering = False
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #39034#24207
        DataBinding.FieldName = 'sssx'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Width = 38
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = #31185#23460
        DataBinding.FieldName = 'ksmc'
        Options.Editing = False
        Width = 69
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = #24202#21495
        DataBinding.FieldName = 'bch'
        Options.Editing = False
        Options.Filtering = False
        Width = 39
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = #22995#21517
        DataBinding.FieldName = 'brxm'
        Options.Editing = False
        Width = 60
      end
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = #24615#21035
        DataBinding.FieldName = 'brxb'
        Options.Editing = False
        Options.Filtering = False
        Width = 38
      end
      object cxGrid1DBTableView1Column7: TcxGridDBColumn
        Caption = #24180#40836
        DataBinding.FieldName = 'brnl'
        Options.Editing = False
        Options.Filtering = False
        Width = 35
      end
      object cxGrid1DBTableView1Column8: TcxGridDBColumn
        Caption = #20303#38498#21495
        DataBinding.FieldName = 'tmh'
        Options.Editing = False
        Width = 104
      end
      object cxGrid1DBTableView1Column9: TcxGridDBColumn
        Caption = #25163#26415#21517#31216
        DataBinding.FieldName = 'ssmc'
        Options.Editing = False
        Width = 143
      end
      object cxGrid1DBTableView1Column17: TcxGridDBColumn
        Caption = #36153#29992#20195#30721
        DataBinding.FieldName = 'fydm'
        Visible = False
        Width = 72
      end
      object cxGrid1DBTableView1Column10: TcxGridDBColumn
        Caption = #35786#26029
        DataBinding.FieldName = 'sqzd'
        Options.Editing = False
        Width = 153
      end
      object cxGrid1DBTableView1Column11: TcxGridDBColumn
        Caption = #21307#29983
        DataBinding.FieldName = 'zdys'
        Options.Editing = False
        Width = 72
      end
      object cxGrid1DBTableView1Column12: TcxGridDBColumn
        Caption = #40635#37257#21307#29983
        DataBinding.FieldName = 'mzys'
        Width = 68
      end
      object cxGrid1DBTableView1Column16: TcxGridDBColumn
        Caption = #19968#21161
        DataBinding.FieldName = 'yzys'
        Width = 79
      end
      object cxGrid1DBTableView1Column13: TcxGridDBColumn
        Caption = #27927#25163#25252#22763
        DataBinding.FieldName = 'xshs'
        Width = 65
      end
      object cxGrid1DBTableView1Column14: TcxGridDBColumn
        Caption = #24033#22238#25252#22763
        DataBinding.FieldName = 'xhhs'
        Width = 72
      end
      object cxGrid1DBTableView1Column15: TcxGridDBColumn
        Caption = #25163#26415#26102#38388
        DataBinding.FieldName = 'kssj'
        PropertiesClassName = 'TcxTimeEditProperties'
        Visible = False
        Width = 60
      end
      object cxGrid1DBTableView1Column18: TcxGridDBColumn
        Caption = #30003#35831#22791#27880
        DataBinding.FieldName = 'sssqbz'
        Width = 120
      end
      object cxgrdbclmnGrid1DBTableView1Column20: TcxGridDBColumn
        Caption = #23433#25490#22791#27880
        DataBinding.FieldName = 'bz'
        Width = 129
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Button1: TButton
    Left = 904
    Top = 79
    Width = 98
    Height = 32
    Anchors = [akTop, akRight]
    Caption = #23548#20986#21040'Excel'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Panel3: TPanel
    Left = 0
    Top = 510
    Width = 1024
    Height = 60
    Align = alBottom
    TabOrder = 4
    object Label3: TLabel
      Left = 15
      Top = 9
      Width = 105
      Height = 15
      Caption = #24403#26085#20540#29677#21307#29983#65306
    end
    object Label4: TLabel
      Left = 15
      Top = 31
      Width = 105
      Height = 15
      Caption = #21307#29983#23545#24212#30005#35805#65306
    end
    object Edit2: TEdit
      Tag = 9
      Left = 120
      Top = 6
      Width = 49
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 0
      OnKeyDown = editOfcKeyDown
    end
    object Edit3: TEdit
      Left = 168
      Top = 6
      Width = 105
      Height = 23
      Enabled = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 1
    end
    object Edit4: TEdit
      Tag = 10
      Left = 312
      Top = 6
      Width = 49
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 2
      OnKeyDown = editOfcKeyDown
    end
    object Edit5: TEdit
      Left = 360
      Top = 6
      Width = 105
      Height = 23
      Enabled = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 3
    end
    object Edit6: TEdit
      Tag = 11
      Left = 514
      Top = 6
      Width = 49
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 4
      OnKeyDown = editOfcKeyDown
    end
    object Edit7: TEdit
      Left = 562
      Top = 6
      Width = 105
      Height = 23
      Enabled = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 5
    end
    object Edit8: TEdit
      Tag = 12
      Left = 696
      Top = 6
      Width = 49
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 6
      OnKeyDown = editOfcKeyDown
    end
    object Edit9: TEdit
      Left = 744
      Top = 6
      Width = 105
      Height = 23
      Enabled = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 7
    end
    object Edit10: TEdit
      Tag = 13
      Left = 888
      Top = 6
      Width = 49
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 8
      OnKeyDown = editOfcKeyDown
    end
    object Edit11: TEdit
      Left = 936
      Top = 6
      Width = 105
      Height = 23
      Enabled = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 9
    end
    object Edit12: TEdit
      Left = 120
      Top = 30
      Width = 153
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 10
    end
    object Edit13: TEdit
      Left = 312
      Top = 30
      Width = 153
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 11
    end
    object Edit14: TEdit
      Left = 514
      Top = 30
      Width = 153
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 12
    end
    object Edit15: TEdit
      Left = 696
      Top = 30
      Width = 153
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 13
    end
    object Edit16: TEdit
      Left = 888
      Top = 30
      Width = 153
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 14
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery
    Left = 600
    Top = 88
  end
  object DataSource2: TDataSource
    DataSet = qrySSAP
    Left = 592
    Top = 136
  end
  object qrySSAP: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'ssmz_cx_ssap '#39'2012-02-08 10:46:50.000'#39','#39'2012-02-09 10:46:50.000'#39 +
        ','#39#39','#39#39','#39#39','#39#39)
    Left = 648
    Top = 136
  end
  object ADOQuery: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 648
    Top = 80
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = []
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 0.500000000000000000
    Page.RightMargin = 0.500000000000000000
    Page.TopMargin = 1.000000000000000000
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
    Title.Strings = (
      #25163#26415#23433#25490)
    Units = MM
    Left = 480
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    Left = 456
    Top = 272
    object N1: TMenuItem
      Caption = #21462#28040#25552#31034
      OnClick = N1Click
    end
    object N3: TMenuItem
      Caption = #20840#37096#23637#24320
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #20840#37096#21512#24182
      OnClick = N4Click
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 352
    Top = 248
  end
end
