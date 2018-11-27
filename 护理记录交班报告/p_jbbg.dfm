object frm_jbbg: Tfrm_jbbg
  Left = 0
  Top = 0
  Align = alClient
  Caption = #20132#29677#25253#21578
  ClientHeight = 742
  ClientWidth = 1366
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
  object Panel3: TPanel
    Left = 273
    Top = 0
    Width = 1093
    Height = 742
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1091
      Height = 200
      Align = alTop
      TabOrder = 0
      object GroupBox2: TGroupBox
        Left = 1
        Top = 1
        Width = 1089
        Height = 198
        Align = alClient
        Caption = #20132#29677#24635#34920#65288#20154#25968#26377#35823#35831#22312#34920#26684#37324#38754#33258#34892#20462#25913#65292#28982#21518#28857#20987#40736#26631#21491#38190#65292#20877#28857#20987#20132#29677#25253#21578#20445#23384#65289
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object DBGridEh2: TDBGridEh
          Left = 2
          Top = 26
          Width = 1085
          Height = 170
          Align = alClient
          DataGrouping.GroupLevels = <>
          DataSource = ds_rstj
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -20
          FooterFont.Name = 'Tahoma'
          FooterFont.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          PopupMenu = PopupMenu2
          RowDetailPanel.Color = clBtnFace
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -20
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBGridEh2CellClick
          OnDrawColumnCell = DBGridEh2DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ksmc'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #19987#19994
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 120
            end
            item
              Alignment = taCenter
              BiDiMode = bdLeftToRight
              EditButtons = <>
              FieldName = 'jbsj'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = []
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #26102#38388
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -19
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 160
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'zrly'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = []
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #26152#26085#30041#38498
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -19
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 80
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'zyrs'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = []
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #22312#38498
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -19
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 60
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'cyrs'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = []
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #20986#38498
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -19
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 60
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'zcrs'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = []
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #36716#20986
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -19
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 60
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'swrs'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = []
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #27515#20129
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -19
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 60
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'ryrs'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = []
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #20837#38498
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -19
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 60
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'zrrs'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = []
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #36716#20837
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -19
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 60
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'bwrs'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = []
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #30149#21361
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -19
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 60
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'bzrs'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = []
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #30149#37325
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -19
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 60
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'yjrs'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = []
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #19968#32423
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -19
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 60
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'ssrs'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = []
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #25163#26415
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -19
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 60
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'hszqm'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = []
              Footers = <>
              Title.Caption = #25252#22763#38271#31614#21517
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -19
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 110
            end>
          object RowDetailData: TRowDetailPanelControlEh
            object GroupBox1: TGroupBox
              Left = -88
              Top = -48
              Width = 185
              Height = 105
              Caption = 'GroupBox1'
              TabOrder = 0
            end
          end
        end
      end
    end
    object g_ssjb: TGroupBox
      Left = -8
      Top = 483
      Width = 1149
      Height = 712
      Caption = #25163#26415#20132#29677
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object cx_ssjb: TcxGrid
        Left = 2
        Top = 31
        Width = 1145
        Height = 679
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cx_ssjbDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCellDblClick = cx_ssjbDBTableView1CellDblClick
          DataController.DataSource = ds_ss
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          Styles.StyleSheet = GridTableViewStyleSheetMarinehighcolor
          object cx_ssjbDBTableView1Column1: TcxGridDBColumn
            Caption = #30149#24202#21495
            DataBinding.FieldName = 'bch'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 60
          end
          object cx_ssjbDBTableView1Column2: TcxGridDBColumn
            Caption = #20303#38498#21495
            DataBinding.FieldName = 'tmh'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 60
          end
          object cx_ssjbDBTableView1Column3: TcxGridDBColumn
            Caption = #30149#20154#22995#21517
            DataBinding.FieldName = 'brxm'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 60
          end
          object cx_ssjbDBTableView1Column4: TcxGridDBColumn
            Caption = #24180#40836
            DataBinding.FieldName = 'brnl'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 30
          end
          object cx_ssjbDBTableView1Column5: TcxGridDBColumn
            Caption = #24615#21035
            DataBinding.FieldName = 'brxb'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 30
          end
          object cx_ssjbDBTableView1Column6: TcxGridDBColumn
            Caption = #25163#26415#35786#26029
            DataBinding.FieldName = 'sqzd'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 100
          end
          object cx_ssjbDBTableView1Column7: TcxGridDBColumn
            Caption = #25163#26415#21517#31216
            DataBinding.FieldName = 'ssmc'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 100
          end
          object cx_ssjbDBTableView1Column8: TcxGridDBColumn
            Caption = #40635#37257#26041#24335
            DataBinding.FieldName = 'mzfs'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 80
          end
          object cx_ssjbDBTableView1Column9: TcxGridDBColumn
            Caption = #22238#25151#26102#38388
            DataBinding.FieldName = 'hfsj'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 80
          end
          object cx_ssjbDBTableView1Column10: TcxGridDBColumn
            Caption = #20307#28201
            DataBinding.FieldName = 'tw'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 40
          end
          object cx_ssjbDBTableView1Column11: TcxGridDBColumn
            Caption = #33033#25615
            DataBinding.FieldName = 'mb'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 40
          end
          object cx_ssjbDBTableView1Column12: TcxGridDBColumn
            Caption = #24515#29575
            DataBinding.FieldName = 'xl'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 40
          end
          object cx_ssjbDBTableView1Column13: TcxGridDBColumn
            Caption = #21628#21560
            DataBinding.FieldName = 'hx'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 40
          end
          object cx_ssjbDBTableView1Column14: TcxGridDBColumn
            Caption = #34880#21387
            DataBinding.FieldName = 'xy'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cx_ssjbDBTableView1Column15: TcxGridDBColumn
            Caption = #30149#24773#35266#23519
            DataBinding.FieldName = 'bqgc'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 280
          end
        end
        object cx_ssjbLevel1: TcxGridLevel
          GridView = cx_ssjbDBTableView1
        end
      end
    end
    object g_hljlrcl: TGroupBox
      Left = 46
      Top = 483
      Width = 1059
      Height = 839
      Caption = #25252#29702#35760#24405#12289#20986#20837#37327
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object cx_hljl: TcxGrid
        Left = 2
        Top = 31
        Width = 519
        Height = 806
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cx_hljlDBTableView1: TcxGridDBTableView
          OnDblClick = cx_hljlDBTableView1DblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_hljld
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          Styles.StyleSheet = GridTableViewStyleSheetMarinehighcolor
          object cx_hljlDBTableView1Column1: TcxGridDBColumn
            Caption = #26085#26399
            DataBinding.FieldName = 'jlrq'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 80
          end
          object cx_hljlDBTableView1Column2: TcxGridDBColumn
            Caption = #20307#28201
            DataBinding.FieldName = 'tw'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 40
          end
          object cx_hljlDBTableView1Column3: TcxGridDBColumn
            Caption = #33033#25615
            DataBinding.FieldName = 'mb'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 30
          end
          object cx_hljlDBTableView1Column4: TcxGridDBColumn
            Caption = #21628#21560
            DataBinding.FieldName = 'hx'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 30
          end
          object cx_hljlDBTableView1Column5: TcxGridDBColumn
            Caption = #24515#29575
            DataBinding.FieldName = 'xl'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 30
          end
          object cx_hljlDBTableView1Column6: TcxGridDBColumn
            Caption = #34880#21387
            DataBinding.FieldName = 'xy'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 40
          end
          object cx_hljlDBTableView1Column7: TcxGridDBColumn
            Caption = #34880#31958
            DataBinding.FieldName = 'xuetang'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 40
          end
          object cx_hljlDBTableView1Column8: TcxGridDBColumn
            Caption = #30149#24773#35266#23519
            DataBinding.FieldName = 'bqgc'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 210
          end
        end
        object cx_hljlLevel1: TcxGridLevel
          GridView = cx_hljlDBTableView1
        end
      end
      object cx_rcl: TcxGrid
        Left = 521
        Top = 31
        Width = 536
        Height = 806
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object cx_rclDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_rcl
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          Styles.StyleSheet = GridTableViewStyleSheetMarinehighcolor
          object cx_rclDBTableView1Column1: TcxGridDBColumn
            Caption = #26085#26399
            DataBinding.FieldName = 'jlrq'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 80
          end
          object cx_rclDBTableView1Column2: TcxGridDBColumn
            Caption = #21517#31216
            DataBinding.FieldName = 'xm'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 100
          end
          object cx_rclDBTableView1Column3: TcxGridDBColumn
            Caption = #22791#29992#37327
            DataBinding.FieldName = 'byl'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 35
          end
          object cx_rclDBTableView1Column4: TcxGridDBColumn
            Caption = #23454#29992#37327
            DataBinding.FieldName = 'syl'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 35
          end
          object cx_rclDBTableView1Column5: TcxGridDBColumn
            Caption = #39278#20837
            DataBinding.FieldName = 'yr'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 60
          end
          object cx_rclDBTableView1Column6: TcxGridDBColumn
            Caption = #40763#39282
            DataBinding.FieldName = 'bs'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 60
          end
          object cx_rclDBTableView1Column7: TcxGridDBColumn
            Caption = #22823#20415
            DataBinding.FieldName = 'db'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 40
          end
          object cx_rclDBTableView1Column8: TcxGridDBColumn
            Caption = #23567#20415
            DataBinding.FieldName = 'xb'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 40
          end
          object cx_rclDBTableView1Column9: TcxGridDBColumn
            Caption = #23615#31649#24341#27969
            DataBinding.FieldName = 'ngyl'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 60
          end
          object cx_rclDBTableView1Column10: TcxGridDBColumn
            Caption = #31649#36947#24341#27969
            DataBinding.FieldName = 'gdyl'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 100
          end
        end
        object cx_rclLevel1: TcxGridLevel
          GridView = cx_rclDBTableView1
        end
      end
    end
    object g_jbmx: TGroupBox
      Left = 96
      Top = 483
      Width = 1147
      Height = 710
      Caption = #20132#29677#26126#32454
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object cx_jbmx: TcxGrid
        Left = 2
        Top = 31
        Width = 1143
        Height = 677
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cx_jbmxDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCellDblClick = cx_jbmxDBTableView1CellDblClick
          DataController.DataSource = ds_brxx
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          Styles.StyleSheet = GridTableViewStyleSheetMarinehighcolor
          object cx_jbmxDBTableView1Column1: TcxGridDBColumn
            Caption = #30149#24202#21495
            DataBinding.FieldName = 'bch'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 50
          end
          object cx_jbmxDBTableView1Column2: TcxGridDBColumn
            Caption = #20303#38498#21495
            DataBinding.FieldName = 'tmh'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cx_jbmxDBTableView1Column3: TcxGridDBColumn
            Caption = #22995#21517
            DataBinding.FieldName = 'brxm'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 70
          end
          object cx_jbmxDBTableView1Column4: TcxGridDBColumn
            Caption = #24180#40836
            DataBinding.FieldName = 'brnl'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 40
          end
          object cx_jbmxDBTableView1Column5: TcxGridDBColumn
            Caption = #24615#21035
            DataBinding.FieldName = 'brxb'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 40
          end
          object cx_jbmxDBTableView1Column6: TcxGridDBColumn
            Caption = #20837#38498#35786#26029
            DataBinding.FieldName = 'ryzd'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 110
          end
          object cx_jbmxDBTableView1Column7: TcxGridDBColumn
            Caption = #20837#38498#26085#26399
            DataBinding.FieldName = 'ryrq'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 110
          end
          object cx_jbmxDBTableView1Column8: TcxGridDBColumn
            Caption = #23454#38469#20837#38498
            DataBinding.FieldName = 'ryrq1'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 110
          end
          object cx_jbmxDBTableView1Column15: TcxGridDBColumn
            Caption = #25163#26415
            DataBinding.FieldName = 'ssts'
            Width = 30
          end
          object cx_jbmxDBTableView1Column9: TcxGridDBColumn
            Caption = #20307#28201
            DataBinding.FieldName = 'tw'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 45
          end
          object cx_jbmxDBTableView1Column10: TcxGridDBColumn
            Caption = #33033#25615
            DataBinding.FieldName = 'mb'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 45
          end
          object cx_jbmxDBTableView1Column11: TcxGridDBColumn
            Caption = #21628#21560
            DataBinding.FieldName = 'hx'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 45
          end
          object cx_jbmxDBTableView1Column12: TcxGridDBColumn
            Caption = #34880#21387
            DataBinding.FieldName = 'xy'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 60
          end
          object cx_jbmxDBTableView1Column13: TcxGridDBColumn
            Caption = #34880#31958
            DataBinding.FieldName = 'xuetang'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 50
          end
          object cx_jbmxDBTableView1Column14: TcxGridDBColumn
            Caption = #30149#24773#35266#23519#21450#25514#26045
            DataBinding.FieldName = 'bqgc'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 250
          end
        end
        object cx_jbmxLevel1: TcxGridLevel
          GridView = cx_jbmxDBTableView1
        end
      end
    end
    object g_wjz: TGroupBox
      Left = 133
      Top = 483
      Width = 1139
      Height = 617
      Caption = #39640#39118#38505#30149#20154
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object cxGrid2: TcxGrid
        Left = 2
        Top = 31
        Width = 1135
        Height = 584
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxGrid2DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCellDblClick = cxGrid2DBTableView1CellDblClick
          DataController.DataSource = ds_wjz
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          Styles.StyleSheet = GridTableViewStyleSheetMarinehighcolor
          object cxGrid2DBTableView1Column7: TcxGridDBColumn
            Caption = #35760#24405#26085#26399
            DataBinding.FieldName = 'jlrq'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 120
          end
          object cxGrid2DBTableView1Column1: TcxGridDBColumn
            Caption = #30149#24202#21495
            DataBinding.FieldName = 'bch'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 100
          end
          object cxGrid2DBTableView1Column2: TcxGridDBColumn
            Caption = #20303#38498#21495
            DataBinding.FieldName = 'tmh'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 120
          end
          object cxGrid2DBTableView1Column3: TcxGridDBColumn
            Caption = #22995#21517
            DataBinding.FieldName = 'brxm'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 80
          end
          object cxGrid2DBTableView1Column4: TcxGridDBColumn
            Caption = #24615#21035
            DataBinding.FieldName = 'brxb'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 50
          end
          object cxGrid2DBTableView1Column5: TcxGridDBColumn
            Caption = #24180#40836
            DataBinding.FieldName = 'brnl'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 50
          end
          object cxGrid2DBTableView1Column6: TcxGridDBColumn
            Caption = #21307#29983#35786#26029
            DataBinding.FieldName = 'ryzd'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 180
          end
          object cxGrid2DBTableView1Column8: TcxGridDBColumn
            Caption = #35828#26126
            DataBinding.FieldName = 'xm'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 120
          end
          object cxGrid2DBTableView1Column9: TcxGridDBColumn
            Caption = #20998#20540
            DataBinding.FieldName = 'fs'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
    object g_tsbr: TGroupBox
      Left = 175
      Top = 483
      Width = 1077
      Height = 616
      Caption = #29305#27530#20132#29677
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      object cxGrid3: TcxGrid
        Left = 2
        Top = 31
        Width = 1073
        Height = 583
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxGrid3DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCellDblClick = cxGrid3DBTableView1CellDblClick
          DataController.DataSource = ds_tsbr
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          Styles.StyleSheet = GridTableViewStyleSheetMarinehighcolor
          object cxGrid3DBTableView1Column1: TcxGridDBColumn
            Caption = #30149#24202#21495
            DataBinding.FieldName = 'bch'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 100
          end
          object cxGrid3DBTableView1Column2: TcxGridDBColumn
            Caption = #35760#24405#26085#26399
            DataBinding.FieldName = 'jlrq'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 180
          end
          object cxGrid3DBTableView1Column3: TcxGridDBColumn
            Caption = #30149#20154#22995#21517
            DataBinding.FieldName = 'brxm'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 120
          end
          object cxGrid3DBTableView1Column4: TcxGridDBColumn
            Caption = #24615#21035
            DataBinding.FieldName = 'brxb'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 60
          end
          object cxGrid3DBTableView1Column5: TcxGridDBColumn
            Caption = #24180#40836
            DataBinding.FieldName = 'brnl'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 60
          end
          object cxGrid3DBTableView1Column6: TcxGridDBColumn
            Caption = #20837#38498#35786#26029
            DataBinding.FieldName = 'ryzd'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 180
          end
          object cxGrid3DBTableView1Column7: TcxGridDBColumn
            Caption = #20307#28201
            DataBinding.FieldName = 'tw'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 60
          end
          object cxGrid3DBTableView1Column8: TcxGridDBColumn
            Caption = #33033#25615
            DataBinding.FieldName = 'mb'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 60
          end
          object cxGrid3DBTableView1Column9: TcxGridDBColumn
            Caption = #21628#21560
            DataBinding.FieldName = 'hx'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 60
          end
          object cxGrid3DBTableView1Column10: TcxGridDBColumn
            Caption = #22791#27880
            DataBinding.FieldName = 'bz'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 100
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBTableView1
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 240
      Top = 483
      Width = 721
      Height = 409
      Caption = #24310#36831#24405#20837
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Visible = False
      object cxGrid4: TcxGrid
        Left = 2
        Top = 31
        Width = 717
        Height = 376
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxGrid4DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_yclr
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsView.GroupByBox = False
          Styles.StyleSheet = GridTableViewStyleSheetMarinehighcolor
          object cxGrid4DBTableView1Column3: TcxGridDBColumn
            Caption = #30149#24202#21495
            DataBinding.FieldName = 'bch'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 80
          end
          object cxGrid4DBTableView1Column1: TcxGridDBColumn
            Caption = #20303#38498#21495
            DataBinding.FieldName = 'tmh'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 120
          end
          object cxGrid4DBTableView1Column2: TcxGridDBColumn
            Caption = #30149#20154#22995#21517
            DataBinding.FieldName = 'brxm'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 150
          end
        end
        object cxGrid4Level1: TcxGridLevel
          GridView = cxGrid4DBTableView1
        end
      end
    end
    object GroupBox4: TGroupBox
      Left = 256
      Top = 128
      Width = 545
      Height = 313
      Caption = #20197#19979#30149#20154#20307#28201#34920#24405#20837#21487#33021#23384#22312#38382#39064
      TabOrder = 7
      Visible = False
      object DBGridEh1: TDBGridEh
        Left = 2
        Top = 15
        Width = 541
        Height = 296
        Align = alClient
        DataGrouping.GroupLevels = <>
        DataSource = DataSource1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'Tahoma'
        FooterFont.Style = []
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
            FieldName = 'tmh'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #26465#30721#21495
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'brxm'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #22995#21517
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'brxb'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #24615#21035
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'bch'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #30149#24202#21495
            Width = 100
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 153
    Height = 742
    Align = alLeft
    TabOrder = 1
    object TreeView2: TTreeView
      Left = 1
      Top = 473
      Width = 151
      Height = 268
      Align = alClient
      Color = 14213320
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4673068
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      HideSelection = False
      Indent = 19
      ParentFont = False
      TabOrder = 0
      OnChange = TreeView2Change
    end
    object TreeView1: TTreeView
      Left = 1
      Top = 1
      Width = 151
      Height = 472
      Align = alTop
      Color = 14213320
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4673068
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      HideSelection = False
      Indent = 19
      ParentFont = False
      TabOrder = 1
      OnChange = TreeView1Change
      OnClick = TreeView1Click
    end
  end
  object Panel6: TPanel
    Left = 153
    Top = 0
    Width = 120
    Height = 742
    Align = alLeft
    TabOrder = 2
    object cxSplitter1: TcxSplitter
      Left = 1
      Top = 84
      Width = 8
      Height = 657
      HotZoneClassName = 'TcxMediaPlayer8Style'
      Control = Panel4
      Color = clRed
      ParentColor = False
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 118
      Height = 42
      Align = alTop
      TabOrder = 1
      object Button1: TButton
        Left = 1
        Top = 1
        Width = 116
        Height = 41
        Align = alTop
        Caption = #30149#25151#24037#20316#26085#25253
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object cxGrid1: TcxGrid
      Left = 9
      Top = 84
      Width = 110
      Height = 657
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCellClick = cxGrid1DBTableView1CellClick
        OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
        DataController.DataSource = ds_brxx
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        Styles.StyleSheet = GridTableViewStyleSheetUserFormat2
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = #24202#21495
          DataBinding.FieldName = 'bch'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 40
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = #22995#21517
          DataBinding.FieldName = 'brxm'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 50
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          DataBinding.FieldName = 'brxb'
          Visible = False
          Width = 30
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 43
      Width = 118
      Height = 41
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object RadioButton1: TRadioButton
        Left = 2
        Top = 12
        Width = 50
        Height = 17
        Caption = #19987#19994
        TabOrder = 0
        OnClick = RadioButton1Click
      end
      object RadioButton2: TRadioButton
        Left = 58
        Top = 12
        Width = 52
        Height = 17
        Caption = #30149#21306
        TabOrder = 1
        OnClick = RadioButton2Click
      end
    end
  end
  object qry_rstj: TADOQuery
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
      'select * from zybl_jbbg_jbzb where ksdm=:ksdm')
    Left = 240
    Top = 200
  end
  object sp_sstj: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_jbbg_sstj;1'
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
    Left = 272
    Top = 200
  end
  object ds_rstj: TDataSource
    DataSet = qry_rstj
    OnDataChange = ds_rstjDataChange
    Left = 304
    Top = 200
  end
  object qry_jbxm: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      'select * from zybl_jbbg_jbxm')
    Left = 80
    Top = 264
  end
  object qry_rqs: TADOQuery
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
      
        'select distinct  jbsj from zybl_jbbg_jbzb where ksdm=:ksdm order' +
        ' by jbsj')
    Left = 112
    Top = 176
  end
  object ds_brxx: TDataSource
    DataSet = sp_brxx
    Left = 464
    Top = 144
  end
  object sp_brxx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zybl_jbbg_brxxxx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@jbid'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end
      item
        Name = '@lb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 504
    Top = 368
  end
  object PopupMenu1: TPopupMenu
    Left = 200
    Top = 328
    object N1111: TMenuItem
      Caption = #35814#32454#20449#24687
      OnClick = N1111Click
    end
  end
  object qry_hljld: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 424
    Top = 280
  end
  object qry_rcl: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 472
    Top = 288
  end
  object ds_hljld: TDataSource
    DataSet = qry_hljld
    Left = 424
    Top = 336
  end
  object ds_rcl: TDataSource
    DataSet = qry_rcl
    Left = 480
    Top = 336
  end
  object sp_ss: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zybl_jbbg_jrss;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@rq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 312
    Top = 376
  end
  object ds_ss: TDataSource
    DataSet = sp_ss
    Left = 552
    Top = 368
  end
  object ds_wjz: TDataSource
    DataSet = sp_gfxbr
    Left = 768
    Top = 504
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 240
    Top = 160
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 9234160
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 11788021
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11193702
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5737262
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5736750
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4615972
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14213320
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12107912
      TextColor = clBlack
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14213320
      TextColor = clBlack
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12107912
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8949832
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4673068
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12107912
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6053956
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12107912
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14213320
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clNavy
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6053956
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object GridTableViewStyleSheetUserFormat2: TcxGridTableViewStyleSheet
      Caption = 'UserFormat2'
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
    object GridTableViewStyleSheetMarinehighcolor: TcxGridTableViewStyleSheet
      Caption = 'Marine (high color)'
      Styles.Content = cxStyle12
      Styles.ContentEven = cxStyle13
      Styles.ContentOdd = cxStyle14
      Styles.Inactive = cxStyle19
      Styles.Selection = cxStyle22
      Styles.Footer = cxStyle15
      Styles.Group = cxStyle16
      Styles.GroupByBox = cxStyle17
      Styles.Header = cxStyle18
      Styles.Indicator = cxStyle20
      Styles.Preview = cxStyle21
      BuiltIn = True
    end
  end
  object qry_tsbr: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 192
    Top = 200
  end
  object ds_tsbr: TDataSource
    DataSet = qry_tsbr
    Left = 200
    Top = 240
  end
  object PopupMenu2: TPopupMenu
    Left = 352
    Top = 168
    object N3: TMenuItem
      Caption = #20132#29677#25253#21578#20445#23384
      OnClick = N3Click
    end
    object N1: TMenuItem
      Caption = #20132#29677#25253#21578#31614#21517
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #20132#29677#20154#25968#26377#35823
      OnClick = N2Click
    end
  end
  object qry_hszqm: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 744
    Top = 128
  end
  object sp_yclr: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_jbbg_qsbr;1'
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
        Value = Null
      end
      item
        Name = '@jbid'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@rq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end>
    Left = 392
    Top = 368
  end
  object ds_yclr: TDataSource
    DataSet = sp_yclr
    Left = 904
    Top = 392
  end
  object sp_sstj1: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_jbbg_sstj1'
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
    Left = 528
    Top = 312
  end
  object qry_gx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 672
    Top = 296
  end
  object sp_tsjb: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_jbbg_tsjbbr'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@jbid'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end>
    Left = 96
    Top = 376
  end
  object ADOQuery1: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'bqdm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM dbo.sys_bqzyfl WHERE bqdm=:bqdm AND bqzydm'
      ' NOT IN(SELECT ksdm FROM dbo.zybl_jbbg_jbzb'
      
        '  WHERE jbbz=0 and CONVERT(VARCHAR(10),jbsj,112)=CONVERT(VARCHAR' +
        '(10),GETDATE(),112))'
      'order by bqzydm')
    Left = 528
    Top = 240
  end
  object sp_gfxbr: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_jbbg_gfxbr '
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
    Left = 720
    Top = 552
  end
  object DataSource1: TDataSource
    DataSet = sp_yclr
    Left = 568
    Top = 296
  end
  object ADODataSet1: TADODataSet
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 216
    Top = 96
  end
end
