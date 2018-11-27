object frm_hsgzltj: Tfrm_hsgzltj
  Left = 0
  Top = 0
  Align = alClient
  Caption = #25252#22763#31449#24037#20316#37327#32479#35745
  ClientHeight = 520
  ClientWidth = 1014
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 208
    Height = 520
    Align = alLeft
    Caption = 'pnl1'
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 200
      Height = 518
      Align = alLeft
      DataGrouping.GroupLevels = <>
      DataSource = ds_sybr
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = ANSI_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      HorzScrollBar.Visible = False
      ImeMode = imDisable
      RowDetailPanel.Color = clBtnFace
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      OnCellClick = DBGridEh1CellClick
      Columns = <
        item
          Checkboxes = True
          EditButtons = <>
          FieldName = 'xzbz'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #36873#25321
          Visible = False
          Width = 35
        end
        item
          EditButtons = <>
          FieldName = 'bch'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #30149#24202#21495
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'brxm'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #30149#20154#22995#21517
          Width = 100
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object pnl2: TPanel
    Left = 208
    Top = 0
    Width = 806
    Height = 520
    Align = alClient
    Caption = 'pnl2'
    TabOrder = 1
    object GroupBox2: TGroupBox
      Left = 1
      Top = 73
      Width = 804
      Height = 446
      Align = alClient
      Caption = '  '#26597#35810#32467#26524
      TabOrder = 0
      object ScrollBox1: TScrollBox
        Left = 2
        Top = 17
        Width = 800
        Height = 427
        Align = alClient
        TabOrder = 0
        object DBGridEh2: TDBGridEh
          Left = 0
          Top = 0
          Width = 1200
          Height = 5000
          DataGrouping.GroupLevels = <>
          DataSource = ds_dryz
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = ANSI_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          RowDetailPanel.Color = clBtnFace
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          VertScrollBar.VisibleMode = sbNeverShowEh
          OnColWidthsChanged = DBGridEh2ColWidthsChanged
          OnDblClick = DBGridEh2DblClick
          OnDrawColumnCell = DBGridEh2DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'bch'
              Footers = <>
              ReadOnly = True
              Title.Caption = #30149#24202#21495
              Width = 42
            end
            item
              EditButtons = <>
              FieldName = 'brxm'
              Footers = <>
              ReadOnly = True
              Title.Caption = #30149#20154#22995#21517
              Width = 104
            end
            item
              EditButtons = <>
              FieldName = 'yzph'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'yzsx'
              Footers = <>
              ReadOnly = True
              Title.Caption = #23646#24615
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'lb'
              Footers = <>
              Title.Caption = #31867#21035
              Visible = False
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'xmmc'
              Footers = <>
              ReadOnly = True
              Title.Caption = #33647#21697#21517#31216
              Width = 305
            end
            item
              EditButtons = <>
              FieldName = 'dw'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'ypyl'
              Footers = <>
              ReadOnly = True
              Title.Caption = #29992#37327
              Visible = False
              Width = 43
            end
            item
              EditButtons = <>
              FieldName = 'yldw'
              Footers = <>
              ReadOnly = True
              Title.Caption = ' '
              Visible = False
              Width = 32
            end
            item
              EditButtons = <>
              FieldName = 'ypyf'
              Footers = <>
              ReadOnly = True
              Title.Caption = #29992#27861
              Width = 41
            end
            item
              EditButtons = <>
              FieldName = 'yytj'
              Footers = <>
              ReadOnly = True
              Title.Caption = #29992#33647#36884#24452
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = 'sl'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'bz'
              Footers = <>
              ReadOnly = True
              Title.Caption = #35828#26126
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'fzph'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'gg'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'jyyb'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'yplsj'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'yzid'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'yzid'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'zxry'
              Footers = <>
              ReadOnly = True
              Title.Caption = #25191#34892#20154
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'zxsj'
              Footers = <>
              ReadOnly = True
              Title.Caption = #25191#34892#26102#38388
            end
            item
              EditButtons = <>
              FieldName = 'zxfs'
              Footers = <>
              Title.Caption = #25191#34892#26041#24335
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 804
      Height = 72
      Align = alTop
      Caption = '  '#26597#35810#26465#20214
      TabOrder = 1
      object Label2: TLabel
        Left = 107
        Top = 19
        Width = 30
        Height = 15
        Caption = #26085#26399
      end
      object lbl_zyh: TLabel
        Left = 307
        Top = 47
        Width = 60
        Height = 15
        Caption = #25191#34892#20154#21592
      end
      object Label4: TLabel
        Left = 93
        Top = 47
        Width = 45
        Height = 15
        Caption = #30149#24202#21495
      end
      object Label3: TLabel
        Left = 564
        Top = 19
        Width = 60
        Height = 15
        Caption = #29992#33647#36884#24452
      end
      object Label1: TLabel
        Left = 321
        Top = 19
        Width = 60
        Height = 15
        Caption = #33647#21697#29992#27861
      end
      object Select: TButton
        Left = 705
        Top = 43
        Width = 75
        Height = 23
        Hint = #35831#36755#20837#30149#20154#20303#38498#21495#25110#25805#20316#21592#20195#30721
        Caption = #26597'  '#35810
        TabOrder = 6
        OnClick = SelectClick
      end
      object dt_zxsj: TDateTimePicker
        Left = 144
        Top = 15
        Width = 150
        Height = 23
        Date = 40401.666157951390000000
        Time = 40401.666157951390000000
        TabOrder = 1
        OnChange = dt_zxsjChange
      end
      object edtUID: TEdit
        Left = 388
        Top = 43
        Width = 150
        Height = 23
        Hint = #35831#36755#20837#30149#20154#20303#38498#21495#25110#25805#20316#21592#20195#30721
        TabOrder = 5
        OnEnter = edtUIDEnter
        OnKeyPress = edtUIDKeyPress
      end
      object cbbUsage: TComboBox
        Left = 388
        Top = 15
        Width = 150
        Height = 23
        Style = csDropDownList
        ItemHeight = 15
        TabOrder = 2
      end
      object cbbMethod: TComboBox
        Left = 631
        Top = 15
        Width = 150
        Height = 23
        Style = csDropDownList
        ItemHeight = 15
        TabOrder = 3
      end
      object edtBedNo: TEdit
        Left = 144
        Top = 43
        Width = 150
        Height = 23
        TabOrder = 4
        OnKeyDown = edtBedNoKeyDown
      end
      object CheckBox1: TCheckBox
        Left = 11
        Top = 19
        Width = 84
        Height = 17
        Caption = #25152#26377#30149#20154
        TabOrder = 0
        OnClick = CheckBox1Click
      end
      object Reset: TButton
        Left = 573
        Top = 43
        Width = 75
        Height = 23
        Caption = #37325'  '#32622
        TabOrder = 7
        OnClick = ResetClick
      end
    end
  end
  object AdditionalRecording: TPanel
    Left = 472
    Top = 211
    Width = 393
    Height = 190
    BorderWidth = 10
    BorderStyle = bsSingle
    ParentBackground = False
    TabOrder = 2
    Visible = False
    object grp1: TGroupBox
      Left = 24
      Top = 20
      Width = 350
      Height = 105
      Caption = #34917#24405
      TabOrder = 0
      object Label5: TLabel
        Left = 13
        Top = 63
        Width = 60
        Height = 15
        Caption = #25191#34892#26102#38388
      end
      object Label6: TLabel
        Left = 13
        Top = 24
        Width = 46
        Height = 15
        Caption = #20195'  '#30721
      end
      object cbbUName: TComboBox
        Left = 163
        Top = 19
        Width = 177
        Height = 23
        ItemHeight = 15
        TabOrder = 0
        OnChange = cbbUNameChange
      end
      object Edit1: TEdit
        Left = 61
        Top = 19
        Width = 93
        Height = 23
        TabOrder = 1
        OnExit = Edit1Exit
        OnKeyDown = Edit1KeyDown
      end
      object dtWriteUP: TcxDateEdit
        Left = 144
        Top = 63
        Properties.Kind = ckDateTime
        TabOrder = 2
        Width = 193
      end
    end
    object btnOK: TButton
      Left = 88
      Top = 144
      Width = 75
      Height = 25
      Caption = #30830#23450
      TabOrder = 1
      OnClick = btnOKClick
    end
    object btnCancel: TButton
      Left = 240
      Top = 144
      Width = 75
      Height = 25
      Caption = #21462#28040
      TabOrder = 2
      OnClick = btnCancelClick
    end
  end
  object ds_sybr: TDataSource
    DataSet = sp_sybr
    Left = 144
    Top = 160
  end
  object ds_dryz: TDataSource
    DataSet = sp_dryz
    Left = 320
    Top = 168
  end
  object sp_dryz: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_zyyz_cx_gzl;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@zyh'
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
    Left = 286
    Top = 167
  end
  object sp_sybr: TADOStoredProc
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    ProcedureName = 'cx_gzl_brxx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@bqdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
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
        Name = '@zxsj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 112
    Top = 160
  end
  object sp_yzsj: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zyyz_yzsj;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@scyzsj'
        Attributes = [paNullable]
        DataType = ftDateTime
        Direction = pdInputOutput
        Value = 20100821d
      end>
    Left = 224
    Top = 168
  end
  object qryUser: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 368
    Top = 304
  end
end
