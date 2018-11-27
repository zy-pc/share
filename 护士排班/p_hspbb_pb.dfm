object frm_hspbb_pb: Tfrm_hspbb_pb
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frm_hspbb_pb'
  ClientHeight = 812
  ClientWidth = 1319
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 1319
    Height = 812
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 537
      Width = 1317
      Height = 308
      Align = alTop
      TabOrder = 0
      object GroupBox2: TGroupBox
        Left = 769
        Top = 1
        Width = 547
        Height = 306
        Align = alClient
        Caption = #32452#21512#25490#29677
        TabOrder = 0
        object DBGridEh2: TDBGridEh
          Left = 2
          Top = 15
          Width = 543
          Height = 202
          Align = alTop
          DataGrouping.GroupLevels = <>
          DataSource = ds_bczh1
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'Tahoma'
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          RowDetailPanel.Color = clBtnFace
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBGridEh2CellClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'sfqy'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #21551#29992
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'zhmc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #32452#21512#21517#31216
              Width = 90
            end
            item
              EditButtons = <>
              FieldName = '1'
              Footers = <>
              Title.Alignment = taCenter
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = '2'
              Footers = <>
              Title.Alignment = taCenter
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = '3'
              Footers = <>
              Title.Alignment = taCenter
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = '4'
              Footers = <>
              Title.Alignment = taCenter
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = '5'
              Footers = <>
              Title.Alignment = taCenter
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = '6'
              Footers = <>
              Title.Alignment = taCenter
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = '7'
              Footers = <>
              Title.Alignment = taCenter
              Width = 40
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 768
        Height = 306
        Align = alLeft
        TabOrder = 1
        object GroupBox3: TGroupBox
          Left = 1
          Top = 142
          Width = 766
          Height = 163
          Align = alClient
          Caption = #31185#23398#35843#37197#20154#21592#35760#24405
          TabOrder = 0
          object DBGridEh1: TDBGridEh
            Left = 2
            Top = 15
            Width = 762
            Height = 154
            Align = alTop
            DataGrouping.GroupLevels = <>
            DataSource = ds_hbjl
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Tahoma'
            FooterFont.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'hbr'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #25442#29677#20154#21592
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'ybc'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #21407#29677#27425
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'xbc'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #29616#29677#27425
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'hbsj'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #25442#29677#26102#38388
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'hbyy'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #25442#29677#21407#22240
                Width = 300
              end
              item
                EditButtons = <>
                FieldName = 'czr'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #25805#20316#21592
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'czsj'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #22788#32622#26102#38388
                Width = 60
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object PageControl1: TPageControl
          Left = 1
          Top = 1
          Width = 766
          Height = 141
          ActivePage = TabSheet2
          Align = alTop
          TabOrder = 1
          object TabSheet1: TTabSheet
            Caption = #20840#31185#30041#35328
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 85
            object hsly: TMemo
              Left = 0
              Top = 0
              Width = 758
              Height = 113
              Align = alClient
              ReadOnly = True
              TabOrder = 0
              ExplicitLeft = -193
              ExplicitTop = -1
              ExplicitWidth = 762
              ExplicitHeight = 111
            end
          end
          object TabSheet2: TTabSheet
            Caption = #26412#20154#30041#35328
            ImageIndex = 1
            object Memo1: TMemo
              Left = 0
              Top = 0
              Width = 758
              Height = 113
              Align = alClient
              PopupMenu = PopupMenu2
              TabOrder = 0
            end
          end
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 1317
      Height = 536
      Align = alTop
      Caption = 'Panel4'
      TabOrder = 1
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 1064
        Height = 534
        Align = alLeft
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = PopupMenu1
          NavigatorButtons.ConfirmDelete = False
          OnCellClick = cxGrid1DBBandedTableView1CellClick
          OnCellDblClick = cxGrid1DBBandedTableView1CellDblClick
          OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
          DataController.DataSource = ds_hspbb_pb
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsData.Deleting = False
          OptionsView.DataRowHeight = 30
          OptionsView.GroupByBox = False
          Bands = <
            item
              Caption = #22995#21517
            end
            item
              Caption = #26143#26399#19968
            end
            item
              Caption = #26143#26399#20108
            end
            item
              Caption = #26143#26399#19977
            end
            item
              Caption = #26143#26399#22235
            end
            item
              Caption = #26143#26399#20116
            end
            item
              Caption = #26143#26399#20845
            end
            item
              Caption = #26143#26399#22825
            end>
          object cxGrid1DBBandedTableView1Column16: TcxGridDBBandedColumn
            Caption = #22995#21517
            DataBinding.FieldName = 'mc'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.CellMerging = True
            Width = 65
            OnCompareRowValuesForCellMerging = cxGrid1DBBandedTableView1Column16CompareRowValuesForCellMerging
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn
            Caption = #32452#21512#21517#31216
            DataBinding.FieldName = 'zhmc'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.CellMerging = True
            Width = 65
            OnCompareRowValuesForCellMerging = cxGrid1DBBandedTableView1Column1CompareRowValuesForCellMerging
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn
            Caption = #29677#27425
            DataBinding.FieldName = 'monday_bc'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 75
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column3: TcxGridDBBandedColumn
            Caption = #20998#31649#24202#20301
            DataBinding.FieldName = 'monday_cw'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 50
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column4: TcxGridDBBandedColumn
            Caption = #29677#27425
            DataBinding.FieldName = 'Tuesday_bc'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 75
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column5: TcxGridDBBandedColumn
            Caption = #20998#31649#24202#20301
            DataBinding.FieldName = 'Tuesday_cw'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 50
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column6: TcxGridDBBandedColumn
            Caption = #29677#27425
            DataBinding.FieldName = 'wednesday_bc'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 75
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column7: TcxGridDBBandedColumn
            Caption = #20998#31649#24202#20301
            DataBinding.FieldName = 'wednesday_cw'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 50
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column8: TcxGridDBBandedColumn
            Caption = #29677#27425
            DataBinding.FieldName = 'thursday_bc'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 75
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column9: TcxGridDBBandedColumn
            Caption = #20998#31649#24202#20301
            DataBinding.FieldName = 'thursday_cw'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 50
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column10: TcxGridDBBandedColumn
            Caption = #29677#27425
            DataBinding.FieldName = 'friday_bc'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 75
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column11: TcxGridDBBandedColumn
            Caption = #20998#31649#24202#20301
            DataBinding.FieldName = 'friday_cw'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 50
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column12: TcxGridDBBandedColumn
            Caption = #29677#27425
            DataBinding.FieldName = 'Saturday_bc'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 75
            Position.BandIndex = 6
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column13: TcxGridDBBandedColumn
            Caption = #20998#31649#24202#20301
            DataBinding.FieldName = 'Saturday_cw'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 50
            Position.BandIndex = 6
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column14: TcxGridDBBandedColumn
            Caption = #29677#27425
            DataBinding.FieldName = 'Sunday_bc'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 75
            Position.BandIndex = 7
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column15: TcxGridDBBandedColumn
            Caption = #20998#31649#24202#20301
            DataBinding.FieldName = 'sunday_cw'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 50
            Position.BandIndex = 7
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBBandedTableView1
        end
      end
      object Panel5: TPanel
        Left = 1065
        Top = 1
        Width = 251
        Height = 534
        Align = alClient
        TabOrder = 1
        object GroupBox4: TGroupBox
          Left = 1
          Top = 289
          Width = 249
          Height = 244
          Align = alClient
          Caption = #31185#23460#25552#31034
          TabOrder = 0
          object ksts: TMemo
            Left = 2
            Top = 15
            Width = 245
            Height = 227
            Align = alClient
            Enabled = False
            PopupMenu = PopupMenu3
            TabOrder = 0
          end
        end
        object GroupBox5: TGroupBox
          Left = 1
          Top = 1
          Width = 249
          Height = 288
          Align = alTop
          Caption = #29677#27425#32479#35745
          TabOrder = 1
          object DBGridEh3: TDBGridEh
            Left = 2
            Top = 15
            Width = 245
            Height = 271
            Align = alClient
            DataGrouping.GroupLevels = <>
            DataSource = ds_bctj
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Tahoma'
            FooterFont.Style = []
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'mc'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #22995#21517
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'ban'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #29677#27425
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'cs'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #27425#25968
                Width = 30
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
      object Panel1: TPanel
        Left = 368
        Top = 91
        Width = 300
        Height = 113
        TabOrder = 2
        Visible = False
      end
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 344
    Top = 288
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 11126946
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 13886416
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6592345
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 13886416
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 2178849
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6592345
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 6592345
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6592345
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object GridTableViewStyleSheetSpruce: TcxGridTableViewStyleSheet
      Caption = 'Spruce'
      Styles.Content = cxStyle1
      Styles.ContentEven = cxStyle2
      Styles.ContentOdd = cxStyle3
      Styles.Inactive = cxStyle8
      Styles.Selection = cxStyle11
      Styles.Footer = cxStyle4
      Styles.Group = cxStyle5
      Styles.GroupByBox = cxStyle6
      Styles.Header = cxStyle7
      Styles.Indicator = cxStyle9
      Styles.Preview = cxStyle10
      BuiltIn = True
    end
  end
  object qry_hspbb_bc: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'ksdm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from zybl_hspbb_bc where ksdm=:ksdm and qybz=1 order by' +
        ' xh')
    Left = 32
    Top = 360
  end
  object ds_hspbb_pb: TDataSource
    DataSet = qry_hspbb_pb
    Left = 728
    Top = 448
  end
  object qry_bczh1: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'ksdm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from zybl_hspbb_bczh where ksdm=:ksdm')
    Left = 872
    Top = 600
  end
  object ds_bczh1: TDataSource
    DataSet = qry_bczh1
    Left = 912
    Top = 600
  end
  object ADOQuery1: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'ksdm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from zybl_hspbb_bczh where ksdm=:ksdm and sfqy=1;')
    Left = 928
    Top = 672
  end
  object PopupMenu1: TPopupMenu
    Left = 296
    Top = 144
    object N6: TMenuItem
      Caption = #28155#21152#20154#21592'('#20195#30721')'
      Enabled = False
      OnClick = N6Click
    end
    object N4: TMenuItem
      Caption = #21024#38500#29677#27425
      Enabled = False
      OnClick = N4Click
    end
    object N1: TMenuItem
      Caption = #21152#25490#29677#27425
      Enabled = False
      OnClick = N1Click
    end
    object N5: TMenuItem
      Caption = #21024#38500#27492#34892
      Enabled = False
      OnClick = N5Click
    end
    object N8: TMenuItem
      Caption = #65288#26089#65289
      OnClick = N8Click
    end
    object N9: TMenuItem
      Caption = #65288#36319#65289
      OnClick = N9Click
    end
    object N7: TMenuItem
      Caption = #65288#19968#32447#65289
      OnClick = N7Click
    end
    object N10: TMenuItem
      Caption = #65288#20108#32447#65289
      OnClick = N10Click
    end
  end
  object qry_hbjl: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'ksdm'
        Size = -1
        Value = Null
      end
      item
        Name = 'ksrq'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT * FROM dbo.zybl_hspbb_hbjl where ksdm=:ksdm and hbsj>:ksr' +
        'q')
    Left = 744
    Top = 304
  end
  object ad_hbjl: TADODataSet
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 752
    Top = 368
  end
  object PopupMenu2: TPopupMenu
    Left = 384
    Top = 536
    object N2: TMenuItem
      Caption = #20445#23384#30041#35328
      OnClick = N2Click
    end
  end
  object ad_hsly: TADODataSet
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 488
    Top = 472
  end
  object qry_hspbb_pb: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'rqid'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT c.zhmc,a.zhid ,a.czymc+'#39'   '#39'+b.gw mc,a.* FROM dbo.zybl_hs' +
        'pbb_pb a'
      'LEFT JOIN dbo.zybl_hspbb_czy b ON a.czydm=b.dm'
      'LEFT JOIN dbo.zybl_hspbb_fzmc c ON a.zhid=c.id'
      'WHERE a.rqid=:rqid order by a.zhid,xh,czymc')
    Left = 512
    Top = 440
  end
  object PopupMenu3: TPopupMenu
    Left = 936
    Top = 320
    object N3: TMenuItem
      Caption = #31185#23460#25552#31034#20445#23384
      Enabled = False
      OnClick = N3Click
    end
  end
  object qry_ksts: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 160
    Top = 128
  end
  object qry_hsly: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'ksdm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'rqid'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select  a.*,b.,mc from zybl_hspbb_hsly a,sys_hspbb_czy b where a' +
        '.ksdm=:ksdm and a.rqid=:rqid and a.czy=b.dm order by id')
    Left = 560
    Top = 576
  end
  object ds_hbjl: TDataSource
    DataSet = qry_hbjl
    Left = 392
    Top = 512
  end
  object sp_jpbc: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_hspbb_jpbc'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
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
        Name = '@rqid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 128
    Top = 80
  end
  object sp_bctj: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_hspbb_bctj'
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
        Size = 4
        Value = Null
      end>
    Left = 1008
    Top = 152
  end
  object ds_bctj: TDataSource
    DataSet = sp_bctj
    Left = 1048
    Top = 160
  end
  object SP_SE_CWS: TADOStoredProc
    Connection = DM_data.ado_mydata
    LockType = ltReadOnly
    ProcedureName = 'hldy_cx_cws'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@qjdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 341
    Top = 69
  end
  object SP_SE_BCZY: TADOStoredProc
    Connection = DM_data.ado_mydata
    LockType = ltReadOnly
    ProcedureName = 'hldy_cx_bczy'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@qjdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@plcx'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@hsdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 378
    Top = 72
  end
  object qry_scbc: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 96
    Top = 72
  end
  object qry_czy: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 296
    Top = 208
  end
  object qry_hsly1: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 552
    Top = 432
  end
end
