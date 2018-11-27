object frm_zdjfqd: Tfrm_zdjfqd
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = #24403#26085#33258#21160#35760#36153#24773#20917#26816#26597
  ClientHeight = 520
  ClientWidth = 774
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 774
    Height = 59
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 23
      Width = 90
      Height = 15
      Caption = #36873#25321#21307#22065#26085#26399
    end
    object Label2: TLabel
      Left = 272
      Top = 24
      Width = 106
      Height = 15
      Caption = #24202#21495'/'#22995#21517'/'#21345#21495
    end
    object dt_xzsj: TDateTimePicker
      Left = 105
      Top = 19
      Width = 144
      Height = 23
      Date = 40401.666157951390000000
      Time = 40401.666157951390000000
      TabOrder = 0
    end
    object Button1: TButton
      Left = 559
      Top = 18
      Width = 75
      Height = 25
      Caption = #26597#35810
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 379
      Top = 19
      Width = 168
      Height = 23
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
    object Button2: TButton
      Left = 667
      Top = 18
      Width = 75
      Height = 25
      Caption = #36864#20986
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 59
    Width = 774
    Height = 461
    Align = alClient
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 2
      Top = 17
      Width = 770
      Height = 442
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds_yycx
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = #30149#24202#21495
          DataBinding.FieldName = 'bch'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 82
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = #30149#20154#22995#21517
          DataBinding.FieldName = 'brxm'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 92
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = #21345#21495
          DataBinding.FieldName = 'tmh'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 98
        end
        object cxGrid1DBTableView1Column4: TcxGridDBColumn
          Caption = #22833#36133#21407#22240
          DataBinding.FieldName = 'sbyy'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 492
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object qry_yycx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 328
    Top = 184
  end
  object ds_yycx: TDataSource
    DataSet = qry_yycx
    Left = 368
    Top = 188
  end
end
