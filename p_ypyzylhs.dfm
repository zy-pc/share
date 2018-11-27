object frm_ypyzylhs: Tfrm_ypyzylhs
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #29992#37327#21333#20301#35774#32622
  ClientHeight = 554
  ClientWidth = 958
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 49
    Width = 958
    Height = 505
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Post.Visible = True
      DataController.DataSource = ds_ypdm
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1ypmc: TcxGridDBColumn
        Caption = #33647#21697#21517#31216
        DataBinding.FieldName = 'ypmc'
        Options.Editing = False
        Options.Moving = False
        Width = 308
      end
      object cxGrid1DBTableView1ypgg: TcxGridDBColumn
        Caption = #33647#21697#35268#26684
        DataBinding.FieldName = 'ypgg'
        Options.Editing = False
        Options.Moving = False
        Width = 171
      end
      object cxGrid1DBTableView1zyyfdw: TcxGridDBColumn
        Caption = #33647#25151#21333#20301
        DataBinding.FieldName = 'zyyfdw'
        Options.Editing = False
        Options.Moving = False
        Width = 65
      end
      object cxGrid1DBTableView1zxdw: TcxGridDBColumn
        Caption = #26368#23567#21333#20301
        DataBinding.FieldName = 'zxdw'
        Options.Editing = False
        Options.Moving = False
        Width = 65
      end
      object cxGrid1DBTableView1yzyldw: TcxGridDBColumn
        Caption = #29992#37327#21333#20301
        DataBinding.FieldName = 'yzyldw'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsEditList
        Properties.KeyFieldNames = 'ypdw'
        Properties.ListColumns = <
          item
            Caption = #21333#20301
            FieldName = 'ypdw'
          end>
        Properties.ListSource = ds_dw
        Properties.ReadOnly = False
        Options.Moving = False
        Width = 72
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #25286#38646
        DataBinding.FieldName = 'kfcl'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Width = 50
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #35745#31639#21097#20313#37327
        DataBinding.FieldName = 'jssyl'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Width = 94
      end
      object cxGrid1DBTableView1yzylzhl: TcxGridDBColumn
        Caption = #25442#31639#20851#31995
        DataBinding.FieldName = 'yzylzhl'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.Alignment.Vert = taBottomJustify
        Properties.DisplayFormat = '0.######'
        Properties.Precision = 15
        Width = 103
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 958
    Height = 49
    Align = alTop
    BevelInner = bvSpace
    BevelKind = bkFlat
    BevelOuter = bvLowered
    BiDiMode = bdRightToLeftNoAlign
    BorderStyle = bsSingle
    ParentBiDiMode = False
    TabOrder = 1
    object Label1: TLabel
      Left = 9
      Top = 11
      Width = 48
      Height = 19
      Caption = #25340#38899#30721
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edit_pym: TEdit
      Left = 63
      Top = 9
      Width = 121
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edit_pymKeyPress
    end
    object RadioButton1: TRadioButton
      Left = 232
      Top = 13
      Width = 89
      Height = 17
      Caption = #26174#31034#20840#37096
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 360
      Top = 13
      Width = 129
      Height = 17
      Caption = #26174#31034#33647#25151#26377#24211#23384
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = RadioButton2Click
    end
    object RadioButton3: TRadioButton
      Left = 519
      Top = 13
      Width = 113
      Height = 17
      Caption = #26174#31034#26410#35774#32622
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = RadioButton3Click
    end
    object BitBtn1: TBitBtn
      Left = 862
      Top = 9
      Width = 75
      Height = 25
      Caption = #36820#22238'&Q'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn1Click
    end
  end
  object DBGrid1: TDBGridEh
    Left = 16
    Top = 105
    Width = 764
    Height = 345
    Color = clInfoBk
    DataSource = DS_yp
    DefaultDrawing = False
    Flat = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'System'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'System'
    TitleFont.Style = []
    Visible = False
    OnDblClick = DBGrid1DblClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnExit = DBGrid1Exit
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ypmc'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #33647#21697#21517#31216
        Width = 207
      end
      item
        EditButtons = <>
        FieldName = 'pym'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #25340#38899#30721
        Width = 130
      end
      item
        EditButtons = <>
        FieldName = 'ypgg'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #33647#21697#35268#26684
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'kfdw'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #21333#20301
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'zxdw'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #26368#23567#21333#20301
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'kfpfj'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #25209#21457#20215
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'kflsj'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #38646#21806#20215
        Width = 94
      end>
  end
  object qry_ypdm: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    BeforePost = qry_ypdmBeforePost
    Parameters = <>
    SQL.Strings = (
      
        'select ypdm,ypmc,ypgg,zyyfdw,zxdw,yzyldw,yzylzhl,kfcl,jssyl from' +
        ' sys_ypdm '
      
        'where sybz=1 --and kfdm in (select dm kfdm from sys_ksdm where k' +
        'ssx='#39'01'#39') ')
    Left = 120
    Top = 104
  end
  object ds_ypdm: TDataSource
    DataSet = qry_ypdm
    Left = 160
    Top = 104
  end
  object ds_dw: TDataSource
    DataSet = qry_ypdw
    Left = 80
    Top = 104
  end
  object qry_ypdw: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from xyk_ypdw where ylbz=1')
    Left = 48
    Top = 104
  end
  object SP_yp: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'xyk_cx_ypdm1;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pym'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 199
    Top = 103
  end
  object DS_yp: TDataSource
    DataSet = SP_yp
    Left = 231
    Top = 103
  end
end
