object frm_sfxm: Tfrm_sfxm
  Left = 171
  Top = 140
  Caption = #25910#36153#20215#26684#20307#31995
  ClientHeight = 436
  ClientWidth = 719
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 719
    Height = 436
    Align = alClient
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 3
      Top = 42
      Width = 710
      Height = 397
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds_sfxm
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Editing = False
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1szdm: TcxGridDBColumn
          Caption = #26631#20934#32534#30721
          DataBinding.FieldName = 'szdm'
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxGrid1DBTableView1fymc: TcxGridDBColumn
          Caption = #36153#29992#21517#31216
          DataBinding.FieldName = 'fymc'
          HeaderAlignmentHorz = taCenter
          Width = 363
        end
        object cxGrid1DBTableView1dw: TcxGridDBColumn
          Caption = #21333#20301
          DataBinding.FieldName = 'dw'
          HeaderAlignmentHorz = taCenter
          Width = 79
        end
        object cxGrid1DBTableView1sfbz: TcxGridDBColumn
          Caption = #25910#36153#26631#20934
          DataBinding.FieldName = 'sfbz'
          HeaderAlignmentHorz = taCenter
          Width = 78
        end
        object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
          Caption = #22791'  '#27880
          DataBinding.FieldName = 'bak'
          HeaderAlignmentHorz = taCenter
          Width = 91
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object RadioButton1: TRadioButton
      Left = 152
      Top = 19
      Width = 113
      Height = 17
      Caption = #20840#37096#25910#36153#39033#30446
      TabOrder = 1
      OnClick = RadioButton1Click
    end
    object Button1: TButton
      Left = 327
      Top = 13
      Width = 75
      Height = 25
      Caption = #28155#21152'(&A)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 401
      Top = 13
      Width = 75
      Height = 25
      Caption = #20462#25913'(&M)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 475
      Top = 13
      Width = 75
      Height = 25
      Caption = #21024#38500'(&D)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 549
      Top = 13
      Width = 75
      Height = 25
      Caption = #23548#20837'(&I)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 623
      Top = 13
      Width = 75
      Height = 25
      Caption = #36864#20986'(&E)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button5Click
    end
    object RadioButton2: TRadioButton
      Left = 10
      Top = 19
      Width = 129
      Height = 17
      Caption = #26410#20351#29992#25910#36153#39033#30446
      Checked = True
      TabOrder = 7
      TabStop = True
      OnClick = RadioButton2Click
    end
  end
  object qry_sfxm: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      
        'select * from sys_kjsfxm_ls where szdm not in (select szdm from ' +
        'sys_kjsfxm) order by szdm')
    Left = 120
    Top = 200
  end
  object ds_sfxm: TDataSource
    DataSet = qry_sfxm
    Left = 160
    Top = 200
  end
  object qry_pub: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      
        'select * from sys_kjsfxm_ls where szdm not in (select szdm from ' +
        'sys_kjsfxm) order by szdm')
    Left = 208
    Top = 200
  end
  object cmd_sfxm: TADOCommand
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 256
    Top = 200
  end
end
