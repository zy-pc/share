object frm_jszfcx: Tfrm_jszfcx
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #32467#31639#20316#24223#26597#35810
  ClientHeight = 562
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 112
    ExplicitTop = 8
    object lbl1: TLabel
      Left = 9
      Top = 14
      Width = 60
      Height = 15
      Caption = #24320#22987#26085#26399
    end
    object lbl2: TLabel
      Left = 189
      Top = 14
      Width = 60
      Height = 15
      Caption = #32467#26463#26085#26399
    end
    object chk1: TCheckBox
      Left = 364
      Top = 12
      Width = 173
      Height = 17
      Caption = #21253#21547#24403#26085#32467#31639#24403#26085#20316#24223
      TabOrder = 0
    end
    object btn1: TButton
      Left = 672
      Top = 8
      Width = 75
      Height = 25
      Caption = #26597#35810
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btn1Click
    end
    object dtp1: TDateTimePicker
      Left = 75
      Top = 9
      Width = 103
      Height = 23
      Date = 40842.641178993060000000
      Time = 40842.641178993060000000
      TabOrder = 2
    end
    object dtp2: TDateTimePicker
      Left = 255
      Top = 9
      Width = 103
      Height = 23
      Date = 40842.641228067130000000
      Time = 40842.641228067130000000
      TabOrder = 3
    end
    object chk2: TCheckBox
      Left = 543
      Top = 12
      Width = 97
      Height = 17
      Caption = #21382#21490#25968#25454
      TabOrder = 4
    end
  end
  object cxgrd1: TcxGrid
    Left = 0
    Top = 41
    Width = 784
    Height = 521
    Align = alClient
    TabOrder = 1
    ExplicitTop = 39
    object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_jszfcx
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skCount
          Column = cxgrdbtblvwGrid1DBTableView1Column2
        end
        item
          Kind = skCount
          Position = spFooter
          Column = cxgrdbtblvwGrid1DBTableView1Column2
        end
        item
          Kind = skSum
          Column = cxgrdbtblvwGrid1DBTableView1Column8
        end
        item
          Kind = skSum
          Column = cxgrdbtblvwGrid1DBTableView1Column9
        end
        item
          Kind = skSum
          Position = spFooter
          Column = cxgrdbtblvwGrid1DBTableView1Column9
        end
        item
          Kind = skSum
          Position = spFooter
          Column = cxgrdbtblvwGrid1DBTableView1Column8
        end
        item
          Kind = skSum
          Position = spFooter
          Column = cxgrdbtblvwGrid1DBTableView1Column10
        end
        item
          Kind = skSum
          Column = cxgrdbtblvwGrid1DBTableView1Column10
        end
        item
          Kind = skSum
          Position = spFooter
          Column = cxgrdbtblvwGrid1DBTableView1Column11
        end
        item
          Kind = skSum
          Column = cxgrdbtblvwGrid1DBTableView1Column11
        end
        item
          Kind = skSum
          Position = spFooter
          Column = cxgrdbtblvwGrid1DBTableView1Column12
        end
        item
          Kind = skSum
          Column = cxgrdbtblvwGrid1DBTableView1Column12
        end
        item
          Kind = skSum
          Position = spFooter
          Column = cxgrdbtblvwGrid1DBTableView1Column13
        end
        item
          Kind = skSum
          Column = cxgrdbtblvwGrid1DBTableView1Column13
        end
        item
          Kind = skSum
          Position = spFooter
          Column = cxgrdbtblvwGrid1DBTableView1Column7
        end
        item
          Kind = skSum
          Column = cxgrdbtblvwGrid1DBTableView1Column7
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #21512#35745
          Column = cxgrdbtblvwGrid1DBTableView1Column1
        end
        item
          Kind = skCount
          Column = cxgrdbtblvwGrid1DBTableView1Column2
        end
        item
          Kind = skSum
          Column = cxgrdbtblvwGrid1DBTableView1Column8
        end
        item
          Kind = skSum
          Column = cxgrdbtblvwGrid1DBTableView1Column9
        end
        item
          Kind = skSum
          Column = cxgrdbtblvwGrid1DBTableView1Column10
        end
        item
          Kind = skSum
          Column = cxgrdbtblvwGrid1DBTableView1Column11
        end
        item
          Kind = skSum
          Column = cxgrdbtblvwGrid1DBTableView1Column12
        end
        item
          Kind = skSum
          Column = cxgrdbtblvwGrid1DBTableView1Column13
        end
        item
          Kind = skSum
          Column = cxgrdbtblvwGrid1DBTableView1Column7
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellMultiSelect = True
      OptionsView.CellEndEllipsis = True
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfAlwaysVisible
      OptionsView.GroupRowStyle = grsOffice11
      Styles.Footer = cxstyl1
      Styles.GroupByBox = cxstyl2
      Styles.Header = cxstyl1
      object cxgrdbtblvwGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #30149#20154#22995#21517
        DataBinding.FieldName = 'brxm'
        Width = 85
      end
      object cxgrdbtblvwGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #25910#25454#32534#21495
        DataBinding.FieldName = 'sjbh'
        Width = 96
      end
      object cxgrdbtblvwGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = #32467#31639#26085#26399
        DataBinding.FieldName = 'jsrq'
        Width = 97
      end
      object cxgrdbtblvwGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = #20316#24223#26085#26399
        DataBinding.FieldName = 'zfrq'
        Width = 89
      end
      object cxgrdbtblvwGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = #32467#31639#25805#20316#21592
        DataBinding.FieldName = 'jsczymc'
        Width = 99
      end
      object cxgrdbtblvwGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = #20316#24223#25805#20316#21592
        DataBinding.FieldName = 'zfczymc'
        Width = 98
      end
      object cxgrdbtblvwGrid1DBTableView1Column7: TcxGridDBColumn
        Caption = #24635#36153#29992
        DataBinding.FieldName = 'fyze'
        Width = 73
      end
      object cxgrdbtblvwGrid1DBTableView1Column8: TcxGridDBColumn
        Caption = #39044#20132#24635#39069
        DataBinding.FieldName = 'sjyjze'
        Width = 90
      end
      object cxgrdbtblvwGrid1DBTableView1Column9: TcxGridDBColumn
        Caption = #25253#38144#37329#39069
        DataBinding.FieldName = 'tcje'
        Width = 91
      end
      object cxgrdbtblvwGrid1DBTableView1Column10: TcxGridDBColumn
        Caption = #24212#36864#37329#39069
        DataBinding.FieldName = 'ytje'
        Width = 88
      end
      object cxgrdbtblvwGrid1DBTableView1Column11: TcxGridDBColumn
        Caption = #24212#34917#37329#39069
        DataBinding.FieldName = 'ybje'
        Width = 85
      end
      object cxgrdbtblvwGrid1DBTableView1Column12: TcxGridDBColumn
        Caption = #23454#36864#37329#39069
        DataBinding.FieldName = 'stje'
        Width = 84
      end
      object cxgrdbtblvwGrid1DBTableView1Column13: TcxGridDBColumn
        Caption = #23454#34917#37329#39069
        DataBinding.FieldName = 'sbje'
        Width = 81
      end
    end
    object cxgrdlvlGrid1Level1: TcxGridLevel
      GridView = cxgrdbtblvwGrid1DBTableView1
    end
  end
  object sp_jszfcx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    ProcedureName = 'zysf_cx_jszfcx'
    Parameters = <
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 40544d
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 40544d
      end
      item
        Name = '@bhdr'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@ls'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 408
    Top = 176
  end
  object ds_jszfcx: TDataSource
    DataSet = sp_jszfcx
    Left = 360
    Top = 176
  end
  object cxstylrpstry1: TcxStyleRepository
    object cxstyl1: TcxStyle
      AssignedValues = [svColor]
      Color = clMoneyGreen
    end
  end
  object cxstylrpstry2: TcxStyleRepository
    object cxstyl2: TcxStyle
      AssignedValues = [svColor]
      Color = clSkyBlue
    end
  end
end
