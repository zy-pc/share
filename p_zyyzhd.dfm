object frm_zyyzhd: Tfrm_zyyzhd
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #21307#22065#26680#23545
  ClientHeight = 550
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 156
    Top = 0
    Width = 595
    Height = 550
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 592
      Height = 74
      Align = alTop
      Caption = #26680#23545#30149#20154#26465#20214
      TabOrder = 0
      object cxButton1: TcxButton
        Left = 523
        Top = 44
        Width = 58
        Height = 19
        Caption = #21047#26032
        TabOrder = 0
        OnClick = cxButton1Click
      end
      object cxButton2: TcxButton
        Left = 299
        Top = 44
        Width = 58
        Height = 19
        Caption = #20840#36873
        TabOrder = 1
        OnClick = cxButton2Click
      end
      object cxButton3: TcxButton
        Left = 448
        Top = 44
        Width = 58
        Height = 19
        Caption = #26680#23545
        TabOrder = 2
        OnClick = cxButton3Click
      end
      object cxButton4: TcxButton
        Left = 373
        Top = 44
        Width = 59
        Height = 19
        Caption = #20840#19981#36873
        TabOrder = 3
        OnClick = cxButton4Click
      end
      object rb_kshd: TRadioButton
        Left = 19
        Top = 46
        Width = 88
        Height = 13
        Caption = #25191#34892#26680#23545
        Checked = True
        TabOrder = 4
        TabStop = True
        OnClick = rb_kshdClick
      end
      object rb_jshd: TRadioButton
        Left = 111
        Top = 46
        Width = 88
        Height = 13
        Caption = #32467#26463#26680#23545
        TabOrder = 5
        OnClick = rb_kshdClick
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 75
      Width = 592
      Height = 474
      Align = alClient
      TabOrder = 1
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnEditValueChanged = cxGrid1DBTableView1EditValueChanged
        DataController.DataSource = ds_cx_whdyzxx
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = #36873#25321
          DataBinding.FieldName = 'shbz'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 54
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = #21307#22065#21517#31216
          DataBinding.FieldName = 'xmmc'
          Options.Editing = False
          Width = 183
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = #31867#21035
          DataBinding.FieldName = 'lb'
          Options.Editing = False
          Width = 53
        end
        object cxGrid1DBTableView1Column4: TcxGridDBColumn
          Caption = #21307#22065#23646#24615
          DataBinding.FieldName = 'yzsx'
          Options.Editing = False
          Width = 80
        end
        object cxGrid1DBTableView1Column5: TcxGridDBColumn
          Caption = #29992#27861
          DataBinding.FieldName = 'ypyf'
          Options.Editing = False
          Width = 49
        end
        object cxGrid1DBTableView1Column6: TcxGridDBColumn
          Caption = #29992#37327
          DataBinding.FieldName = 'ypyl'
          Options.Editing = False
          Width = 52
        end
        object cxGrid1DBTableView1Column7: TcxGridDBColumn
          Caption = #35268#26684
          DataBinding.FieldName = 'gg'
          Options.Editing = False
          Width = 59
        end
        object cxGrid1DBTableView1Column8: TcxGridDBColumn
          Caption = #26679#26412
          DataBinding.FieldName = 'jyyb'
          Options.Editing = False
          Width = 63
        end
        object cxGrid1DBTableView1Column9: TcxGridDBColumn
          Caption = #22791#27880
          DataBinding.FieldName = 'bz'
          Options.Editing = False
          Width = 136
        end
        object cxGrid1DBTableView1Column10: TcxGridDBColumn
          DataBinding.FieldName = 'fzph'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 156
    Height = 550
    Align = alLeft
    TabOrder = 1
    object GroupBox3: TGroupBox
      Left = 1
      Top = 1
      Width = 155
      Height = 548
      Align = alClient
      Caption = #26410#26680#23545#30149#20154#21015#34920
      TabOrder = 0
      object cxGrid2: TcxGrid
        Left = 2
        Top = 16
        Width = 151
        Height = 531
        Align = alClient
        TabOrder = 0
        object cxGrid2DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_cx_bqbrlb
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGrid2DBTableView1Column1: TcxGridDBColumn
            Caption = #30149#24202#21495
            DataBinding.FieldName = 'bch'
            HeaderAlignmentHorz = taCenter
            Width = 84
          end
          object cxGrid2DBTableView1Column2: TcxGridDBColumn
            Caption = #30149#20154#22995#21517
            DataBinding.FieldName = 'brxm'
            HeaderAlignmentHorz = taCenter
            Width = 81
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
  end
  object sp_cx_bqbrlb: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = sp_cx_bqbrlbAfterScroll
    ProcedureName = 'zyyz_cx_bqbrlb'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@bqdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@zxsj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 128
    Top = 368
  end
  object ds_cx_bqbrlb: TDataSource
    DataSet = sp_cx_bqbrlb
    Left = 128
    Top = 400
  end
  object sp_cx_whdyzxx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_cx_whdyzxx'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@hdlb'
        Attributes = [paNullable]
        DataType = ftInteger
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
    Left = 600
    Top = 472
  end
  object ds_cx_whdyzxx: TDataSource
    DataSet = sp_cx_whdyzxx
    Left = 600
    Top = 504
  end
  object qry_in_hdyzmx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'zyyzid'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'zyh'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'hdczy'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'insert into zyyz_hdyzmx(zyyzid,zyh,hdczy) '
      'values (:zyyzid,:zyh,:hdczy)')
    Left = 720
    Top = 136
  end
  object qry_in_hdyzmx_js: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'zyyzid'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'zyh'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'hdczy'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'insert into zyyz_hdyzmx_js(zyyzid_js,zyh_js,hdczy_js) '
      'values (:zyyzid,:zyh,:hdczy)')
    Left = 752
    Top = 136
  end
end
