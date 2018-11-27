object frm_mzczysf_all: Tfrm_mzczysf_all
  Left = 154
  Top = 124
  BorderIcons = [biSystemMenu]
  Caption = #20840#20307#25910#36153#21592#32564#27454#34920#65306
  ClientHeight = 558
  ClientWidth = 810
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 810
    Height = 32
    Align = alTop
    ExplicitWidth = 792
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 56
    Height = 16
    Caption = #36215#26085#26399':'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 180
    Top = 8
    Width = 56
    Height = 16
    Caption = #27490#26085#26399':'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object ok1: TBitBtn
    Left = 581
    Top = 4
    Width = 67
    Height = 25
    Caption = #25171#21360'(&P)'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = ok1Click
    NumGlyphs = 2
  end
  object sdate: TDateTimePicker
    Left = 68
    Top = 3
    Width = 104
    Height = 24
    Date = 37028.604380682900000000
    Time = 37028.604380682900000000
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 512
    Top = 4
    Width = 67
    Height = 25
    Caption = #32479#35745'(&T)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
    NumGlyphs = 2
  end
  object edate: TDateTimePicker
    Left = 238
    Top = 3
    Width = 104
    Height = 24
    Date = 37028.604380682900000000
    Time = 37028.604380682900000000
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 720
    Top = 4
    Width = 67
    Height = 25
    Caption = #36820#22238'(&X)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 651
    Top = 4
    Width = 67
    Height = 25
    Caption = #25171#21360#26126#32454
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button2Click
  end
  object CheckBox1: TCheckBox
    Left = 368
    Top = 9
    Width = 74
    Height = 17
    Caption = #27719#24635#34920
    Checked = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 6
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 32
    Width = 810
    Height = 526
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    LookAndFeel.Kind = lfStandard
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_gzl_all
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGrid1DBTableView1sjsl
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1sfrc
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1sfje
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1tfrc
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1tfje
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1zfrc
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1zfje
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1ssje
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1mc: TcxGridDBColumn
        Caption = #25805#20316#21592#22995#21517
        DataBinding.FieldName = 'mc'
        HeaderAlignmentHorz = taCenter
        Width = 83
      end
      object cxGrid1DBTableView1sjsl: TcxGridDBColumn
        Caption = #25910#25454#25968
        DataBinding.FieldName = 'sjsl'
        HeaderAlignmentHorz = taCenter
        Width = 55
      end
      object cxGrid1DBTableView1jzrq: TcxGridDBColumn
        Caption = #26085#26399
        DataBinding.FieldName = 'jzrq'
        HeaderAlignmentHorz = taCenter
        Width = 110
      end
      object cxGrid1DBTableView1sfrc: TcxGridDBColumn
        Caption = #25910#36153#20154#27425
        DataBinding.FieldName = 'sfrc'
        HeaderAlignmentHorz = taCenter
        Width = 57
      end
      object cxGrid1DBTableView1sfje: TcxGridDBColumn
        Caption = #25910#36153#37329#39069
        DataBinding.FieldName = 'sfje'
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object cxGrid1DBTableView1tfrc: TcxGridDBColumn
        Caption = #36864#36153#20154#27425
        DataBinding.FieldName = 'tfrc'
        HeaderAlignmentHorz = taCenter
        Width = 66
      end
      object cxGrid1DBTableView1tfje: TcxGridDBColumn
        Caption = #36864#36153#37329#39069
        DataBinding.FieldName = 'tfje'
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object cxGrid1DBTableView1zfrc: TcxGridDBColumn
        Caption = #20316#24223#20154#27425
        DataBinding.FieldName = 'zfrc'
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object cxGrid1DBTableView1zfje: TcxGridDBColumn
        Caption = #20316#24223#37329#39069
        DataBinding.FieldName = 'zfje'
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object cxGrid1DBTableView1ssje: TcxGridDBColumn
        Caption = #23454#25910#37329#39069
        DataBinding.FieldName = 'ssje'
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object ds_gzl_all: TDataSource
    DataSet = sp_gzl_all
    Left = 131
    Top = 76
  end
  object sp_gzl_all: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'cwk_cx_mzczysf_all;1'
    Parameters = <
      item
        Name = '@s_date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 38353d
      end
      item
        Name = '@e_date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 38540d
      end
      item
        Name = '@tjfs'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    Left = 192
    Top = 76
    object sp_gzl_allmc: TStringField
      FieldName = 'mc'
      Size = 10
    end
    object sp_gzl_allczydm: TStringField
      FieldName = 'czydm'
      FixedChar = True
      Size = 4
    end
    object sp_gzl_allsfrc: TIntegerField
      FieldName = 'sfrc'
      ReadOnly = True
    end
    object sp_gzl_allsfje: TBCDField
      FieldName = 'sfje'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object sp_gzl_alltfrc: TIntegerField
      FieldName = 'tfrc'
      ReadOnly = True
    end
    object sp_gzl_alltfje: TBCDField
      FieldName = 'tfje'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object sp_gzl_allzfrc: TIntegerField
      FieldName = 'zfrc'
      ReadOnly = True
    end
    object sp_gzl_allzfje: TBCDField
      FieldName = 'zfje'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object sp_gzl_allxybs: TIntegerField
      FieldName = 'xybs'
      ReadOnly = True
    end
    object sp_gzl_allssje: TBCDField
      FieldName = 'ssje'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object sp_gzl_alljzrq: TDateTimeField
      FieldName = 'jzrq'
    end
    object sp_gzl_allsjsl: TIntegerField
      FieldName = 'sjsl'
    end
  end
  object sp_mx: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'mzsf_cx_czyjzmxhz;1'
    Parameters = <
      item
        Name = '@s_date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@e_date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 252
    Top = 76
  end
end
