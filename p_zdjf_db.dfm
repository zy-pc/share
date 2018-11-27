object Frm_zdjf_db: TFrm_zdjf_db
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #25285#20445#39069#24230#35774#32622
  ClientHeight = 610
  ClientWidth = 796
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object rzsprtrTop: TRzSeparator
    Left = 0
    Top = 0
    Width = 796
    Height = 15
    ShowGradient = True
    Align = alTop
    Color = clBtnFace
    ExplicitTop = -4
    ExplicitWidth = 800
  end
  object rzsprtrButtom: TRzSeparator
    Left = 0
    Top = 595
    Width = 796
    Height = 15
    ShowGradient = True
    Align = alBottom
    Color = clBtnFace
    ExplicitLeft = -426
    ExplicitTop = 585
    ExplicitWidth = 1226
  end
  object rzsprtrLeft: TRzSeparator
    Left = 0
    Top = 15
    Width = 15
    Height = 580
    Orientation = orVertical
    ShowGradient = True
    Align = alLeft
    Color = clBtnFace
    ExplicitTop = -31
    ExplicitHeight = 631
  end
  object rzsprtrRight: TRzSeparator
    Left = 781
    Top = 15
    Width = 15
    Height = 580
    Orientation = orVertical
    ShowGradient = True
    Align = alRight
    Color = clBtnFace
    ExplicitLeft = 785
    ExplicitTop = -31
    ExplicitHeight = 631
  end
  object pnlMain: TRzPanel
    Left = 15
    Top = 15
    Width = 766
    Height = 580
    Align = alClient
    TabOrder = 0
    object pnlRecords: TPanel
      Left = 2
      Top = 212
      Width = 762
      Height = 366
      Align = alClient
      BorderStyle = bsSingle
      TabOrder = 0
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 756
        Height = 360
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsdbmx
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #25285#20445#24635#37329#39069#65306
              Kind = skCount
              Column = cxGrid1DBTableView1czymc
            end
            item
              Format = '######'#20803
              Kind = skSum
              Column = cxGrid1DBTableView1dbje
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.ColumnSorting = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.DataRowHeight = 25
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 40
          Styles.Background = Frm_func.background
          Styles.ContentEven = Frm_func.EvenLine
          Styles.ContentOdd = Frm_func.OddLine
          Styles.Footer = Frm_func.footer
          Styles.Header = Frm_func.HeaderColor
          object cxGrid1DBTableView1zyh: TcxGridDBColumn
            DataBinding.FieldName = 'zyh'
            Visible = False
          end
          object cxGrid1DBTableView1dbrdm: TcxGridDBColumn
            DataBinding.FieldName = 'dbrdm'
            Visible = False
          end
          object cxGrid1DBTableView1dbr: TcxGridDBColumn
            Caption = #25285#20445#20154
            DataBinding.FieldName = 'dbr'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 200
          end
          object cxGrid1DBTableView1czydm: TcxGridDBColumn
            DataBinding.FieldName = 'czydm'
            Visible = False
          end
          object cxGrid1DBTableView1czymc: TcxGridDBColumn
            Caption = #25805#20316#21592
            DataBinding.FieldName = 'czymc'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 200
          end
          object cxGrid1DBTableView1dbje: TcxGridDBColumn
            Caption = #25285#20445#37329#39069
            DataBinding.FieldName = 'dbje'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1szrq: TcxGridDBColumn
            Caption = #35774#32622#26102#38388
            DataBinding.FieldName = 'szrq'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 150
          end
          object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = #22791#27880
            DataBinding.FieldName = 'bz'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 200
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object pnlEditor: TPanel
      Left = 2
      Top = 2
      Width = 762
      Height = 160
      Align = alTop
      BorderStyle = bsSingle
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object lblTmh: TLabel
        Left = 22
        Top = 16
        Width = 78
        Height = 19
        Caption = #21345'    '#21495
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object lblName: TLabel
        Left = 155
        Top = 16
        Width = 78
        Height = 19
        Caption = #22995'    '#21517
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object lblZYKSMC: TLabel
        Left = 407
        Top = 16
        Width = 76
        Height = 19
        Caption = #20303#38498#31185#23460
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object lblDBR: TLabel
        Left = 27
        Top = 85
        Width = 60
        Height = 20
        Caption = #25285#20445#20154
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object lblFYZE: TLabel
        Left = 637
        Top = 16
        Width = 76
        Height = 19
        Caption = #36153#29992#24635#39069
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object lbl1: TLabel
        Left = 153
        Top = 85
        Width = 80
        Height = 20
        Caption = #25285#20445#37329#39069
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object lblYJZE: TLabel
        Left = 280
        Top = 85
        Width = 80
        Height = 20
        Caption = #39044#20132#24635#39069
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object lblZFZE: TLabel
        Left = 407
        Top = 85
        Width = 80
        Height = 20
        Caption = #33258#36153#24635#39069
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object lblBZ: TLabel
        Left = 533
        Top = 85
        Width = 80
        Height = 20
        Caption = #22791'    '#27880
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object edtTmh: TRzEdit
        Left = 17
        Top = 41
        Width = 120
        Height = 30
        Text = '000197836'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnEnter = edtTmhEnter
        OnExit = edtTmhExit
        OnKeyDown = edtTmhKeyDown
      end
      object edtName: TRzEdit
        Left = 143
        Top = 41
        Width = 246
        Height = 30
        Text = #36825#20010#21517#23383#24456#38271#24456#38590#35760#21834
        AutoSize = False
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object edtZYKSMC: TRzEdit
        Left = 395
        Top = 41
        Width = 223
        Height = 30
        Text = #20869#20998#27852#28040#21270#31185
        AutoSize = False
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object edtDBR: TRzEdit
        Left = 16
        Top = 110
        Width = 120
        Height = 30
        Text = #20080#20080#25552#33406#21017#23388'      '
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnEnter = edtDBREnter
        OnExit = edtDBRExit
        OnKeyDown = edtDBRKeyDown
      end
      object edtFYZE: TRzEdit
        Left = 624
        Top = 41
        Width = 120
        Height = 30
        Text = '168458.36'
        AutoSize = False
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object edtDBJE: TRzEdit
        Left = 143
        Top = 110
        Width = 120
        Height = 30
        Text = '200000.00'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnEnter = edtDBJEEnter
        OnExit = edtDBJEExit
        OnKeyDown = edtDBJEKeyDown
        OnKeyPress = edtDBJEKeyPress
      end
      object edtYJZE: TRzEdit
        Left = 269
        Top = 110
        Width = 120
        Height = 30
        Text = '150000.99'
        AutoSize = False
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object edtZFZE: TRzEdit
        Left = 395
        Top = 110
        Width = 120
        Height = 30
        Text = '100000.98'
        AutoSize = False
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object edtBZ: TRzEdit
        Left = 522
        Top = 110
        Width = 222
        Height = 30
        Text = #22823#21733#65292#25105#26159#22791#27880#21834
        AutoSize = False
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
    end
    object pnlButtons: TRzPanel
      Left = 2
      Top = 162
      Width = 762
      Height = 50
      Align = alTop
      BorderOuter = fsLowered
      TabOrder = 2
      object lblKYYE: TLabel
        Left = 185
        Top = 15
        Width = 80
        Height = 20
        Caption = #21487#29992#20313#39069
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object btnSave: TcxButton
        Left = 438
        Top = 6
        Width = 80
        Height = 38
        Cursor = crHandPoint
        Caption = #20445' '#23384
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btnSaveClick
        Colors.Default = clHighlight
        Colors.Normal = clHighlight
        Colors.Hot = clHotLight
        Colors.Pressed = clMaroon
        Colors.Disabled = clBtnShadow
      end
      object btnClose: TcxButton
        Left = 524
        Top = 6
        Width = 80
        Height = 38
        Cursor = crHandPoint
        Caption = #36864' '#20986
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btnCloseClick
        Colors.Default = clHighlight
        Colors.Normal = clHighlight
        Colors.Hot = clHotLight
        Colors.Pressed = clMaroon
        Colors.Disabled = clBtnShadow
      end
      object edtKYYE: TRzEdit
        Left = 271
        Top = 10
        Width = 120
        Height = 30
        Text = '150000.99'
        AutoSize = False
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
    end
  end
  object DBGrid2: TDBGrid
    Left = 153
    Top = 297
    Width = 371
    Height = 143
    DataSource = DM_data.DS_pub
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = [fsBold]
    Visible = False
    OnDblClick = DBGrid2DblClick
    OnExit = DBGrid2Exit
    OnKeyDown = DBGrid2KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'tmh'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #26465#30721#21495
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brxm'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #30149#21592#22995#21517
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brxb'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #24615#21035
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brnl'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #24180#40836
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ksmc'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #20303#38498#31185#23460
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 84
        Visible = True
      end>
  end
  object dsdbmx: TDataSource
    DataSet = ad_BBMX
    Left = 488
    Top = 336
  end
  object ad_BBMX: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 
      'SELECT zyh ,dbrdm ,dbr ,czydm ,czymc ,dbje ,CONVERT(VARCHAR(16),' +
      'szrq,120) szrq,bz FROM zysf_zdjftzmx_db  where zyh= '#39'70122015033' +
      '10005'#39
    Parameters = <>
    Left = 448
    Top = 336
  end
end
