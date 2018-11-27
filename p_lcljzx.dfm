object frm_lcljzx: Tfrm_lcljzx
  Left = 0
  Top = 0
  Caption = #20020#24202#36335#24452#25191#34892
  ClientHeight = 568
  ClientWidth = 842
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 842
    Height = 568
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 840
      Height = 128
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 10
        Top = 20
        Width = 75
        Height = 15
        Caption = #35831#36873#25321#26085#26399
      end
      object Label3: TLabel
        Left = 12
        Top = 41
        Width = 15
        Height = 60
        Caption = #35780#20272#24773#20917
        WordWrap = True
      end
      object ComboBox1: TComboBox
        Left = 103
        Top = 16
        Width = 177
        Height = 23
        ItemHeight = 15
        TabOrder = 0
        OnChange = ComboBox1Change
      end
      object Button3: TButton
        Left = 283
        Top = 13
        Width = 104
        Height = 25
        Caption = #26597#30475#35780#20272#24773#20917
        TabOrder = 1
        OnClick = Button3Click
      end
      object Memo1: TMemo
        Left = 34
        Top = 42
        Width = 803
        Height = 79
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Lines.Strings = (
          'Memo1')
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 2
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 517
      Width = 840
      Height = 50
      Align = alClient
      TabOrder = 1
      object Label2: TLabel
        Left = 64
        Top = 19
        Width = 165
        Height = 15
        Caption = #32511#33394#32972#26223#34920#31034#24050#25191#34892#36335#24452
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Button1: TButton
        Left = 296
        Top = 19
        Width = 75
        Height = 25
        Caption = #25191#34892
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 464
        Top = 19
        Width = 75
        Height = 25
        Caption = #36864#20986
        TabOrder = 1
        OnClick = Button2Click
      end
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 129
      Width = 840
      Height = 388
      Align = alTop
      TabOrder = 2
      object cxGrid1: TcxGrid
        Left = 2
        Top = 17
        Width = 836
        Height = 369
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCellClick = cxGrid1DBTableView1CellClick
          OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
          DataController.DataSource = ds_ljcx
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          object cxGrid1DBTableView1Column7: TcxGridDBColumn
            Caption = #36873#25321
            DataBinding.FieldName = 'zxbz'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Width = 57
          end
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = #36335#24452#20998#31867
            DataBinding.FieldName = 'fl'
            Options.Editing = False
            Options.Focusing = False
            Width = 142
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            Caption = #36335#24452#20869#23481
            DataBinding.FieldName = 'xmnr'
            Options.Editing = False
            Options.Focusing = False
            Width = 220
          end
          object cxGrid1DBTableView1Column3: TcxGridDBColumn
            Caption = #25191#34892#38656#27714
            DataBinding.FieldName = 'zxfsmc'
            Options.Editing = False
            Options.Focusing = False
            Width = 113
          end
          object cxGrid1DBTableView1Column4: TcxGridDBColumn
            Caption = #25191#34892#36164#26684
            DataBinding.FieldName = 'zxzmc'
            Options.Editing = False
            Options.Focusing = False
            Width = 94
          end
          object cxGrid1DBTableView1Column5: TcxGridDBColumn
            Caption = #25191#34892#29366#24577
            DataBinding.FieldName = 'zxjgmc'
            Options.Editing = False
            Options.Focusing = False
            Width = 90
          end
          object cxGrid1DBTableView1Column6: TcxGridDBColumn
            Caption = #25191#34892#26085#26399
            DataBinding.FieldName = 'zxrq'
            Options.Editing = False
            Options.Focusing = False
            Width = 116
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object sp_ljcx: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'lclj_cx_lcljzxmx'
    Parameters = <>
    Left = 288
    Top = 136
  end
  object ds_ljcx: TDataSource
    DataSet = sp_ljcx
    Left = 336
    Top = 128
  end
end
