object frm_qfgl: Tfrm_qfgl
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #27424#36153#31649#29702
  ClientHeight = 723
  ClientWidth = 1065
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object pnl_tj: TPanel
    Left = 0
    Top = 0
    Width = 1065
    Height = 49
    Align = alTop
    Anchors = []
    BevelInner = bvLowered
    TabOrder = 0
    ExplicitWidth = 1012
    DesignSize = (
      1065
      49)
    object lbl1: TLabel
      Left = 18
      Top = 16
      Width = 75
      Height = 15
      Align = alCustom
      Anchors = []
      Caption = #32479#35745#26085#26399#65306
      ExplicitLeft = 7
    end
    object lbl2: TLabel
      Left = 249
      Top = 16
      Width = 15
      Height = 15
      Anchors = []
      Caption = #33267
      ExplicitLeft = 197
    end
    object lbl3: TLabel
      Left = 456
      Top = 16
      Width = 240
      Height = 15
      Caption = #27880#65306#21452#20987#31867#21035#34892#21487#30452#25509#26597#30475#26126#32454#25968#25454
    end
    object dtp_ksrq: TDateTimePicker
      Left = 110
      Top = 13
      Width = 119
      Height = 23
      Align = alCustom
      Anchors = []
      Date = 40588.722071180560000000
      Time = 40588.722071180560000000
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 0
      ExplicitLeft = 102
    end
    object dtp_jsrq: TDateTimePicker
      Left = 281
      Top = 13
      Width = 119
      Height = 23
      Align = alCustom
      Anchors = []
      Date = 40588.722071180560000000
      Time = 40588.722071180560000000
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 1
      ExplicitLeft = 264
    end
    object btnTj: TButton
      Left = 755
      Top = 13
      Width = 75
      Height = 25
      Align = alCustom
      Anchors = []
      Caption = #32479#35745'(&T)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnTjClick
      ExplicitLeft = 716
    end
    object btnPrint: TButton
      Left = 952
      Top = 13
      Width = 75
      Height = 25
      Align = alCustom
      Anchors = []
      Caption = #25171#21360'(&P)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnPrintClick
      ExplicitLeft = 910
    end
    object btn_jgqfhx: TButton
      Left = 845
      Top = 13
      Width = 101
      Height = 25
      Caption = #26426#26500#27424#36153#26680#38144
      TabOrder = 4
      Visible = False
      OnClick = btn_jgqfhxClick
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 81
    Width = 1065
    Height = 264
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 1012
    object cxgrd2: TcxGrid
      Left = 1
      Top = 1
      Width = 1063
      Height = 262
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 1010
      object cxgrdbtblvwGrid1DBTableView2: TcxGridDBTableView
        OnDblClick = cxgrdbtblvwGrid1DBTableView2DblClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellMultiSelect = True
        OptionsView.GroupByBox = False
        Styles.StyleSheet = GridTableViewStyleSheetDevExpress
        object cxgrdbclmnGrid1DBTableView2Column1: TcxGridDBColumn
          Caption = #31867#21035
          DataBinding.FieldName = 'lbmc'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 106
        end
        object cxgrdbclmnGrid1DBTableView2Column2: TcxGridDBColumn
          Caption = #20154#27425
          DataBinding.FieldName = 'rc'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxgrdbclmnGrid1DBTableView2Column3: TcxGridDBColumn
          Caption = #24635#36153#29992
          DataBinding.FieldName = 'zfy'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00'
          HeaderAlignmentHorz = taCenter
          Width = 160
        end
        object cxgrdbclmnGrid1DBTableView2Column4: TcxGridDBColumn
          Caption = #39044#20132#24635#39069
          DataBinding.FieldName = 'yjze'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00'
          HeaderAlignmentHorz = taCenter
          Width = 160
        end
        object cxgrdbclmnGrid1DBTableView2Column5: TcxGridDBColumn
          Caption = #27424#36153#37329#39069
          DataBinding.FieldName = 'brqf'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00'
          HeaderAlignmentHorz = taCenter
          Width = 160
        end
        object cxgrdbclmnGrid1DBTableView2Column6: TcxGridDBColumn
          Caption = #26426#26500#27424#36153
          DataBinding.FieldName = 'tcje'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00'
          HeaderAlignmentHorz = taCenter
          Width = 160
        end
        object cxgrdbclmnGrid1DBTableView2Column7: TcxGridDBColumn
          Caption = #26426#26500#27424#36153#26680#38144#37329#39069
          DataBinding.FieldName = 'jgqfhxje'
          Visible = False
          Width = 160
        end
      end
      object cxgrdlvlGrid1Level2: TcxGridLevel
        GridView = cxgrdbtblvwGrid1DBTableView2
      end
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 345
    Width = 1065
    Height = 378
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 1012
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 1063
      Height = 376
      ActivePage = cxTabSheet3
      Align = alClient
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      Style = 9
      TabOrder = 2
      ExplicitWidth = 1010
      ClientRectBottom = 376
      ClientRectRight = 1063
      ClientRectTop = 22
      object cxTabSheet3: TcxTabSheet
        Caption = #25353#25805#20316#21592#26597#30475#36153#29992#24773#20917
        ImageIndex = 3
        OnShow = cxTabSheet3Show
        ExplicitWidth = 1010
        object cxgrd5: TcxGrid
          Left = 0
          Top = 0
          Width = 1063
          Height = 354
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 1010
          object cxgrdbtblvw1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ds_Abrckfyqk
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = cxgrdbclmn2
              end
              item
                Format = '0.00'
                Kind = skSum
                Column = cxgrdbclmn5
              end
              item
                Format = '0.00'
                Kind = skSum
                Column = cxgrdbclmn6
              end
              item
                Format = '0.00'
                Kind = skSum
                Column = cxgrdbclmn7
              end
              item
                Format = '0.00'
                Kind = skSum
                Column = cxgrdbclmn8
              end
              item
                Format = '0.00'
                Kind = skSum
                Column = cxgrdbclmn9
              end
              item
                Format = #21512#35745#65306
                Kind = skCount
                Column = cxgrdbclmncxgrdbtblvw1Column1
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellMultiSelect = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.StyleSheet = GridTableViewStyleSheetDevExpress
            object cxgrdbclmncxgrdbtblvw1Column1: TcxGridDBColumn
              Caption = #32467#31639#25805#20316#21592
              DataBinding.FieldName = 'jsczy'
              HeaderAlignmentHorz = taCenter
              Width = 111
            end
            object cxgrdbclmn1: TcxGridDBColumn
              Caption = #31185#23460#21517#31216
              DataBinding.FieldName = 'ksmc'
              HeaderAlignmentHorz = taCenter
              Width = 117
            end
            object cxgrdbclmn2: TcxGridDBColumn
              Caption = #30149#20154#31867#21035
              DataBinding.FieldName = 'brlb'
              HeaderAlignmentHorz = taCenter
              Width = 85
            end
            object cxgrdbclmn3: TcxGridDBColumn
              Caption = #26465#30721#21495
              DataBinding.FieldName = 'tmh'
              HeaderAlignmentHorz = taCenter
              Width = 96
            end
            object cxgrdbclmn4: TcxGridDBColumn
              Caption = #30149#20154#22995#21517
              DataBinding.FieldName = 'brxm'
              HeaderAlignmentHorz = taCenter
              Width = 85
            end
            object cxgrdbclmn5: TcxGridDBColumn
              Caption = #36153#29992#24635#39069
              DataBinding.FieldName = 'fyze'
              HeaderAlignmentHorz = taCenter
              Width = 111
            end
            object cxgrdbclmn6: TcxGridDBColumn
              Caption = #39044#20132#24635#39069
              DataBinding.FieldName = 'yjze'
              HeaderAlignmentHorz = taCenter
              Width = 86
            end
            object cxgrdbclmn7: TcxGridDBColumn
              Caption = #32479#31609#37329#39069
              DataBinding.FieldName = 'tcje'
              HeaderAlignmentHorz = taCenter
              Width = 86
            end
            object cxgrdbclmn8: TcxGridDBColumn
              Caption = #21345#25903#20184#37329#39069
              DataBinding.FieldName = 'kzfje'
              HeaderAlignmentHorz = taCenter
              Width = 97
            end
            object cxgrdbclmn9: TcxGridDBColumn
              Caption = #27424#36153#37329#39069
              DataBinding.FieldName = 'qfje'
              HeaderAlignmentHorz = taCenter
              Width = 91
            end
            object cxgrdbclmn10: TcxGridDBColumn
              Caption = #32467#31639#26085#26399
              DataBinding.FieldName = 'jsrq'
              HeaderAlignmentHorz = taCenter
              Width = 107
            end
          end
          object cxgrdlvl1: TcxGridLevel
            GridView = cxgrdbtblvw1
          end
        end
      end
      object cxTabSheet1: TcxTabSheet
        Caption = #25353#31185#23460#26597#30475#36153#29992#24773#20917
        ImageIndex = 0
        OnShow = cxTabSheet1Show
        ExplicitWidth = 1010
        object cxgrd1: TcxGrid
          Left = 0
          Top = 0
          Width = 1063
          Height = 354
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 1010
          object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ds_Aksckfyqk
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = #21512#35745#65306
                Kind = skCount
                Column = cxgrdbclmnGrid1DBTableView1Column1
              end
              item
                Kind = skSum
                Column = cxgrdbclmnGrid1DBTableView1Column2
              end
              item
                Format = '0.00'
                Kind = skSum
                Column = cxgrdbclmnGrid1DBTableView1Column3
              end
              item
                Format = '0.00'
                Kind = skSum
                Column = cxgrdbclmnGrid1DBTableView1Column4
              end
              item
                Format = '0.00'
                Kind = skSum
                Column = cxgrdbclmnGrid1DBTableView1Column5
              end
              item
                Format = '0.00'
                Kind = skSum
                Column = cxgrdbclmnGrid1DBTableView1Column6
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsSelection.CellMultiSelect = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.StyleSheet = GridTableViewStyleSheetDevExpress
            object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
              Caption = #31185#23460#21517#31216
              DataBinding.FieldName = 'ksmc'
              HeaderAlignmentHorz = taCenter
              Width = 124
            end
            object cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn
              Caption = #20154#27425
              DataBinding.FieldName = 'rc'
              HeaderAlignmentHorz = taCenter
              Width = 116
            end
            object cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn
              Caption = #24635#36153#29992
              DataBinding.FieldName = 'zfy'
              HeaderAlignmentHorz = taCenter
              Width = 159
            end
            object cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn
              Caption = #39044#20132#24635#39069
              DataBinding.FieldName = 'yjze'
              HeaderAlignmentHorz = taCenter
              Width = 139
            end
            object cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn
              Caption = #32479#31609#37329#39069
              DataBinding.FieldName = 'tcje'
              HeaderAlignmentHorz = taCenter
              Width = 134
            end
            object cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn
              Caption = #30149#20154#27424#36153
              DataBinding.FieldName = 'brqf'
              HeaderAlignmentHorz = taCenter
              Width = 166
            end
          end
          object cxgrdlvlGrid1Level1: TcxGridLevel
            GridView = cxgrdbtblvwGrid1DBTableView1
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = #25353#36153#29992#22823#39033#26597#30475#36153#29992#24773#20917
        ImageIndex = 1
        OnShow = cxTabSheet2Show
        ExplicitWidth = 1010
        object cxgrd3: TcxGrid
          Left = 0
          Top = 0
          Width = 1063
          Height = 354
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 1010
          object cxgrdbtblvwGrid1DBTableView3: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ds_Afydxckfyqk
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = #21512#35745#65306
                Kind = skCount
                Column = cxgrdbclmnGrid1DBTableView3Column1
              end
              item
                Kind = skSum
                Column = cxgrdbclmnGrid1DBTableView3Column2
              end
              item
                Format = '0.00'
                Kind = skSum
                Column = cxgrdbclmnGrid1DBTableView3Column3
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellMultiSelect = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.StyleSheet = GridTableViewStyleSheetDevExpress
            object cxgrdbclmnGrid1DBTableView3Column1: TcxGridDBColumn
              Caption = #31185#30446#21517#31216
              DataBinding.FieldName = 'kmmc'
              HeaderAlignmentHorz = taCenter
              Width = 172
            end
            object cxgrdbclmnGrid1DBTableView3Column2: TcxGridDBColumn
              Caption = #36153#29992#25968#37327
              DataBinding.FieldName = 'fysl'
              HeaderAlignmentHorz = taCenter
              Width = 133
            end
            object cxgrdbclmnGrid1DBTableView3Column3: TcxGridDBColumn
              Caption = #36153#29992#37329#39069
              DataBinding.FieldName = 'fyje'
              HeaderAlignmentHorz = taCenter
              Width = 155
            end
          end
          object cxgrdlvlGrid1Level3: TcxGridLevel
            GridView = cxgrdbtblvwGrid1DBTableView3
          end
        end
      end
    end
    object btn_MXPrint: TButton
      Left = 900
      Top = -2
      Width = 75
      Height = 25
      Caption = #26126#32454#25171#21360
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btn_MXPrintClick
    end
    object btn_Czyhz: TButton
      Left = 795
      Top = -2
      Width = 99
      Height = 25
      Caption = #25805#20316#21592#27719#24635
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btn_CzyhzClick
    end
  end
  object pnl3: TPanel
    Left = 0
    Top = 49
    Width = 1065
    Height = 32
    Align = alTop
    Anchors = []
    BevelInner = bvLowered
    TabOrder = 3
    ExplicitWidth = 1012
    DesignSize = (
      1065
      32)
    object lbl_brqyyfy: TLabel
      Left = 9
      Top = 5
      Width = 150
      Height = 15
      Anchors = []
      Caption = #25152#26377#30149#20154#27424#21307#38498#36153#29992#65306
      ExplicitLeft = -8
      ExplicitTop = 11
    end
    object lbl_yyqbrfy: TLabel
      Left = 228
      Top = 5
      Width = 120
      Height = 15
      Anchors = []
      Caption = #21307#38498#27424#30149#20154#36153#29992#65306
      ExplicitLeft = 170
      ExplicitTop = 11
    end
    object lbl_sbtcfy: TLabel
      Left = 455
      Top = 5
      Width = 105
      Height = 15
      Anchors = []
      Caption = #31038#20445#32479#31609#36153#29992#65306
      ExplicitLeft = 352
      ExplicitTop = 11
    end
    object lbl_nhbzfy: TLabel
      Left = 652
      Top = 5
      Width = 105
      Height = 15
      Anchors = []
      Caption = #20892#21512#25253#24080#36153#29992#65306
      ExplicitLeft = 509
      ExplicitTop = 11
    end
    object lbl_zfbrqf: TLabel
      Left = 864
      Top = 5
      Width = 105
      Height = 15
      Anchors = []
      Caption = #33258#36153#30149#20154#27424#36153#65306
      ExplicitLeft = 678
      ExplicitTop = 11
    end
  end
  object sp1: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_tj_qfgl_hz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end>
    Left = 232
    Top = 168
  end
  object sp_lbtj: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zysf_tj_qfgl_lbhz'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = ' '
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = ' '
      end>
    Left = 272
    Top = 168
  end
  object ds1: TDataSource
    DataSet = sp_lbtj
    Left = 208
    Top = 128
  end
  object sp_Aksckfyqk: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zysf_tj_qfgl_kshz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end
      item
        Name = '@fylb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end>
    Left = 320
    Top = 296
  end
  object ds_Aksckfyqk: TDataSource
    DataSet = sp_Aksckfyqk
    Left = 320
    Top = 248
  end
  object sp_Afydxckfyqk: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zysf_tj_qfgl_dlhz;1'
    Parameters = <
      item
        Name = '@ksrq'
        Size = -1
        Value = Null
      end
      item
        Name = '@jsrq'
        DataType = ftString
        Size = 8
        Value = ' '
      end
      item
        Name = '@fylb'
        DataType = ftString
        Size = 2
        Value = ' '
      end>
    Left = 232
    Top = 296
  end
  object sp_Abrckfyqk: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zysf_tj_qfgl_brhz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = ' '
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = ' '
      end
      item
        Name = '@fylb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = ' '
      end>
    Left = 272
    Top = 299
  end
  object ds_Afydxckfyqk: TDataSource
    DataSet = sp_Afydxckfyqk
    Left = 232
    Top = 248
  end
  object ds_Abrckfyqk: TDataSource
    DataSet = sp_Abrckfyqk
    Left = 272
    Top = 248
  end
  object grdprprt_fyhz: TGridppReport
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 400
    Top = 128
  end
  object grdprprt_Aks: TGridppReport
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 440
    Top = 128
  end
  object grdprprt_Adx: TGridppReport
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 477
    Top = 128
  end
  object grdprprt_Abr: TGridppReport
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 520
    Top = 128
  end
  object grdprprt_czyhz: TGridppReport
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 552
    Top = 128
  end
  object sp_czyhz: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_tj_qfgl_jsczyhz'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = ' '
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = ' '
      end
      item
        Name = '@fylb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = ' '
      end>
    Left = 360
    Top = 296
  end
  object ds2: TDataSource
    DataSet = sp_czyhz
    Left = 416
    Top = 416
  end
  object cxStyleRepository1: TcxStyleRepository
    object cxStyle1: TcxStyle
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle2
      Styles.Content = cxStyle3
      Styles.ContentEven = cxStyle4
      Styles.ContentOdd = cxStyle5
      Styles.FilterBox = cxStyle6
      Styles.Inactive = cxStyle11
      Styles.IncSearch = cxStyle12
      Styles.Selection = cxStyle15
      Styles.Footer = cxStyle7
      Styles.Group = cxStyle8
      Styles.GroupByBox = cxStyle9
      Styles.Header = cxStyle10
      Styles.Indicator = cxStyle13
      Styles.Preview = cxStyle14
      BuiltIn = True
    end
  end
  object qry_jgqfhx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'ksrq'
        Size = -1
        Value = Null
      end
      item
        Name = 'jsrq'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'update zysf_qfgl_jsxx set jgqfhxbz=1 '
      'where convert(char,jsrq,112)>=:ksrq and  '
      #9'convert(char,jsrq,112)<=:jsrq  ')
    Left = 907
    Top = 176
  end
end
