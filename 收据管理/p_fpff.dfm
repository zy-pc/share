object frm_fpff: Tfrm_fpff
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #21457#31080#21457#25918
  ClientHeight = 562
  ClientWidth = 798
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 798
    Height = 562
    ActivePage = cxTabSheet1
    Align = alClient
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    NavigatorPosition = npRightBottom
    Style = 8
    TabOrder = 0
    ClientRectBottom = 562
    ClientRectRight = 798
    ClientRectTop = 26
    object cxTabSheet1: TcxTabSheet
      Caption = #21457#31080#21457#25918
      ImageIndex = 0
      object Panel1: TPanel
        Left = 465
        Top = 0
        Width = 333
        Height = 536
        Align = alClient
        TabOrder = 1
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 331
          Height = 41
          Align = alTop
          BevelOuter = bvSpace
          TabOrder = 0
          object Button1: TButton
            Left = 8
            Top = 7
            Width = 75
            Height = 25
            Caption = #26032#22686
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = Button1Click
          end
          object Button2: TButton
            Left = 84
            Top = 7
            Width = 75
            Height = 25
            Caption = #30830#23450
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = Button2Click
          end
          object Button3: TButton
            Left = 160
            Top = 7
            Width = 75
            Height = 25
            Caption = #25918#24323
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = Button3Click
          end
        end
        object Panel3: TPanel
          Left = 1
          Top = 42
          Width = 331
          Height = 493
          Align = alClient
          BevelOuter = bvSpace
          Enabled = False
          TabOrder = 1
          object Label1: TLabel
            Left = 9
            Top = 16
            Width = 60
            Height = 15
            Caption = #21457#31080#31867#22411
          end
          object Label2: TLabel
            Left = 9
            Top = 48
            Width = 60
            Height = 15
            Caption = #21457#31080#36215#21495
          end
          object Label3: TLabel
            Left = 9
            Top = 80
            Width = 60
            Height = 15
            Caption = #21457#31080#27490#21495
          end
          object Label4: TLabel
            Left = 24
            Top = 144
            Width = 45
            Height = 15
            Caption = #39046#29992#20154
          end
          object lbl_zs: TLabel
            Left = 72
            Top = 219
            Width = 8
            Height = 15
          end
          object Label5: TLabel
            Left = 9
            Top = 112
            Width = 60
            Height = 15
            Caption = #21457#31080#25968#37327
          end
          object Label8: TLabel
            Left = 9
            Top = 177
            Width = 60
            Height = 15
            Caption = #39046#29992#31185#23460
            Visible = False
          end
          object cbb_sjlx: TcxComboBox
            Left = 75
            Top = 12
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #38376#35786#25910#25454
              #20303#38498#39044#20132#25910#25454
              #20303#38498#32467#31639#25910#25454
              #20303#38498#25910#36153#25910#25454)
            Properties.OnChange = cbb_sjlxPropertiesChange
            Style.Shadow = False
            Style.TextStyle = [fsBold]
            Style.TransparentBorder = False
            StyleFocused.BorderStyle = ebsOffice11
            StyleFocused.ButtonStyle = btsOffice11
            TabOrder = 0
            Text = #38376#35786#25910#25454
            OnKeyDown = cbb_sjlxKeyDown
            Width = 147
          end
          object edt_qh: TcxTextEdit
            Left = 75
            Top = 44
            Style.Shadow = False
            Style.TextStyle = [fsBold]
            TabOrder = 1
            OnKeyDown = cbb_sjlxKeyDown
            Width = 147
          end
          object edt_zh: TcxTextEdit
            Left = 75
            Top = 78
            Style.Shadow = False
            Style.TextStyle = [fsBold]
            Style.TransparentBorder = False
            TabOrder = 2
            OnKeyDown = cbb_sjlxKeyDown
            Width = 147
          end
          object cxTextEdit1: TcxTextEdit
            Left = 75
            Top = 142
            Style.Shadow = False
            Style.TextStyle = [fsBold]
            Style.TransparentBorder = False
            TabOrder = 3
            OnClick = cxTextEdit1Click
            OnKeyPress = cxTextEdit1KeyPress
            Width = 73
          end
          object cxTextEdit2: TcxTextEdit
            Left = 149
            Top = 142
            Enabled = False
            Style.Shadow = False
            Style.TextStyle = [fsBold]
            Style.TransparentBorder = False
            TabOrder = 4
            OnKeyPress = cxTextEdit1KeyPress
            Width = 73
          end
          object edt_fpsl: TcxTextEdit
            Left = 75
            Top = 110
            Enabled = False
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clMaroon
            Style.Font.Height = -15
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.Shadow = False
            Style.TextStyle = [fsBold]
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            TabOrder = 5
            OnKeyDown = cbb_sjlxKeyDown
            Width = 147
          end
          object edt_ksdm: TcxTextEdit
            Left = 75
            Top = 175
            Style.Shadow = False
            Style.TextStyle = [fsBold]
            Style.TransparentBorder = False
            TabOrder = 6
            Visible = False
            OnKeyPress = edt_ksdmKeyPress
            Width = 54
          end
          object edt_ksmc: TcxTextEdit
            Left = 128
            Top = 175
            Enabled = False
            Style.Shadow = False
            Style.TextStyle = [fsBold]
            Style.TransparentBorder = False
            TabOrder = 7
            Visible = False
            OnKeyPress = cxTextEdit1KeyPress
            Width = 94
          end
          object dbgrd_ks: TDBGrid
            Left = 29
            Top = 202
            Width = 201
            Height = 190
            DataSource = ds_ks
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 8
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = #23435#20307
            TitleFont.Style = []
            Visible = False
            OnExit = dbgrd_ksExit
            OnKeyPress = dbgrd_ksKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'dm'
                Title.Alignment = taCenter
                Title.Caption = #20195#30721
                Width = 54
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'mc'
                Title.Alignment = taCenter
                Title.Caption = #21517#31216
                Width = 84
                Visible = True
              end>
          end
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 465
        Height = 536
        Align = alLeft
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_sjkc
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = #36215#21495
            DataBinding.FieldName = 'sjqh'
            Width = 140
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            Caption = #27490#21495
            DataBinding.FieldName = 'sjzh'
            Width = 131
          end
          object cxGrid1DBTableView1Column3: TcxGridDBColumn
            Caption = #21097#20313#25968#37327
            DataBinding.FieldName = 'sysl'
            Width = 110
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #21457#25918#26597#35810
      ImageIndex = 1
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 798
        Height = 41
        Align = alTop
        TabOrder = 0
        object Label6: TLabel
          Left = 4
          Top = 16
          Width = 60
          Height = 15
          Caption = #24320#22987#26085#26399
        end
        object Label7: TLabel
          Left = 183
          Top = 16
          Width = 60
          Height = 15
          Caption = #32467#26463#26085#26399
        end
        object lbl_bz: TLabel
          Left = 373
          Top = 11
          Width = 174
          Height = 24
          Caption = #28784#33394#24213#32441#65306#25910#25454#24050#21457#25918#21040#25805#20316#21592';'#13#10#32418#33394#24213#32441#65306#25910#25454#24050#20316#24223
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object ksrq: TcxDateEdit
          Left = 66
          Top = 11
          Style.BorderStyle = ebsOffice11
          Style.Shadow = False
          Style.TextStyle = [fsBold]
          TabOrder = 0
          Width = 114
        end
        object jsrq: TcxDateEdit
          Left = 244
          Top = 11
          Style.BorderStyle = ebsOffice11
          Style.Shadow = False
          Style.TextStyle = [fsBold]
          TabOrder = 1
          Width = 113
        end
        object Button6: TButton
          Left = 562
          Top = 10
          Width = 61
          Height = 25
          Caption = #26597#35810
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button6Click
        end
        object Button4: TButton
          Left = 634
          Top = 10
          Width = 61
          Height = 25
          Caption = #25171#21360
          TabOrder = 3
          OnClick = Button4Click
        end
        object btn_zf: TButton
          Left = 712
          Top = 10
          Width = 61
          Height = 25
          Caption = #20316' '#24223
          TabOrder = 4
          Visible = False
          OnClick = btn_zfClick
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 41
        Width = 798
        Height = 495
        Align = alClient
        TabOrder = 1
        object cxGrid2DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCustomDrawCell = cxGrid2DBTableView1CustomDrawCell
          DataController.DataSource = ds_sjckcx
          DataController.Filter.AutoDataSetFilter = True
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
              Position = spFooter
              Column = cxGrid2DBTableView1Column5
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1Column5
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsSelection.CellMultiSelect = True
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.GroupRowStyle = grsOffice11
          object cxGrid2DBTableView1Column1: TcxGridDBColumn
            Caption = #39046#29992#20154
            DataBinding.FieldName = 'rkczymc'
            Width = 88
          end
          object cxGrid2DBTableView1Column9: TcxGridDBColumn
            Caption = #39046#29992#31185#23460
            DataBinding.FieldName = 'lyksmc'
            Width = 66
          end
          object cxGrid2DBTableView1Column2: TcxGridDBColumn
            Caption = #25910#25454#31867#22411
            DataBinding.FieldName = 'sjlxmc'
            Width = 84
          end
          object cxGrid2DBTableView1Column3: TcxGridDBColumn
            Caption = #36215#21495
            DataBinding.FieldName = 'sjqh'
            Width = 73
          end
          object cxGrid2DBTableView1Column4: TcxGridDBColumn
            Caption = #27490#21495
            DataBinding.FieldName = 'sjzh'
            Width = 70
          end
          object cxGrid2DBTableView1Column5: TcxGridDBColumn
            Caption = #25968#37327
            DataBinding.FieldName = 'sjsl'
            Width = 78
          end
          object cxGrid2DBTableView1Column6: TcxGridDBColumn
            Caption = #39046#29992#26102#38388
            DataBinding.FieldName = 'lysj'
            Width = 86
          end
          object cxGrid2DBTableView1Column7: TcxGridDBColumn
            Caption = #21457#25918#20154
            DataBinding.FieldName = 'ffrmc'
            Width = 85
          end
          object cxGrid2DBTableView1Column8: TcxGridDBColumn
            Caption = #21333#25454#21495
            DataBinding.FieldName = 'djh'
            Width = 134
          end
          object cxGrid2DBTableView1Column10: TcxGridDBColumn
            Caption = #20351#29992#29366#24577
            DataBinding.FieldName = 'syzt'
            Visible = False
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
  end
  object DBGrid3: TDBGrid
    Left = 532
    Top = 270
    Width = 164
    Height = 190
    DataSource = DS_czy
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = DBGrid3Exit
    OnKeyPress = DBGrid3KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'dm'
        Title.Alignment = taCenter
        Title.Caption = #20195#30721
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mc'
        Title.Alignment = taCenter
        Title.Caption = #22995#21517
        Width = 84
        Visible = True
      end>
  end
  object qry_sjkc: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = qry_sjkcAfterScroll
    Parameters = <
      item
        Name = 'sjlx'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = '01'
      end>
    SQL.Strings = (
      'select * from sjgl_sjrkmx where sjlx =:sjlx and sysl > 0')
    Left = 200
    Top = 152
  end
  object ds_sjkc: TDataSource
    DataSet = qry_sjkc
    Left = 168
    Top = 152
  end
  object qry_czy: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'pym'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select * from sys_czy where pym like :pym')
    Left = 200
    Top = 280
  end
  object DS_czy: TDataSource
    DataSet = qry_czy
    Left = 168
    Top = 288
  end
  object qry_sjh: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 200
    Top = 248
  end
  object SP_sjlyjc: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'sys_sjlyjc;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@sjlb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@sjqh'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@sjzh'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@zt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 30
        Value = Null
      end>
    Left = 205
    Top = 314
  end
  object qry_sjff: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'djh'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'select * from sjgl_sjffmx where djh =:djh')
    Left = 200
    Top = 216
  end
  object Qry_sjlymx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'lydh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select * from sys_sjlymx where lydh=:lydh')
    Left = 200
    Top = 184
  end
  object ds_sjckcx: TDataSource
    DataSet = qry_sjckcx
    Left = 296
    Top = 240
  end
  object qry_sjckcx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qry_sjckcxAfterScroll
    Parameters = <
      item
        Name = 'ksrq'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = '1'
      end
      item
        Name = 'jsrq'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = '1'
      end>
    SQL.Strings = (
      'select a.*,b.mc sjlxmc,c.mc rkczymc,d.mc ffrmc'
      'from sjgl_sjffmx a,'
      'sys_sjlb b,'
      'sys_czy c,'
      'sys_czy d'
      'where convert(char,lysj,112) >=:ksrq'
      'and convert(char,lysj,112) <= :jsrq'
      'and a.sjlb = b.dm'
      'and a.lyr = c.dm'
      'and a.ffr = d.dm')
    Left = 264
    Top = 232
  end
  object GridppReport1: TGridppReport
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 680
    Top = 80
  end
  object qry_ks: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'pym'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'pym'
        Size = -1
        Value = Null
      end
      item
        Name = 'pym'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT * FROM dbo.sys_ksdm WHERE sybz = 1 AND (pym like :pym OR ' +
        'mc LIKE :pym OR dm like :pym)')
    Left = 200
    Top = 368
  end
  object ds_ks: TDataSource
    DataSet = qry_ks
    Left = 168
    Top = 368
  end
end
