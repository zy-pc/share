object frm_zybl_ypxmsz: Tfrm_zybl_ypxmsz
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #33647#21697#39033#30446#35774#32622
  ClientHeight = 460
  ClientWidth = 729
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 729
    Height = 393
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 714
    object GroupBox1: TGroupBox
      Left = 355
      Top = 1
      Width = 373
      Height = 391
      Align = alClient
      Caption = #21307#22065#39033#30446
      TabOrder = 0
      ExplicitWidth = 358
      object cxGrid2: TcxGrid
        Left = 2
        Top = 17
        Width = 369
        Height = 372
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 354
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_xmlb
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = #39033#30446#21517#31216
            DataBinding.FieldName = 'xmmc'
            Width = 202
          end
          object cxGridDBTableView1Column2: TcxGridDBColumn
            Caption = #36153#29992#20195#30721
            DataBinding.FieldName = 'fydm'
            Width = 79
          end
          object cxGridDBTableView1Column3: TcxGridDBColumn
            Caption = #39033#30446#20195#30721
            DataBinding.FieldName = 'xmdm'
            Width = 83
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 354
      Height = 391
      Align = alLeft
      Caption = #33647#21697
      TabOrder = 1
      object cxGrid1: TcxGrid
        Left = 2
        Top = 17
        Width = 350
        Height = 372
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_yplb
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = #33647#21697#21517#31216
            DataBinding.FieldName = 'ypmc'
            Width = 139
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            Caption = #35268#26684
            DataBinding.FieldName = 'ypgg'
            Width = 74
          end
          object cxGrid1DBTableView1Column3: TcxGridDBColumn
            Caption = #20195#30721
            DataBinding.FieldName = 'ypdm'
            Width = 132
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 393
    Width = 729
    Height = 314
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 714
    object Edit1: TEdit
      Left = 3
      Top = 21
      Width = 206
      Height = 23
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 215
      Top = 19
      Width = 66
      Height = 25
      Caption = #28155#21152#33647#21697
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 361
      Top = 21
      Width = 216
      Height = 23
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
    object Button2: TButton
      Left = 580
      Top = 19
      Width = 69
      Height = 25
      Caption = #28155#21152#39033#30446
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 285
      Top = 19
      Width = 68
      Height = 25
      Caption = #21024#38500#33647#21697
      TabOrder = 4
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 652
      Top = 19
      Width = 69
      Height = 25
      Caption = #21024#38500#39033#30446
      TabOrder = 5
      OnClick = Button4Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 3
    Top = 136
    Width = 478
    Height = 251
    DataSource = ds_yp
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
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
        FieldName = 'ypmc'
        Title.Alignment = taCenter
        Title.Caption = #33647#21697#21517
        Width = 207
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ypgg'
        Title.Alignment = taCenter
        Title.Caption = #35268#26684
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ypdm'
        Title.Alignment = taCenter
        Title.Caption = #20195#30721
        Width = 156
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 228
    Top = 136
    Width = 478
    Height = 251
    DataSource = ds_xm
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = DBGrid2Exit
    OnKeyPress = DBGrid2KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'xmmc'
        Title.Alignment = taCenter
        Title.Caption = #39033#30446#21517
        Width = 207
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fydm'
        Title.Alignment = taCenter
        Title.Caption = #36153#29992#20195#30721
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'xmdm'
        Title.Alignment = taCenter
        Title.Caption = #39033#30446#20195#30721
        Width = 137
        Visible = True
      end>
  end
  object qry_yp: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 152
    Top = 104
  end
  object qry_xm: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 536
    Top = 96
  end
  object ds_yp: TDataSource
    DataSet = qry_yp
    Left = 192
    Top = 104
  end
  object qry_yplb: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 152
    Top = 72
  end
  object ds_yplb: TDataSource
    DataSet = qry_yplb
    Left = 192
    Top = 72
  end
  object ds_xm: TDataSource
    DataSet = qry_xm
    Left = 584
    Top = 96
  end
  object qry_xmlb: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 536
    Top = 64
  end
  object ds_xmlb: TDataSource
    DataSet = qry_xmlb
    Left = 584
    Top = 64
  end
end
