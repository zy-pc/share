object frm_yytjbdfy: Tfrm_yytjbdfy
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #21307#22065#29992#33647#36884#24452#32465#23450#36153#29992#35774#32622
  ClientHeight = 557
  ClientWidth = 1311
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 1311
    Height = 281
    Align = alTop
    Caption = #29992#33647#36884#24452#32465#23450
    TabOrder = 0
    object GroupBox3: TGroupBox
      Left = 191
      Top = 17
      Width = 1118
      Height = 262
      Align = alClient
      Caption = #32465#23450#36153#29992
      TabOrder = 0
      object cxGrid2: TcxGrid
        Left = 4
        Top = 12
        Width = 1111
        Height = 210
        Enabled = False
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnEditKeyDown = cxGridDBTableView1EditKeyDown
          DataController.DataSource = ds_tjbdfy
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = #36884#24452#21517#31216
            DataBinding.FieldName = 'gymc'
            Options.Editing = False
            Width = 90
          end
          object cxGridDBTableView1Column7: TcxGridDBColumn
            Caption = #21482#25910#19968#27425
            DataBinding.FieldName = 'zsscfydm'
            Width = 82
          end
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = #39318#27425#36153#29992#20195#30721
            DataBinding.FieldName = 'scfydm'
            Width = 110
          end
          object cxGridDBTableView1Column2: TcxGridDBColumn
            Caption = #39318#27425#36153#29992#21517#31216
            DataBinding.FieldName = 'scfymc'
            Options.Editing = False
            Width = 109
          end
          object cxGridDBTableView1Column3: TcxGridDBColumn
            Caption = #21518#32493#36153#29992#20195#30721
            DataBinding.FieldName = 'hxfydm'
            Width = 111
          end
          object cxGridDBTableView1Column4: TcxGridDBColumn
            Caption = #21518#32493#36153#29992#21517#31216
            DataBinding.FieldName = 'hxfymc'
            Options.Editing = False
            Width = 111
          end
          object cxGridDBTableView1Column8: TcxGridDBColumn
            Caption = #26448#26009#36153#29992#20195#30721
            DataBinding.FieldName = 'clfdm'
            Width = 151
          end
          object cxGridDBTableView1Column9: TcxGridDBColumn
            Caption = #26448#26009#21517#31216
            DataBinding.FieldName = 'clfmc'
            Options.Editing = False
            Width = 177
          end
          object cxGridDBTableView1Column5: TcxGridDBColumn
            Caption = #26368#23567#24180#40836
            DataBinding.FieldName = 'zxnl'
            Width = 84
          end
          object cxGridDBTableView1Column6: TcxGridDBColumn
            Caption = #26368#22823#24180#40836
            DataBinding.FieldName = 'zdnl'
            Width = 78
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object Button1: TButton
        Left = 100
        Top = 228
        Width = 75
        Height = 25
        Caption = #26032#22686
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 272
        Top = 228
        Width = 73
        Height = 25
        Caption = #21024#38500
        TabOrder = 2
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 354
        Top = 228
        Width = 73
        Height = 25
        Caption = #23436#25104
        TabOrder = 3
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 191
        Top = 228
        Width = 75
        Height = 25
        Caption = #20462#25913
        TabOrder = 4
        OnClick = Button4Click
      end
      object DBGrid1: TDBGrid
        Left = 88
        Top = 40
        Width = 320
        Height = 152
        DataSource = ds_fycx
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 5
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
            FieldName = 'fydm'
            Title.Alignment = taCenter
            Title.Caption = #36153#29992#20195#30721
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fymc'
            Title.Alignment = taCenter
            Title.Caption = #36153#29992#21517#31216
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sfbz'
            Title.Alignment = taCenter
            Title.Caption = #25910#36153#26631#20934
            Width = 81
            Visible = True
          end>
      end
    end
    object GroupBox4: TGroupBox
      Left = 2
      Top = 17
      Width = 189
      Height = 262
      Align = alLeft
      Caption = #29992#33647#36884#24452
      TabOrder = 1
      object cxGrid1: TcxGrid
        Left = 2
        Top = 17
        Width = 185
        Height = 243
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_gytj
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = #36884#24452#32534#21495
            DataBinding.FieldName = 'id'
            Options.CellMerging = True
            Width = 82
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            Caption = #36884#24452#21517#31216
            DataBinding.FieldName = 'mc'
            Options.CellMerging = True
            Width = 107
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 281
    Width = 1311
    Height = 281
    Align = alTop
    Caption = #26816#39564#26679#26412#32465#23450
    TabOrder = 1
    object GroupBox5: TGroupBox
      Left = 2
      Top = 17
      Width = 191
      Height = 262
      Align = alLeft
      Caption = #29992#33647#36884#24452
      TabOrder = 0
      object cxGrid3: TcxGrid
        Left = 2
        Top = 17
        Width = 187
        Height = 243
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView2: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_jyyb
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = #26679#26412#21517#31216
            DataBinding.FieldName = 'ybmc'
            Options.CellMerging = True
            Width = 182
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
    object GroupBox6: TGroupBox
      Left = 193
      Top = 17
      Width = 1116
      Height = 262
      Align = alClient
      Caption = #32465#23450#36153#29992
      TabOrder = 1
      object cxGrid4: TcxGrid
        Left = 2
        Top = 15
        Width = 1135
        Height = 210
        Enabled = False
        TabOrder = 0
        object cxGridDBTableView3: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnEditKeyDown = cxGridDBTableView3EditKeyDown
          DataController.DataSource = ds_ybbd
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = #26679#26412#21517#31216
            DataBinding.FieldName = 'ybmc'
            Options.Editing = False
            Width = 93
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = #39318#27425#36153#29992#20195#30721
            DataBinding.FieldName = 'scfydm'
            Width = 110
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = #39318#27425#36153#29992#21517#31216
            DataBinding.FieldName = 'scfymc'
            Options.Editing = False
            Width = 160
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = #21518#32493#36153#29992#20195#30721
            DataBinding.FieldName = 'hxfydm'
            Width = 116
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = #21518#32493#36153#29992#21517#31216
            DataBinding.FieldName = 'hxfymc'
            Options.Editing = False
            Width = 175
          end
          object cxGridDBTableView3Column1: TcxGridDBColumn
            Caption = #26448#26009#36153#29992#20195#30721
            DataBinding.FieldName = 'clfdm'
            Width = 158
          end
          object cxgrdbclmnGridDBTableView3Column2: TcxGridDBColumn
            Caption = #26448#26009#36153#21517#31216
            DataBinding.FieldName = 'clfmc'
            Options.Editing = False
            Width = 266
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
      object Button5: TButton
        Left = 100
        Top = 228
        Width = 75
        Height = 25
        Caption = #26032#22686
        TabOrder = 1
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 272
        Top = 228
        Width = 73
        Height = 25
        Caption = #21024#38500
        TabOrder = 2
        OnClick = Button6Click
      end
      object Button7: TButton
        Left = 354
        Top = 228
        Width = 73
        Height = 25
        Caption = #23436#25104
        TabOrder = 3
        OnClick = Button7Click
      end
      object Button8: TButton
        Left = 191
        Top = 228
        Width = 75
        Height = 25
        Caption = #20462#25913
        TabOrder = 4
        OnClick = Button8Click
      end
      object DBGrid2: TDBGrid
        Left = 86
        Top = 40
        Width = 320
        Height = 152
        DataSource = ds_ybfycx
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 5
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
            FieldName = 'fydm'
            Title.Alignment = taCenter
            Title.Caption = #36153#29992#20195#30721
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fymc'
            Title.Alignment = taCenter
            Title.Caption = #36153#29992#21517#31216
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sfbz'
            Title.Alignment = taCenter
            Title.Caption = #25910#36153#26631#20934
            Width = 81
            Visible = True
          end>
      end
    end
  end
  object qry_gytj: TADOQuery
    Connection = DM_data.ado_mydata
    AfterScroll = qry_gytjAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from sys_gytj')
    Left = 152
    Top = 72
  end
  object ds_gytj: TDataSource
    DataSet = qry_gytj
    Left = 192
    Top = 72
  end
  object qry_tjbdfy: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      'select * from sys_gytj')
    Left = 520
    Top = 96
    object qry_tjbdfygyid: TIntegerField
      FieldName = 'gyid'
    end
    object qry_tjbdfygymc: TStringField
      FieldName = 'gymc'
      Size = 50
    end
    object qry_tjbdfyscfydm: TStringField
      FieldName = 'scfydm'
      Size = 4
    end
    object qry_tjbdfyhxfydm: TStringField
      FieldName = 'hxfydm'
      Size = 4
    end
    object qry_tjbdfyzxnl: TFloatField
      FieldName = 'zxnl'
    end
    object qry_tjbdfyzdnl: TFloatField
      FieldName = 'zdnl'
    end
    object qry_tjbdfyscfymc: TStringField
      FieldKind = fkLookup
      FieldName = 'scfymc'
      LookupDataSet = qry_fy
      LookupKeyFields = 'fydm'
      LookupResultField = 'fymc'
      KeyFields = 'scfydm'
      Size = 300
      Lookup = True
    end
    object qry_tjbdfyhxfymc: TStringField
      FieldKind = fkLookup
      FieldName = 'hxfymc'
      LookupDataSet = qry_fy
      LookupKeyFields = 'fydm'
      LookupResultField = 'fymc'
      KeyFields = 'hxfydm'
      Size = 300
      Lookup = True
    end
    object qry_tjbdfyzsscfydm: TStringField
      FieldName = 'zsscfydm'
    end
    object qry_tjbdfyclfdm: TStringField
      FieldName = 'clfdm'
    end
    object qry_tjbdfyclfmc: TStringField
      FieldKind = fkLookup
      FieldName = 'clfmc'
      LookupDataSet = qry_cl
      LookupKeyFields = 'ypdm'
      LookupResultField = 'ypmc'
      KeyFields = 'clfdm'
      Lookup = True
    end
    object qry_tjbdfybqdm: TStringField
      FieldName = 'bqdm'
    end
  end
  object ds_tjbdfy: TDataSource
    DataSet = qry_tjbdfy
    Left = 560
    Top = 96
  end
  object qry_fycx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      'select * from sys_gytj')
    Left = 752
    Top = 96
  end
  object qry_fy: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      'select * from sys_kjsfxm where qybz=1')
    Left = 672
    Top = 104
  end
  object cxStyleRepository1: TcxStyleRepository
    object cxStyle1: TcxStyle
    end
  end
  object ds_fycx: TDataSource
    DataSet = qry_fycx
    Left = 792
    Top = 96
  end
  object qry_jyyb: TADOQuery
    Connection = DM_data.ado_mydata
    AfterScroll = qry_jyybAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from sys_jyyb')
    Left = 120
    Top = 368
  end
  object ds_jyyb: TDataSource
    DataSet = qry_jyyb
    Left = 160
    Top = 368
  end
  object qry_ybbd: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      'select * from sys_gytj')
    Left = 528
    Top = 408
    object StringField1: TStringField
      FieldName = 'ybmc'
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'scfydm'
      Size = 4
    end
    object StringField3: TStringField
      FieldName = 'hxfydm'
      Size = 4
    end
    object StringField4: TStringField
      FieldKind = fkLookup
      FieldName = 'scfymc'
      LookupDataSet = qry_fy
      LookupKeyFields = 'fydm'
      LookupResultField = 'fymc'
      KeyFields = 'scfydm'
      Size = 300
      Lookup = True
    end
    object StringField5: TStringField
      FieldKind = fkLookup
      FieldName = 'hxfymc'
      LookupDataSet = qry_fy
      LookupKeyFields = 'fydm'
      LookupResultField = 'fymc'
      KeyFields = 'hxfydm'
      Size = 300
      Lookup = True
    end
    object qry_ybbdybdm: TStringField
      FieldName = 'ybdm'
      Size = 4
    end
    object qry_ybbdpym: TStringField
      FieldName = 'pym'
      Size = 10
    end
    object qry_ybbdclfdm: TStringField
      FieldName = 'clfdm'
    end
    object qry_ybbdclfmc: TStringField
      FieldKind = fkLookup
      FieldName = 'clfmc'
      LookupDataSet = qry_cl1
      LookupKeyFields = 'ypdm'
      LookupResultField = 'ypmc'
      KeyFields = 'clfdm'
      Lookup = True
    end
    object qry_ybbdbqdm: TStringField
      FieldName = 'bqdm'
    end
  end
  object ds_ybbd: TDataSource
    DataSet = qry_ybbd
    Left = 568
    Top = 408
  end
  object qry_ybfycx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      'select * from sys_gytj')
    Left = 624
    Top = 408
  end
  object ds_ybfycx: TDataSource
    DataSet = qry_ybfycx
    Left = 664
    Top = 408
  end
  object qry_cl: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      
        'select * from sys_ypdm where sybz=1 and (yplb like '#39'030306%'#39' or ' +
        'yplb like '#39'0302%'#39')')
    Left = 648
    Top = 160
  end
  object qry_cl1: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      
        'select * from sys_ypdm where sybz=1 and (yplb like '#39'030306%'#39' or ' +
        'yplb like '#39'0302%'#39')'
      '')
    Left = 776
    Top = 408
  end
end
