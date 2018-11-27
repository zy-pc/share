object frm_in_yjfyjf: Tfrm_in_yjfyjf
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #31616#26131#35745#36153
  ClientHeight = 503
  ClientWidth = 1075
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1075
    Height = 130
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 280
      Top = 16
      Width = 60
      Height = 15
      Caption = #30149#20154#22995#21517
    end
    object Label2: TLabel
      Left = 502
      Top = 44
      Width = 60
      Height = 15
      Caption = #36153#29992#31867#21035
    end
    object Label3: TLabel
      Left = 280
      Top = 73
      Width = 60
      Height = 15
      Caption = #36153#29992#24635#35745
    end
    object Label4: TLabel
      Left = 24
      Top = 73
      Width = 60
      Height = 15
      Caption = #39044#20132#37329#39069
    end
    object Label5: TLabel
      Left = 500
      Top = 18
      Width = 61
      Height = 15
      Caption = #30149' '#24202' '#21495
    end
    object Label11: TLabel
      Left = 502
      Top = 73
      Width = 60
      Height = 15
      Caption = #33258#36153#37329#39069
    end
    object Label12: TLabel
      Left = 702
      Top = 73
      Width = 60
      Height = 15
      Caption = #21097#20313#37329#39069
    end
    object Label13: TLabel
      Left = 702
      Top = 16
      Width = 60
      Height = 15
      Caption = #20837#38498#26085#26399
    end
    object Label15: TLabel
      Left = 24
      Top = 101
      Width = 60
      Height = 15
      Caption = #20303#38498#31185#23460
    end
    object Label16: TLabel
      Left = 280
      Top = 101
      Width = 60
      Height = 15
      Caption = #20027#31649#21307#29983
    end
    object Label14: TLabel
      Left = 24
      Top = 44
      Width = 60
      Height = 15
      Caption = #20837#38498#35786#26029
    end
    object Label19: TLabel
      Left = 702
      Top = 44
      Width = 60
      Height = 15
      Caption = #35760#36153#38480#39069
    end
    object Label20: TLabel
      Left = 24
      Top = 16
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
    object tmh: TEdit
      Left = 92
      Top = 10
      Width = 100
      Height = 23
      Hint = #30149#20154#22995#21517#12289#20303#38498#21345#21495#12289#30149#24202#21495
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnEnter = tmhEnter
      OnExit = tmhExit
      OnKeyPress = tmhKeyPress
    end
    object fylb: TEdit
      Left = 567
      Top = 39
      Width = 100
      Height = 23
      TabStop = False
      ReadOnly = True
      TabOrder = 2
    end
    object zfy: TEdit
      Left = 346
      Top = 68
      Width = 100
      Height = 24
      TabStop = False
      Color = 16744576
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindow
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = '0'
    end
    object zyj: TEdit
      Left = 92
      Top = 68
      Width = 100
      Height = 24
      TabStop = False
      Color = 16744576
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindow
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      Text = '0'
    end
    object bch: TEdit
      Left = 567
      Top = 11
      Width = 100
      Height = 23
      TabStop = False
      ReadOnly = True
      TabOrder = 1
    end
    object zzf: TEdit
      Left = 567
      Top = 68
      Width = 100
      Height = 24
      TabStop = False
      Color = 16744576
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindow
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = '0'
    end
    object syje: TEdit
      Left = 767
      Top = 68
      Width = 129
      Height = 24
      TabStop = False
      Color = 16744576
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindow
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Text = '0'
    end
    object RYRQ: TEdit
      Left = 767
      Top = 11
      Width = 129
      Height = 23
      TabOrder = 7
    end
    object kdys: TEdit
      Tag = 2
      Left = 346
      Top = 96
      Width = 100
      Height = 23
      TabOrder = 8
      OnEnter = kdysEnter
      OnExit = kdysExit
      OnKeyPress = kdysKeyPress
    end
    object bz: TEdit
      Left = 92
      Top = 39
      Width = 353
      Height = 23
      TabStop = False
      TabOrder = 9
    end
    object zdqf: TEdit
      Left = 767
      Top = 39
      Width = 129
      Height = 23
      TabStop = False
      TabOrder = 10
    end
    object Edit1: TEdit
      Left = 346
      Top = 11
      Width = 100
      Height = 23
      TabStop = False
      ReadOnly = True
      TabOrder = 11
    end
    object DBEdit1: TDBEdit
      Left = 92
      Top = 96
      Width = 98
      Height = 23
      DataField = 'ksmc'
      DataSource = ds_zybrjbqk
      ReadOnly = True
      TabOrder = 12
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 130
    Width = 1075
    Height = 336
    Align = alTop
    TabOrder = 1
    object DBGridEh4: TDBGridEh
      Left = 537
      Top = 1
      Width = 537
      Height = 334
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = ds_cx_bdfy1
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      RowDetailPanel.Color = clBtnFace
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'xz'
          Footers = <>
          Title.Caption = #26159#21542#35745#36153
          Width = 68
        end
        item
          EditButtons = <>
          FieldName = 'fydm'
          Footers = <>
          MaxWidth = 70
          ReadOnly = True
          Title.Caption = #36153#29992#20195#30721
          Width = 70
        end
        item
          EditButtons = <>
          FieldName = 'fymc'
          Footers = <>
          ReadOnly = True
          Title.Caption = #36153#29992#21517#31216
          Width = 143
        end
        item
          EditButtons = <>
          FieldName = 'fysl'
          Footers = <>
          MaxWidth = 40
          Title.Caption = #25968#37327
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'dw'
          Footers = <>
          MaxWidth = 55
          ReadOnly = True
          Title.Caption = #21333#20301
          Width = 55
        end
        item
          EditButtons = <>
          FieldName = 'sfbz'
          Footers = <>
          ReadOnly = True
          Title.Caption = #21333#20215
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object DBGridEh5: TDBGridEh
      Left = 1
      Top = 1
      Width = 536
      Height = 334
      Align = alLeft
      DataGrouping.GroupLevels = <>
      DataSource = ds_cx_bdfy
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      RowDetailPanel.Color = clBtnFace
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'xz'
          Footers = <>
          Title.Caption = #26159#21542#35745#36153
          Width = 68
        end
        item
          EditButtons = <>
          FieldName = 'fydm'
          Footers = <>
          MaxWidth = 70
          ReadOnly = True
          Title.Caption = #36153#29992#20195#30721
          Width = 65
        end
        item
          EditButtons = <>
          FieldName = 'fymc'
          Footers = <>
          ReadOnly = True
          Title.Caption = #36153#29992#21517#31216
          Width = 143
        end
        item
          EditButtons = <>
          FieldName = 'fysl'
          Footers = <>
          MaxWidth = 45
          Title.Caption = #25968#37327
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = 'dw'
          Footers = <>
          MaxWidth = 55
          ReadOnly = True
          Title.Caption = #21333#20301
          Width = 55
        end
        item
          EditButtons = <>
          FieldName = 'sfbz'
          Footers = <>
          ReadOnly = True
          Title.Caption = #21333#20215
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 466
    Width = 1075
    Height = 37
    Align = alClient
    TabOrder = 2
    object Button1: TButton
      Left = 408
      Top = 7
      Width = 75
      Height = 25
      Caption = #35745#36153
      TabOrder = 0
      OnClick = Button1Click
    end
    object btn_close: TButton
      Left = 584
      Top = 7
      Width = 75
      Height = 25
      Caption = #36864#20986
      TabOrder = 1
      OnClick = btn_closeClick
    end
  end
  object tempgrid1: TDBGrid
    Left = 92
    Top = 189
    Width = 285
    Height = 124
    DataSource = ds_zybrjbqk
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = tempgrid1Exit
    OnKeyPress = tempgrid1KeyPress
  end
  object ksys_grid: TDBGrid
    Left = 346
    Top = 122
    Width = 255
    Height = 113
    DataSource = ds_ysks
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = ksys_gridExit
    OnKeyPress = ksys_gridKeyPress
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
    Left = 566
    Top = 258
  end
  object ds_zybrjbqk: TDataSource
    DataSet = sp_cx_zybrjbqk
    Left = 488
    Top = 265
  end
  object ds_ysks: TDataSource
    DataSet = sp_cx_czyks
    Left = 500
    Top = 200
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
    Left = 552
    Top = 201
  end
  object sp_cx_bdfy: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_create_fjfy'
    Parameters = <>
    Left = 392
    Top = 720
  end
  object sp_cx_bdfy1: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_create_fjfy_1'
    Parameters = <>
    Left = 680
    Top = 592
  end
  object ds_cx_bdfy: TDataSource
    DataSet = sp_cx_bdfy
    Left = 44
    Top = 200
  end
  object ds_cx_bdfy1: TDataSource
    DataSet = sp_cx_bdfy1
    Left = 736
    Top = 201
  end
  object sp_in_bdfymx: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zyyz_in_bdfyjf'
    Parameters = <>
    Left = 624
    Top = 608
  end
end
