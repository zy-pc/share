object frm_ylaqsjbgb: Tfrm_ylaqsjbgb
  Left = 0
  Top = 0
  HorzScrollBar.Tracking = True
  VertScrollBar.Tracking = True
  Align = alCustom
  Caption = #21307#30103#23433#20840'('#19981#33391')'#20107#20214#25253#21578#34920
  ClientHeight = 741
  ClientWidth = 1362
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1362
    Height = 741
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #20107#20214#26032#22686
      OnShow = TabSheet1Show
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1354
        Height = 31
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Button1: TButton
          Left = 408
          Top = 0
          Width = 77
          Height = 29
          Caption = #20445#23384
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button6: TButton
          Left = 653
          Top = 0
          Width = 77
          Height = 29
          Caption = #36864#21069#32423#31185#23460
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button6Click
        end
        object Button3: TButton
          Left = 736
          Top = 0
          Width = 64
          Height = 29
          Caption = #25171#21360
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button3Click
        end
        object Button8: TButton
          Left = 821
          Top = 0
          Width = 73
          Height = 29
          Caption = #25918#24323
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = Button8Click
        end
        object Button4: TButton
          Left = 918
          Top = 0
          Width = 80
          Height = 29
          Caption = #36864#20986
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = Button4Click
        end
        object cxButton1: TcxButton
          Left = 503
          Top = 0
          Width = 73
          Height = 29
          Caption = #25552#20132
          TabOrder = 5
          DropDownMenu = PopupMenu1
          Kind = cxbkDropDown
        end
        object Button7: TButton
          Left = 584
          Top = 0
          Width = 65
          Height = 29
          Caption = #23436#25104
          TabOrder = 6
          OnClick = Button7Click
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 31
        Width = 262
        Height = 676
        Align = alLeft
        DataSource = ds_brcx
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = PopupMenu2
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'brxm'
            Title.Caption = #30149#20154#22995#21517
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sbrq'
            Title.Caption = #19978#25253#26085#26399
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'clzt'
            Title.Caption = #22788#29702#29366#24577
            Width = 105
            Visible = True
          end>
      end
      object PageControl2: TPageControl
        Left = 262
        Top = 31
        Width = 1092
        Height = 676
        ActivePage = TabSheet5
        Align = alClient
        Style = tsFlatButtons
        TabOrder = 2
        object TabSheet4: TTabSheet
          Caption = #22635#20889#39029#38754'(1)'
          object Label1: TLabel
            Left = 7
            Top = 2
            Width = 64
            Height = 15
            Caption = #24739#32773#36164#26009
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 7
            Top = 23
            Width = 38
            Height = 15
            Caption = #22995#21517':'
          end
          object Label8: TLabel
            Left = 7
            Top = 50
            Width = 68
            Height = 15
            Caption = #21457#29983#26102#38388':'
          end
          object Label3: TLabel
            Left = 159
            Top = 23
            Width = 38
            Height = 15
            Caption = #24615#21035':'
          end
          object Label4: TLabel
            Left = 285
            Top = 23
            Width = 38
            Height = 15
            Caption = #24180#40836':'
          end
          object Label5: TLabel
            Left = 423
            Top = 23
            Width = 53
            Height = 15
            Caption = #20303#38498#21495':'
          end
          object Label9: TLabel
            Left = 283
            Top = 50
            Width = 68
            Height = 15
            Caption = #19978#25253#26102#38388':'
          end
          object Label11: TLabel
            Left = 7
            Top = 79
            Width = 68
            Height = 15
            Caption = #20020#24202#35786#26029':'
          end
          object Label12: TLabel
            Left = 8
            Top = 104
            Width = 180
            Height = 15
            Caption = #19981#33391#20107#20214#24773#20917#65306#19981#33391#21518#26524#65306
          end
          object Label13: TLabel
            Left = 3
            Top = 268
            Width = 90
            Height = 15
            Caption = #19981#33391#20107#20214#31867#21035
          end
          object Label6: TLabel
            Left = 629
            Top = 23
            Width = 38
            Height = 15
            Caption = #31185#23460':'
          end
          object Label14: TLabel
            Left = 810
            Top = 24
            Width = 68
            Height = 15
            Caption = #20837#38498#26102#38388':'
          end
          object Label10: TLabel
            Left = 615
            Top = 50
            Width = 53
            Height = 15
            Caption = #25253#21578#20154':'
          end
          object cxDateEdit2: TcxDateEdit
            Left = 82
            Top = 47
            TabOrder = 0
            Width = 195
          end
          object Edit1: TEdit
            Left = 51
            Top = 19
            Width = 102
            Height = 23
            Hint = #35831#36755#20837#22995#21517'/'#25340#38899#30721'/'#20303#38498#21495
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnKeyPress = Edit1KeyPress
          end
          object Edit3: TEdit
            Left = 325
            Top = 19
            Width = 86
            Height = 23
            TabOrder = 2
          end
          object Edit4: TEdit
            Left = 480
            Top = 19
            Width = 143
            Height = 23
            TabOrder = 3
          end
          object cxDateEdit3: TcxDateEdit
            Left = 359
            Top = 47
            TabOrder = 4
            Width = 186
          end
          object Edit7: TEdit
            Left = 83
            Top = 73
            Width = 462
            Height = 23
            TabOrder = 5
          end
          object CheckBox1: TCheckBox
            Left = 200
            Top = 102
            Width = 41
            Height = 17
            Caption = #26080
            TabOrder = 6
            OnClick = CheckBox1Click
          end
          object CheckBox2: TCheckBox
            Left = 264
            Top = 102
            Width = 41
            Height = 17
            Caption = #26377
            TabOrder = 7
            OnClick = CheckBox2Click
          end
          object Memo1: TMemo
            Left = 3
            Top = 122
            Width = 1055
            Height = 137
            Lines.Strings = (
              #20107#20214#32463#36807':')
            TabOrder = 8
            OnDblClick = Memo1DblClick
          end
          object Edit2: TEdit
            Left = 203
            Top = 18
            Width = 78
            Height = 23
            TabOrder = 9
          end
          object Edit5: TEdit
            Left = 675
            Top = 20
            Width = 135
            Height = 23
            TabOrder = 10
          end
          object Edit6: TEdit
            Left = 675
            Top = 47
            Width = 135
            Height = 23
            TabOrder = 11
            OnExit = Edit6Exit
            OnKeyPress = Edit6KeyPress
          end
          object dbgrd_brjs: TDBGrid
            Left = 3
            Top = 45
            Width = 393
            Height = 71
            DataSource = ds_jslb
            TabOrder = 12
            TitleFont.Charset = GB2312_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = #23435#20307
            TitleFont.Style = []
            Visible = False
            OnDblClick = dbgrd_brjsDblClick
            OnExit = dbgrd_brjsExit
            OnKeyPress = dbgrd_brjsKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'brxm'
                Title.Caption = #22995#21517
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'brnl'
                Title.Caption = #24180#40836
                Width = 118
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ryrq'
                Title.Caption = #20837#38498#26085#26399
                Width = 159
                Visible = True
              end>
          end
          object cxDateEdit1: TcxDateEdit
            Left = 884
            Top = 20
            TabOrder = 13
            Width = 186
          end
          object dbgrd_ry: TDBGrid
            Left = 675
            Top = 76
            Width = 137
            Height = 33
            DataSource = ds_ry
            TabOrder = 14
            TitleFont.Charset = GB2312_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = #23435#20307
            TitleFont.Style = []
            Visible = False
            OnDblClick = dbgrd_ryDblClick
            OnExit = dbgrd_ryExit
            OnKeyPress = dbgrd_ryKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'mc'
                Title.Caption = #21517#31216
                Width = 118
                Visible = True
              end>
          end
        end
        object TabSheet5: TTabSheet
          Caption = #22635#20889#39029#38754'(2)'
          ImageIndex = 1
          OnShow = TabSheet5Show
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 1084
            Height = 642
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object ScrollBox1: TScrollBox
              Left = 0
              Top = 0
              Width = 1084
              Height = 642
              Align = alClient
              AutoScroll = False
              BevelOuter = bvNone
              BorderStyle = bsNone
              TabOrder = 0
              object Panel3: TPanel
                Left = 1
                Top = -1
                Width = 1198
                Height = 900
                BevelOuter = bvNone
                Ctl3D = True
                ParentCtl3D = False
                TabOrder = 0
                object Label21: TLabel
                  Left = 848
                  Top = 595
                  Width = 90
                  Height = 15
                  Caption = #36136#25511#31185#31614#23383#65306
                end
                object Label20: TLabel
                  Left = 836
                  Top = 485
                  Width = 105
                  Height = 15
                  Caption = #20027#31649#37096#38376#31614#23383#65306
                end
                object Label19: TLabel
                  Left = 848
                  Top = 341
                  Width = 90
                  Height = 15
                  Caption = #31185#23460#36127#36131#20154#65306
                end
                object Label18: TLabel
                  Left = 904
                  Top = 168
                  Width = 83
                  Height = 15
                  Caption = #31185#23460#36127#36131#20154':'
                end
                object Label17: TLabel
                  Left = 3
                  Top = 490
                  Width = 90
                  Height = 15
                  Caption = #25345#32493#25913#36827#25514#26045
                end
                object Label16: TLabel
                  Left = 3
                  Top = 354
                  Width = 90
                  Height = 15
                  Caption = #19981#33391#20107#20214#35780#20215
                end
                object c: TLabel
                  Left = 848
                  Top = 205
                  Width = 90
                  Height = 15
                  Caption = #31185#23460#36127#36131#20154#65306
                end
                object Panel2: TPanel
                  Left = 0
                  Top = 0
                  Width = 1198
                  Height = 75
                  Align = alTop
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Label7: TLabel
                    Left = 8
                    Top = 18
                    Width = 105
                    Height = 15
                    Caption = #19981#33391#20107#20214#30340#31561#32423
                  end
                  object Label15: TLabel
                    Left = 8
                    Top = 54
                    Width = 180
                    Height = 15
                    Caption = #20107#20214#21457#29983#21518#21450#26102#22788#29702#19982#20998#26512
                  end
                  object CheckBox3: TCheckBox
                    Left = 136
                    Top = 16
                    Width = 73
                    Height = 17
                    Caption = 'I'#32423#20107#20214
                    TabOrder = 0
                    OnClick = CheckBox3Click
                  end
                  object CheckBox4: TCheckBox
                    Left = 256
                    Top = 16
                    Width = 97
                    Height = 17
                    Caption = 'II'#32423#20107#20214
                    TabOrder = 1
                    OnClick = CheckBox4Click
                  end
                  object CheckBox5: TCheckBox
                    Left = 387
                    Top = 16
                    Width = 97
                    Height = 17
                    Caption = 'III'#32423#20107#20214
                    TabOrder = 2
                    OnClick = CheckBox5Click
                  end
                  object CheckBox6: TCheckBox
                    Left = 551
                    Top = 16
                    Width = 97
                    Height = 17
                    Caption = 'IV'#32423#20107#20214
                    TabOrder = 3
                    OnClick = CheckBox6Click
                  end
                end
                object Memo5: TMemo
                  Left = 0
                  Top = 507
                  Width = 1137
                  Height = 85
                  Enabled = False
                  TabOrder = 1
                  OnDblClick = Memo5DblClick
                end
                object Memo4: TMemo
                  Left = 2
                  Top = 371
                  Width = 1134
                  Height = 97
                  Enabled = False
                  TabOrder = 2
                  OnDblClick = Memo4DblClick
                end
                object Memo3: TMemo
                  Left = 3
                  Top = 222
                  Width = 1199
                  Height = 113
                  Align = alCustom
                  Enabled = False
                  Lines.Strings = (
                    #20107#20214#22788#29702#24773#20917#65288#25552#20379#34917#25937#25514#26045#25110#25913#21892#24314#35758#65289)
                  TabOrder = 3
                  OnDblClick = Memo3DblClick
                end
                object Memo2: TMemo
                  Left = 0
                  Top = 75
                  Width = 1198
                  Height = 113
                  Align = alTop
                  Enabled = False
                  Lines.Strings = (
                    #23548#33268#20107#20214#30340#21487#33021#21407#22240)
                  TabOrder = 4
                  OnDblClick = Memo2DblClick
                end
                object edt_ksfzr: TEdit
                  Left = 936
                  Top = 200
                  Width = 119
                  Height = 23
                  TabOrder = 5
                end
                object Edit9: TEdit
                  Left = 936
                  Top = 480
                  Width = 119
                  Height = 23
                  TabOrder = 6
                end
                object Edit8: TEdit
                  Left = 936
                  Top = 336
                  Width = 119
                  Height = 23
                  TabOrder = 7
                end
                object Edit10: TEdit
                  Left = 936
                  Top = 592
                  Width = 119
                  Height = 23
                  TabOrder = 8
                end
              end
            end
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #20107#20214#26597#35810
      ImageIndex = 1
      OnShow = TabSheet2Show
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1354
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label22: TLabel
          Left = 16
          Top = 8
          Width = 68
          Height = 15
          Caption = #19978#25253#26102#38388':'
        end
        object Label23: TLabel
          Left = 216
          Top = 8
          Width = 15
          Height = 15
          Caption = #21040
        end
        object cxDateEdit4: TcxDateEdit
          Left = 98
          Top = 3
          TabOrder = 0
          Width = 105
        end
        object cxDateEdit5: TcxDateEdit
          Left = 237
          Top = 3
          TabOrder = 1
          Width = 105
        end
        object Button2: TButton
          Left = 608
          Top = 0
          Width = 57
          Height = 25
          Caption = #26597#35810
          TabOrder = 2
          OnClick = Button2Click
        end
        object Button5: TButton
          Left = 688
          Top = 0
          Width = 81
          Height = 25
          Caption = #21462#28040#24402#26723
          TabOrder = 3
          OnClick = Button5Click
        end
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 65
        Width = 1354
        Height = 642
        Align = alBottom
        BorderStyle = bsNone
        DataSource = ds_sjcx
        TabOrder = 1
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #31185#23460
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = #30149#20154#22995#21517
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = #30149#20154#24180#40836
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = #30149#20154#24615#21035
            Visible = True
          end
          item
            Expanded = False
            FieldName = #20303#38498#21495
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = #25253#21578#20154
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = #20837#38498#26085#26399
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = #21457#29983#26085#26399
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = #19978#25253#26085#26399
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = #30149#20154#35786#26029
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = #19981#33391#21518#26524
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = #19981#33391#20107#20214#31561#32423
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = #31185#23460#36127#36131#20154
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = #32844#33021#31185#23460
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = #36136#25511#31185
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = #20107#20214#32479#35745
      ImageIndex = 2
      OnShow = TabSheet3Show
      object cxGrid1: TcxGrid
        Left = 0
        Top = 65
        Width = 1354
        Height = 642
        Align = alBottom
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_sjtj
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1354
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label24: TLabel
          Left = 16
          Top = 8
          Width = 68
          Height = 15
          Caption = #19978#25253#26102#38388':'
        end
        object Label25: TLabel
          Left = 216
          Top = 8
          Width = 15
          Height = 15
          Caption = #21040
        end
        object cxDateEdit6: TcxDateEdit
          Left = 105
          Top = 3
          TabOrder = 0
          Width = 107
        end
        object cxDateEdit7: TcxDateEdit
          Left = 237
          Top = 3
          TabOrder = 1
          Width = 105
        end
        object Button9: TButton
          Left = 608
          Top = 0
          Width = 57
          Height = 25
          Caption = #32479#35745
          TabOrder = 2
          OnClick = Button9Click
        end
        object cbb1: TComboBox
          Left = 384
          Top = 0
          Width = 193
          Height = 23
          ItemHeight = 15
          TabOrder = 3
          Items.Strings = (
            #20107#20214#20154#27425#32479#35745
            #20107#20214#31561#32423#32479#35745)
        end
      end
    end
  end
  object ds_brcx: TDataSource
    DataSet = sp_brlb
    Left = 72
    Top = 136
  end
  object qry_sjlb: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 32
    Top = 184
  end
  object qry_lbsj: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'dm'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select *   from blsj_sjlb where dm=:dm')
    Left = 72
    Top = 184
  end
  object sp_brjs: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'ylaqlbsj_brcx'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@sj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 72
    Top = 224
  end
  object ds_jslb: TDataSource
    DataSet = sp_brjs
    Left = 32
    Top = 256
  end
  object ds_ry: TDataSource
    DataSet = sp_sbrcx
    Left = 32
    Top = 288
  end
  object sp_sbrcx: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'ylaqlbsj_sbrcx'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@sj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 72
    Top = 288
  end
  object sc: TActionList
    Left = 128
    Top = 144
    object Action1: TAction
      Caption = 'Action1'
    end
    object Action2: TAction
      Caption = 'Action2'
    end
  end
  object sp_xrjbxx: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'ylaq_in_sj'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@brxm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 40
        Value = Null
      end
      item
        Name = '@brxb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@brnl'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@ks'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@ryrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@fsrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@sbrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@bgr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@brzd'
        Attributes = [paNullable]
        DataType = ftString
        Size = 40
        Value = Null
      end
      item
        Name = '@blhg'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@sjjg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2000
        Value = Null
      end
      item
        Name = '@blsjlb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 40
        Value = Null
      end
      item
        Name = '@blsjdj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@sjknyy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2000
        Value = Null
      end
      item
        Name = '@sjclqk'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2000
        Value = Null
      end
      item
        Name = '@blsjpj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2000
        Value = Null
      end
      item
        Name = '@cxgjcs'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2000
        Value = Null
      end
      item
        Name = '@ksfzr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@yjspr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@ejspr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 32
    Top = 328
  end
  object PopupMenu1: TPopupMenu
    Left = 440
    Top = 64
    object N1: TMenuItem
      Caption = #31185#23460#36127#36131#20154
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #32844#33021#37096#38376
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #36136#25511#31185
      OnClick = N3Click
    end
  end
  object qry_lbsx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 32
    Top = 96
  end
  object sp_brlb: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'ylaq_cx_brlb'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ksmc'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@czy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 32
    Top = 144
  end
  object sp_sjcx: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'blsj_cx_ylaqblsj'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 32
    Top = 368
  end
  object ds_sjcx: TDataSource
    DataSet = sp_sjcx
    Left = 72
    Top = 368
  end
  object sp_sjtj: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'ylaq_cx_sjtj'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@cxfs'
        DataType = ftInteger
        Value = Null
      end>
    Left = 32
    Top = 408
  end
  object ds_sjtj: TDataSource
    DataSet = sp_sjtj
    Left = 72
    Top = 408
  end
  object PopupMenu2: TPopupMenu
    Left = 160
    Top = 104
    object N4: TMenuItem
      Caption = #21024#38500
      OnClick = N4Click
    end
  end
  object qry_del: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 120
    Top = 184
  end
end
