object frm_zyyj_dbblsz: Tfrm_zyyj_dbblsz
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #39044#20132#29983#25104#25285#20445#37329#39069'--'#27604#20363#35774#32622
  ClientHeight = 400
  ClientWidth = 595
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object rzsprtrLeft: TRzSeparator
    Left = 0
    Top = 15
    Width = 15
    Height = 370
    HighlightLocation = hlLowerRight
    Orientation = orVertical
    ShowGradient = True
    Align = alLeft
    Color = clBtnFace
    ExplicitTop = -80
    ExplicitHeight = 580
  end
  object rzsprtrTop: TRzSeparator
    Left = 0
    Top = 0
    Width = 595
    Height = 15
    HighlightLocation = hlLowerRight
    ShowGradient = True
    Align = alTop
    Color = clBtnFace
    ExplicitLeft = -196
    ExplicitWidth = 796
  end
  object rzsprtrButtom: TRzSeparator
    Left = 0
    Top = 385
    Width = 595
    Height = 15
    HighlightLocation = hlUpperLeft
    ShowGradient = True
    Align = alBottom
    Color = clBtnFace
    ExplicitLeft = -196
    ExplicitTop = 485
    ExplicitWidth = 796
  end
  object rzsprtrRight: TRzSeparator
    Left = 580
    Top = 15
    Width = 15
    Height = 370
    HighlightLocation = hlUpperLeft
    Orientation = orVertical
    ShowGradient = True
    Align = alRight
    Color = clBtnFace
    ExplicitLeft = 585
    ExplicitTop = -80
    ExplicitHeight = 580
  end
  object pnl1: TRzPanel
    Left = 15
    Top = 15
    Width = 565
    Height = 370
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 288
    ExplicitTop = 168
    ExplicitWidth = 185
    ExplicitHeight = 41
    object rzsprtr1: TRzSeparator
      Left = 361
      Top = 2
      Width = 23
      Height = 366
      ShowGradient = True
      Align = alClient
      Color = clBtnFace
      ExplicitWidth = 24
    end
    object pnl2: TRzPanel
      Left = 384
      Top = 2
      Width = 179
      Height = 366
      Align = alRight
      BorderOuter = fsLowered
      TabOrder = 0
      object btnSave: TRzButton
        Left = 92
        Top = 276
        Width = 80
        Height = 40
        Caption = #36864' '#20986
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        HotTrack = True
        LightTextStyle = True
        ParentFont = False
        TabOrder = 0
        OnClick = btnSaveClick
      end
      object RzGroupBox1: TRzGroupBox
        Left = 2
        Top = 33
        Width = 175
        Height = 213
        TabOrder = 1
        object lblDM: TRzLabel
          Left = 11
          Top = 19
          Width = 76
          Height = 19
          Caption = #31867#21035#32534#30721
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object lblmc: TRzLabel
          Left = 11
          Top = 83
          Width = 76
          Height = 19
          Caption = #31867#21035#21517#31216
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object lblBL: TRzLabel
          Left = 11
          Top = 149
          Width = 152
          Height = 19
          Caption = #39044#20132#29983#25104#25285#20445#27604#20363
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object edtSCBL: TRzEdit
          Left = 8
          Top = 171
          Width = 158
          Height = 27
          Hint = 
            #31867#21035#32534#30721'     '#31867#21035#21517#31216'    '#29983#25104#25285#20445#27604#20363#13#10'------------    -------------    ------' +
            '------------'#13#10'    02             '#21512#20316#21307#30103'          0.5'#13#10'============' +
            '==================='#13#10#20363#22914#65306' '#13#10#13#10'    '#19968#20010' '#21512#20316#21307#30103' '#30149#20154#39044#20132' 1000'#13#10#13#10'    '#21017#33258#21160#29983#25104#25285 +
            #20445' 1000*0.5 = 500  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object edtMC: TRzEdit
          Left = 8
          Top = 102
          Width = 158
          Height = 30
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 1
        end
        object edtDM: TRzEdit
          Left = 8
          Top = 38
          Width = 158
          Height = 30
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 0
        end
      end
      object btnClose: TRzButton
        Left = 6
        Top = 276
        Width = 80
        Height = 40
        Caption = #20445' '#23384
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        HotTrack = True
        LightTextStyle = True
        ParentFont = False
        TabOrder = 2
        OnClick = btnCloseClick
      end
    end
    object pnlRecords: TRzPanel
      Left = 2
      Top = 2
      Width = 359
      Height = 366
      Align = alLeft
      BorderOuter = fsLowered
      TabOrder = 1
      object cxGrid1: TcxGrid
        Left = 2
        Top = 2
        Width = 355
        Height = 362
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 367
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCellClick = cxGrid1DBTableView1CellClick
          DataController.DataSource = ds_fylb
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.ColumnSorting = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.DataRowHeight = 25
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 40
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 20
          Styles.Background = Frm_func.background
          Styles.ContentEven = Frm_func.EvenLine
          Styles.ContentOdd = Frm_func.OddLine
          Styles.Header = Frm_func.HeaderColor
          object cxGrid1DBTableView1dm: TcxGridDBColumn
            Caption = #31867#21035#32534#30721
            DataBinding.FieldName = 'dm'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
          object cxGrid1DBTableView1mc: TcxGridDBColumn
            Caption = #31867#21035#21517#31216
            DataBinding.FieldName = 'mc'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 150
          end
          object cxGrid1DBTableView1zyyjdbbl: TcxGridDBColumn
            Caption = #39044#20132#29983#25104#25285#20445#27604#20363
            DataBinding.FieldName = 'zyyjdbbl'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.DisplayFormat = '0.00'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    object cxStyle1: TcxStyle
    end
  end
  object ds_fylb: TDataSource
    DataSet = ad_fylb
    Left = 256
    Top = 272
  end
  object ad_fylb: TADODataSet
    Active = True
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 'SELECT dm,RTRIM(mc) mc,zyyjdbbl FROM sys_fylb'
    Parameters = <>
    Left = 216
    Top = 272
  end
end
