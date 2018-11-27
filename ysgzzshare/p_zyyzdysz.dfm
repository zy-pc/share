object frm_zyyzdysz: Tfrm_zyyzdysz
  Left = 0
  Top = 0
  Caption = #25171#21360#39033#35774#32622
  ClientHeight = 489
  ClientWidth = 743
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 743
    Height = 43
    Align = alTop
    TabOrder = 0
    object ComboBox1: TComboBox
      Left = 264
      Top = 8
      Width = 145
      Height = 23
      ItemHeight = 15
      TabOrder = 0
      OnChange = ComboBox1Change
      Items.Strings = (
        #36755#28082#35745#21010#21333
        #27880#23556#35745#21010#21333
        #27835#30103#35745#21010#21333
        #21475#26381#33647#25191#34892#21333)
    end
    object Button5: TButton
      Left = 448
      Top = 8
      Width = 75
      Height = 25
      Caption = #36864#20986
      TabOrder = 1
      OnClick = Button5Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 43
    Width = 743
    Height = 200
    Align = alTop
    TabOrder = 1
    object GroupBox2: TGroupBox
      Left = 377
      Top = 1
      Width = 365
      Height = 198
      Align = alClient
      Caption = #29992#33647#36884#24452#35774#32622
      TabOrder = 0
      object cxGrid2: TcxGrid
        Left = 2
        Top = 17
        Width = 361
        Height = 179
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = DataSource2
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = #35745#21010#21333#21517
            DataBinding.FieldName = 'dyxm'
            Width = 162
          end
          object cxGridDBTableView1Column2: TcxGridDBColumn
            Caption = #29992#33647#36884#24452
            DataBinding.FieldName = 'yytj'
            Width = 166
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 1
      Width = 376
      Height = 198
      Align = alLeft
      Caption = #31867#21035#35774#32622
      TabOrder = 1
      object cxGrid1: TcxGrid
        Left = 2
        Top = 17
        Width = 372
        Height = 179
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = DataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = #35745#21010#21333#21517
            DataBinding.FieldName = 'dyxm'
            Width = 160
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            Caption = #21307#22065#31867#21035
            DataBinding.FieldName = 'lbmc'
            Width = 187
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 243
    Width = 743
    Height = 246
    Align = alClient
    TabOrder = 2
    object Panel4: TPanel
      Left = 377
      Top = 1
      Width = 376
      Height = 244
      Align = alLeft
      TabOrder = 0
      object GroupBox4: TGroupBox
        Left = 1
        Top = 1
        Width = 374
        Height = 184
        Align = alTop
        Caption = #29992#33647#36884#24452#21015#34920
        TabOrder = 0
        object cxGrid4: TcxGrid
          Left = 2
          Top = 17
          Width = 370
          Height = 165
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView3: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = DataSource4
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxGridDBTableView3Column1: TcxGridDBColumn
              Caption = #29992#33647#36884#24452#21517
              DataBinding.FieldName = 'mc'
              Width = 253
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBTableView3
          end
        end
      end
      object Button3: TButton
        Left = 88
        Top = 200
        Width = 75
        Height = 25
        Caption = #28155#21152
        TabOrder = 1
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 192
        Top = 200
        Width = 75
        Height = 25
        Caption = #21024#38500
        TabOrder = 2
        OnClick = Button4Click
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 376
      Height = 244
      Align = alLeft
      TabOrder = 1
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 374
        Height = 184
        Align = alTop
        Caption = #31867#21035#21015#34920
        TabOrder = 0
        object cxGrid3: TcxGrid
          Left = 2
          Top = 17
          Width = 370
          Height = 165
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView2: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = DataSource3
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxGridDBTableView2Column1: TcxGridDBColumn
              Caption = #31867#21035#21517
              DataBinding.FieldName = 'lbmc'
              Width = 188
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
      end
      object Button1: TButton
        Left = 96
        Top = 200
        Width = 75
        Height = 25
        Caption = #28155#21152
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 208
        Top = 200
        Width = 75
        Height = 25
        Caption = #21024#38500
        TabOrder = 2
        OnClick = Button2Click
      end
    end
  end
  object qry_dylbsz: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 152
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = qry_dylbsz
    Left = 192
    Top = 120
  end
  object qry_dytjsz: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 536
    Top = 120
  end
  object DataSource2: TDataSource
    DataSet = qry_dytjsz
    Left = 576
    Top = 120
  end
  object qry_lb: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 144
    Top = 304
  end
  object DataSource3: TDataSource
    DataSet = qry_lb
    Left = 184
    Top = 304
  end
  object qry_yytj: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 544
    Top = 304
  end
  object DataSource4: TDataSource
    DataSet = qry_yytj
    Left = 584
    Top = 304
  end
end
