object frm_yhhkfycx: Tfrm_yhhkfycx
  Left = 0
  Top = 0
  Caption = #38134#34892#21047#21345#26126#32454#26597#35810
  ClientHeight = 516
  ClientWidth = 1058
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1058
    Height = 76
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 6
      Top = -1
      Width = 595
      Height = 76
      Caption = #26465#20214
      TabOrder = 0
      object Label2: TLabel
        Left = 254
        Top = 23
        Width = 68
        Height = 15
        Caption = #32467#26463#26085#26399':'
        Color = clBtnFace
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label4: TLabel
        Left = 254
        Top = 50
        Width = 70
        Height = 15
        Caption = #22995'    '#21517':'
        Color = clBtnFace
        FocusControl = edit2
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label1: TLabel
        Left = 7
        Top = 23
        Width = 68
        Height = 15
        Caption = #24320#22987#26085#26399':'
        Color = clBtnFace
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label5: TLabel
        Left = 7
        Top = 51
        Width = 69
        Height = 15
        Caption = #25910' '#25454' '#21495':'
        Color = clBtnFace
        FocusControl = Edit1
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object CheckBox1: TCheckBox
        Left = 503
        Top = 26
        Width = 86
        Height = 17
        Caption = #26816#32034#22791#20221
        TabOrder = 2
        Visible = False
      end
      object edit2: TEdit
        Left = 335
        Top = 46
        Width = 162
        Height = 27
        ImeMode = imOpen
        ImeName = #29579#30721#20116#31508#22411
        TabOrder = 4
      end
      object DateTimePicker2: TDateTimePicker
        Left = 335
        Top = 17
        Width = 162
        Height = 27
        Date = 36867.746220104170000000
        Time = 36867.746220104170000000
        ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
        TabOrder = 1
      end
      object Edit1: TEdit
        Left = 85
        Top = 46
        Width = 163
        Height = 27
        ImeMode = imAlpha
        ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
        TabOrder = 3
      end
      object DateTimePicker1: TDateTimePicker
        Left = 85
        Top = 17
        Width = 163
        Height = 27
        Date = 36867.745792511560000000
        Time = 36867.745792511560000000
        ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
        TabOrder = 0
      end
    end
    object Btn_Seek: TButton
      Left = 606
      Top = 11
      Width = 76
      Height = 29
      Caption = #26597#35810'(&C)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Btn_SeekClick
    end
    object Btn_exit: TButton
      Left = 694
      Top = 42
      Width = 76
      Height = 29
      Caption = #36864#20986'(&Q)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Btn_exitClick
    end
    object BitBtn1: TBitBtn
      Left = 694
      Top = 11
      Width = 75
      Height = 29
      Caption = #23548#20986'...'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object Button1: TButton
      Left = 880
      Top = 10
      Width = 76
      Height = 25
      Caption = #20313#39069#26597#35810
      TabOrder = 1
      Visible = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 607
      Top = 46
      Width = 76
      Height = 25
      Caption = #32467#36134
      TabOrder = 5
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 881
      Top = 41
      Width = 75
      Height = 25
      Caption = #27969#27700#21495#26597#35810
      TabOrder = 6
      Visible = False
      OnClick = Button3Click
    end
  end
  object dbgrid1: TcxGrid
    Left = 0
    Top = 76
    Width = 1058
    Height = 440
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    LookAndFeel.Kind = lfStandard
    object dbgrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_fymx
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #21512#35745': 0'
          Kind = skCount
          FieldName = 'xm'
          Column = dbgrid1DBTableView1brxm
        end
        item
          Format = '#,###0.00'
          Kind = skSum
          FieldName = 'zfy'
          Column = dbgrid1DBTableView1sszje
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideSelection = True
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsSelection.CellMultiSelect = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object dbgrid1DBTableView1sfczymc: TcxGridDBColumn
        Caption = #25910#36153#25805#20316#21592
        DataBinding.FieldName = 'sfczymc'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 111
      end
      object dbgrid1DBTableView1tmh: TcxGridDBColumn
        Caption = #26465#30721#21495
        DataBinding.FieldName = 'tmh'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 103
      end
      object dbgrid1DBTableView1brxm: TcxGridDBColumn
        Caption = #30149#20154#22995#21517
        DataBinding.FieldName = 'xm'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 96
      end
      object dbgrid1DBTableView1sszje: TcxGridDBColumn
        Caption = #36153#29992#37329#39069
        DataBinding.FieldName = 'zfy'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,###0.00'
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taCenter
        Width = 103
      end
      object dbgrid1DBTableView1sfrq: TcxGridDBColumn
        Caption = #25910#36153#26085#26399
        DataBinding.FieldName = 'sfsj'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 130
      end
      object dbgrid1DBTableView1sjbh: TcxGridDBColumn
        Caption = #25910#25454#32534#21495
        DataBinding.FieldName = 'sjh'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 108
      end
      object dbgrid1DBTableView1lbmc: TcxGridDBColumn
        Caption = #31867#21035#21517#31216
        DataBinding.FieldName = 'fylb'
        HeaderAlignmentHorz = taCenter
        Width = 95
      end
      object dbgrid1DBTableView1zdbh: TcxGridDBColumn
        Caption = #38134#34892#31867#21035
        DataBinding.FieldName = 'yhlb'
        HeaderAlignmentHorz = taCenter
        Width = 87
      end
      object dbgrid1DBTableView1kh: TcxGridDBColumn
        Caption = #38134#34892#21345#21495
        DataBinding.FieldName = 'kh'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 180
      end
      object dbgrid1DBTableView1sfph: TcxGridDBColumn
        Caption = #25910#36153#25209#21495
        DataBinding.FieldName = 'sfph'
        HeaderAlignmentHorz = taCenter
        Width = 141
      end
      object dbgrid1DBTableView1lsh: TcxGridDBColumn
        Caption = #20132#26131#27969#27700#21495
        DataBinding.FieldName = 'Lsh'
        HeaderAlignmentHorz = taCenter
        Width = 103
      end
      object dbgrid1DBTableView1jyckh: TcxGridDBColumn
        Caption = #21442#32771#21495
        DataBinding.FieldName = 'jyckh'
        Width = 126
      end
    end
    object dbgrid1Level1: TcxGridLevel
      GridView = dbgrid1DBTableView1
    end
  end
  object QuickRep3: TQuickRep
    Left = 418
    Top = 2000
    Width = 287
    Height = 418
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Description.Strings = (
      'sdasdfds'
      'sadfsf'
      'sadfsdf'
      'sdafsdf'
      'safsf')
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRSTRINGSBAND1'
      'QRLOOPBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      #39#39
      '0')
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      10.000000000000000000
      1105.958333333333000000
      10.000000000000000000
      759.354166666666700000
      80.000000000000000000
      60.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    ShowProgress = False
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    object QRBand1: TQRBand
      Left = 30
      Top = 4
      Width = 234
      Height = 389
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1029.229166666667000000
        619.125000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel1: TQRLabel
        Left = 31
        Top = 13
        Width = 176
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          82.020833333333330000
          34.395833333333330000
          465.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20013#22269#24314#34892'POS'#31614#36141#21333'('#34917#25171')'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRLabel2: TQRLabel
        Left = 10
        Top = 44
        Width = 159
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          26.458333333333330000
          116.416666666666700000
          420.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21830#25143#21517#31216':'#36930#23425#24066#20013#21307#38498
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object shbh: TQRLabel
        Left = 10
        Top = 70
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          26.458333333333330000
          185.208333333333300000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21830#25143#32534#21495':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object zdbh: TQRLabel
        Left = 10
        Top = 97
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          26.458333333333330000
          256.645833333333300000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32456#31471#32534#21495':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object czyh: TQRLabel
        Left = 10
        Top = 124
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          26.458333333333330000
          328.083333333333300000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25805#20316#21592#21495':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object jyrq: TQRLabel
        Left = 10
        Top = 154
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          26.458333333333330000
          407.458333333333300000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20132#26131#26085#26399':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object shls: TQRLabel
        Left = 10
        Top = 183
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          26.458333333333330000
          484.187500000000000000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21830#25143#27969#27700':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRLabel3: TQRLabel
        Left = 10
        Top = 211
        Width = 114
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          26.458333333333330000
          558.270833333333300000
          301.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36135#24065#21517#31216':'#20154#27665#24065
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object jyje: TQRLabel
        Left = 10
        Top = 241
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          26.458333333333330000
          637.645833333333300000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20132#26131#37329#39069':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRLabel4: TQRLabel
        Left = 10
        Top = 271
        Width = 151
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          26.458333333333330000
          717.020833333333300000
          399.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26412#20154#21516#24847#25903#20184#19978#36848#27454#39033
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRLabel5: TQRLabel
        Left = 10
        Top = 301
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          26.458333333333330000
          796.395833333333300000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25345#21345#20154#31614#21517':'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRLabel6: TQRLabel
        Left = 10
        Top = 330
        Width = 217
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          26.458333333333330000
          873.125000000000000000
          574.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '_ _ _ _ _ _ _ _ _ _ _ _ _ _'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
    end
  end
  object ds_fymx: TDataSource
    DataSet = sp_fymx
    Left = 408
    Top = 208
  end
  object sp_fymx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'bkjk_cx_mxcx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = -6
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
        Name = '@sjbh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 9
        Value = Null
      end
      item
        Name = '@kwd'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 360
    Top = 208
  end
  object PopupMenu1: TPopupMenu
    Left = 496
    Top = 208
    object N1: TMenuItem
      Caption = #27969#27700#21333#37325#25171
      OnClick = N1Click
    end
    object POS1: TMenuItem
      Caption = 'POS'#36864#36153
      OnClick = POS1Click
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 768
    Top = 152
  end
  object sp_postf: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'bkjk_cx_postf;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@sfph'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
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
    Left = 168
    Top = 192
  end
end
