object frm_hspbb_tjbb: Tfrm_hspbb_tjbb
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = #32479#35745#25253#34920
  ClientHeight = 760
  ClientWidth = 1259
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1259
    Height = 760
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #31185#23460#24202#25252#27604#32479#35745
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 772
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1251
        Height = 57
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 80
          Height = 24
          Caption = #36873#25321#26085#26399
        end
        object DateTimePicker1: TDateTimePicker
          Left = 112
          Top = 16
          Width = 186
          Height = 32
          Date = 42872.394500277780000000
          Time = 42872.394500277780000000
          TabOrder = 0
        end
        object Button1: TButton
          Left = 320
          Top = 3
          Width = 137
          Height = 49
          Caption = #26597#35810
          TabOrder = 1
          OnClick = Button1Click
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 57
        Width = 1251
        Height = 675
        Align = alClient
        TabOrder = 1
        ExplicitHeight = 715
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_chb
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsData.Deleting = False
          OptionsView.DataRowHeight = 30
          OptionsView.GroupByBox = False
          Bands = <
            item
              Caption = #31185#23460
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
            Caption = #24320#25918#24202#20301
            DataBinding.FieldName = 'kskfcw'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.CellMerging = True
            Width = 65
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn
            Caption = #31185#23460#21517#31216
            DataBinding.FieldName = 'ksmc'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.CellMerging = True
            Width = 65
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn
            Caption = #22312#23703
            DataBinding.FieldName = 'yizg'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 50
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column3: TcxGridDBBandedColumn
            Caption = #20241#20551
            DataBinding.FieldName = 'yixj'
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
            Caption = #22312#23703
            DataBinding.FieldName = 'erzg'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 50
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column5: TcxGridDBBandedColumn
            Caption = #20241#20551
            DataBinding.FieldName = 'erxj'
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
            Caption = #22312#23703
            DataBinding.FieldName = 'sanzg'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 50
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column7: TcxGridDBBandedColumn
            Caption = #20241#20551
            DataBinding.FieldName = 'sanxj'
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
            Caption = #22312#23703
            DataBinding.FieldName = 'sizg'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 50
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column9: TcxGridDBBandedColumn
            Caption = #20241#20551
            DataBinding.FieldName = 'sixj'
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
            Caption = #22312#23703
            DataBinding.FieldName = 'wuzg'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 50
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column11: TcxGridDBBandedColumn
            Caption = #20241#20551
            DataBinding.FieldName = 'wuxj'
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
            Caption = #22312#23703
            DataBinding.FieldName = 'liuzg'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 50
            Position.BandIndex = 6
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column13: TcxGridDBBandedColumn
            Caption = #20241#20551
            DataBinding.FieldName = 'liuxj'
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
            Caption = #22312#23703
            DataBinding.FieldName = 'qizg'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 50
            Position.BandIndex = 7
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column15: TcxGridDBBandedColumn
            Caption = #20241#20551
            DataBinding.FieldName = 'qixj'
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
          object cxGrid1DBBandedTableView1Column17: TcxGridDBBandedColumn
            Caption = #24202#25252#27604
            DataBinding.FieldName = 'yichb'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 50
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column18: TcxGridDBBandedColumn
            Caption = #24202#25252#27604
            DataBinding.FieldName = 'erchb'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 50
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column19: TcxGridDBBandedColumn
            Caption = #24202#25252#27604
            DataBinding.FieldName = 'sanchb'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 50
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column20: TcxGridDBBandedColumn
            Caption = #24202#25252#27604
            DataBinding.FieldName = 'sichb'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 50
            Position.BandIndex = 4
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column21: TcxGridDBBandedColumn
            Caption = #24202#25252#27604
            DataBinding.FieldName = 'wuchb'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 50
            Position.BandIndex = 5
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column22: TcxGridDBBandedColumn
            Caption = #24202#25252#27604
            DataBinding.FieldName = 'liuchb'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 50
            Position.BandIndex = 6
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1Column23: TcxGridDBBandedColumn
            Caption = #24202#25252#27604
            DataBinding.FieldName = 'qichb'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 50
            Position.BandIndex = 7
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBBandedTableView1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #20154#21592#29677#27425#32479#35745
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 772
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1251
        Height = 57
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label2: TLabel
          Left = 16
          Top = 16
          Width = 80
          Height = 24
          Caption = #36873#25321#26085#26399
        end
        object Label3: TLabel
          Left = 304
          Top = 16
          Width = 20
          Height = 24
          Caption = #21040
        end
        object DateTimePicker2: TDateTimePicker
          Left = 112
          Top = 16
          Width = 186
          Height = 32
          Date = 42872.394500277780000000
          Time = 42872.394500277780000000
          TabOrder = 0
        end
        object Button2: TButton
          Left = 536
          Top = 3
          Width = 137
          Height = 49
          Caption = #26597#35810
          TabOrder = 1
          OnClick = Button2Click
        end
        object DateTimePicker3: TDateTimePicker
          Left = 344
          Top = 16
          Width = 186
          Height = 32
          Date = 42872.394500277780000000
          Time = 42872.394500277780000000
          TabOrder = 2
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 57
        Width = 281
        Height = 675
        Align = alLeft
        Caption = 'Panel3'
        TabOrder = 1
        ExplicitHeight = 715
        object cxGrid2: TcxGrid
          Left = 1
          Top = 1
          Width = 279
          Height = 673
          Align = alClient
          TabOrder = 0
          ExplicitLeft = -87
          ExplicitTop = 33
          object cxGrid2DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ds_bctj
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsView.GroupByBox = False
            object cxGrid2DBTableView1Column1: TcxGridDBColumn
              Caption = #25805#20316#21592
              DataBinding.FieldName = 'mc'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 65
            end
            object cxGrid2DBTableView1Column2: TcxGridDBColumn
              Caption = #29677#27425
              DataBinding.FieldName = 'ban'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 65
            end
            object cxGrid2DBTableView1Column3: TcxGridDBColumn
              Caption = #27425#25968
              DataBinding.FieldName = 'cs'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 65
            end
            object cxGrid2DBTableView1Column4: TcxGridDBColumn
              Caption = #26102#38271
              DataBinding.FieldName = 'sc'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 65
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
      end
      object Panel5: TPanel
        Left = 281
        Top = 57
        Width = 970
        Height = 675
        Align = alClient
        Caption = 'Panel5'
        TabOrder = 2
        ExplicitLeft = 286
        ExplicitTop = 46
        object DBChart1: TDBChart
          Left = 1
          Top = 1
          Width = 968
          Height = 568
          Title.Text.Strings = (
            #24635#26102#38271#32479#35745)
          Align = alTop
          TabOrder = 0
          PrintMargins = (
            15
            11
            15
            11)
          object Series1: TBarSeries
            Marks.Arrow.Visible = True
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Arrow.Visible = True
            Marks.Visible = True
            DataSource = sp_bctj2
            SeriesColor = 8453888
            XLabelsSource = 'mc'
            Gradient.Direction = gdTopBottom
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 'zsc'
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #31185#23460#20154#21592#32467#26500#20998#26512
      ImageIndex = 2
      OnShow = TabSheet3Show
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 772
      object cxGrid3: TcxGrid
        Left = 3
        Top = 3
        Width = 1142
        Height = 662
        TabOrder = 0
        object cxGrid3DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBTableView1
        end
      end
      object DBChart2: TDBChart
        Left = 617
        Top = 0
        Width = 617
        Height = 732
        Title.Text.Strings = (
          #20840#38498#20154#21592#32467#26500#20998#26512)
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        Align = alLeft
        TabOrder = 1
        ExplicitHeight = 772
        object Series3: TPieSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = True
          DataSource = qry_qyhs
          XLabelsSource = 'gw'
          Gradient.Direction = gdRadial
          OtherSlice.Legend.Visible = False
          PieValues.Name = 'Pie'
          PieValues.Order = loNone
          PieValues.ValueSource = 'rs'
        end
      end
      object DBChart3: TDBChart
        Left = 0
        Top = 0
        Width = 617
        Height = 732
        Title.Text.Strings = (
          #31185#23460#20154#21592#32467#26500#20998#26512)
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        Align = alLeft
        TabOrder = 2
        ExplicitHeight = 772
        object Series2: TPieSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = True
          DataSource = qry_ksry
          XLabelsSource = 'gw'
          Gradient.Direction = gdRadial
          OtherSlice.Legend.Visible = False
          PieValues.Name = 'Pie'
          PieValues.Order = loNone
          PieValues.ValueSource = 'rs'
        end
      end
    end
  end
  object sp_chb: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_hspbb_chbtj'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@rq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 456
    Top = 224
  end
  object ds_chb: TDataSource
    DataSet = sp_chb
    Left = 544
    Top = 240
  end
  object adoquery1: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 832
    Top = 328
  end
  object sp_bctj: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_hspbb_bctj1'
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
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 56
    Top = 256
  end
  object ds_bctj: TDataSource
    DataSet = sp_bctj
    Left = 120
    Top = 200
  end
  object sp_bctj2: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zybl_hspbb_bctj2'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '0135'
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '2017-06-01'
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '2017-07-01'
      end>
    Left = 488
    Top = 296
  end
  object qry_ksry: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
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
      
        'SELECT gw,COUNT(*) rs FROM dbo.zybl_hspbb_czy WHERE ksdm=:ksdm A' +
        'ND ysbz=0 GROUP BY gw'
      'order by rs'
      '')
    Left = 400
    Top = 112
  end
  object qry_qyhs: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT gw,COUNT(*) rs FROM dbo.zybl_hspbb_czy WHERE  ysbz=0 and ' +
        'zhid<>0 GROUP BY gw'
      'order by rs')
    Left = 440
    Top = 112
  end
end
