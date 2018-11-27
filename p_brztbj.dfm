object frm_brztbj: Tfrm_brztbj
  Left = 0
  Top = 0
  Caption = #30149#20154#29366#24577#26631#35760
  ClientHeight = 581
  ClientWidth = 1242
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
    Width = 1242
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 13
      Width = 45
      Height = 15
      Caption = #26085#26399#65306
    end
    object DateTimePicker1: TDateTimePicker
      Left = 50
      Top = 8
      Width = 113
      Height = 23
      Date = 41038.419333761570000000
      Time = 41038.419333761570000000
      TabOrder = 0
      OnChange = DateTimePicker1Change
    end
    object Button1: TButton
      Left = 535
      Top = 10
      Width = 106
      Height = 25
      Caption = #22797#21046#30149#20154#21069#26085#29366#24577
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 653
      Top = 10
      Width = 74
      Height = 25
      Caption = #21024#38500#30149#20154
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button2: TButton
      Left = 740
      Top = 10
      Width = 74
      Height = 25
      Caption = #24674#22797#30149#20154
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button2Click
    end
    object GroupBox1: TGroupBox
      Left = 184
      Top = 1
      Width = 283
      Height = 37
      TabOrder = 4
      object RadioButton1: TRadioButton
        Left = 13
        Top = 12
        Width = 84
        Height = 17
        Caption = #20840#37096#30149#20154
        Checked = True
        Color = clBtnFace
        ParentColor = False
        TabOrder = 0
        TabStop = True
        OnClick = RadioButton1Click
      end
      object RadioButton2: TRadioButton
        Left = 115
        Top = 12
        Width = 166
        Height = 17
        Caption = #20840#37096#65288#21547#24050#21024#38500#30149#20154#65289
        TabOrder = 1
        OnClick = RadioButton2Click
      end
    end
    object Button4: TButton
      Left = 967
      Top = 10
      Width = 74
      Height = 25
      Caption = #29366#24577#26597#35810
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 1047
      Top = 10
      Width = 74
      Height = 25
      Caption = #29366#24577#35774#32622
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 471
      Top = 10
      Width = 55
      Height = 25
      Caption = #21047#26032
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button6Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 1242
    Height = 540
    Align = alClient
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 1240
      Height = 538
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 249
      ExplicitTop = -28
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
        OnEditChanged = cxGrid1DBTableView1EditChanged
        DataController.DataSource = ds_cx_brztmx
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = #21512#35745#65306'0'#20154
            Kind = skCount
            Column = cxGrid1DBTableView1Column1
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          DataBinding.FieldName = #21345#21495
          Options.Editing = False
          Width = 91
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          DataBinding.FieldName = #22995#21517
          Options.Editing = False
          Width = 78
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          DataBinding.FieldName = #30149#24202#21495
          Options.Editing = False
          Width = 64
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object sp_cx_brztmx: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_cx_brztmx'
    Parameters = <>
    Left = 416
    Top = 160
  end
  object ds_cx_brztmx: TDataSource
    DataSet = sp_cx_brztmx
    Left = 464
    Top = 160
  end
  object qry_up_zt: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 328
    Top = 176
  end
end
