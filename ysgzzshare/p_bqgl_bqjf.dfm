object frm_bqjf: Tfrm_bqjf
  Left = 840
  Top = 10
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #30149#21306#35745#36153
  ClientHeight = 800
  ClientWidth = 594
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object dbgrd_bqjf: TDBGridEh
    Left = 0
    Top = 91
    Width = 594
    Height = 684
    Align = alClient
    DataGrouping.GroupLevels = <>
    DataSource = ds_bqjf
    Flat = True
    FooterColor = clYellow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    FooterRowCount = 1
    RowDetailPanel.Color = clBtnFace
    RowHeight = 19
    SumList.Active = True
    SumList.VirtualRecords = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    TitleLines = 2
    OnCellClick = dbgrd_bqjfCellClick
    OnColEnter = dbgrd_bqjfColEnter
    OnDrawColumnCell = dbgrd_bqjfDrawColumnCell
    OnKeyDown = dbgrd_bqjfKeyDown
    OnKeyPress = dbgrd_bqjfKeyPress
    Columns = <
      item
        Alignment = taCenter
        EditButtons = <>
        FieldName = 'yjf'
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #26159#21542#35745#36153
        Width = 35
      end
      item
        Alignment = taCenter
        DblClickNextVal = True
        EditButtons = <>
        FieldName = 'yzsx'
        Footers = <>
        PickList.Strings = (
          #38271#26399
          #20020#26102)
        Title.Caption = #23646#24615
        Title.TitleButton = True
        Width = 35
      end
      item
        Alignment = taCenter
        EditButtons = <>
        FieldName = 'fydm'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #36153#29992#20195#30721
        Width = 35
      end
      item
        DropDownBox.AutoFitColWidths = False
        DropDownBox.Options = []
        DropDownSpecRow.ShowIfNotInKeyList = False
        EditButtons = <>
        FieldName = 'fydmmc'
        Footers = <>
        MRUList.AutoAdd = False
        MRUList.Limit = 1
        MRUList.Rows = 1
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #36153#29992#21517#31216
        Width = 170
      end
      item
        Alignment = taLeftJustify
        EditButtons = <>
        FieldName = 'fysl'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #25968#37327
        Width = 25
      end
      item
        EditButtons = <>
        FieldName = 'dw'
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #21333#20301
        Width = 35
      end
      item
        DisplayFormat = '#0.00'
        EditButtons = <>
        FieldName = 'sfbz'
        Footer.Value = #24635#35745#65306
        Footer.ValueType = fvtStaticText
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #21333#20215
        Width = 60
      end
      item
        DisplayFormat = '#0.00'
        EditButtons = <>
        FieldName = 'fyje'
        Footer.FieldName = 'fyje'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = ' '#37329#39069'   ('#20803')'
        Width = 70
      end
      item
        Checkboxes = True
        EditButtons = <>
        FieldName = 'xz'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #35745#36153#36873#25321
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'sfczyxm'
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #25805#20316#21592
        Width = 50
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 594
    Height = 91
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object lblbrxm: TLabel
      Left = 145
      Top = 11
      Width = 60
      Height = 15
      Caption = #30149#20154#22995#21517
    end
    object lblbch: TLabel
      Left = 284
      Top = 10
      Width = 61
      Height = 15
      Caption = #30149' '#24202' '#21495
    end
    object lblryrq: TLabel
      Left = 425
      Top = 10
      Width = 60
      Height = 15
      Caption = #35745#36153#26085#26399
    end
    object lblzyks: TLabel
      Left = 2
      Top = 42
      Width = 60
      Height = 15
      Caption = #20303#38498#31185#23460
    end
    object lblzgys: TLabel
      Left = 145
      Top = 41
      Width = 60
      Height = 15
      Caption = #20027#31649#21307#29983
    end
    object lblczks: TLabel
      Left = 285
      Top = 40
      Width = 60
      Height = 15
      Caption = #22788#32622#31185#23460
    end
    object lblczry: TLabel
      Left = 425
      Top = 40
      Width = 60
      Height = 15
      Caption = #22788#32622#20154#21592
    end
    object lblkh: TLabel
      Left = 2
      Top = 12
      Width = 64
      Height = 16
      Caption = #21345'    '#21495
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl_JiFeiXianE: TLabel
      Left = 3
      Top = 68
      Width = 60
      Height = 15
      Caption = #35745#36153#38480#39069
    end
    object tmh: TEdit
      Left = 65
      Top = 8
      Width = 80
      Height = 23
      Hint = #30149#20154#22995#21517#12289#20303#38498#21345#21495#12289#30149#24202#21495
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnEnter = tmhEnter
      OnExit = tmhExit
      OnKeyDown = tmhKeyDown
    end
    object ebch: TEdit
      Left = 345
      Top = 7
      Width = 80
      Height = 23
      TabStop = False
      ReadOnly = True
      TabOrder = 1
      OnEnter = fylbEnter
    end
    object eRYRQ: TEdit
      Left = 486
      Top = 7
      Width = 90
      Height = 23
      TabOrder = 2
      Visible = False
      OnEnter = fylbEnter
    end
    object e_kdks: TEdit
      Tag = 1
      Left = 65
      Top = 37
      Width = 80
      Height = 23
      ReadOnly = True
      TabOrder = 3
    end
    object e_kdys: TEdit
      Tag = 2
      Left = 205
      Top = 38
      Width = 80
      Height = 23
      ReadOnly = True
      TabOrder = 4
    end
    object e_czks: TEdit
      Tag = 3
      Left = 345
      Top = 37
      Width = 80
      Height = 23
      TabStop = False
      ReadOnly = True
      TabOrder = 5
    end
    object e_czys: TEdit
      Tag = 4
      Left = 486
      Top = 36
      Width = 90
      Height = 23
      ReadOnly = True
      TabOrder = 6
    end
    object ebrxm: TEdit
      Left = 205
      Top = 9
      Width = 80
      Height = 23
      TabStop = False
      ReadOnly = True
      TabOrder = 7
      OnEnter = fylbEnter
    end
    object JiFeiXianE: TEdit
      Tag = 1
      Left = 65
      Top = 62
      Width = 80
      Height = 23
      ReadOnly = True
      TabOrder = 8
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 775
    Width = 594
    Height = 25
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 3
    object btnSave: TBitBtn
      Left = 204
      Top = 0
      Width = 85
      Height = 25
      Caption = #20445#23384
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnSaveClick
    end
    object btnClose: TBitBtn
      Left = 390
      Top = 0
      Width = 85
      Height = 25
      Caption = #32467#26463
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnCloseClick
    end
    object btnGiveup: TBitBtn
      Left = 295
      Top = 0
      Width = 85
      Height = 25
      Caption = #25918#24323
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnGiveupClick
    end
    object btnCharge: TButton
      Left = 114
      Top = 0
      Width = 75
      Height = 25
      Caption = #35745#36153
      Enabled = False
      TabOrder = 3
      OnClick = btnChargeClick
    end
  end
  object FeeItems: TDBGridEh
    Left = 21
    Top = 144
    Width = 516
    Height = 282
    DataGrouping.GroupLevels = <>
    DataSource = ds_cx_sfxm
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    RowDetailPanel.Color = clBtnFace
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    TitleLines = 2
    UseMultiTitle = True
    Visible = False
    OnDblClick = FeeItemsDblClick
    OnKeyDown = FeeItemsKeyDown
    Columns = <
      item
        EditButtons = <>
        FieldName = 'szdm'
        Footers = <>
        Title.Caption = #26631#20934#30721
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'fydm'
        Footers = <>
        Title.Caption = #36153#29992#20195#30721
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'fymc'
        Footers = <>
        Title.Caption = #36153#29992#21517#31216
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'pym'
        Footers = <>
        Title.Caption = #36755#20837#31616#20889
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'dw'
        Footers = <>
        Title.Caption = #21333#20301
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'sfbz'
        Footers = <>
        Title.Caption = #25910#36153#26631#20934
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'bxbl'
        Footers = <>
        Title.Caption = #31038#20445#25253#38144#27604#20363
        Width = 50
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object bqjf_jfrq: TDateTimePicker
    Left = 488
    Top = 7
    Width = 104
    Height = 23
    Date = 41764.623332025460000000
    Time = 41764.623332025460000000
    TabOrder = 1
    OnChange = bqjf_jfrqChange
  end
  object sp_cx_zybrjbqk: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'bqgl_cx_zybrjbqk;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 9
        Value = Null
      end
      item
        Name = '@xm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@bch'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 300
    Top = 387
  end
  object ds_bqjf: TDataSource
    AutoEdit = False
    DataSet = adCharges
    Left = 334
    Top = 387
  end
  object ds_zybrjbqk: TDataSource
    DataSet = sp_cx_zybrjbqk
    Left = 300
    Top = 455
  end
  object ad_sfxm: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 'select * from sys_kjsfxm'
    FieldDefs = <
      item
        Name = 'fydm'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 4
      end
      item
        Name = 'dldm'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 10
      end
      item
        Name = 'fymc'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'pym'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'typym'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'hotkey'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 1
      end
      item
        Name = 'szdm'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 14
      end
      item
        Name = 'dymc'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 100
      end
      item
        Name = 'dw'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 12
      end
      item
        Name = 'sfbz'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 10
        Size = 2
      end
      item
        Name = 'sbfybl'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 7
        Size = 4
      end
      item
        Name = 'htfybl'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'bxfybl'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'jkyhfybl'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'ykyhfybl'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'ptkyhfybl'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'kdksfpbl'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'kdysfpbl'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'mzfy'
        Attributes = [faFixed]
        DataType = ftBoolean
      end
      item
        Name = 'zyfy'
        Attributes = [faFixed]
        DataType = ftBoolean
      end
      item
        Name = 'qybz'
        Attributes = [faFixed]
        DataType = ftBoolean
      end
      item
        Name = 'ksgs'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 4
      end
      item
        Name = 'zyksgs'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 4
      end
      item
        Name = 'pbbz'
        Attributes = [faFixed]
        DataType = ftBoolean
      end
      item
        Name = 'ghzl'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 2
      end
      item
        Name = 'bak'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'zybh'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 10
      end
      item
        Name = 'zdsf'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 4
      end
      item
        Name = 'qqkyhfybl'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'yfzdmc'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ybbz'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'cflb'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 8
      end
      item
        Name = 'sbfybl01'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'sbfybl02'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'sbfybl03'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'sbfybl04'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'sbfybl05'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'sbfybl06'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'sbfybl07'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'sbfybl08'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'sbfybl09'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'sbfybl10'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'sbfybl11'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'sbfybl12'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'sbfybl13'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'xzbz'
        Attributes = [faFixed]
        DataType = ftBoolean
      end>
    Parameters = <>
    StoreDefs = True
    Left = 198
    Top = 387
  end
  object ds_sfxm: TDataSource
    DataSet = ad_sfxm
    Left = 368
    Top = 387
  end
  object ad_zycfzb: TADODataSet
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 198
    Top = 455
  end
  object sp_cx_syje: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'bqgl_cx_zyfy;1'
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
      end>
    Left = 266
    Top = 455
  end
  object spWriteToBill: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'bqgl_up_brfymx_jy;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ph'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
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
        Name = '@fyze'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 12
        Value = Null
      end
      item
        Name = '@zkje'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 12
        Value = Null
      end
      item
        Name = '@zfje'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 12
        Value = Null
      end
      item
        Name = '@qtfybs'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 1
        Value = Null
      end>
    Left = 300
    Top = 421
  end
  object sp_cx_czyks: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'bqgl_cx_czyks;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@srm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@czfs'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@kssx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end>
    Left = 232
    Top = 455
  end
  object ds_ysks: TDataSource
    DataSet = sp_cx_czyks
    Left = 334
    Top = 455
  end
  object ds_cx_sfxm: TDataSource
    DataSet = spFeeItems
    Left = 334
    Top = 421
  end
  object spFeeItems: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'bqgl_cx_kjsfxm;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@fydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = #39#39
      end
      item
        Name = '@fymc'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = #39#39
      end
      item
        Name = '@pym'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = #39#39
      end
      item
        Name = '@bqdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 6
        Value = #39'0001'#39
      end>
    Left = 266
    Top = 387
  end
  object adCharges: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = adChargesAfterInsert
    AfterDelete = adChargesAfterDelete
    CommandText = 'select * from zysf_zyfymx_lsjy order by id'
    FieldDefs = <
      item
        Name = 'id'
        Attributes = [faReadonly, faFixed]
        DataType = ftAutoInc
      end
      item
        Name = 'tmh'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 9
      end
      item
        Name = 'zyh'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 16
      end
      item
        Name = 'ph'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 16
      end
      item
        Name = 'kdks'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 4
      end
      item
        Name = 'czks'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 4
      end
      item
        Name = 'kdys'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 4
      end
      item
        Name = 'czys'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 4
      end
      item
        Name = 'fydm'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'fysl'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'fyje'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'zkje'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ssje'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'zfje'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'sfczy'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 4
      end
      item
        Name = 'sfrq'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'sjbh'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 16
      end
      item
        Name = 'cfbh'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 12
      end
      item
        Name = 'tfbz'
        Attributes = [faFixed]
        DataType = ftBoolean
      end
      item
        Name = 'tfczy'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 4
      end
      item
        Name = 'tfrq'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'jzbz'
        Attributes = [faFixed]
        DataType = ftBoolean
      end
      item
        Name = 'jsbz'
        Attributes = [faFixed]
        DataType = ftBoolean
      end
      item
        Name = 'jsdh'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 16
      end
      item
        Name = 'bz'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 4
      end
      item
        Name = 'xz'
        Attributes = [faFixed]
        DataType = ftBoolean
      end
      item
        Name = 'yjf'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 4
      end
      item
        Name = 'yzsx'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 4
      end
      item
        Name = 'bakrq'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'xh'
        Attributes = [faFixed]
        DataType = ftInteger
      end>
    Parameters = <>
    StoreDefs = True
    Left = 198
    Top = 421
    object adChargesid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object adChargestmh: TStringField
      FieldName = 'tmh'
      FixedChar = True
      Size = 9
    end
    object adChargeszyh: TStringField
      FieldName = 'zyh'
      FixedChar = True
      Size = 16
    end
    object adChargeskdks: TStringField
      FieldName = 'kdks'
      FixedChar = True
      Size = 4
    end
    object adChargesczks: TStringField
      FieldName = 'czks'
      FixedChar = True
      Size = 4
    end
    object adChargeskdys: TStringField
      FieldName = 'kdys'
      FixedChar = True
      Size = 4
    end
    object adChargesczys: TStringField
      FieldName = 'czys'
      FixedChar = True
      Size = 4
    end
    object adChargesfydm: TStringField
      DisplayWidth = 4
      FieldName = 'fydm'
      FixedChar = True
    end
    object adChargesfysl: TIntegerField
      FieldName = 'fysl'
    end
    object adChargesfyje: TBCDField
      DisplayWidth = 19
      FieldName = 'fyje'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object adChargeszkje: TBCDField
      FieldName = 'zkje'
      Precision = 18
      Size = 2
    end
    object adChargesssje: TBCDField
      FieldName = 'ssje'
      Precision = 18
      Size = 2
    end
    object adChargeszfje: TBCDField
      FieldName = 'zfje'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object adChargessfczy: TStringField
      FieldName = 'sfczy'
      FixedChar = True
      Size = 4
    end
    object adChargessfrq: TDateTimeField
      FieldName = 'sfrq'
    end
    object adChargessjbh: TStringField
      FieldName = 'sjbh'
      FixedChar = True
      Size = 16
    end
    object adChargescfbh: TStringField
      FieldName = 'cfbh'
      FixedChar = True
      Size = 12
    end
    object adChargestfbz: TBooleanField
      FieldName = 'tfbz'
    end
    object adChargestfczy: TStringField
      FieldName = 'tfczy'
      FixedChar = True
      Size = 4
    end
    object adChargestfrq: TDateTimeField
      FieldName = 'tfrq'
    end
    object adChargesjzbz: TBooleanField
      FieldName = 'jzbz'
    end
    object adChargesjsbz: TBooleanField
      FieldName = 'jsbz'
    end
    object adChargesjsdh: TStringField
      FieldName = 'jsdh'
      FixedChar = True
      Size = 16
    end
    object adChargesbz: TStringField
      FieldName = 'bz'
      FixedChar = True
      Size = 4
    end
    object adChargesfydmmc: TStringField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'fydmmc'
      LookupDataSet = ad_sfxm
      LookupKeyFields = 'fydm'
      LookupResultField = 'fymc'
      KeyFields = 'fydm'
      Lookup = True
    end
    object adChargesph: TStringField
      FieldName = 'ph'
      FixedChar = True
      Size = 16
    end
    object adChargessbfybl: TFloatField
      FieldKind = fkLookup
      FieldName = 'sbfybl'
      LookupDataSet = ad_sfxm
      LookupKeyFields = 'fydm'
      LookupResultField = 'sbfybl'
      KeyFields = 'fydm'
      Lookup = True
    end
    object adChargesbxfybl: TFloatField
      FieldKind = fkLookup
      FieldName = 'bxfybl'
      LookupDataSet = ad_sfxm
      LookupKeyFields = 'fydm'
      LookupResultField = 'bxfybl'
      KeyFields = 'fydm'
      Lookup = True
    end
    object adChargeshtfybl: TFloatField
      FieldKind = fkLookup
      FieldName = 'htfybl'
      LookupDataSet = ad_sfxm
      LookupKeyFields = 'fydm'
      LookupResultField = 'htfybl'
      KeyFields = 'fydm'
      Lookup = True
    end
    object adChargessbfybl01: TFloatField
      FieldKind = fkLookup
      FieldName = 'sbfybl01'
      LookupDataSet = ad_sfxm
      LookupKeyFields = 'fydm'
      LookupResultField = 'sbfybl01'
      KeyFields = 'fydm'
      Lookup = True
    end
    object adChargessbfybl02: TFloatField
      FieldKind = fkLookup
      FieldName = 'sbfybl02'
      LookupDataSet = ad_sfxm
      LookupKeyFields = 'fydm'
      LookupResultField = 'sbfybl02'
      KeyFields = 'fydm'
      Lookup = True
    end
    object adChargessfczyxm: TStringField
      FieldKind = fkLookup
      FieldName = 'sfczyxm'
      LookupDataSet = ad_czy
      LookupKeyFields = 'dm'
      LookupResultField = 'mc'
      KeyFields = 'sfczy'
      Lookup = True
    end
    object adChargesdw: TStringField
      FieldKind = fkLookup
      FieldName = 'dw'
      LookupDataSet = ad_sfxm
      LookupKeyFields = 'fydm'
      LookupResultField = 'dw'
      KeyFields = 'fydm'
      Lookup = True
    end
    object adChargessfbz: TFloatField
      FieldKind = fkLookup
      FieldName = 'sfbz'
      LookupDataSet = ad_sfxm
      LookupKeyFields = 'fydm'
      LookupResultField = 'sfbz'
      KeyFields = 'fydm'
      Lookup = True
    end
    object adChargesyzsx: TStringField
      FieldName = 'yzsx'
      FixedChar = True
      Size = 4
    end
    object adChargesyjf: TStringField
      FieldName = 'yjf'
      FixedChar = True
      Size = 4
    end
    object adChargesxz: TBooleanField
      FieldName = 'xz'
    end
    object adChargesbakrq: TDateTimeField
      FieldName = 'bakrq'
    end
    object adChargesxh: TIntegerField
      FieldName = 'xh'
    end
  end
  object ad_czy: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 'select dm, mc from sys_czy'
    Parameters = <>
    Left = 232
    Top = 387
  end
  object sp_refresh_zyfymx_ls: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'bqgl_refresh_zyfymx_lsjy;1'
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
        Name = '@bakrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 266
    Top = 421
  end
  object qry_date: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      
        'select cast (convert(varchar(10),getdate(),120) as date) curr_da' +
        'te')
    Left = 232
    Top = 421
  end
  object QryPub: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 368
    Top = 424
  end
end
