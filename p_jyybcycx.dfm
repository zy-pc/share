object frm_jyybcycx: Tfrm_jyybcycx
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = #26816#39564#26679#26412#37319#26679#26597#35810
  ClientHeight = 456
  ClientWidth = 853
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
  object Panel1: TPanel
    Left = 8
    Top = 0
    Width = 842
    Height = 35
    TabOrder = 0
    object Label1: TLabel
      Left = 77
      Top = 5
      Width = 60
      Height = 18
      Caption = #24320#22987#26085#26399
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 277
      Top = 5
      Width = 60
      Height = 18
      Caption = #32467#26463#26085#26399
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dtp_startTime: TDateTimePicker
      Left = 143
      Top = 3
      Width = 105
      Height = 23
      Date = 41970.000011574080000000
      Time = 41970.000011574080000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #26032#23435#20307
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 0
    end
    object dtp_endTime: TDateTimePicker
      Left = 343
      Top = 3
      Width = 105
      Height = 23
      Date = 41977.999988425920000000
      Time = 41977.999988425920000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #26032#23435#20307
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 1
    end
    object btn_CX: TButton
      Left = 501
      Top = 3
      Width = 75
      Height = 25
      Caption = #26597'  '#35810
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #26032#23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btn_CXClick
    end
    object btn_close: TButton
      Left = 737
      Top = 3
      Width = 75
      Height = 25
      Caption = #36864'   '#20986
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btn_closeClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 41
    Width = 842
    Height = 256
    Caption = #26816#39564#20998#32452#20449#24687
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #26032#23435#20307
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 3
      Top = 22
      Width = 818
      Height = 222
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #26032#23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCellClick = cxGrid1DBTableView1CellClick
        OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
        DataController.DataSource = ds_jyfzxxlb
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1_tmh: TcxGridDBColumn
          Caption = #21345#21495
          DataBinding.FieldName = 'tmh'
          Width = 109
        end
        object cxGrid1DBTableView1_brxm: TcxGridDBColumn
          Caption = #30149#20154#22995#21517
          DataBinding.FieldName = 'brxm'
          Width = 98
        end
        object cxGrid1DBTableView1_fzbh: TcxGridDBColumn
          Caption = #26816#39564#20998#32452#21495
          DataBinding.FieldName = 'fzbh'
          Width = 121
        end
        object cxGrid1DBTableView1_sqys: TcxGridDBColumn
          Caption = #30003#35831#21307#29983
          DataBinding.FieldName = 'sqys'
          Width = 92
        end
        object cxGrid1DBTableView1_yb: TcxGridDBColumn
          Caption = #26679#26412
          DataBinding.FieldName = 'yb'
          Width = 75
        end
        object cxGrid1DBTableView1_qrcysj: TcxGridDBColumn
          Caption = #37319#26679#26102#38388
          DataBinding.FieldName = 'qrcysj'
          Width = 165
        end
        object cxGrid1DBTableView1_qrcyry: TcxGridDBColumn
          Caption = #37319#26679#20154#21592
          DataBinding.FieldName = 'qrcyry'
          Width = 109
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 303
    Width = 500
    Height = 152
    Caption = #26816#39564#20998#32452#20855#20307#39033#30446
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #26032#23435#20307
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object cxGrid2: TcxGrid
      Left = 9
      Top = 25
      Width = 483
      Height = 120
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #26032#23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds_jyfzxxlr
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxGridDBTableView1_jyfzbh: TcxGridDBColumn
          Caption = #26816#39564#20998#32452#21495
          DataBinding.FieldName = 'jyfzbh'
          Width = 120
        end
        object cxGridDBTableView1_jyxmmc: TcxGridDBColumn
          Caption = #26816#39564#39033#30446#21517#31216
          DataBinding.FieldName = 'jyxmmc'
          Width = 249
        end
        object cxGridDBTableView1_yb: TcxGridDBColumn
          Caption = #26679#26412
          DataBinding.FieldName = 'yb'
          Width = 90
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object Panel2: TPanel
    Left = 514
    Top = 303
    Width = 335
    Height = 150
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label3: TLabel
      Left = 1
      Top = 10
      Width = 90
      Height = 18
      Caption = #26816#39564#26465#30721#21495#65306
    end
    object Label4: TLabel
      Left = 11
      Top = 39
      Width = 320
      Height = 96
      Caption = 
        #35828#26126#65306#13#10'1.'#26816#39564#20998#32452#20449#24687#26597#35810#20381#25454#30340#26102#38388#26159' '#24405#20837#26085#26399#65307#13#10'2.'#21333#20987#26816#39564#20998#32452#20449#24687#65292#21487#22312#26816#39564#20998#32452#20855#20307#39033#30446#13#10'   '#20013#26597#30475#19968#20010#26816#39564#20998#32452 +
        #21495#20013#30340#20855#20307#26816#39564#39033#30446#65307#13#10'3.'#24405#20837#26816#39564#26465#30721#21495'('#26816#39564#20998#32452#21495')'#65292#36827#34892#30830#35748#37319#13#10'   '#26679#12290
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object edt_jytmh: TEdit
      Left = 90
      Top = 7
      Width = 140
      Height = 26
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 0
      OnKeyPress = edt_jytmhKeyPress
    end
    object Button1: TButton
      Left = 222
      Top = 7
      Width = 107
      Height = 26
      Caption = #30830' '#35748' '#37319' '#26679
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object qry_jyfzxxlb: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'ksdm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'starttime'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'endtime'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'select jysqd.brxm,jysqd.tmh,jysqd.fzbh,jysqd.sqys,jysqd.ybmc yb,' +
        ' jyybjs.qrcysj,jyybjs.qrcyry'
      ' from dzbl_jysqd jysqd '
      #9'join zysf_zydj zydj on (jysqd.zyh=zydj.zyh) '
      #9'left join dzbl_jyybjs jyybjs on (jysqd.fzbh = jyybjs.fzbh)'
      ' where  jysqd.ksdm=:ksdm'
      '        and (jysqd.lrrq between :starttime and :endtime)')
    Left = 657
    Top = 174
  end
  object ds_jyfzxxlb: TDataSource
    DataSet = qry_jyfzxxlb
    Left = 657
    Top = 206
  end
  object qry_jyfzxxlr: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'fzbh'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select jyfzbh , jyxmmc , yb from dzbl_cyjl_zy where jyfzbh=:fzbh')
    Left = 450
    Top = 416
  end
  object ds_jyfzxxlr: TDataSource
    DataSet = qry_jyfzxxlr
    Left = 416
    Top = 415
  end
  object sp_in_jyybjs: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'dzbl_in_jyybjs'
    Parameters = <
      item
        Name = '@jytmh'
        Size = -1
        Value = Null
      end
      item
        Name = '@czydm'
        Size = -1
        Value = Null
      end>
    Left = 804
    Top = 337
  end
  object qry_cx_jytmh: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 773
    Top = 337
  end
end
