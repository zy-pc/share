object frm_bqgl_twjl: Tfrm_bqgl_twjl
  Left = 0
  Top = 0
  Caption = #20307#28201#34920#24405#20837
  ClientHeight = 612
  ClientWidth = 1126
  Color = 15131854
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pnl3: TPanel
    Left = 577
    Top = 0
    Width = 549
    Height = 612
    Align = alClient
    Color = 15131854
    ParentBackground = False
    TabOrder = 2
    object Image: TImage
      Left = 49
      Top = 79
      Width = 146
      Height = 564
      AutoSize = True
    end
    object tlb1: TToolBar
      Left = 1
      Top = 1
      Width = 547
      Height = 29
      Caption = 'tlb1'
      Images = il1
      TabOrder = 0
      Transparent = True
      object btn7: TToolButton
        Left = 0
        Top = 0
        Hint = #20840#37096#26174#31034
        Caption = 'btn7'
        ImageIndex = 0
        OnClick = btn7Click
      end
      object btn8: TToolButton
        Left = 23
        Top = 0
        Hint = #20840#23631#26174#31034
        Caption = 'btn8'
        ImageIndex = 1
        Visible = False
      end
      object btn9: TToolButton
        Left = 46
        Top = 0
        Hint = #25351#23450#23485#24230
        Caption = 'btn9'
        ImageIndex = 2
        Visible = False
      end
      object btn10: TToolButton
        Left = 69
        Top = 0
        Hint = #25171#21360
        Caption = 'btn10'
        ImageIndex = 8
        ParentShowHint = False
        ShowHint = True
        OnClick = btn10Click
      end
      object btn11: TToolButton
        Left = 92
        Top = 0
        Hint = #21010#32447
        Caption = 'btn11'
        ImageIndex = 11
        Visible = False
      end
      object btn12: TToolButton
        Left = 115
        Top = 0
        Caption = 'btn12'
        ImageIndex = 12
        Visible = False
      end
      object btn13: TToolButton
        Left = 138
        Top = 0
        Caption = 'btn13'
        ImageIndex = 3
        OnClick = btn13Click
      end
      object btn14: TToolButton
        Left = 161
        Top = 0
        Caption = 'btn14'
        ImageIndex = 4
        OnClick = btn14Click
      end
      object btn15: TToolButton
        Left = 184
        Top = 0
        Caption = 'btn15'
        ImageIndex = 5
        OnClick = btn15Click
      end
      object btn16: TToolButton
        Left = 207
        Top = 0
        Caption = 'btn16'
        ImageIndex = 6
        OnClick = btn16Click
      end
    end
    object scrlbr1: TScrollBar
      Left = 1
      Top = 30
      Width = 15
      Height = 581
      Align = alLeft
      Kind = sbVertical
      PageSize = 0
      TabOrder = 1
      OnChange = scrlbr1Change
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 569
    Height = 612
    Align = alLeft
    Color = 15131854
    ParentBackground = False
    TabOrder = 0
    object cxgrpbx1: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      Caption = #30149#20154#22522#26412#20449#24687
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.Kind = lfOffice11
      StyleDisabled.BorderStyle = ebsOffice11
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.Kind = lfOffice11
      TabOrder = 0
      Transparent = True
      Height = 80
      Width = 567
      object lbl1: TLabel
        Left = 12
        Top = 20
        Width = 53
        Height = 15
        Caption = #26465#30721#21495':'
      end
      object lbl6: TLabel
        Left = 342
        Top = 20
        Width = 68
        Height = 15
        Caption = #20837#38498#26085#26399':'
      end
      object lbl5: TLabel
        Left = 194
        Top = 20
        Width = 38
        Height = 15
        Caption = #22995#21517':'
      end
      object lbl4: TLabel
        Left = 359
        Top = 51
        Width = 10
        Height = 19
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object dbedttmh: TDBEdit
        Left = 416
        Top = 16
        Width = 137
        Height = 23
        DataField = 'ryrq'
        DataSource = ds4
        TabOrder = 0
      end
      object edt_1: TEdit
        Left = 71
        Top = 16
        Width = 116
        Height = 23
        TabOrder = 1
        OnKeyDown = edt_1KeyDown
      end
      object dbedtryrq: TDBEdit
        Left = 236
        Top = 16
        Width = 100
        Height = 23
        DataField = 'brxm'
        DataSource = ds4
        TabOrder = 2
      end
      object btn20: TButton
        Left = 12
        Top = 45
        Width = 75
        Height = 25
        Caption = #34917#24405
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = btn20Click
      end
    end
    object cxpgcntrl1: TcxPageControl
      Left = 1
      Top = 81
      Width = 567
      Height = 530
      ActivePage = cxtbsht1
      Align = alClient
      Color = 15131854
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      ParentBackground = False
      ParentColor = False
      ShowFrame = True
      Style = 8
      TabOrder = 1
      ClientRectBottom = 529
      ClientRectLeft = 1
      ClientRectRight = 566
      ClientRectTop = 28
      object cxtbsht1: TcxTabSheet
        BorderWidth = 1
        Caption = #20307#28201#34920#24405#20837
        Color = 15131854
        ImageIndex = 0
        ParentColor = False
        object pnl5: TPanel
          Left = 0
          Top = 0
          Width = 563
          Height = 209
          Align = alTop
          Color = 15131854
          ParentBackground = False
          TabOrder = 0
          object lbl2: TLabel
            Left = 445
            Top = 184
            Width = 68
            Height = 15
            Caption = #24405#20837#26102#27573':'
          end
          object lbl3: TLabel
            Left = 306
            Top = 184
            Width = 38
            Height = 15
            Caption = #26085#26399':'
          end
          object dtp1: TDateTimePicker
            Left = 344
            Top = 179
            Width = 101
            Height = 23
            Date = 40598.474101018520000000
            Time = 40598.474101018520000000
            TabOrder = 0
            OnChange = dtp1Change
          end
          object btn2: TButton
            Left = 0
            Top = 177
            Width = 75
            Height = 25
            Caption = #20445#23384#25968#25454'&S'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = btn2Click
          end
          object btn1: TButton
            Left = 75
            Top = 177
            Width = 75
            Height = 25
            Caption = #32534#36753
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = btn1Click
          end
          object cbb4: TComboBox
            Left = 516
            Top = 180
            Width = 45
            Height = 23
            Style = csDropDownList
            ItemHeight = 15
            ItemIndex = 0
            TabOrder = 3
            Text = '02'
            OnChange = cbb4Change
            Items.Strings = (
              '02'
              '06'
              '10'
              '14'
              '18'
              '22')
          end
          object btn17: TButton
            Left = 150
            Top = 177
            Width = 75
            Height = 25
            Caption = #26597#30475
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = btn17Click
          end
          object chklst1: TCheckListBox
            Left = 1
            Top = 1
            Width = 561
            Height = 172
            OnClickCheck = chklst1ClickCheck
            Align = alTop
            Columns = 4
            ItemHeight = 15
            Items.Strings = (
              #40664#35748#20307#28201#26041#24335'('#33099#19979')'
              #29289#29702#38477#28201#21518#20307#28201
              #22797#35797#20307#28201
              #33033#25615
              #24515#29575
              #20351#29992#24515#33039#36215#21338#22120
              #21628#21560
              #20351#29992#21628#21560#22120
              #29305#27530#24773#20917#35828#26126
              #26102#38388#35828#26126
              #36755#20837#28082#37327
              #23567#20415#37327
              #20445#30041#23615#31649
              #22823#20415#27425#25968
              #28748#32928
              #28748#32928#21518#27425#25968
              #22823#20415#22833#31105
              #20154#24037#32923#38376
              #34880#21387
              #34880#21387#26102#38388
              #34880#21387'1'
              #34880#21387'1'#26102#38388
              #34880#21387'2'
              #34880#21387'2'#26102#38388
              #20307#37325
              #25163#26415#26085#26399
              #20108#27425#25163#26415#26085#26399
              #20998#23081#26085#26399
              #20837#38498#26085#26399
              #20986#38498#26085#26399
              #36716#20837#26085#26399
              #27515#20129#26085#26399
              #20986#29983#26085#26399
              #31354#26684'1'
              #31354#26684'2'
              #31354#26684'3'
              #32963#28082#24341#27969
              #34880#27974#31649#24341#27969
              #24341#27969)
            PopupMenu = pm1
            TabOrder = 5
          end
          object chk1: TCheckBox
            Left = 231
            Top = 184
            Width = 69
            Height = 17
            Caption = #21253#21547#20986#38498
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnClick = chk1Click
          end
        end
        object dbgrdh1: TDBGridEh
          Left = 0
          Top = 239
          Width = 563
          Height = 260
          Hint = 'F1'#36807#28388#13#10'F2'#21462#28040#36807#28388#13#10
          Align = alClient
          DataSource = ds1
          FixedColor = 15131854
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = ANSI_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FrozenCols = 3
          OptionsEh = [dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentShowHint = False
          PopupMenu = pm2
          ReadOnly = True
          ShowHint = True
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          TitleLines = 2
          UseMultiTitle = True
          OnCellClick = dbgrdh1CellClick
          OnColExit = dbgrdh1ColExit
          OnKeyDown = dbgrdh1KeyDown
          OnKeyPress = dbgrdh1KeyPress
          OnKeyUp = dbgrdh1KeyUp
          Columns = <
            item
              EditButtons = <>
              FieldName = 'bch'
              Footers = <>
              Title.Caption = #24202#21495
              Title.TitleButton = True
              Width = 45
              OnDropDownBoxTitleBtnClick = dbgrdh1Columns0DropDownBoxTitleBtnClick
            end
            item
              EditButtons = <>
              FieldName = 'brxm'
              Footers = <>
              Title.Caption = #22995#21517
              Title.TitleButton = True
              Width = 46
              OnDropDownBoxTitleBtnClick = dbgrdh1Columns1DropDownBoxTitleBtnClick
            end
            item
              EditButtons = <>
              FieldName = 'tmh'
              Footers = <>
              Title.Caption = #26465#30721#21495
              Title.TitleButton = True
              Width = 73
              OnDropDownBoxTitleBtnClick = dbgrdh1Columns2DropDownBoxTitleBtnClick
            end
            item
              EditButtons = <>
              FieldName = 'tw'
              Footers = <>
              PickList.Strings = (
                #20307#28201#19981#21319)
              Title.Caption = #20307#28201'|'#8451
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'twfs'
              Footers = <>
              PickList.Strings = (
                #33099#19979
                #21475#20869
                #30452#32928)
              Title.Caption = #20307#28201'|'#26041#24335
              Visible = False
              Width = 58
            end
            item
              EditButtons = <>
              FieldName = 'wljwhtw'
              Footers = <>
              PickList.Strings = (
                #20307#28201#26410#38477)
              Title.Caption = #20307#28201'|'#29289#29702#38477#28201#21518#8451
              Visible = False
              Width = 62
            end
            item
              EditButtons = <>
              FieldName = 'fstw'
              Footers = <>
              Title.Caption = #20307#28201'|'#22797#35797#20307#28201
              Visible = False
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'mb'
              Footers = <>
              Title.Caption = #33033#25615'|'#27425'/'#20998
              Visible = False
              Width = 57
            end
            item
              EditButtons = <>
              FieldName = 'xl'
              Footers = <>
              Title.Caption = #24515#29575'|'#27425'/'#20998
              Visible = False
              Width = 54
            end
            item
              EditButtons = <>
              FieldName = 'xzqbq'
              Footers = <>
              Title.Caption = #24515#29575'|'#20351#29992#24515#33039#36215#25615#22120
              Visible = False
              Width = 67
            end
            item
              EditButtons = <>
              FieldName = 'hx'
              Footers = <>
              Title.Caption = #21628#21560'|'#27425'/'#20998
              Visible = False
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = 'hxq'
              Footers = <>
              Title.Caption = #21628#21560'|'#20351#29992#21628#21560#22120
              Visible = False
              Width = 53
            end
            item
              EditButtons = <>
              FieldName = 'sm'
              Footers = <>
              PickList.Strings = (
                #25298#27979
                #22806#20986
                #35831#20551
                #20154#24037#20908#30496)
              Title.Caption = #29305#27530#24773#20917#35828#26126
              Visible = False
              Width = 62
            end
            item
              EditButtons = <>
              FieldName = 'sjsm'
              Footers = <>
              Title.Caption = #26102#38388#35828#26126' '
              Visible = False
              Width = 75
            end
            item
              EditButtons = <>
              FieldName = 'yrl'
              Footers = <>
              Title.Caption = #36755#20837#28082#37327
              Visible = False
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'xbl'
              Footers = <>
              Title.Caption = #23567#20415#37327
              Visible = False
              Width = 58
            end
            item
              EditButtons = <>
              FieldName = 'blng'
              Footers = <>
              Title.Caption = #20445#30041#23615#31649
              Visible = False
              Width = 67
            end
            item
              EditButtons = <>
              FieldName = 'dbcs'
              Footers = <>
              Title.Caption = #22823#20415#27425#25968
              Visible = False
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'gc'
              Footers = <>
              Title.Caption = #28748#32928
              Visible = False
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'gchcs'
              Footers = <>
              Title.Caption = #28748#32928#21518#27425#25968
              Visible = False
              Width = 59
            end
            item
              EditButtons = <>
              FieldName = 'dbsj'
              Footers = <>
              Title.Caption = #22823#20415#22833#31105
              Visible = False
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = 'rggm'
              Footers = <>
              Title.Caption = #20154#24037#32923#38376
              Visible = False
              Width = 66
            end
            item
              EditButtons = <>
              FieldName = 'xy'
              Footers = <>
              Title.Caption = #34880#21387'|'#34880#21387
              Visible = False
              Width = 72
            end
            item
              EditButtons = <>
              FieldName = 'xysj'
              Footers = <>
              Title.Caption = #34880#21387'|'#34880#21387#26102#38388
              Visible = False
              Width = 78
            end
            item
              EditButtons = <>
              FieldName = 'xy1'
              Footers = <>
              Title.Caption = #34880#21387'|'#34880#21387'1'
              Visible = False
              Width = 65
            end
            item
              EditButtons = <>
              FieldName = 'xy1sj'
              Footers = <>
              Title.Caption = #34880#21387'|'#34880#21387'1'#26102#38388
              Visible = False
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'xy2'
              Footers = <>
              Title.Caption = #34880#21387'|'#34880#21387'2'
              Visible = False
              Width = 62
            end
            item
              EditButtons = <>
              FieldName = 'xy2sj'
              Footers = <>
              Title.Caption = #34880#21387'|'#34880#21387'2'#26102#38388
              Visible = False
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'tz'
              Footers = <>
              Title.Caption = #20307#37325
              Visible = False
              Width = 56
            end
            item
              EditButtons = <>
              FieldName = 'ssrq'
              Footers = <>
              Title.Caption = #25163#26415#26085#26399
              Visible = False
              Width = 135
            end
            item
              EditButtons = <>
              FieldName = 'dtecsssj'
              Footers = <>
              Title.Caption = #20108#27425#25163#26415#26085#26399
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'fmrq'
              Footers = <>
              Title.Caption = #20998#23081#26085#26399
              Visible = False
              Width = 131
            end
            item
              EditButtons = <>
              FieldName = 'ryrq'
              Footers = <>
              Title.Caption = #20837#38498#26085#26399
              Visible = False
              Width = 129
            end
            item
              EditButtons = <>
              FieldName = 'cyrq'
              Footers = <>
              Title.Caption = #20986#38498#26085#26399
              Visible = False
              Width = 125
            end
            item
              EditButtons = <>
              FieldName = 'zrrq'
              Footers = <>
              Title.Caption = #36716#20837#26085#26399
              Visible = False
              Width = 127
            end
            item
              EditButtons = <>
              FieldName = 'swrq'
              Footers = <>
              Title.Caption = #27515#20129#26085#26399
              Visible = False
              Width = 135
            end
            item
              EditButtons = <>
              FieldName = 'csrq'
              Footers = <>
              Title.Caption = #26032#29983#20799#20986#29983#26085#26399
              Visible = False
              Width = 75
            end
            item
              EditButtons = <>
              FieldName = 'kg1'
              Footers = <>
              Title.Caption = #31354#26684'1'
              Visible = False
              Width = 157
            end
            item
              EditButtons = <>
              FieldName = 'kg2'
              Footers = <>
              Title.Caption = #31354#26684'2'
              Visible = False
              Width = 140
            end
            item
              EditButtons = <>
              FieldName = 'kg3'
              Footers = <>
              Title.Caption = #31354#26684'3'
              Visible = False
              Width = 153
            end
            item
              EditButtons = <>
              FieldName = 'kg4'
              Footers = <>
              Title.Caption = #32963#28082#24341#27969'(ml)'
              Visible = False
              Width = 140
            end
            item
              EditButtons = <>
              FieldName = 'kg5'
              Footers = <>
              Title.Caption = #34880#27974#31649#24341#27969'(ml)'
              Visible = False
              Width = 139
            end
            item
              EditButtons = <>
              FieldName = 'kg6'
              Footers = <>
              Title.Caption = #24341#27969'(ml)'
              Visible = False
              Width = 146
            end>
        end
        object Panel1: TPanel
          Left = 0
          Top = 209
          Width = 563
          Height = 30
          Align = alTop
          TabOrder = 2
          Visible = False
          object Label1: TLabel
            Left = 138
            Top = 6
            Width = 347
            Height = 15
            Caption = #21246#36873#38271#26399#20307#28201#34920#21518#65292#24405#20837#25968#25454#21482#26377'02'#21644'06'#26102#27573#33021#25171#21360
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object CheckBox1: TCheckBox
            Left = 11
            Top = 6
            Width = 97
            Height = 17
            Caption = #38271#26399#20307#28201#34920
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = CheckBox1Click
          end
        end
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 569
    Top = 0
    Width = 8
    Height = 612
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = pnl1
  end
  object dbgrd1: TDBGrid
    Left = 77
    Top = 317
    Width = 320
    Height = 120
    DataSource = ds4
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = dbgrd1Exit
    OnKeyDown = dbgrd1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'brxm'
        Title.Caption = #30149#20154#22995#21517
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ryrq'
        Title.Caption = #20837#38498#26085#26399
        Width = 136
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zfy'
        Title.Caption = #24635#36153#29992
        Width = 68
        Visible = True
      end>
  end
  object ds1: TDataSource
    DataSet = sp_twjl
    Left = 224
    Top = 328
  end
  object il1: TImageList
    Left = 888
    Top = 200
    Bitmap = {
      494C010110001200BC0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400FFFFFF000000
      0000000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000084000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400FFFFFF000000
      0000000084000000840000008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000084000000840000008400000084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400FFFFFF000000
      0000000084000000840000008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000084000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      84008484840084848400848484008484840084848400FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000084
      8400008484000084840000848400008484000084840000848400008484000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FFFF0000FFFF0000FFFF00C6C6C600C6C6
      C60000000000000000000000000000000000000000000000000000FFFF000000
      0000008484000084840000848400008484000084840000848400008484000084
      8400000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000FFFFFF0000FF
      FF00008484000084840000848400008484000084840000848400008484000084
      8400000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C60000000000000000000000000000FFFF00FFFF
      FF00000000000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400008484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000FFFFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000008484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C6000000000000000000000000000000000000FFFF00FFFF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C600000000000000000000000000FFFFFF0000FF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF004200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF004200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF004200000000000000
      0000000000000000000000000000FF0042000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF004200FF004200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF004200FF0042000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF004200FF0042000000
      0000000000000000000000000000FF0042000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF004200FF004200FF004200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF004200FF004200FF00
      4200000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF004200FF004200FF00
      4200000000000000000000000000FF0042000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      4200FF004200FF004200FF004200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF004200FF004200FF00
      4200FF0042000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF004200FF004200FF00
      4200FF0042000000000000000000FF0042000000000000000000000000008484
      840000000000000000000000000000FFFF0000FFFF0000FFFF00848484000000
      0000000000000000000000000000000000000000000000000000FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF0042000000000000000000FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF00420000000000FF0042000000000000000000000000008484
      8400848484000000000000000000848484008484840084848400848484000000
      00000000000000000000000000000000000000000000FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF00420000000000FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF0042000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF0042000000000000000000000000008484
      8400848484008484840084848400000000000000000084848400848484000000
      000000000000000000000000000000000000FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF0042000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF00420000000000FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF0042000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF0042000000000000000000FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF00420000000000FF0042000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      0000FFFF0000FFFF0000FFFF000000000000000000000000000000000000FF00
      4200FF004200FF004200FF004200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF004200FF004200FF00
      4200FF0042000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF004200FF004200FF00
      4200FF0042000000000000000000FF0042000000000084848400000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000848400000000000000000000848484000000000000000000000000000000
      0000FF004200FF004200FF004200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF004200FF004200FF00
      4200000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF004200FF004200FF00
      4200000000000000000000000000FF0042000000000000000000FFFF00008484
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF004200FF004200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF004200FF0042000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF004200FF0042000000
      0000000000000000000000000000FF0042000000000084848400000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000848400000000000000000000848484000000000000000000000000000000
      00000000000000000000FF004200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF004200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF004200000000000000
      0000000000000000000000000000FF0042000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000FF00420000000000000000000000
      00000000000000000000FF004200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000FF00420000000000000000000000
      000000000000FF004200FF004200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000FF00420000000000000000000000
      0000FF004200FF004200FF004200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000FF0042000000000000000000FF00
      4200FF004200FF004200FF004200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000FF00420000000000FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF0042000000000000000000000000000000
      0000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000FF00000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000FF000000FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF0042000000000000000000000000000000
      0000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000FF000000FF000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600C6C6C600FF000000FF000000FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF0042000000000000000000000000000000
      0000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000FF000000FF000000FF000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600FF000000FF000000FF000000FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF0042000000000000000000000000000000
      0000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000FF000000FF000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C60000000000FF000000FF000000FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF0042000000000000000000000000000000
      0000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000FF00000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000FF000000FF00420000000000FF004200FF00
      4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
      4200FF004200FF004200FF004200FF0042000000000000000000000000000000
      0000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000FF0042000000000000000000FF00
      4200FF004200FF004200FF004200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000000000000000000000FF00420000000000000000000000
      0000FF004200FF004200FF004200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600000000000000000000000000FF00420000000000000000000000
      000000000000FF004200FF004200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00420000000000000000000000
      00000000000000000000FF004200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFF801FFFFFFFFFFFFF
      801FFFFFFFFFFFFF801FFFFFFFFFFFFF8017FFFFFFFFFFFF8013FFFFFFFFFFFF
      8011FFFFFFFFFFFF8010FFFFFFFFFFFF8011FFFFFFFFFFFF8013FFFFFFFFFFFF
      8017FFFFFFFFFFFF801FFFFFFFFFFFFF801FFFFFFFFFFFFF801FFFFFFFFFFFFF
      801FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC007FFFF8001FFFF
      8003801F8001F3CF0001800F8001F3CF0001800F8001F3CF000180078001E007
      000080038001E187000080018001E1878000801F8001E183C000801F8001C003
      E001801F800183C1E007CFF3800183C1F007FFF3800183C1F003FF7B800183C1
      F803FF8F800183C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFBFFFBEC007
      F9FFFF9FFF9EBFEBF1FFFF8FFF8E0005E1FFFF87FF866E11C000000300026615
      8000000100000006000000000000618A0000000000008014800000010000DFEA
      C00000030002EFE0E1FFFF87FF868000F1FFFF8FFF8E8007F9FFFF9FFF9E8000
      FDFFFFBFFFBEF7C0FFFFFFFFFFFFF800FFFFFFFFFFFFFFFFFFFFC003E0037DFF
      F807C003C00379FFF007C003C00371FFF007C003C00361FFF007C003C0034000
      F007C00340020000F007C00300000000F007C00300000000F007C00300000000
      F007C00340024000F007C003C00361FFF007C003C00371FFF00FC003C00779FF
      FFFFC007FFFF7DFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object qry_qub_1: TADOQuery
    Connection = frm_main.con1
    Parameters = <>
    Left = 368
    Top = 328
  end
  object sp_in_twb: TADOStoredProc
    Connection = frm_main.con1
    ProcedureName = 'zybl_in_twb'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@xh'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@jlrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@sd'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@lx'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@bqdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 168
    Top = 360
  end
  object qry_brxx: TADOQuery
    Connection = frm_main.con1
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'tmh'
        DataType = ftString
        Size = 1
        Value = '5'
      end>
    SQL.Strings = (
      'declare @tmh varchar(9)'
      ''
      'set @tmh =:tmh'
      ''
      
        'select tmh,brxm,ryrq,zfy,zyh,bch,ksdm from zysf_zydj where tmh =' +
        ' @tmh'
      ' or brxm like '#39'%'#39'+@tmh+'#39'%'#39
      'union '
      
        'select tmh,brxm,ryrq,zfy,zyh,bch,ksdm from zysf_cydj where tmh =' +
        ' @tmh'
      ' or brxm like '#39'%'#39'+@tmh+'#39'%'#39)
    Left = 200
    Top = 64
  end
  object ds4: TDataSource
    DataSet = qry_brxx
    Left = 240
    Top = 64
  end
  object sp_twjl: TADOStoredProc
    Connection = frm_main.con1
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeEdit = sp_twjlBeforeEdit
    AfterEdit = sp_twjlAfterEdit
    BeforePost = sp_twjlBeforePost
    ProcedureName = 'zybl_cx_twb'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@jlrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end
      item
        Name = '@bqdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@xh'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ph'
        Attributes = [paNullable]
        DataType = ftString
        Size = 18
        Value = Null
      end
      item
        Name = '@czy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@bhcy'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 224
    Top = 360
  end
  object pm1: TPopupMenu
    Left = 88
    Top = 112
    object N1: TMenuItem
      Caption = #20840#36873
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #20840#19981#36873
      OnClick = N2Click
    end
  end
  object sp_twb_save: TADOStoredProc
    Connection = frm_main.con1
    ProcedureName = 'zybl_up_twb'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@czy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ph'
        Attributes = [paNullable]
        DataType = ftString
        Size = 18
        Value = Null
      end>
    Left = 168
    Top = 416
  end
  object pm2: TPopupMenu
    Left = 352
    Top = 400
    object mniN3: TMenuItem
      Caption = #26356#26032#24202#20301
      OnClick = mniN3Click
    end
  end
  object qry_ryrq: TADOQuery
    Connection = frm_main.con1
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'zyh'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare @zyh varchar(16)'
      'set @zyh = :zyh'
      'select * into #zybl_cgjl from zybl_cgjl where 1=2    '
      ' if exists(select zyh from zybl_cgjl where zyh =@zyh)'
      ' begin    '
      
        '     insert into #zybl_cgjl(ZYH,jlrq,xbl,dbcs,syl,xy,tz,ryrq,ssr' +
        'q,ryts,ssts,xh,jllx,bqdm,fmrq,cyrq,swrq,zrrq,  '
      
        '      xy1,xy2,gchcs,gc,dbsj,rggm,xysj,xy1sj,xy2sj,kg1,kg2,kg3,kg' +
        '4,tjsj,ksdm,bch,blng,ybj,  '
      '      bjsj,kg5,kg6,csrq,dtecsssj,yrl)'
      
        '     select ZYH,jlrq,xbl,dbcs,syl,xy,tz,ryrq,ssrq,ryts,ssts,xh,j' +
        'llx,bqdm,fmrq,cyrq,swrq,zrrq,  '
      
        '      xy1,xy2,gchcs,gc,dbsj,rggm,xysj,xy1sj,xy2sj,kg1,kg2,kg3,kg' +
        '4,tjsj,ksdm,bch,blng,ybj,  '
      '      bjsj,kg5,kg6,csrq,dtecsssj,yrl'
      '     from zybl_cgjl where zyh = @zyh '
      ' end else'
      
        ' if exists(select zyh from zybl_cgjl_cy where zyh =@zyh)        ' +
        '   '
      ' begin'
      
        '     insert into #zybl_cgjl(ZYH,jlrq,xbl,dbcs,syl,xy,tz,ryrq,ssr' +
        'q,ryts,ssts,xh,jllx,bqdm,fmrq,cyrq,swrq,zrrq,  '
      
        '      xy1,xy2,gchcs,gc,dbsj,rggm,xysj,xy1sj,xy2sj,kg1,kg2,kg3,kg' +
        '4,tjsj,ksdm,bch,blng,ybj,  '
      '      bjsj,kg5,kg6,csrq,dtecsssj,yrl)'
      
        '     select ZYH,jlrq,xbl,dbcs,syl,xy,tz,ryrq,ssrq,ryts,ssts,xh,j' +
        'llx,bqdm,fmrq,cyrq,swrq,zrrq,  '
      
        '      xy1,xy2,gchcs,gc,dbsj,rggm,xysj,xy1sj,xy2sj,kg1,kg2,kg3,kg' +
        '4,tjsj,ksdm,bch,blng,ybj,  '
      '      bjsj,kg5,kg6,csrq,dtecsssj,yrl'
      '     from zybl_cgjl_cy where zyh = @zyh '
      ' end else'
      ' begin'
      
        '     insert into #zybl_cgjl(ZYH,jlrq,xbl,dbcs,syl,xy,tz,ryrq,ssr' +
        'q,ryts,ssts,xh,jllx,bqdm,fmrq,cyrq,swrq,zrrq,  '
      
        '      xy1,xy2,gchcs,gc,dbsj,rggm,xysj,xy1sj,xy2sj,kg1,kg2,kg3,kg' +
        '4,tjsj,ksdm,bch,blng,ybj,  '
      '      bjsj,kg5,kg6,csrq,dtecsssj,yrl)'
      
        '     select ZYH,jlrq,xbl,dbcs,syl,xy,tz,ryrq,ssrq,ryts,ssts,xh,j' +
        'llx,bqdm,fmrq,cyrq,swrq,zrrq,  '
      
        '      xy1,xy2,gchcs,gc,dbsj,rggm,xysj,xy1sj,xy2sj,kg1,kg2,kg3,kg' +
        '4,tjsj,ksdm,bch,blng,ybj,  '
      '      bjsj,kg5,kg6,csrq,dtecsssj,yrl'
      '     from zybl_cgjl_cy_zc where zyh = @zyh '
      ' end'
      
        'if exists(select * from #zybl_cgjl where zyh=@zyh and   convert(' +
        'char,jlrq,112) = convert(char,ryrq,112))'
      'begin'
      'select * from #zybl_cgjl where zyh =@zyh'
      'and convert(char,jlrq,112) = convert(char,ryrq,112)'
      'end else'
      'begin'
      'select * from #zybl_cgjl where zyh =@zyh'
      'and  convert(char,jlrq,112) = convert(char,csrq,112)'
      'end'
      ''
      'drop table #zybl_cgjl')
    Left = 88
    Top = 200
  end
end
