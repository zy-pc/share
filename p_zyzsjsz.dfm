object frm_zyzsjsz: Tfrm_zyzsjsz
  Left = 0
  Top = 0
  Caption = #20013#33647#27880#23556#21058#35774#32622
  ClientHeight = 469
  ClientWidth = 698
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
    Width = 698
    Height = 393
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -31
    ExplicitWidth = 729
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 696
      Height = 391
      Align = alClient
      Caption = #33647#21697
      TabOrder = 0
      ExplicitWidth = 354
      object cxGrid1: TcxGrid
        Left = 2
        Top = 17
        Width = 692
        Height = 372
        Align = alClient
        TabOrder = 0
        ExplicitTop = 15
        ExplicitWidth = 350
        ExplicitHeight = 374
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_yplb
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = #33647#21697#21517#31216
            DataBinding.FieldName = 'ypmc'
            Width = 205
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            Caption = #35268#26684
            DataBinding.FieldName = 'ypgg'
            Width = 139
          end
          object cxGrid1DBTableView1Column3: TcxGridDBColumn
            Caption = #20195#30721
            DataBinding.FieldName = 'ypdm'
            Width = 156
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 128
    Width = 478
    Height = 251
    DataSource = ds_yp
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
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
  object Panel2: TPanel
    Left = 0
    Top = 393
    Width = 698
    Height = 314
    Align = alTop
    TabOrder = 2
    ExplicitLeft = -31
    ExplicitTop = 155
    ExplicitWidth = 729
    object Edit1: TEdit
      Left = 3
      Top = 21
      Width = 262
      Height = 23
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 271
      Top = 20
      Width = 66
      Height = 25
      Caption = #28155#21152#33647#21697
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 367
      Top = 20
      Width = 68
      Height = 25
      Caption = #21024#38500#33647#21697
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button2: TButton
      Left = 599
      Top = 20
      Width = 68
      Height = 25
      Caption = #36864#20986
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object qry_yp: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 152
    Top = 248
  end
  object ds_yp: TDataSource
    DataSet = qry_yp
    Left = 200
    Top = 248
  end
  object qry_yplb: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 264
    Top = 80
  end
  object ds_yplb: TDataSource
    DataSet = qry_yplb
    Left = 304
    Top = 80
  end
end
