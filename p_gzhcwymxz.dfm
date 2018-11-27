object frm_gzhcwymxz: Tfrm_gzhcwymxz
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = #39640#20540#32791#26448#21807#19968#30721#36873#25321
  ClientHeight = 543
  ClientWidth = 907
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 907
    Height = 41
    Align = alTop
    TabOrder = 0
    object btn1: TButton
      Left = 312
      Top = 10
      Width = 75
      Height = 25
      Caption = #30830#23450
      Default = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 488
      Top = 10
      Width = 75
      Height = 25
      Caption = #25918#24323
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btn2Click
    end
  end
  object cxgrd1: TcxGrid
    Left = 0
    Top = 41
    Width = 907
    Height = 502
    Align = alClient
    TabOrder = 1
    object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #21517#31216
        DataBinding.FieldName = 'ypmc'
        Width = 168
      end
      object cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = #21807#19968#30721
        DataBinding.FieldName = 'wym'
        Width = 122
      end
      object cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #31185#23460#21517#31216
        DataBinding.FieldName = 'ksmc'
        Width = 124
      end
      object cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = #20844#21496#21517#31216
        DataBinding.FieldName = 'gsmc'
        Width = 120
      end
      object cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = #20837#24211#26085#26399
        DataBinding.FieldName = 'rksj'
        Width = 115
      end
      object cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = #25209#21495
        DataBinding.FieldName = 'ph'
        Width = 80
      end
      object cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn
        Caption = #20837#24211#21333#21495
        DataBinding.FieldName = 'rkdh'
        Width = 142
      end
    end
    object cxgrdlvlGrid1Level1: TcxGridLevel
      GridView = cxgrdbtblvwGrid1DBTableView1
    end
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 248
    Top = 120
  end
  object qry1: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ypdm'
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = 'ksdm'
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = 'rkdh'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare @ypdm varchar(20),@ksdm char(4),@rkdh varchar(20)'
      'set @ypdm =:ypdm'
      'set @ksdm =:ksdm'
      'set @rkdh =:rkdh'
      ''
      'select a.*,b.ypmc,c.mc ksmc,d.mc gsmc from sys_gzhcwym a'
      'join sys_ypdm b on a.ypdm = b.ypdm'
      'join sys_ksdm c on a.dqks = c.dm'
      'left join sys_gsdm d on a.gsdm = d.dm'
      'where a.ypdm = @ypdm'
      'and a.dqks = @ksdm'
      'and a.yxbz= 1'
      'and a.rkdh like @rkdh+'#39'%'#39
      '')
    Left = 288
    Top = 120
  end
end
