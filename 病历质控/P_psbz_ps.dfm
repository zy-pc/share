object frm_psbz_ps: Tfrm_psbz_ps
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #30149#21382#35780#23457#26631#20934#35774#32622
  ClientHeight = 510
  ClientWidth = 835
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Splitter2: TSplitter
    Left = 0
    Top = 0
    Width = 4
    Height = 510
    ExplicitHeight = 450
  end
  object PageControl1: TPageControl
    Left = 4
    Top = 0
    Width = 831
    Height = 510
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #35780#23457#26631#20934
      object GroupBox_dx: TGroupBox
        Left = 0
        Top = 0
        Width = 243
        Height = 480
        Align = alLeft
        Caption = #35780#23457#22823#39033
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 2
          Top = 17
          Width = 239
          Height = 461
          Align = alClient
          DataSource = ds_psbz_dx
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'dm'
              Title.Alignment = taCenter
              Title.Caption = #20195#30721
              Title.Font.Charset = GB2312_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mc'
              Title.Alignment = taCenter
              Title.Caption = #22823#39033#21517#31216
              Title.Font.Charset = GB2312_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 133
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qz'
              Title.Alignment = taCenter
              Title.Caption = #26435#37325
              Title.Font.Charset = GB2312_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = #23435#20307
              Title.Font.Style = []
              Width = 43
              Visible = True
            end>
        end
      end
      object GroupBox_mx: TGroupBox
        Left = 243
        Top = 0
        Width = 580
        Height = 480
        Align = alClient
        Caption = #35780#23457#32454#39033
        TabOrder = 1
        object Panel2: TPanel
          Left = 2
          Top = 17
          Width = 576
          Height = 32
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object spb_rebrush: TSpeedButton
            Left = 177
            Top = 2
            Width = 59
            Height = 30
            Caption = #21047#26032
            Flat = True
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            OnClick = spb_rebrushClick
          end
          object spb_add: TSpeedButton
            Left = 0
            Top = 2
            Width = 59
            Height = 30
            Caption = #22686#21152
            Flat = True
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            OnClick = spb_addClick
          end
          object spb_delete: TSpeedButton
            Left = 118
            Top = 2
            Width = 59
            Height = 30
            Caption = #21024#38500
            Flat = True
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            OnClick = spb_deleteClick
          end
          object spb_drop: TSpeedButton
            Left = 236
            Top = 2
            Width = 59
            Height = 30
            Caption = #25918#24323
            Flat = True
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            OnClick = spb_dropClick
          end
          object spb_save: TSpeedButton
            Left = 295
            Top = 2
            Width = 59
            Height = 30
            Caption = #20445#23384
            Flat = True
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            OnClick = spb_saveClick
          end
          object spb_exit: TSpeedButton
            Left = 412
            Top = 2
            Width = 59
            Height = 30
            Caption = #36864#20986
            Flat = True
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            OnClick = spb_exitClick
          end
          object spb_change: TSpeedButton
            Left = 59
            Top = 2
            Width = 59
            Height = 30
            Caption = #20462#25913
            Flat = True
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            OnClick = spb_changeClick
          end
          object SpeedButton1: TSpeedButton
            Left = 354
            Top = 2
            Width = 59
            Height = 30
            Caption = #36923#36753#35268#21017
            Flat = True
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton1Click
          end
        end
        object DBGridEh_xx: TcxGrid
          Left = 2
          Top = 49
          Width = 576
          Height = 429
          Align = alClient
          TabOrder = 1
          object DBGridEh_xxDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ds_psbz_xx
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object DBGridEh_xxDBTableView1xh: TcxGridDBColumn
              Caption = #24207#21495
              DataBinding.FieldName = 'xh'
              Options.Editing = False
              Options.Grouping = False
              Options.Moving = False
              Width = 56
            end
            object DBGridEh_xxDBTableView1dm: TcxGridDBColumn
              Caption = #20195#30721
              DataBinding.FieldName = 'dm'
              Options.Editing = False
              Options.Grouping = False
              Options.Moving = False
              Width = 52
            end
            object DBGridEh_xxDBTableView1mc: TcxGridDBColumn
              Caption = #21517#31216
              DataBinding.FieldName = 'mc'
              Width = 255
            end
            object DBGridEh_xxDBTableView1qzxs: TcxGridDBColumn
              Caption = #20998#20540
              DataBinding.FieldName = 'qzxs'
            end
            object DBGridEh_xxDBTableView1dj: TcxGridDBColumn
              Caption = #31867#21035
              DataBinding.FieldName = 'dj'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                ''
                '01'
                '02'
                '03')
              Width = 52
            end
            object DBGridEh_xxDBTableView1djmc: TcxGridDBColumn
              Caption = #31867#21035#21517#31216
              DataBinding.FieldName = 'djmc'
              PropertiesClassName = 'TcxComboBoxProperties'
              Width = 87
            end
          end
          object DBGridEh_xxLevel1: TcxGridLevel
            GridView = DBGridEh_xxDBTableView1
          end
        end
      end
    end
  end
  object qry_psbz_dx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from zydzbl_psbz_dx order by dm')
    Left = 24
    Top = 72
  end
  object ds_psbz_dx: TDataSource
    DataSet = qry_psbz_dx
    Left = 24
    Top = 104
  end
  object ds_psbz_xx: TDataSource
    DataSet = qry_psbz_xx
    Left = 64
    Top = 104
  end
  object qry_psbz_xx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    DataSource = ds_psbz_dx
    Parameters = <
      item
        Name = 'dm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select * from zydzbl_psbz_xx where lb=:dm'
      '  order by xh,dm')
    Left = 64
    Top = 72
    object qry_psbz_xxxh: TIntegerField
      FieldName = 'xh'
    end
    object qry_psbz_xxdm: TIntegerField
      FieldName = 'dm'
    end
    object qry_psbz_xxmc: TStringField
      FieldName = 'mc'
      Size = 255
    end
    object qry_psbz_xxqzxs: TBCDField
      FieldName = 'qzxs'
      Precision = 6
      Size = 2
    end
    object qry_psbz_xxlb: TStringField
      FieldName = 'lb'
      Size = 2
    end
    object qry_psbz_xxdj: TStringField
      FieldName = 'dj'
      Size = 2
    end
    object qry_psbz_xxdjmc: TStringField
      FieldKind = fkLookup
      FieldName = 'djmc'
      LookupDataSet = qry_xxsx
      LookupKeyFields = 'dm'
      LookupResultField = 'mc'
      KeyFields = 'dj'
      Lookup = True
    end
  end
  object qry_xxsx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select * from zydzbl_psbz_xxsx')
    Left = 104
    Top = 72
  end
  object qry_xh: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select max(xh) + 1 xh from zydzbl_psbz_xx')
    Left = 144
    Top = 72
  end
  object cmd_exec: TADOCommand
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 176
    Top = 72
  end
  object qry_psbz_bldj: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from zydzbl_psbz_dj')
    Left = 216
    Top = 72
  end
  object ds_psbz_bldj: TDataSource
    DataSet = qry_psbz_bldj
    Left = 216
    Top = 104
  end
end
