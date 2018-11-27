object frm_kszkfxsj: Tfrm_kszkfxsj
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = #31185#23460#26102#38388#36136#25511#20998#26512
  ClientHeight = 559
  ClientWidth = 887
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 28
    Width = 887
    Height = 531
    ActivePage = cxTabSheet1
    Align = alClient
    TabOrder = 0
    ClientRectBottom = 531
    ClientRectRight = 887
    ClientRectTop = 26
    object cxTabSheet2: TcxTabSheet
      Caption = #26102#38388#36136#25511#32479#35745
      ImageIndex = 1
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 887
        Height = 505
        Align = alClient
        TabOrder = 0
        object cxGrid2DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_grtj
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = #21512#35745
              Kind = skCount
              Position = spFooter
              FieldName = 'jkmc'
              Column = cxGrid2DBTableView1jkmc
            end
            item
              Format = '0.00'
              Kind = skAverage
              Position = spFooter
              FieldName = 'glrc'
              Column = cxGrid2DBTableView1glrc
            end
            item
              Kind = skSum
              Position = spFooter
              FieldName = 'wcsl'
              Column = cxGrid2DBTableView1wcsl
            end
            item
              Kind = skSum
              Position = spFooter
              FieldName = 'wcjf'
              Column = cxGrid2DBTableView1wcjf
            end
            item
              Kind = skSum
              Position = spFooter
              FieldName = 'wwcsl'
              Column = cxGrid2DBTableView1wwcsl
            end
            item
              Kind = skSum
              Position = spFooter
              FieldName = 'wwckf'
              Column = cxGrid2DBTableView1wwckf
            end
            item
              Kind = skSum
              Position = spFooter
              FieldName = 'sjfz'
              Column = cxGrid2DBTableView1sjfz
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #24635#35745
              Kind = skCount
              FieldName = 'jkmc'
              Column = cxGrid2DBTableView1jkmc
            end
            item
              Format = '0.00'
              Kind = skAverage
              FieldName = 'glrc'
              Column = cxGrid2DBTableView1glrc
            end
            item
              Kind = skSum
              FieldName = 'sjfz'
              Column = cxGrid2DBTableView1sjfz
            end
            item
              Kind = skSum
              FieldName = 'wcjf'
              Column = cxGrid2DBTableView1wcjf
            end
            item
              Kind = skSum
              FieldName = 'wwckf'
              Column = cxGrid2DBTableView1wwckf
            end
            item
              Kind = skSum
              FieldName = 'wcsl'
              Column = cxGrid2DBTableView1wcsl
            end
            item
              Kind = skSum
              FieldName = 'wwcsl'
              Column = cxGrid2DBTableView1wwcsl
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfAlwaysVisible
          object cxGrid2DBTableView1ksmc: TcxGridDBColumn
            Caption = #31185#23460
            DataBinding.FieldName = 'ksmc'
            Visible = False
            GroupIndex = 0
          end
          object cxGrid2DBTableView1czymc: TcxGridDBColumn
            Caption = #21307#29983
            DataBinding.FieldName = 'czymc'
            Visible = False
            GroupIndex = 1
          end
          object cxGrid2DBTableView1jkmc: TcxGridDBColumn
            Caption = #30417#25511#39033#30446
            DataBinding.FieldName = 'jkmc'
            Width = 215
          end
          object cxGrid2DBTableView1glrc: TcxGridDBColumn
            Caption = #24179#22343#20154#27425
            DataBinding.FieldName = 'glrc'
            Width = 104
          end
          object cxGrid2DBTableView1wcsl: TcxGridDBColumn
            Caption = #23436#25104#25968#37327
            DataBinding.FieldName = 'wcsl'
            Width = 95
          end
          object cxGrid2DBTableView1wcjf: TcxGridDBColumn
            Caption = #23436#25104#31215#20998
            DataBinding.FieldName = 'wcjf'
            Width = 102
          end
          object cxGrid2DBTableView1wwcsl: TcxGridDBColumn
            Caption = #26410#23436#25104#25968#37327
            DataBinding.FieldName = 'wwcsl'
            Width = 93
          end
          object cxGrid2DBTableView1wwckf: TcxGridDBColumn
            Caption = #26410#23436#25104#25187#20998
            DataBinding.FieldName = 'wwckf'
            Width = 98
          end
          object cxGrid2DBTableView1sjfz: TcxGridDBColumn
            Caption = #23454#38469#31215#20998
            DataBinding.FieldName = 'sjfz'
            Width = 100
          end
        end
        object cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Bands = <
            item
            end
            item
            end>
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = #26102#38388#36136#25511#26126#32454
      ImageIndex = 2
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 887
        Height = 505
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_sjzkmx
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1brxx: TcxGridDBColumn
            Caption = #30149#20154#20449#24687
            DataBinding.FieldName = 'brxx'
            Visible = False
            GroupIndex = 2
          end
          object cxGrid1DBTableView1ksmc: TcxGridDBColumn
            Caption = #31185#23460
            DataBinding.FieldName = 'ksmc'
            Visible = False
            GroupIndex = 0
          end
          object cxGrid1DBTableView1ysmc: TcxGridDBColumn
            Caption = #21307#29983
            DataBinding.FieldName = 'ysmc'
            Visible = False
            GroupIndex = 1
          end
          object cxGrid1DBTableView1mc: TcxGridDBColumn
            Caption = #39033#30446
            DataBinding.FieldName = 'mc'
            Width = 102
          end
          object cxGrid1DBTableView1sm: TcxGridDBColumn
            Caption = #35828#26126
            DataBinding.FieldName = 'sm'
            Width = 336
          end
          object cxGrid1DBTableView1sxsj: TcxGridDBColumn
            Caption = #20070#20889#26102#38388
            DataBinding.FieldName = 'sxsj'
            Width = 122
          end
          object cxGrid1DBTableView1sysj: TcxGridDBColumn
            Caption = #21097#20313#26102#38388
            DataBinding.FieldName = 'sysj'
            Width = 120
          end
          object cxGrid1DBTableView1sysjsl: TcxGridDBColumn
            Caption = #21097#20313#23567#26102
            DataBinding.FieldName = 'sysjsl'
            Width = 96
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = #21453#39304#25187#20998#26126#32454
      ImageIndex = 2
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 887
        Height = 505
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_fkxx
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = #21512#35745
              Kind = skCount
              Position = spFooter
              FieldName = 'jkmc'
              Column = cxGridDBColumn3
            end
            item
              Format = '0.00'
              Position = spFooter
              FieldName = 'glrc'
              Column = cxGridDBColumn4
            end
            item
              Kind = skSum
              Position = spFooter
              FieldName = 'sjfz'
            end
            item
              Kind = skSum
              Position = spFooter
              Column = cxGridDBColumn7
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #24635#35745
              Kind = skCount
              FieldName = 'jkmc'
              Column = cxGridDBColumn3
            end
            item
              Format = '0.00'
              FieldName = 'glrc'
              Column = cxGridDBColumn4
            end
            item
              Kind = skSum
              FieldName = 'sjfz'
            end
            item
              Kind = skSum
              FieldName = 'wwcsl'
              Column = cxGridDBColumn7
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfAlwaysVisible
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = #31185#23460
            DataBinding.FieldName = 'ksmc'
            Visible = False
            GroupIndex = 0
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = #21307#29983
            DataBinding.FieldName = 'czymc'
            Visible = False
            GroupIndex = 1
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = #30149#20154#22995#21517
            DataBinding.FieldName = 'brxm'
            Width = 110
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = #21345#21495
            DataBinding.FieldName = 'tmh'
            Width = 112
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = #30149#21382#22823#31867
            DataBinding.FieldName = 'dlmc'
            Width = 123
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = #30149#21382#21517#31216
            DataBinding.FieldName = 'blmc'
            Width = 114
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = #25187#20998#25968
            DataBinding.FieldName = 'kfs'
            Width = 70
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = #25187#20998#21407#22240
            DataBinding.FieldName = 'fkyj'
            Width = 285
          end
        end
        object cxGridDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Bands = <
            item
            end
            item
            end>
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 887
    Height = 28
    Align = alTop
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 579
      Top = 5
      Width = 90
      Height = 15
      Caption = #21307#29983#20195#30721#36807#28388
    end
    object rbmn: TRadioButton
      Left = 125
      Top = 5
      Width = 38
      Height = 15
      Caption = #24180
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = rbmnClick
    end
    object rbmy: TRadioButton
      Left = 45
      Top = 5
      Width = 38
      Height = 15
      Caption = #26376
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = rbmyClick
    end
    object rbmj: TRadioButton
      Left = 84
      Top = 5
      Width = 38
      Height = 15
      Caption = #23395
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = rbmjClick
    end
    object rbdr: TRadioButton
      Left = 169
      Top = 5
      Width = 49
      Height = 15
      Caption = #22810#26085
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = rbdrClick
    end
    object rbmr: TRadioButton
      Left = 5
      Top = 5
      Width = 38
      Height = 15
      Caption = #26085
      Checked = True
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TabStop = True
      OnClick = rbmrClick
    end
    object DTPicker1: TDateTimePicker
      Left = 216
      Top = 2
      Width = 115
      Height = 21
      Date = 37201.495810544000000000
      Time = 37201.495810544000000000
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DTPicker2: TDateTimePicker
      Left = 331
      Top = 2
      Width = 115
      Height = 21
      Date = 37201.495881828700000000
      Time = 37201.495881828700000000
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Visible = False
    end
    object cbmn: TComboBox
      Left = 216
      Top = 2
      Width = 115
      Height = 21
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 7
      Text = 'cbmn'
      Visible = False
    end
    object cbnj: TComboBox
      Left = 331
      Top = 2
      Width = 115
      Height = 21
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 8
      Text = 'cbnj'
      Visible = False
    end
    object b_tj: TBitBtn
      Left = 452
      Top = 3
      Width = 57
      Height = 22
      Caption = #32479#35745
      TabOrder = 9
      OnClick = b_tjClick
      Layout = blGlyphBottom
    end
    object BitBtn1: TBitBtn
      Left = 516
      Top = 3
      Width = 57
      Height = 22
      Caption = #25171#21360
      TabOrder = 10
      OnClick = BitBtn1Click
      Layout = blGlyphBottom
    end
    object BitBtn2: TBitBtn
      Left = 824
      Top = 2
      Width = 57
      Height = 22
      Caption = #36820#22238
      TabOrder = 11
      OnClick = BitBtn2Click
      Layout = blGlyphBottom
    end
    object Edit1: TEdit
      Left = 672
      Top = 2
      Width = 86
      Height = 21
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object BitBtn3: TBitBtn
      Left = 762
      Top = 2
      Width = 57
      Height = 22
      Caption = #36807#28388
      TabOrder = 13
      OnClick = BitBtn3Click
      Layout = blGlyphBottom
    end
  end
  object ds_zyblsjzk: TDataSource
    DataSet = qry_sjzkmx
    Left = 152
    Top = 248
  end
  object qry_grtj: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 
      'select ks.mc ksmc,czy.mc czymc ,sz.mc jkmc ,avg(hz.glrc) glrc, s' +
      'um(hz.wcsl) wcsl,sum(hz.wwcsl) wwcsl,sum(hz.wcjf)wcjf, '#13#10'       ' +
      'sum(hz.wwckf) wwckf,sum(hz.sjfz) sjfz  '#13#10'from zydzbl_hz_sjzkfx h' +
      'z,sys_czy czy ,zydzbl_sjjksz sz,sys_ksdm ks'#13#10'where hz.ysdm=czy.d' +
      'm  and'#13#10'      hz.zkxmdm=sz.dm and'#13#10'      hz.ksdm=ks.dm  '#13#10'group ' +
      'by ks.mc,czy.mc,sz.mc'#13#10
    Parameters = <>
    Left = 256
    Top = 248
  end
  object ds_grtj: TDataSource
    DataSet = qry_grtj
    Left = 296
    Top = 248
  end
  object qry_sjzkmx: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 
      'select czy.mc ysmc ,mx.tmh,mx.zyh,dj.bch,'#39#24202#21495':'#39'+dj.bch+'#39' '#22995#21517':'#39'+dj.' +
      'brxm+'#39#24615#21035':'#39'+dj.brxb+'#39' '#24180#40836':'#39'+convert(varchar, dj.brnl)+'#39' '#21345#21495':'#39'+mx.tm' +
      'h as brxx,sz.mc,sz.sm, sysj= '#13#10'      case sjdw when '#39#22825#39'   then c' +
      'onvert(varchar,datediff(hour,getdate(),ywcsj))+'#39#23567#26102#39' '#13#10'          ' +
      '      when '#39#23567#26102#39' then convert(varchar,datediff(hour,getdate(),ywc' +
      'sj))+'#39#23567#26102#39#13#10'                when '#39#26376#39'   then convert(varchar,dated' +
      'iff(day,getdate(),ywcsj))+'#39#22825#39' end,'#13#10'                sysjsl=conve' +
      'rt(varchar,datediff(hour,getdate(),ywcsj))'#13#10' from zydzbl_sjjkmx ' +
      'mx,zysf_zydj dj,zydzbl_sjjksz sz,zydzbl_blys ys,sys_czy czy'#13#10' wh' +
      'ere dj.zyh=mx.zyh and'#13#10'      mx.sjdm=sz.dm  and'#13#10'      dj.zyh=ys' +
      '.zyh  and'#13#10'      mx.zyh=ys.zyh  and'#13#10'     ys.zzysdm=czy.dm '
    Parameters = <>
    Left = 192
    Top = 248
  end
  object sp_sjzkmx: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zydzbl_cx_zyblsjzk_ys;1'
    Parameters = <
      item
        Name = '@ysdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@clfs'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@filter'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end>
    Left = 439
    Top = 252
  end
  object ds_sjzkmx: TDataSource
    DataSet = sp_sjzkmx
    Left = 479
    Top = 251
  end
  object qry_fkxx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 384
    Top = 152
  end
  object ds_fkxx: TDataSource
    DataSet = qry_fkxx
    Left = 423
    Top = 155
  end
end
